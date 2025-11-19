@interface AVAnnotationRepresentation
+ (id)_annotationRepresentationWithPropertyList:(id)a3 binaryData:(id)a4;
+ (id)_createBindingDictionaryFromMetadataItemPayload:(id)a3 error:(id *)a4;
+ (id)_createMetadataItemPayloadForData:(id)a3 identifier:(id)a4 error:(id *)a5;
+ (id)_createMetadataItemPayloadForDataBinding:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithPropertyList:(id)a3 binaryData:(id)a4;
- (id)_initWithRepresentationType:(id)a3;
- (id)_propertyListAndBinaryData:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_setRepresentationType:(id)a3;
- (void)_setVersion:(id)a3;
- (void)dealloc;
@end

@implementation AVAnnotationRepresentation

- (id)_initWithRepresentationType:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVAnnotationRepresentation;
  v4 = [(AVAnnotationRepresentation *)&v6 init];
  if (v4)
  {
    v4->_representationType = [a3 copy];
    v4->_version = [@"AVAnnotationRepresentationVersion_1" copy];
    v4->_identifier = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  }

  return v4;
}

- (id)_initWithPropertyList:(id)a3 binaryData:(id)a4
{
  v10.receiver = self;
  v10.super_class = AVAnnotationRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v10 init:a3];
  if (v5 && (v6 = [a3 objectForKey:@"AVAnnotationRepresentationArchiveKeyType"], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5->_representationType = objc_msgSend(v6, "copy"), v7 = objc_msgSend(a3, "objectForKey:", @"AVAnnotationArchiveKeyVersion"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5->_version = objc_msgSend(v7, "copy"), v8 = objc_msgSend(a3, "objectForKey:", @"AVAnnotationArchiveKeyIdentifier"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5->_identifier = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
  }

  else
  {

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAnnotationRepresentation;
  [(AVAnnotationRepresentation *)&v3 dealloc];
}

- (void)_setRepresentationType:(id)a3
{
  v4 = [a3 copy];

  self->_representationType = v4;
}

- (void)_setVersion:(id)a3
{
  v4 = [a3 copy];

  self->_version = v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = 0;
  v3 = [(AVAnnotationRepresentation *)self _propertyListAndBinaryData:&v5];
  return [AVAnnotationRepresentation _annotationRepresentationWithPropertyList:v3 binaryData:v5];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [-[AVAnnotationRepresentation _representationType](self "_representationType")];
    if (v5)
    {
      v5 = [-[AVAnnotationRepresentation _version](self "_version")];
      if (v5)
      {
        v6 = [(AVAnnotationRepresentation *)self identifier];
        v7 = [a3 identifier];

        LOBYTE(v5) = [(NSUUID *)v6 isEqual:v7];
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [-[AVAnnotationRepresentation _representationType](self "_representationType")];
  v4 = [-[AVAnnotationRepresentation _version](self "_version")] ^ v3;
  return v4 ^ [(NSUUID *)[(AVAnnotationRepresentation *)self identifier] hash];
}

- (id)_propertyListAndBinaryData:(id *)a3
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:-[AVAnnotationRepresentation _representationType](self forKey:{"_representationType"), @"AVAnnotationRepresentationArchiveKeyType"}];
  [v5 setObject:-[AVAnnotationRepresentation _version](self forKey:{"_version"), @"AVAnnotationArchiveKeyVersion"}];
  [v5 setObject:-[NSUUID UUIDString](-[AVAnnotationRepresentation identifier](self forKey:{"identifier"), "UUIDString"), @"AVAnnotationArchiveKeyIdentifier"}];
  *a3 = [MEMORY[0x1E695DEF0] data];
  return v5;
}

+ (id)_createMetadataItemPayloadForData:(id)a3 identifier:(id)a4 error:(id *)a5
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"identifier";
  v6[1] = @"data";
  v7[0] = a4;
  v7[1] = a3;
  return +[AVAnnotationRepresentation _createMetadataItemPayloadForDataBinding:error:](AVAnnotationRepresentation, "_createMetadataItemPayloadForDataBinding:error:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2], a5);
}

+ (id)_createMetadataItemPayloadForDataBinding:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!a3)
  {
    v14 = AVLocalizedError(@"AVFoundationErrorDomain", -11883, 0);
LABEL_9:
    v13 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = [a3 objectForKey:@"data"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = [v5 objectForKey:@"identifier"], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = AVLocalizedError(@"AVFoundationErrorDomain", -11883, 0);
    v5 = 0;
    goto LABEL_9;
  }

  v19 = 0;
  v8 = [v7 UUIDString];
  v9 = 2 * [v8 length];
  v5 = malloc_type_calloc(v9, 1uLL, 0x100004077774924uLL);
  [v8 getCString:v5 maxLength:v9 encoding:1];
  v10 = strnlen(v5, v9);
  v11 = [v6 length];
  v12 = [v6 bytes];
  v13 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v10 + 14 + v11];
  [v13 mutableBytes];
  v16 = bswap32(v10 + 14 + v11);
  v17 = 1919968626;
  v18 = bswap32(v10) >> 16;
  [v13 replaceBytesInRange:0 withBytes:14 length:{&v16, 14}];
  [v13 replaceBytesInRange:14 withBytes:v10 length:{v5, v10}];
  [v13 replaceBytesInRange:v10 + 14 withBytes:v11 length:{v12, v11}];
  v14 = 0;
  if (a4)
  {
LABEL_5:
    *a4 = v14;
  }

LABEL_6:
  free(v5);
  return v13;
}

+ (id)_createBindingDictionaryFromMetadataItemPayload:(id)a3 error:(id *)a4
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (!a3 || (v6 = [a3 length], v6 <= 0xD) || (v7 = v6, v8 = objc_msgSend(a3, "bytes"), v7 != bswap32(*v8)) || (v9 = v8, v10 = bswap32(*(v8 + 12)) >> 16, v11 = v10 + 14, v12 = v7 >= v10 + 14, v13 = v7 - (v10 + 14), !v12) || (v14 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithBytes:length:encoding:", v8 + 14, v10, 1), (v15 = objc_msgSend(objc_alloc(MEMORY[0x1E696AFB0]), "initWithUUIDString:", v14)) == 0))
  {
    v19 = AVLocalizedError(@"AVFoundationErrorDomain", -11821, 0);
    v18 = 0;
    if (!a4)
    {
      return v18;
    }

    goto LABEL_8;
  }

  v16 = v15;
  v17 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v13];
  [v17 replaceBytesInRange:0 withBytes:v13 length:{v9 + v11, v13}];
  v21[0] = @"identifier";
  v21[1] = @"data";
  v22[0] = v16;
  v22[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19 = 0;
  if (a4)
  {
LABEL_8:
    *a4 = v19;
  }

  return v18;
}

+ (id)_annotationRepresentationWithPropertyList:(id)a3 binaryData:(id)a4
{
  v6 = [a3 objectForKey:@"AVAnnotationArchiveKeyVersion"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (![v6 isEqualToString:@"AVAnnotationRepresentationVersion_1"])
  {
    goto LABEL_17;
  }

  v7 = [a3 objectForKey:@"AVAnnotationRepresentationArchiveKeyType"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([v7 isEqualToString:@"AVAnnotationRepresentationTypeText"])
  {
    v8 = off_1E745C578;
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"AVAnnotationRepresentationTypeImage"])
  {
    v8 = off_1E745C548;
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"AVAnnotationRepresentationTypePKDrawing"])
  {
    v8 = off_1E745C550;
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"AVAnnotationRepresentationTypeSVG"])
  {
    v8 = off_1E745C568;
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"AVAnnotationRepresentationTypeShape"])
  {
    v8 = off_1E745C570;
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"AVAnnotationRepresentationTypePath"])
  {
    v8 = off_1E745C558;
LABEL_16:
    result = [objc_alloc(*v8) _initWithPropertyList:a3 binaryData:a4];
    if (result)
    {
      return result;
    }
  }

LABEL_17:
  v10 = [AVAnnotationUnknownRepresentation alloc];

  return [(AVAnnotationUnknownRepresentation *)v10 _initWithPropertyList:a3 binaryData:a4];
}

@end