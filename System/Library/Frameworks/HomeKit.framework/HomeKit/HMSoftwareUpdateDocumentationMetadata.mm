@interface HMSoftwareUpdateDocumentationMetadata
- (BOOL)isEqual:(id)a3;
- (HMSoftwareUpdateDocumentationMetadata)init;
- (HMSoftwareUpdateDocumentationMetadata)initWithCoder:(id)a3;
- (HMSoftwareUpdateDocumentationMetadata)initWithURL:(id)a3 digest:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMSoftwareUpdateDocumentationMetadata

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMSoftwareUpdateDocumentationMetadata *)self URL];
  [v4 encodeObject:v5 forKey:@"HM.url"];

  v6 = [(HMSoftwareUpdateDocumentationMetadata *)self digest];
  [v4 encodeObject:v6 forKey:@"HM.digest"];
}

- (HMSoftwareUpdateDocumentationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.url"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.digest"];

  v7 = [(HMSoftwareUpdateDocumentationMetadata *)self initWithURL:v5 digest:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(HMSoftwareUpdateDocumentationMetadata *)self URL];
  v7 = [v6 copyWithZone:a3];
  v8 = [(HMSoftwareUpdateDocumentationMetadata *)self digest];
  v9 = [v8 copyWithZone:a3];
  v10 = [v5 initWithURL:v7 digest:v9];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(HMSoftwareUpdateDocumentationMetadata *)self URL];
  v6 = [v5 path];
  v7 = [(HMSoftwareUpdateDocumentationMetadata *)self digest];
  v8 = [v3 stringWithFormat:@"<%@, URL = %@, Digest = %@>", v4, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v8 = [v7 absoluteURL];
    v9 = [(HMSoftwareUpdateDocumentationMetadata *)v6 URL];
    v10 = [v9 absoluteURL];
    v11 = [v8 isEqual:v10];

    if (v11)
    {
      v12 = [(HMSoftwareUpdateDocumentationMetadata *)self digest];
      v13 = [(HMSoftwareUpdateDocumentationMetadata *)v6 digest];
      v14 = [v12 isEqual:v13];
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

- (HMSoftwareUpdateDocumentationMetadata)initWithURL:(id)a3 digest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = HMSoftwareUpdateDocumentationMetadata;
  v8 = [(HMSoftwareUpdateDocumentationMetadata *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    URL = v8->_URL;
    v8->_URL = v9;

    v11 = [v7 copy];
    digest = v8->_digest;
    v8->_digest = v11;

    v13 = objc_alloc(MEMORY[0x1E696AFB0]);
    v14 = [v7 value];
    v15 = [v13 initWithUUIDBytes:{objc_msgSend(v14, "bytes")}];
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