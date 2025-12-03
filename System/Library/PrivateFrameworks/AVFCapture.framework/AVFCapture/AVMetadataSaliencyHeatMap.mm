@interface AVMetadataSaliencyHeatMap
+ (id)saliencyHeatMapWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp;
- (AVMetadataSaliencyHeatMap)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp type:(id)type;
- (AVMetadataSaliencyHeatMap)initWithHeatMap:(id)map width:(int64_t)width height:(int64_t)height bytesPerRow:(int64_t)row time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)self0 originalMetadataObject:(id)self1 sourceCaptureInput:(id)self2;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
- (void)dealloc;
@end

@implementation AVMetadataSaliencyHeatMap

+ (id)saliencyHeatMapWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp
{
  v5 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceObjectDictionary:dictionary input:input timeStamp:stamp type:@"saliencyHeatMap"];

  return v5;
}

- (AVMetadataSaliencyHeatMap)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)dictionary input:(id)input timeStamp:(id)stamp type:(id)type
{
  v20 = *MEMORY[0x1E6960C70];
  *&v26.value = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  v26.epoch = v10;
  v11 = MEMORY[0x1E695F058];
  if (stamp)
  {
    [stamp longLongValue];
    v12 = FigHostTimeToNanoseconds();
    CMTimeMake(&v26, v12, 1000000000);
  }

  x = *v11;
  y = v11[1];
  width = v11[2];
  height = v11[3];
  v17 = [dictionary objectForKeyedSubscript:{*MEMORY[0x1E69910D8], v20}];
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
  height = [(AVMetadataObject *)&v24 initWithType:type time:&rect duration:&v22 bounds:0 optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:x, y, width, height];
  if (height)
  {
    height->_bytesPerRow = [objc_msgSend(dictionary objectForKeyedSubscript:{*MEMORY[0x1E69911B8]), "integerValue"}];
    height->_width = [objc_msgSend(dictionary objectForKeyedSubscript:{*MEMORY[0x1E69911D0]), "integerValue"}];
    height->_height = [objc_msgSend(dictionary objectForKeyedSubscript:{*MEMORY[0x1E69911C0]), "integerValue"}];
    height->_heatMap = [dictionary objectForKeyedSubscript:*MEMORY[0x1E69911C8]];
  }

  return height;
}

- (AVMetadataSaliencyHeatMap)initWithHeatMap:(id)map width:(int64_t)width height:(int64_t)height bytesPerRow:(int64_t)row time:(id *)time duration:(id *)duration bounds:(CGRect)bounds optionalInfoDict:(id)self0 originalMetadataObject:(id)self1 sourceCaptureInput:(id)self2
{
  v20.receiver = self;
  v20.super_class = AVMetadataSaliencyHeatMap;
  v19 = *time;
  v18 = *duration;
  v16 = [(AVMetadataObject *)&v20 initWithType:@"saliencyHeatMap" time:&v19 duration:&v18 bounds:dict optionalInfoDict:object originalMetadataObject:input sourceCaptureInput:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (v16)
  {
    v16->_heatMap = map;
    v16->_width = width;
    v16->_height = height;
    v16->_bytesPerRow = row;
  }

  return v16;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  v9 = *(MEMORY[0x1E695F058] + 16);
  v25.origin = *MEMORY[0x1E695F058];
  v25.size = v9;
  [object bounds];
  v10 = *&transform->c;
  v22 = *&transform->a;
  v23 = v10;
  v24 = *&transform->tx;
  if (AVMetadataObjectAdjustBaseClassProperties(&v22, &v25, v11, v12, v13, v14))
  {
    heatMap = [object heatMap];
    width = [object width];
    height = [object height];
    bytesPerRow = [object bytesPerRow];
    if (object)
    {
      [object time];
      [object duration];
    }

    else
    {
      v22 = 0uLL;
      *&v23 = 0;
      memset(v21, 0, sizeof(v21));
    }

    input = [object input];
    return [(AVMetadataSaliencyHeatMap *)self initWithHeatMap:heatMap width:width height:height bytesPerRow:bytesPerRow time:&v22 duration:v21 bounds:*&v25.origin optionalInfoDict:*&v25.size originalMetadataObject:0 sourceCaptureInput:object, input];
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