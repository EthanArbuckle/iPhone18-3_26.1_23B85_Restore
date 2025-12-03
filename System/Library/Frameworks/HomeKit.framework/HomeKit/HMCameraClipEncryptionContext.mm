@interface HMCameraClipEncryptionContext
- (BOOL)isEqual:(id)equal;
- (HMCameraClipEncryptionContext)initWithCoder:(id)coder;
- (HMCameraClipEncryptionContext)initWithKey:(id)key scheme:(unint64_t)scheme;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCameraClipEncryptionContext

- (HMCameraClipEncryptionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"k"];
  v6 = [coderCopy decodeIntegerForKey:@"s"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(HMCameraClipEncryptionContext *)self initWithKey:v5 scheme:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(HMCameraClipEncryptionContext *)self key];
  [coderCopy encodeObject:v4 forKey:@"k"];

  [coderCopy encodeInteger:-[HMCameraClipEncryptionContext scheme](self forKey:{"scheme"), @"s"}];
}

- (unint64_t)hash
{
  v2 = [(HMCameraClipEncryptionContext *)self key];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
  v7 = v6;
  if (v6)
  {
    v8 = [v6 key];
    v9 = [(HMCameraClipEncryptionContext *)self key];
    if ([v8 isEqualToData:v9])
    {
      scheme = [v7 scheme];
      v11 = scheme == [(HMCameraClipEncryptionContext *)self scheme];
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

- (HMCameraClipEncryptionContext)initWithKey:(id)key scheme:(unint64_t)scheme
{
  keyCopy = key;
  if (!keyCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!scheme)
  {
LABEL_7:
    v12 = _HMFPreconditionFailure();
    return +[(HMCameraClipEncryptionContext *)v12];
  }

  v7 = keyCopy;
  v14.receiver = self;
  v14.super_class = HMCameraClipEncryptionContext;
  v8 = [(HMCameraClipEncryptionContext *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    key = v8->_key;
    v8->_key = v9;

    v8->_scheme = scheme;
  }

  return v8;
}

@end