@interface AVMetadataMachineReadableCodeObject
+ (AVMetadataMachineReadableCodeObject)machineReadableCodeObjectWithAppClipCodeDictionary:(id)dictionary input:(id)input;
+ (AVMetadataMachineReadableCodeObject)machineReadableCodeObjectWithFigEmbeddedCaptureDeviceMachineReadableCodeDictionary:(id)dictionary input:(id)input;
- (AVMetadataMachineReadableCodeObject)initWithAppClipCodeDictionary:(id)dictionary input:(id)input;
- (AVMetadataMachineReadableCodeObject)initWithFigEmbeddedCaptureDeviceMachineReadableCodeDictionary:(id)dictionary input:(id)input;
- (NSArray)corners;
- (NSString)stringValue;
- (id)description;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
- (void)dealloc;
@end

@implementation AVMetadataMachineReadableCodeObject

+ (AVMetadataMachineReadableCodeObject)machineReadableCodeObjectWithFigEmbeddedCaptureDeviceMachineReadableCodeDictionary:(id)dictionary input:(id)input
{
  v4 = [objc_alloc(objc_opt_class()) initWithFigEmbeddedCaptureDeviceMachineReadableCodeDictionary:dictionary input:input];

  return v4;
}

+ (AVMetadataMachineReadableCodeObject)machineReadableCodeObjectWithAppClipCodeDictionary:(id)dictionary input:(id)input
{
  v4 = [objc_alloc(objc_opt_class()) initWithAppClipCodeDictionary:dictionary input:input];

  return v4;
}

- (AVMetadataMachineReadableCodeObject)initWithFigEmbeddedCaptureDeviceMachineReadableCodeDictionary:(id)dictionary input:(id)input
{
  v38 = *MEMORY[0x1E6960C70];
  *&v43.value = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v43.epoch = v7;
  v8 = MEMORY[0x1E695F058];
  v9 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6990C48]];
  if (v9)
  {
    CMTimeMakeFromDictionary(&v43, v9);
  }

  x = *v8;
  y = v8[1];
  width = v8[2];
  height = v8[3];
  v14 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6990BF0]];
  if (v14)
  {
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(v14, &rect))
    {
      x = rect.origin.x;
      y = rect.origin.y;
      width = rect.size.width;
      height = rect.size.height;
    }
  }

  v15 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6990BE0]];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 objectForKeyedSubscript:*MEMORY[0x1E6990BF8]];
    if (v17)
    {
      if (figBarcodeTypeToAVFMachineReadableCodeType_sFigBarcodeToAVFMRCTypesToken != -1)
      {
        [AVMetadataMachineReadableCodeObject initWithFigEmbeddedCaptureDeviceMachineReadableCodeDictionary:input:];
      }

      v17 = [figBarcodeTypeToAVFMachineReadableCodeType_sFigBarcodeToAVFMRCTypes objectForKeyedSubscript:v17];
    }
  }

  else
  {
    v17 = 0;
  }

  v41.receiver = self;
  v41.super_class = AVMetadataMachineReadableCodeObject;
  rect.origin = *&v43.value;
  *&rect.size.width = v43.epoch;
  v39 = v38;
  v40 = v7;
  height = [(AVMetadataObject *)&v41 initWithType:v17 time:&rect duration:&v39 bounds:0 optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:x, y, width, height];
  if (height)
  {
    v19 = objc_alloc_init(AVMetadataMachineReadableCodeObjectInternal);
    height->_internal = v19;
    if (v19)
    {
      v20 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6990BD8]];
      if (v20)
      {
        [(AVMetadataMachineReadableCodeObjectInternal *)height->_internal setCorners:v20];
      }

      if (v16)
      {
        [(AVMetadataMachineReadableCodeObjectInternal *)height->_internal setBasicDescriptor:v16];
      }

      v21 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990BE8]];
      if (v21)
      {
        v22 = v21;
        if (([v17 isEqualToString:@"org.iso.QRCode"] & 1) == 0 && !objc_msgSend(v17, "isEqualToString:", @"org.iso.MicroPDF417"))
        {
          if ([v17 isEqualToString:@"org.iso.Aztec"])
          {
            v28 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990BD0]];
            v29 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990BC8]];
            v30 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990BC0]];
            v27 = [MEMORY[0x1E695F5F8] descriptorWithPayload:v22 isCompact:objc_msgSend(v28 layerCount:"BOOLValue") dataCodewordCount:{objc_msgSend(v29, "integerValue"), objc_msgSend(v30, "integerValue")}];
          }

          else if (([v17 isEqualToString:@"org.iso.PDF417"] & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"org.iso.MicroPDF417"))
          {
            v31 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990C28]];
            v32 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990C20]];
            v33 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990C18]];
            v27 = [MEMORY[0x1E695F668] descriptorWithPayload:v22 isCompact:objc_msgSend(v31 rowCount:"BOOLValue") columnCount:{objc_msgSend(v33, "integerValue"), objc_msgSend(v32, "integerValue")}];
          }

          else
          {
            if (![v17 isEqualToString:@"org.iso.DataMatrix"])
            {
              return height;
            }

            v35 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990C00]];
            v36 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990C10]];
            v37 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990C08]];
            v27 = [MEMORY[0x1E695F630] descriptorWithPayload:v22 rowCount:objc_msgSend(v37 columnCount:"integerValue") eccVersion:{objc_msgSend(v36, "integerValue"), objc_msgSend(v35, "integerValue")}];
          }

          goto LABEL_29;
        }

        v23 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990C30]];
        v24 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990C38]];
        v25 = [v16 objectForKeyedSubscript:*MEMORY[0x1E6990C40]];
        integerValue = [v23 integerValue];
        if (integerValue <= 3)
        {
          v27 = [MEMORY[0x1E695F670] descriptorWithPayload:v22 symbolVersion:objc_msgSend(v25 maskPattern:"charValue") errorCorrectionLevel:{objc_msgSend(v24, "charValue"), qword_1A92AB7E0[integerValue]}];
LABEL_29:
          [(AVMetadataMachineReadableCodeObjectInternal *)height->_internal setDescriptor:v27];
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return height;
}

