@interface AVMetadataTextRegionObject
+ (id)textRegionObjectWithDictionary:(id)a3 input:(id)a4;
- (CGRect)angularOffsetBounds;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6;
- (id)initTextRegionObjectWithDictionary:(id)a3 input:(id)a4;
- (void)dealloc;
@end

@implementation AVMetadataTextRegionObject

+ (id)textRegionObjectWithDictionary:(id)a3 input:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) initTextRegionObjectWithDictionary:a3 input:a4];

  return v4;
}

- (id)initTextRegionObjectWithDictionary:(id)a3 input:(id)a4
{
  memset(&v17, 0, sizeof(v17));
  CMTimeMakeFromDictionary(&v17, [a3 objectForKeyedSubscript:*MEMORY[0x1E69912E0]]);
  v7 = *(MEMORY[0x1E695F058] + 16);
  rect.origin = *MEMORY[0x1E695F058];
  rect.size = v7;
  CGRectMakeWithDictionaryRepresentation([a3 objectForKeyedSubscript:*MEMORY[0x1E69912C8]], &rect);
  v15.receiver = self;
  v15.super_class = AVMetadataTextRegionObject;
  v14 = v17;
  v12 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  v8 = [(AVMetadataObject *)&v15 initWithType:@"textRegion" time:&v14 duration:&v12 bounds:0 optionalInfoDict:0 originalMetadataObject:a4 sourceCaptureInput:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if (v8)
  {
    v8->_regionID = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E69912D8]), "integerValue"}];
    [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E69912D0]), "floatValue"}];
    v8->_confidence = v9;
    [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E69912B8]), "floatValue"}];
    v8->_angularOffset = v10;
    CGRectMakeWithDictionaryRepresentation([a3 objectForKeyedSubscript:*MEMORY[0x1E69912C0]], &v8->_angularOffsetBounds);
  }

  return v8;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)a3 withTransform:(CGAffineTransform *)a4 isVideoMirrored:(BOOL)a5 rollAdjustment:(double)a6
{
  v9 = *(MEMORY[0x1E695F058] + 16);
  v24.origin = *MEMORY[0x1E695F058];
  v24.size = v9;
  [a3 bounds];
  v10 = *&a4->c;
  *&v23.a = *&a4->a;
  *&v23.c = v10;
  *&v23.tx = *&a4->tx;
  if (AVMetadataObjectAdjustBaseClassProperties(&v23, &v24, v11, v12, v13, v14))
  {
    if (a3)
    {
      [a3 time];
      [a3 duration];
    }

    else
    {
      memset(&v23, 0, 24);
      memset(v22, 0, sizeof(v22));
    }

    v16 = [a3 input];
    v21.receiver = self;
    v21.super_class = AVMetadataTextRegionObject;
    v15 = [(AVMetadataObject *)&v21 initWithType:@"textRegion" time:&v23 duration:v22 bounds:0 optionalInfoDict:a3 originalMetadataObject:v16 sourceCaptureInput:*&v24.origin, *&v24.size];
    if (v15)
    {
      v15->_regionID = [a3 regionID];
      [a3 confidence];
      v15->_confidence = v17;
      [a3 angularOffset];
      v15->_angularOffset = v18;
      [a3 angularOffsetBounds];
      v19 = *&a4->c;
      *&v23.a = *&a4->a;
      *&v23.c = v19;
      *&v23.tx = *&a4->tx;
      v15->_angularOffsetBounds = CGRectApplyAffineTransform(v25, &v23);
    }
  }

  else
  {

    return 0;
  }

  return v15;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVMetadataTextRegionObject;
  [(AVMetadataObject *)&v2 dealloc];
}

- (CGRect)angularOffsetBounds
{
  objc_copyStruct(v6, &self->_angularOffsetBounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end