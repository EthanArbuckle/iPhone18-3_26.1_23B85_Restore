@interface VNCVMLFaceprint_LegacySupportDoNotChange
- (VNCVMLFaceprint_LegacySupportDoNotChange)initWithCoder:(id)coder;
@end

@implementation VNCVMLFaceprint_LegacySupportDoNotChange

- (VNCVMLFaceprint_LegacySupportDoNotChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = VNCVMLFaceprint_LegacySupportDoNotChange;
  v5 = [(VNCVMLFaceprint_LegacySupportDoNotChange *)&v15 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CVMLFaceprint_CodingVersionCodingKey"];
  if (![v6 unsignedIntegerValue])
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CVMLFaceprint_FaceprintCodingKey"];
    faceprint = v5->_faceprint;
    v5->_faceprint = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CVMLFaceprint_KeyCodingKey"];
    key = v5->_key;
    v5->_key = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CVMLFaceprint_PlatformCodingKey"];
    v5->_platform = [v12 unsignedIntegerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CVMLFaceprint_ProfileCodingKey"];
    v5->_profile = [v13 unsignedIntegerValue];

LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end