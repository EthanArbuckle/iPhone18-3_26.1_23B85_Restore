@interface HMCameraClipEncryptionContext
- (BOOL)isEqual:(id)a3;
- (HMCameraClipEncryptionContext)initWithCoder:(id)a3;
- (HMCameraClipEncryptionContext)initWithKey:(id)a3 scheme:(unint64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCameraClipEncryptionContext

- (HMCameraClipEncryptionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"k"];
  v6 = [v4 decodeIntegerForKey:@"s"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    self = [(HMCameraClipEncryptionContext *)self initWithKey:v5 scheme:v6];
    v8 = self;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(HMCameraClipEncryptionContext *)self key];
  [v5 encodeObject:v4 forKey:@"k"];

  [v5 encodeInteger:-[HMCameraClipEncryptionContext scheme](self forKey:{"scheme"), @"s"}];
}

- (unint64_t)hash
{
  v2 = [(HMCameraClipEncryptionContext *)self key];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
  v7 = v6;
  if (v6)
  {
    v8 = [v6 key];
    v9 = [(HMCameraClipEncryptionContext *)self key];
    if ([v8 isEqualToData:v9])
    {
      v10 = [v7 scheme];
      v11 = v10 == [(HMCameraClipEncryptionContext *)self scheme];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(HMCameraClipEncryptionContext *)self key];
  [v3 appendFormat:@" key length: %lu", objc_msgSend(v4, "length")];

  v5 = HMStringFromCameraClipEncryptionScheme([(HMCameraClipEncryptionContext *)self scheme]);
  [v3 appendFormat:@" scheme: %@", v5];

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

- (HMCameraClipEncryptionContext)initWithKey:(id)a3 scheme:(unint64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:
    v12 = _HMFPreconditionFailure();
    return +[(HMCameraClipEncryptionContext *)v12];
  }

  v7 = v6;
  v14.receiver = self;
  v14.super_class = HMCameraClipEncryptionContext;
  v8 = [(HMCameraClipEncryptionContext *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    key = v8->_key;
    v8->_key = v9;

    v8->_scheme = a4;
  }

  return v8;
}

@end