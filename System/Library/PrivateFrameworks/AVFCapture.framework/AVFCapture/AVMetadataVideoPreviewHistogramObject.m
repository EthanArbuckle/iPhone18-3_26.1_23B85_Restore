@interface AVMetadataVideoPreviewHistogramObject
+ (id)videoPreviewHistogramObjectWithLumaHistogramData:(id)a3 input:(id)a4 time:(id *)a5;
- (AVMetadataVideoPreviewHistogramObject)initWithLumaHistogramData:(id)a3 time:(id *)a4 sourceCaptureInput:(id)a5;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6;
- (void)dealloc;
@end

@implementation AVMetadataVideoPreviewHistogramObject

+ (id)videoPreviewHistogramObjectWithLumaHistogramData:(id)a3 input:(id)a4 time:(id *)a5
{
  v8 = objc_alloc(objc_opt_class());
  v10 = *a5;
  return [v8 initWithLumaHistogramData:a3 time:&v10 sourceCaptureInput:a4];
}

- (AVMetadataVideoPreviewHistogramObject)initWithLumaHistogramData:(id)a3 time:(id *)a4 sourceCaptureInput:(id)a5
{
  v12 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v15.receiver = self;
  v15.super_class = AVMetadataVideoPreviewHistogramObject;
  v14 = *a4;
  v10 = [(AVMetadataObject *)&v15 initWithType:@"videoPreviewHistogram" time:&v14 duration:&v12 bounds:0 optionalInfoDict:0 originalMetadataObject:a5 sourceCaptureInput:v6, v7, v8, v9];
  if (v10)
  {
    v10->_lumaHistogramData = a3;
  }

  return v10;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6
{
  v8 = [a3 lumaHistogramData];
  if (a3)
  {
    [a3 time];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  return -[AVMetadataVideoPreviewHistogramObject initWithLumaHistogramData:time:sourceCaptureInput:](self, "initWithLumaHistogramData:time:sourceCaptureInput:", v8, v10, [a3 input]);
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
  v7 = [(AVMetadataVideoPreviewHistogramObject *)self lumaHistogramBinCount];
  [(AVMetadataObject *)self time];
  return [v3 stringWithFormat:@"<%@: %p, lumaHistogramData: %@, lumaHistogramBinCount: %lu, time=%lld>", v5, self, lumaHistogramData, v7, v9];
}

@end