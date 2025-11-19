@interface AVMetadataSaliencyHeatMap
+ (id)saliencyHeatMapWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5;
- (AVMetadataSaliencyHeatMap)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5 type:(id)a6;
- (AVMetadataSaliencyHeatMap)initWithHeatMap:(id)a3 width:(int64_t)a4 height:(int64_t)a5 bytesPerRow:(int64_t)a6 time:(id *)a7 duration:(id *)a8 bounds:(CGRect)a9 optionalInfoDict:(id)a10 originalMetadataObject:(id)a11 sourceCaptureInput:(id)a12;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6;
- (void)dealloc;
@end

@implementation AVMetadataSaliencyHeatMap

+ (id)saliencyHeatMapWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceObjectDictionary:a3 input:a4 timeStamp:a5 type:@"saliencyHeatMap"];

  return v5;
}

- (AVMetadataSaliencyHeatMap)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5 type:(id)a6
{
  v20 = *MEMORY[0x1E6960C70];
  *&v26.value = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  v26.epoch = v10;
  v11 = MEMORY[0x1E695F058];
  if (a5)
  {
    [a5 longLongValue];
    v12 = FigHostTimeToNanoseconds();
    CMTimeMake(&v26, v12, 1000000000);
  }

  x = *v11;
  y = v11[1];
  width = v11[2];
  height = v11[3];
  v17 = [a3 objectForKeyedSubscript:{*MEMORY[0x1E69910D8], v20}];
  if (v17)
  {
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(v17, &rect))
    {
      x = rect.origin.x;
      y = rect.origin.y;
      width = rect.size.width;
      height = rect.size.height;
    }
  }

  v24.receiver = self;
  v24.super_class = AVMetadataSaliencyHeatMap;
  rect.origin = *&v26.value;
  *&rect.size.width = v26.epoch;
  v22 = v21;
  v23 = v10;
  v18 = [(AVMetadataObject *)&v24 initWithType:a6 time:&rect duration:&v22 bounds:0 optionalInfoDict:0 originalMetadataObject:a4 sourceCaptureInput:x, y, width, height];
  if (v18)
  {
    v18->_bytesPerRow = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E69911B8]), "integerValue"}];
    v18->_width = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E69911D0]), "integerValue"}];
    v18->_height = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E69911C0]), "integerValue"}];
    v18->_heatMap = [a3 objectForKeyedSubscript:*MEMORY[0x1E69911C8]];
  }

  return v18;
}

- (AVMetadataSaliencyHeatMap)initWithHeatMap:(id)a3 width:(int64_t)a4 height:(int64_t)a5 bytesPerRow:(int64_t)a6 time:(id *)a7 duration:(id *)a8 bounds:(CGRect)a9 optionalInfoDict:(id)a10 originalMetadataObject:(id)a11 sourceCaptureInput:(id)a12
{
  v20.receiver = self;
  v20.super_class = AVMetadataSaliencyHeatMap;
  v19 = *a7;
  v18 = *a8;
  v16 = [(AVMetadataObject *)&v20 initWithType:@"saliencyHeatMap" time:&v19 duration:&v18 bounds:a10 optionalInfoDict:a11 originalMetadataObject:a12 sourceCaptureInput:a9.origin.x, a9.origin.y, a9.size.width, a9.size.height];
  if (v16)
  {
    v16->_heatMap = a3;
    v16->_width = a4;
    v16->_height = a5;
    v16->_bytesPerRow = a6;
  }

  return v16;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6
{
  v9 = *(MEMORY[0x1E695F058] + 16);
  v25.origin = *MEMORY[0x1E695F058];
  v25.size = v9;
  [a3 bounds];
  v10 = *&a4->c;
  v22 = *&a4->a;
  v23 = v10;
  v24 = *&a4->tx;
  if (AVMetadataObjectAdjustBaseClassProperties(&v22, &v25, v11, v12, v13, v14))
  {
    v15 = [a3 heatMap];
    v16 = [a3 width];
    v17 = [a3 height];
    v18 = [a3 bytesPerRow];
    if (a3)
    {
      [a3 time];
      [a3 duration];
    }

    else
    {
      v22 = 0uLL;
      *&v23 = 0;
      memset(v21, 0, sizeof(v21));
    }

    v20 = [a3 input];
    return [(AVMetadataSaliencyHeatMap *)self initWithHeatMap:v15 width:v16 height:v17 bytesPerRow:v18 time:&v22 duration:v21 bounds:*&v25.origin optionalInfoDict:*&v25.size originalMetadataObject:0 sourceCaptureInput:a3, v20];
  }

  else
  {

    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataSaliencyHeatMap;
  [(AVMetadataObject *)&v3 dealloc];
}

@end