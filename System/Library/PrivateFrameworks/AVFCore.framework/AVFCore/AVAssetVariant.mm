@interface AVAssetVariant
- (AVAssetVariant)initWithCoder:(id)coder;
- (AVAssetVariant)initWithFigAlternate:(OpaqueFigAlternate *)alternate;
- (AVAssetVariantAudioAttributes)audioAttributes;
- (AVAssetVariantVideoAttributes)videoAttributes;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAssetVariant

- (AVAssetVariantVideoAttributes)videoAttributes
{
  FigSimpleMutexLock();
  if (!self->_videoAttributes && [(FigAlternateObjC *)self->_figAlternateObjC videoAttributes])
  {
    self->_videoAttributes = [[AVAssetVariantVideoAttributes alloc] initWithFigAlternateObjC:self->_figAlternateObjC];
  }

  FigSimpleMutexUnlock();
  v3 = self->_videoAttributes;

  return v3;
}

- (AVAssetVariantAudioAttributes)audioAttributes
{
  FigSimpleMutexLock();
  if (!self->_audioAttributes && [(FigAlternateObjC *)self->_figAlternateObjC audioAttributes])
  {
    self->_audioAttributes = [[AVAssetVariantAudioAttributes alloc] initWithFigAlternateObjC:self->_figAlternateObjC];
  }

  FigSimpleMutexUnlock();
  v3 = self->_audioAttributes;

  return v3;
}

- (void)dealloc
{
  FigSimpleMutexDestroy();

  v3.receiver = self;
  v3.super_class = AVAssetVariant;
  [(AVAssetVariant *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AVAssetVariant *)self URL];
  [(AVAssetVariant *)self peakBitRate];
  v8 = v7;
  [(AVAssetVariant *)self averageBitRate];
  return [v3 stringWithFormat:@"<%@: %p, url:%@ peakBitRate:%d averageBitRate:%d video:%@ audio:%@>", v5, self, v6, v8, v9, -[AVAssetVariant videoAttributes](self, "videoAttributes"), -[AVAssetVariant audioAttributes](self, "audioAttributes")];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"supports only keyed archivers";
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"supports only NSXPCCoder";
LABEL_6:
    v13 = [v10 exceptionWithName:v11 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v12, v5, v6, v7, v8, v9, v14), 0}];
    objc_exception_throw(v13);
  }

  [(AVAssetVariant *)self _figAlternate];
  FigAlternateCopyAsXPCObjectWithContext();
}

- (AVAssetVariant)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    selfCopy = self;
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = @"supports only keyed archivers";
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = @"supports only NSXPCCoder";
LABEL_8:
    v16 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v15, v6, v7, v8, v9, v10, v17), 0}];
    objc_exception_throw(v16);
  }

  if ([coder decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"variant"])
  {
    FigAlternateCreateWithXPCObject();
  }

  return 0;
}

- (AVAssetVariant)initWithFigAlternate:(OpaqueFigAlternate *)alternate
{
  v6.receiver = self;
  v6.super_class = AVAssetVariant;
  v4 = [(AVAssetVariant *)&v6 init];
  if (v4)
  {
    v4->_figAlternateObjC = [objc_alloc(MEMORY[0x1E6970A90]) initWithFigAlternate:alternate];
    v4->_mutex = FigSimpleMutexCreate();
  }

  return v4;
}

@end