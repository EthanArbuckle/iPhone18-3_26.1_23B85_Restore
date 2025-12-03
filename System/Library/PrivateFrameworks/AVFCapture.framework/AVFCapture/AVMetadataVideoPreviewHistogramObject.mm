@interface AVMetadataVideoPreviewHistogramObject
+ (id)videoPreviewHistogramObjectWithLumaHistogramData:(id)data input:(id)input time:(id *)time;
- (AVMetadataVideoPreviewHistogramObject)initWithLumaHistogramData:(id)data time:(id *)time sourceCaptureInput:(id)input;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
- (void)dealloc;
@end

@implementation AVMetadataVideoPreviewHistogramObject

+ (id)videoPreviewHistogramObjectWithLumaHistogramData:(id)data input:(id)input time:(id *)time
{
  v8 = objc_alloc(objc_opt_class());
  v10 = *time;
  return [v8 initWithLumaHistogramData:data time:&v10 sourceCaptureInput:input];
}

- (AVMetadataVideoPreviewHistogramObject)initWithLumaHistogramData:(id)data time:(id *)time sourceCaptureInput:(id)input
{
  v12 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v15.receiver = self;
  v15.super_class = AVMetadataVideoPreviewHistogramObject;
  v14 = *time;
  v10 = [(AVMetadataObject *)&v15 initWithType:@"videoPreviewHistogram" time:&v14 duration:&v12 bounds:0 optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:v6, v7, v8, v9];
  if (v10)
  {
    v10->_lumaHistogramData = data;
  }

  return v10;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  lumaHistogramData = [object lumaHistogramData];
  if (object)
  {
    [object time];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  return -[AVMetadataVideoPreviewHistogramObject initWithLumaHistogramData:time:sourceCaptureInput:](self, "initWithLumaHistogramData:time:sourceCaptureInput:", lumaHistogramData, v10, [object input]);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataVideoPreviewHistogramObject;
  [(AVMetadataObject *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  lumaHistogramData = self->_lumaHistogramData;
  lumaHistogramBinCount = [(AVMetadataVideoPreviewHistogramObject *)self lumaHistogramBinCount];
  [(AVMetadataObject *)self time];
  return [v3 stringWithFormat:@"<%@: %p, lumaHistogramData: %@, lumaHistogramBinCount: %lu, time=%lld>", v5, self, lumaHistogramData, lumaHistogramBinCount, v9];
}

@end