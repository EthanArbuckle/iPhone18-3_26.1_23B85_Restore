@interface PPKGPMagicPaperImageGenerationEvent
+ (int64_t)imageGenerationInvocationFromPPKInvocation:(int64_t)invocation;
+ (int64_t)imageGenerationModeFromPPKMode:(int64_t)mode;
- (PPKGPMagicPaperImageGenerationEvent)init;
- (int64_t)mode;
@end

@implementation PPKGPMagicPaperImageGenerationEvent

+ (int64_t)imageGenerationInvocationFromPPKInvocation:(int64_t)invocation
{
  v3 = 1;
  if (invocation == 2)
  {
    v3 = 2;
  }

  if (invocation == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)imageGenerationModeFromPPKMode:(int64_t)mode
{
  if ((mode - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return mode;
  }
}

- (PPKGPMagicPaperImageGenerationEvent)init
{
  v5.receiver = self;
  v5.super_class = PPKGPMagicPaperImageGenerationEvent;
  v2 = [(PPKGPMagicPaperImageGenerationEvent *)&v5 init];
  if (v2)
  {
    v2->_invocation = [PPKGPMagicPaperImageGenerationEvent imageGenerationInvocationFromPPKInvocation:0];
    activePencil = [MEMORY[0x1E69784B8] activePencil];
    v2->_isPencilPaired = [activePencil isConnected];
  }

  return v2;
}

- (int64_t)mode
{
  wordsCount = self->_wordsCount;
  if (self->_imagesCount)
  {
    strokesCount = self->_strokesCount;
    if (wordsCount)
    {
      if (strokesCount)
      {
        v4 = 4;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 4 * (strokesCount != 0);
    }
  }

  else if (wordsCount)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (self->_strokesCount != 0);
  }

  return [PPKGPMagicPaperImageGenerationEvent imageGenerationModeFromPPKMode:v4];
}

@end