@interface AVCapturePhotoPrivateClientMetadata
- (AVCapturePhotoPrivateClientMetadata)initWithCoder:(id)coder;
- (AVCapturePhotoPrivateClientMetadata)initWithMetadataDictionary:(id)dictionary;
- (NSDictionary)detectedObjectInfo;
- (NSDictionary)inferenceAttachments;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVCapturePhotoPrivateClientMetadata

- (AVCapturePhotoPrivateClientMetadata)initWithMetadataDictionary:(id)dictionary
{
  v8.receiver = self;
  v8.super_class = AVCapturePhotoPrivateClientMetadata;
  v4 = [(AVCapturePhotoPrivateClientMetadata *)&v8 init];
  v5 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E6990CB0]];
  if (v4 && (v6 = v5, [v5 count]))
  {
    v4->_inferenceAttachments = [objc_msgSend(v6 objectForKeyedSubscript:{*MEMORY[0x1E6990CC0]), "copy"}];
    v4->_detectedObjectInfo = [objc_msgSend(v6 objectForKeyedSubscript:{*MEMORY[0x1E6990CB8]), "copy"}];
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCapturePhotoPrivateClientMetadata;
  [(AVCapturePhotoPrivateClientMetadata *)&v3 dealloc];
}

- (AVCapturePhotoPrivateClientMetadata)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = AVCapturePhotoPrivateClientMetadata;
  v4 = [(AVCapturePhotoPrivateClientMetadata *)&v15 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v4->_inferenceAttachments = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, v8, objc_opt_class(), 0), *MEMORY[0x1E6990CC0]}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v4->_detectedObjectInfo = [coder decodeObjectOfClasses:objc_msgSend(v9 forKey:{"setWithObjects:", v10, v11, v12, v13, objc_opt_class(), 0), *MEMORY[0x1E6990CB8]}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_inferenceAttachments forKey:*MEMORY[0x1E6990CC0]];
  detectedObjectInfo = self->_detectedObjectInfo;
  v6 = *MEMORY[0x1E6990CB8];

  [coder encodeObject:detectedObjectInfo forKey:v6];
}

- (NSDictionary)inferenceAttachments
{
  v2 = self->_inferenceAttachments;

  return v2;
}

- (NSDictionary)detectedObjectInfo
{
  v2 = self->_detectedObjectInfo;

  return v2;
}

@end