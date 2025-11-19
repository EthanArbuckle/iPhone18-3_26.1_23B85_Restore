@interface AVMetadataBodyObject
- (AVMetadataBodyObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5 type:(id)a6;
- (AVMetadataBodyObject)initWithType:(id)a3 bodyID:(int64_t)a4 time:(id *)a5 duration:(id *)a6 bounds:(CGRect)a7 optionalInfoDict:(id)a8 originalMetadataObject:(id)a9 sourceCaptureInput:(id)a10;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6 type:(id)a7 bodyID:(int64_t)a8;
@end

@implementation AVMetadataBodyObject

- (AVMetadataBodyObject)initWithFigEmbeddedCaptureDeviceObjectDictionary:(id)a3 input:(id)a4 timeStamp:(id)a5 type:(id)a6
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
  v24.super_class = AVMetadataBodyObject;
  rect.origin = *&v26.value;
  *&rect.size.width = v26.epoch;
  v22 = v21;
  v23 = v10;
  v18 = [(AVMetadataObject *)&v24 initWithType:a6 time:&rect duration:&v22 bounds:a3 optionalInfoDict:0 originalMetadataObject:a4 sourceCaptureInput:x, y, width, height];
  if (v18)
  {
    v18->_bodyID = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6990E68]), "integerValue"}];
  }

  return v18;
}

- (AVMetadataBodyObject)initWithType:(id)a3 bodyID:(int64_t)a4 time:(id *)a5 duration:(id *)a6 bounds:(CGRect)a7 optionalInfoDict:(id)a8 originalMetadataObject:(id)a9 sourceCaptureInput:(id)a10
{
  v14.receiver = self;
  v14.super_class = AVMetadataBodyObject;
  v13 = *a5;
  v12 = *a6;
  result = [(AVMetadataObject *)&v14 initWithType:a3 time:&v13 duration:&v12 bounds:a8 optionalInfoDict:a9 originalMetadataObject:a10 sourceCaptureInput:a7.origin.x, a7.origin.y, a7.size.width, a7.size.height];
  if (result)
  {
    result->_bodyID = a4;
  }

  return result;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6 type:(id)a7 bodyID:(int64_t)a8
{
  v29 = 0uLL;
  v30 = 0;
  if (a3)
  {
    [a3 time];
    v27 = 0uLL;
    v28 = 0;
    [a3 duration];
  }

  else
  {
    v27 = 0uLL;
    v28 = 0;
  }

  v13 = *(MEMORY[0x1E695F058] + 16);
  v26.origin = *MEMORY[0x1E695F058];
  v26.size = v13;
  [a3 bounds];
  v14 = *&a4->c;
  v23 = *&a4->a;
  v24 = v14;
  v25 = *&a4->tx;
  if (AVMetadataObjectAdjustBaseClassProperties(&v23, &v26, v15, v16, v17, v18))
  {
    v19 = [a3 input];
    v23 = v29;
    *&v24 = v30;
    v21 = v27;
    v22 = v28;
    return [(AVMetadataBodyObject *)self initWithType:a7 bodyID:a8 time:&v23 duration:&v21 bounds:0 optionalInfoDict:a3 originalMetadataObject:*&v26.origin sourceCaptureInput:*&v26.size, v19];
  }

  else
  {

    return 0;
  }
}

@end