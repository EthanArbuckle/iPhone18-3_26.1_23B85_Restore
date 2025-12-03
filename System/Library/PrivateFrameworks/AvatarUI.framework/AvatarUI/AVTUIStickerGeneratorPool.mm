@interface AVTUIStickerGeneratorPool
+ (id)cacheKeyForAvatarRecord:(id)record;
- (AVTUIStickerGeneratorPool)initWithMaxStickerGeneratorCount:(int64_t)count;
- (AVTUIStickerGeneratorPool)initWithMaxStickerGeneratorCount:(int64_t)count logger:(id)logger;
- (id)dequeueStickerGeneratorForAvatarRecord:(id)record needAvatar:(BOOL)avatar;
- (id)generatorForAvatarRecord:(id)record inGenerators:(id)generators;
- (id)stealGeneratorForAvatarRecord:(id)record inGenerators:(id)generators needAvatar:(BOOL)avatar;
- (void)didStopUsingStickerGeneratorForRecord:(id)record;
- (void)flush;
- (void)flushGeneratorForKey:(id)key;
- (void)flushGeneratorForRecord:(id)record;
@end

@implementation AVTUIStickerGeneratorPool

+ (id)cacheKeyForAvatarRecord:(id)record
{
  recordCopy = record;
  identifier = [recordCopy identifier];
  if ([recordCopy isEditable])
  {
    avatarData = [recordCopy avatarData];
    avt_SHA256 = [avatarData avt_SHA256];
    v7 = [identifier stringByAppendingFormat:@"_%@", avt_SHA256];

    identifier = v7;
  }

  return identifier;
}

- (AVTUIStickerGeneratorPool)initWithMaxStickerGeneratorCount:(int64_t)count
{
  v5 = +[AVTUIEnvironment defaultEnvironment];
  logger = [v5 logger];
  v7 = [(AVTUIStickerGeneratorPool *)self initWithMaxStickerGeneratorCount:count logger:logger];

  return v7;
}

- (AVTUIStickerGeneratorPool)initWithMaxStickerGeneratorCount:(int64_t)count logger:(id)logger
{
  loggerCopy = logger;
  v15.receiver = self;
  v15.super_class = AVTUIStickerGeneratorPool;
  v8 = [(AVTUIStickerGeneratorPool *)&v15 init];
  v9 = v8;
  if (v8)
  {
    if (count <= 0)
    {
      count = 5;
    }

    v8->_maxCount = count;
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:count];
    availableStickerGenerators = v9->_availableStickerGenerators;
    v9->_availableStickerGenerators = v10;

    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:count];
    inUseStickerGenerators = v9->_inUseStickerGenerators;
    v9->_inUseStickerGenerators = v12;

    objc_storeStrong(&v9->_logger, logger);
  }

  return v9;
}

- (id)generatorForAvatarRecord:(id)record inGenerators:(id)generators
{
  generatorsCopy = generators;
  recordCopy = record;
  v7 = [objc_opt_class() cacheKeyForAvatarRecord:recordCopy];

  v8 = [generatorsCopy objectForKey:v7];

  return v8;
}

- (id)stealGeneratorForAvatarRecord:(id)record inGenerators:(id)generators needAvatar:(BOOL)avatar
{
  recordCopy = record;
  generatorsCopy = generators;
  v10 = [(AVTUIStickerGeneratorPool *)self generatorForAvatarRecord:recordCopy inGenerators:generatorsCopy];
  if (v10 || ![generatorsCopy count])
  {
    v11 = [objc_opt_class() cacheKeyForAvatarRecord:recordCopy];
    [generatorsCopy removeObjectForKey:v11];

    v12 = v10;
  }

  else
  {
    allKeys = [generatorsCopy allKeys];
    firstObject = [allKeys firstObject];

    v15 = [generatorsCopy objectForKey:firstObject];
    v16 = v15;
    if (avatar)
    {
      v17 = [(AVTUIStickerGeneratorPool *)self avatarForRecord:recordCopy];
      [v16 setAvatar:v17];
    }

    else
    {
      [v15 setAvatar:0];
    }

    [generatorsCopy removeObjectForKey:firstObject];
    v12 = v16;
  }

  return v12;
}