- (AVMetadataMachineReadableCodeObject)initWithAppClipCodeDictionary:(id)dictionary input:(id)input
{
  v24 = *MEMORY[0x1E6960C70];
  *&v29.value = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v29.epoch = v7;
  v8 = MEMORY[0x1E695F058];
  v9 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E698F8E0]];
  if (v9)
  {
    CMTimeMakeFromDictionary(&v29, v9);
  }

  x = *v8;
  y = v8[1];
  width = v8[2];
  height = v8[3];
  v14 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E698F8C8]];
  if (v14)
  {
    memset(&rect, 0, sizeof(rect));
    if (CGRectMakeWithDictionaryRepresentation(v14, &rect))
    {
      x = rect.origin.x;
      y = rect.origin.y;
      width = rect.size.width;
      height = rect.size.height;
    }
  }

  v27.receiver = self;
  v27.super_class = AVMetadataMachineReadableCodeObject;
  rect.origin = *&v29.value;
  *&rect.size.width = v29.epoch;
  v25 = v24;
  v26 = v7;
  height = [(AVMetadataObject *)&v27 initWithType:@"com.apple.AppClipCode" time:&rect duration:&v25 bounds:0 optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:x, y, width, height];
  if (height)
  {
    v16 = objc_alloc_init(AVMetadataMachineReadableCodeObjectInternal);
    height->_internal = v16;
    if (v16)
    {
      v17 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E698F8D0]];
      if (v17)
      {
        [(AVMetadataMachineReadableCodeObjectInternal *)height->_internal setCorners:v17];
      }

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v19 = *MEMORY[0x1E698F8D8];
      v20 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E698F8D8]];
      if (v20)
      {
        [dictionary setObject:v20 forKeyedSubscript:v19];
      }

      v21 = *MEMORY[0x1E698F8E8];
      v22 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E698F8E8]];
      if (v22)
      {
        [dictionary setObject:v22 forKeyedSubscript:v21];
      }

      [dictionary setObject:@"com.apple.AppClipCode" forKeyedSubscript:*MEMORY[0x1E6990BF8]];
      -[AVMetadataMachineReadableCodeObjectInternal setBasicDescriptor:](height->_internal, "setBasicDescriptor:", [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary]);
    }

    else
    {

      return 0;
    }
  }

  return height;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  type = [object type];
  v44 = 0;
  v45 = 0;
  if (object)
  {
    [object time];
    v42 = 0uLL;
    v43 = 0;
    [object duration];
  }

  else
  {
    v42 = 0uLL;
    v43 = 0;
  }

  v10 = *(MEMORY[0x1E695F058] + 16);
  v41.origin = *MEMORY[0x1E695F058];
  v41.size = v10;
  [object bounds];
  v11 = *&transform->c;
  point = *&transform->a;
  v39 = v11;
  v40 = *&transform->tx;
  if ((AVMetadataObjectAdjustBaseClassProperties(&point, &v41, v12, v13, v14, v15) & 1) == 0)
  {

    return 0;
  }

  input = [object input];
  v37.receiver = self;
  v37.super_class = AVMetadataMachineReadableCodeObject;
  point = v44;
  *&v39 = v45;
  v35 = v42;
  v36 = v43;
  v17 = [(AVMetadataObject *)&v37 initWithType:type time:&point duration:&v35 bounds:0 optionalInfoDict:object originalMetadataObject:input sourceCaptureInput:*&v41.origin, *&v41.size];
  if (!v17)
  {
    return v17;
  }

  v18 = objc_alloc_init(AVMetadataMachineReadableCodeObjectInternal);
  v17->_internal = v18;
  if (!v18)
  {

    return 0;
  }

  corners = [object corners];
  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(corners, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = [corners countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      v24 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(corners);
        }

        v25 = *(*(&v31 + 1) + 8 * v24);
        point.x = 0.0;
        point.y = 0.0;
        if (CGPointMakeWithDictionaryRepresentation(v25, &point))
        {
          v26 = vaddq_f64(*&transform->tx, vmlaq_n_f64(vmulq_n_f64(*&transform->c, point.y), *&transform->a, point.x));
          y = v26.y;
          DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v26);
          [v20 addObject:DictionaryRepresentation];
          CFRelease(DictionaryRepresentation);
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [corners countByEnumeratingWithState:&v31 objects:v30 count:16];
    }

    while (v22);
  }

  [(AVMetadataMachineReadableCodeObjectInternal *)v17->_internal setCorners:v20];
  -[AVMetadataMachineReadableCodeObjectInternal setBasicDescriptor:](v17->_internal, "setBasicDescriptor:", [*(object + 2) basicDescriptor]);
  -[AVMetadataMachineReadableCodeObjectInternal setStringValue:](v17->_internal, "setStringValue:", [*(object + 2) stringValue]);
  -[AVMetadataMachineReadableCodeObjectInternal setDecoded:](v17->_internal, "setDecoded:", [*(object + 2) decoded]);
  -[AVMetadataMachineReadableCodeObjectInternal setDescriptor:](v17->_internal, "setDescriptor:", [*(object + 2) descriptor]);
  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataMachineReadableCodeObject;
  [(AVMetadataObject *)&v3 dealloc];
}

