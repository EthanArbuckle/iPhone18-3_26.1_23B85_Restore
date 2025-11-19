@interface AVAssetVariantVideoAttributes
- (AVAssetVariantVideoAttributes)initWithFigAlternateObjC:(id)a3;
- (AVVideoRange)videoRange;
- (CGSize)presentationSize;
- (NSArray)codecTypes;
- (NSArray)videoLayoutAttributes;
- (double)nominalFrameRate;
- (id)description;
- (void)dealloc;
@end

@implementation AVAssetVariantVideoAttributes

- (AVVideoRange)videoRange
{
  v2 = [(FigAlternateObjC *)self->_figAlternateObjC videoAttributes];

  return [v2 videoRange];
}

- (NSArray)codecTypes
{
  v2 = [(FigAlternateObjC *)self->_figAlternateObjC videoAttributes];

  return [v2 codecTypes];
}

- (CGSize)presentationSize
{
  v2 = [(FigAlternateObjC *)self->_figAlternateObjC videoAttributes];

  [v2 presentationSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)nominalFrameRate
{
  v2 = [(FigAlternateObjC *)self->_figAlternateObjC videoAttributes];

  [v2 nominalFrameRate];
  return result;
}

- (NSArray)videoLayoutAttributes
{
  v16 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  if (!self->_allVideoLayoutAttributes)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [-[FigAlternateObjC videoAttributes](self->_figAlternateObjC videoAttributes];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [[AVAssetVariantVideoLayoutAttributes alloc] initWithFigVideoLayoutAttributes:*(*(&v11 + 1) + 8 * v8)];
          [v3 addObject:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    self->_allVideoLayoutAttributes = v3;
  }

  FigSimpleMutexUnlock();
  return self->_allVideoLayoutAttributes;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();

  v3.receiver = self;
  v3.super_class = AVAssetVariantVideoAttributes;
  [(AVAssetVariantVideoAttributes *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AVAssetVariantVideoAttributes *)self videoRange];
  [(AVAssetVariantVideoAttributes *)self presentationSize];
  v8 = v7;
  [(AVAssetVariantVideoAttributes *)self presentationSize];
  v10 = v9;
  [(AVAssetVariantVideoAttributes *)self nominalFrameRate];
  *&v11 = v11;
  v12 = [v3 stringWithFormat:@"<%@: %p, videoRange:%@ size:%dx%d, framerate:%0.2f codecs:%@", v5, self, v6, v8, v10, *&v11, -[AVAssetVariantVideoAttributes codecTypes](self, "codecTypes")];
  [v12 appendFormat:@" videoLayoutAttributes:%@", -[AVAssetVariantVideoAttributes videoLayoutAttributes](self, "videoLayoutAttributes")];
  [v12 appendFormat:@">"];
  return v12;
}

- (AVAssetVariantVideoAttributes)initWithFigAlternateObjC:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVAssetVariantVideoAttributes;
  v4 = [(AVAssetVariantVideoAttributes *)&v6 init];
  if (v4)
  {
    v4->_figAlternateObjC = a3;
    v4->_mutex = FigSimpleMutexCreate();
  }

  return v4;
}

@end