- (id)dequeueStickerGeneratorForAvatarRecord:(id)record needAvatar:(BOOL)avatar
{
  avatarCopy = avatar;
  recordCopy = record;
  inUseStickerGenerators = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
  v8 = [(AVTUIStickerGeneratorPool *)self generatorForAvatarRecord:recordCopy inGenerators:inUseStickerGenerators];

  if (!v8)
  {
    availableStickerGenerators = [(AVTUIStickerGeneratorPool *)self availableStickerGenerators];
    v8 = [(AVTUIStickerGeneratorPool *)self stealGeneratorForAvatarRecord:recordCopy inGenerators:availableStickerGenerators needAvatar:avatarCopy];

    if (!v8)
    {
      inUseStickerGenerators2 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
      v11 = [inUseStickerGenerators2 count];
      availableStickerGenerators2 = [(AVTUIStickerGeneratorPool *)self availableStickerGenerators];
      v13 = [availableStickerGenerators2 count] + v11;
      maxCount = [(AVTUIStickerGeneratorPool *)self maxCount];

      if (v13 >= maxCount)
      {
        v15 = objc_autoreleasePoolPush();
        inUseStickerGenerators3 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
        allKeys = [inUseStickerGenerators3 allKeys];
        firstObject = [allKeys firstObject];

        [(AVTUIStickerGeneratorPool *)self flushGeneratorForKey:firstObject];
        objc_autoreleasePoolPop(v15);
      }

      inUseStickerGenerators4 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
      v20 = [inUseStickerGenerators4 count];
      availableStickerGenerators3 = [(AVTUIStickerGeneratorPool *)self availableStickerGenerators];
      v22 = [availableStickerGenerators3 count] + v20;
      maxCount2 = [(AVTUIStickerGeneratorPool *)self maxCount];

      if (v22 >= maxCount2 || (!avatarCopy ? (v24 = 0) : (-[AVTUIStickerGeneratorPool avatarForRecord:](self, "avatarForRecord:", recordCopy), v24 = objc_claimAutoreleasedReturnValue()), v8 = [objc_alloc(MEMORY[0x1E698E2C8]) initWithAvatar:v24], v24, !v8))
      {
        inUseStickerGenerators5 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
        v8 = [(AVTUIStickerGeneratorPool *)self stealGeneratorForAvatarRecord:recordCopy inGenerators:inUseStickerGenerators5 needAvatar:avatarCopy];

        logger = [(AVTUIStickerGeneratorPool *)self logger];
        inUseStickerGenerators6 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
        [logger logStickerGeneratorPoolDidntHaveAvailableGenerator:objc_msgSend(inUseStickerGenerators6 maxCount:{"count"), -[AVTUIStickerGeneratorPool maxCount](self, "maxCount")}];
      }
    }
  }

  inUseStickerGenerators7 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
  v29 = [objc_opt_class() cacheKeyForAvatarRecord:recordCopy];
  [inUseStickerGenerators7 setObject:v8 forKey:v29];

  return v8;
}

- (void)didStopUsingStickerGeneratorForRecord:(id)record
{
  recordCopy = record;
  v9 = [objc_opt_class() cacheKeyForAvatarRecord:recordCopy];

  inUseStickerGenerators = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
  v6 = [inUseStickerGenerators objectForKey:v9];

  if (v6)
  {
    inUseStickerGenerators2 = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
    [inUseStickerGenerators2 removeObjectForKey:v9];

    availableStickerGenerators = [(AVTUIStickerGeneratorPool *)self availableStickerGenerators];
    [availableStickerGenerators setObject:v6 forKey:v9];
  }
}

- (void)flushGeneratorForKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    inUseStickerGenerators = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
    [inUseStickerGenerators removeObjectForKey:keyCopy];

    availableStickerGenerators = [(AVTUIStickerGeneratorPool *)self availableStickerGenerators];
    [availableStickerGenerators removeObjectForKey:keyCopy];
  }
}

- (void)flushGeneratorForRecord:(id)record
{
  recordCopy = record;
  v5 = [objc_opt_class() cacheKeyForAvatarRecord:recordCopy];

  [(AVTUIStickerGeneratorPool *)self flushGeneratorForKey:v5];
}

- (void)flush
{
  inUseStickerGenerators = [(AVTUIStickerGeneratorPool *)self inUseStickerGenerators];
  [inUseStickerGenerators removeAllObjects];

  availableStickerGenerators = [(AVTUIStickerGeneratorPool *)self availableStickerGenerators];
  [availableStickerGenerators removeAllObjects];
}

@end