- (id)description
{
  [(AVMetadataObject *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E696AD60] stringWithCapacity:100];
  v12 = objc_opt_class();
  [v11 appendFormat:@"<%@: %p, type=%@, bounds={ %.1f, %.1f %.1fx%.1f }>", NSStringFromClass(v12), self, -[AVMetadataObject type](self, "type"), v4, v6, v8, v10];
  corners = [(AVMetadataMachineReadableCodeObject *)self corners];
  [v11 appendString:@"corners { "];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [(NSArray *)corners countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(corners);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        point.x = 0.0;
        point.y = 0.0;
        if (CGPointMakeWithDictionaryRepresentation(v18, &point))
        {
          [v11 appendFormat:@"%.1f, %.1f ", *&point.x, *&point.y];
        }
      }

      v15 = [(NSArray *)corners countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v15);
  }

  if (self)
  {
    [(AVMetadataObject *)self time];
    v19 = v21;
  }

  else
  {
    v19 = 0;
  }

  [v11 appendFormat:@"}, time %lld, stringValue %@", v19, -[AVMetadataMachineReadableCodeObject stringValue](self, "stringValue")];
  return v11;
}

- (NSArray)corners
{
  v2 = MEMORY[0x1E695DEC8];
  corners = [(AVMetadataMachineReadableCodeObjectInternal *)self->_internal corners];

  return [v2 arrayWithArray:corners];
}

- (NSString)stringValue
{
  internal = self->_internal;
  objc_sync_enter(internal);
  stringValue = [(AVMetadataMachineReadableCodeObjectInternal *)self->_internal stringValue];
  if (!stringValue)
  {
    if ([(AVMetadataMachineReadableCodeObjectInternal *)self->_internal decoded])
    {
      stringValue = 0;
    }

    else
    {
      if ([(AVMetadataMachineReadableCodeObjectInternal *)self->_internal basicDescriptor])
      {
        v5 = MRCDescriptorCreateWithAttributes();
        stringValue = MRCDescriptorDecodePayload();
        if (v5)
        {
          CFRelease(v5);
        }
      }

      else
      {
        stringValue = 0;
      }

      [(AVMetadataMachineReadableCodeObjectInternal *)self->_internal setStringValue:stringValue];
      [(AVMetadataMachineReadableCodeObjectInternal *)self->_internal setDecoded:1];
    }
  }

  objc_sync_exit(internal);
  return stringValue;
}

@end