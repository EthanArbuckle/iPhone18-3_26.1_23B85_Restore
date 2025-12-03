@interface AVAssetWriterInputConfigurationState
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)preferredMediaChunkDuration;
- (CGAffineTransform)transform;
- (CGSize)naturalSize;
- (void)dealloc;
- (void)setPreferredMediaChunkDuration:(id *)duration;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation AVAssetWriterInputConfigurationState

- (void)dealloc
{
  sourceFormatHint = self->_sourceFormatHint;
  if (sourceFormatHint)
  {
    CFRelease(sourceFormatHint);
  }

  v4.receiver = self;
  v4.super_class = AVAssetWriterInputConfigurationState;
  [(AVAssetWriterInputConfigurationState *)&v4 dealloc];
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].d;
  *&retstr->a = *&self[1].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].ty;
  return self;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_transform.tx = *&transform->tx;
  *&self->_transform.c = v4;
  *&self->_transform.a = v3;
}

- (CGSize)naturalSize
{
  width = self->_naturalSize.width;
  height = self->_naturalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)preferredMediaChunkDuration
{
  *&retstr->var0 = *&self[7].var2;
  retstr->var3 = *(&self[8].var0 + 4);
  return self;
}

- (void)setPreferredMediaChunkDuration:(id *)duration
{
  v3 = *&duration->var0;
  *&self->_chunkDuration.flags = duration->var3;
  *(&self->_performsMultiPassEncodingIfSupported + 4) = v3;
}

@end