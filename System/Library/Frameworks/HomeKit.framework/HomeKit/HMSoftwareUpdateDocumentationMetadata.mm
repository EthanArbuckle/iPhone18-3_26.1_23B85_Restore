@interface HMSoftwareUpdateDocumentationMetadata
- (BOOL)isEqual:(id)equal;
- (HMSoftwareUpdateDocumentationMetadata)init;
- (HMSoftwareUpdateDocumentationMetadata)initWithCoder:(id)coder;
- (HMSoftwareUpdateDocumentationMetadata)initWithURL:(id)l digest:(id)digest;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMSoftwareUpdateDocumentationMetadata

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMSoftwareUpdateDocumentationMetadata *)self URL];
  [coderCopy encodeObject:v5 forKey:@"HM.url"];

  digest = [(HMSoftwareUpdateDocumentationMetadata *)self digest];
  [coderCopy encodeObject:digest forKey:@"HM.digest"];
}

- (HMSoftwareUpdateDocumentationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.url"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.digest"];

  v7 = [(HMSoftwareUpdateDocumentationMetadata *)self initWithURL:v5 digest:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(HMSoftwareUpdateDocumentationMetadata *)self URL];
  v7 = [v6 copyWithZone:zone];
  digest = [(HMSoftwareUpdateDocumentationMetadata *)self digest];
  v9 = [digest copyWithZone:zone];
  v10 = [v5 initWithURL:v7 digest:v9];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(HMSoftwareUpdateDocumentationMetadata *)self URL];
  path = [v5 path];
  digest = [(HMSoftwareUpdateDocumentationMetadata *)self digest];
  v8 = [v3 stringWithFormat:@"<%@, URL = %@, Digest = %@>", v4, path, digest];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = [(HMSoftwareUpdateDocumentationMetadata *)self URL];
    absoluteURL = [v7 absoluteURL];
    v9 = [(HMSoftwareUpdateDocumentationMetadata *)v6 URL];
    absoluteURL2 = [v9 absoluteURL];
    v11 = [absoluteURL isEqual:absoluteURL2];

    if (v11)
    {
      digest = [(HMSoftwareUpdateDocumentationMetadata *)self digest];
      digest2 = [(HMSoftwareUpdateDocumentationMetadata *)v6 digest];
      v14 = [digest isEqual:digest2];
    }

    else
    {
LABEL_8:
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v2 = [(HMSoftwareUpdateDocumentationMetadata *)self URL];
  v3 = [v2 hash];

  return v3;
}

- (HMSoftwareUpdateDocumentationMetadata)initWithURL:(id)l digest:(id)digest
{
  lCopy = l;
  digestCopy = digest;
  v18.receiver = self;
  v18.super_class = HMSoftwareUpdateDocumentationMetadata;
  v8 = [(HMSoftwareUpdateDocumentationMetadata *)&v18 init];
  if (v8)
  {
    v9 = [lCopy copy];
    URL = v8->_URL;
    v8->_URL = v9;

    v11 = [digestCopy copy];
    digest = v8->_digest;
    v8->_digest = v11;

    v13 = objc_alloc(MEMORY[0x1E696AFB0]);
    value = [digestCopy value];
    v15 = [v13 initWithUUIDBytes:{objc_msgSend(value, "bytes")}];
    metadataDigestUUID = v8->_metadataDigestUUID;
    v8->_metadataDigestUUID = v15;
  }

  return v8;
}

- (HMSoftwareUpdateDocumentationMetadata)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end