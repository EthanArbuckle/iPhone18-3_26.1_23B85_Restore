@interface AVTUIStickerGeneratorPool
+ (id)cacheKeyForAvatarRecord:(id)a3;
- (AVTUIStickerGeneratorPool)initWithMaxStickerGeneratorCount:(int64_t)a3;
- (AVTUIStickerGeneratorPool)initWithMaxStickerGeneratorCount:(int64_t)a3 logger:(id)a4;
- (id)dequeueStickerGeneratorForAvatarRecord:(id)a3 needAvatar:(BOOL)a4;
- (id)generatorForAvatarRecord:(id)a3 inGenerators:(id)a4;
- (id)stealGeneratorForAvatarRecord:(id)a3 inGenerators:(id)a4 needAvatar:(BOOL)a5;
- (void)didStopUsingStickerGeneratorForRecord:(id)a3;
- (void)flush;
- (void)flushGeneratorForKey:(id)a3;
- (void)flushGeneratorForRecord:(id)a3;
@end

@implementation AVTUIStickerGeneratorPool

+ (id)cacheKeyForAvatarRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  if ([v3 isEditable])
  {
    v5 = [v3 avatarData];
    v6 = [v5 avt_SHA256];
    v7 = [v4 stringByAppendingFormat:@"_%@", v6];

    v4 = v7;
  }

  return v4;
}

- (AVTUIStickerGeneratorPool)initWithMaxStickerGeneratorCount:(int64_t)a3
{
  v5 = +[AVTUIEnvironment defaultEnvironment];
  v6 = [v5 logger];
  v7 = [(AVTUIStickerGeneratorPool *)self initWithMaxStickerGeneratorCount:a3 logger:v6];

  return v7;
}

- (AVTUIStickerGeneratorPool)initWithMaxStickerGeneratorCount:(int64_t)a3 logger:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = AVTUIStickerGeneratorPool;
  v8 = [(AVTUIStickerGeneratorPool *)&v15 init];
  v9 = v8;
  if (v8)
  {
    if (a3 <= 0)
    {
      a3 = 5;
    }

    v8->_maxCount = a3;
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:a3];
    availableStickerGenerators = v9->_availableStickerGenerators;
    v9->_availableStickerGenerators = v10;

    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:a3];
    inUseStickerGenerators = v9->_inUseStickerGenerators;
    v9->_inUseStickerGenerators = v12;

    objc_storeStrong(&v9->_logger, a4);
  }

  return v9;
}

- (id)generatorForAvatarRecord:(id)a3 inGenerators:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() cacheKeyForAvatarRecord:v6];

  v8 = [v5 objectForKey:v7];

  return v8;
}

- (id)stealGeneratorForAvatarRecord:(id)a3 inGenerators:(id)a4 needAvatar:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(AVTUIStickerGeneratorPool *)self generatorForAvatarRecord:v8 inGenerators:v9];
  if (v10 || ![v9 count])
  {
    v11 = [objc_opt_class() cacheKeyForAvatarRecord:v8];
    [v9 removeObjectForKey:v11];

    v12 = v10;
  }

  else
  {
    v13 = [v9 allKeys];
    v14 = [v13 firstObject];

    v15 = [v9 objectForKey:v14];
    v16 = v15;
    if (a5)
    {
      v17 = [(AVTUIStickerGeneratorPool *)self avatarForRecord:v8];
      [v16 setAvatar:v17];
    }

    else
    {
      [v15 setAvatar:0];
    }

    [v9 removeObjectForKey:v14];
    v12 = v16;
  }

  return v12;
}

- (id)dequeueStickerGeneratorForAvatarRecord:(id)a3 needAvatar:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
  v8 = [(AVTUIStickerGeneratorPool *)self generatorForAvatarRecord:v6 inGenerators:v7];

  if (!v8)
  {
    v9 = [(AVTUIStickerGeneratorPool *)self availableStickerGenerators];
    v8 = [(AVTUIStickerGeneratorPool *)self stealGeneratorForAvatarRecord:v6 inGenerators:v9 needAvatar:v4];

    if (!v8)
    {
      v10 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
      v11 = [v10 count];
      v12 = [(AVTUIStickerGeneratorPool *)self availableStickerGenerators];
      v13 = [v12 count] + v11;
      v14 = [(AVTUIStickerGeneratorPool *)self maxCount];

      if (v13 >= v14)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
        v17 = [v16 allKeys];
        v18 = [v17 firstObject];

        [(AVTUIStickerGeneratorPool *)self flushGeneratorForKey:v18];
        objc_autoreleasePoolPop(v15);
      }

      v19 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
      v20 = [v19 count];
      v21 = [(AVTUIStickerGeneratorPool *)self availableStickerGenerators];
      v22 = [v21 count] + v20;
      v23 = [(AVTUIStickerGeneratorPool *)self maxCount];

      if (v22 >= v23 || (!v4 ? (v24 = 0) : (-[AVTUIStickerGeneratorPool avatarForRecord:](self, "avatarForRecord:", v6), v24 = objc_claimAutoreleasedReturnValue()), v8 = [objc_alloc(MEMORY[0x1E698E2C8]) initWithAvatar:v24], v24, !v8))
      {
        v25 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
        v8 = [(AVTUIStickerGeneratorPool *)self stealGeneratorForAvatarRecord:v6 inGenerators:v25 needAvatar:v4];

        v26 = [(AVTUIStickerGeneratorPool *)self logger];
        v27 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
        [v26 logStickerGeneratorPoolDidntHaveAvailableGenerator:objc_msgSend(v27 maxCount:{"count"), -[AVTUIStickerGeneratorPool maxCount](self, "maxCount")}];
      }
    }
  }

  v28 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
  v29 = [objc_opt_class() cacheKeyForAvatarRecord:v6];
  [v28 setObject:v8 forKey:v29];

  return v8;
}

- (void)didStopUsingStickerGeneratorForRecord:(id)a3
{
  v4 = a3;
  v9 = [objc_opt_class() cacheKeyForAvatarRecord:v4];

  v5 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
  v6 = [v5 objectForKey:v9];

  if (v6)
  {
    v7 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
    [v7 removeObjectForKey:v9];

    v8 = [(AVTUIStickerGeneratorPool *)self availableStickerGenerators];
    [v8 setObject:v6 forKey:v9];
  }
}

- (void)flushGeneratorForKey:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
    [v5 removeObjectForKey:v4];

    v6 = [(AVTUIStickerGeneratorPool *)self availableStickerGenerators];
    [v6 removeObjectForKey:v4];
  }
}

- (void)flushGeneratorForRecord:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() cacheKeyForAvatarRecord:v4];

  [(AVTUIStickerGeneratorPool *)self flushGeneratorForKey:v5];
}

- (void)flush
{
  v3 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
  [v3 removeAllObjects];

  v4 = [(AVTUIStickerGeneratorPool *)self availableStickerGenerators];
  [v4 removeAllObjects];
}

@end