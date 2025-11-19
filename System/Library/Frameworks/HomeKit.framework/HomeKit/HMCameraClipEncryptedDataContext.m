@interface HMCameraClipEncryptedDataContext
- (BOOL)isEqual:(id)a3;
- (HMCameraClipEncryptedDataContext)initWithDataRepresentation:(id)a3;
- (HMCameraClipEncryptedDataContext)initWithInitializationVector:(id)a3 ciphertext:(id)a4 tag:(id)a5;
- (NSData)dataRepresentation;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMCameraClipEncryptedDataContext

- (unint64_t)hash
{
  v3 = [(HMCameraClipEncryptedDataContext *)self initializationVector];
  v4 = [v3 hash];

  v5 = [(HMCameraClipEncryptedDataContext *)self ciphertext];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMCameraClipEncryptedDataContext *)self tag];
  v8 = [v7 hash];

  return v6 ^ v8;
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
    v8 = [v6 initializationVector];
    v9 = [(HMCameraClipEncryptedDataContext *)self initializationVector];
    if ([v8 isEqualToData:v9])
    {
      v10 = [v7 ciphertext];
      v11 = [(HMCameraClipEncryptedDataContext *)self ciphertext];
      if ([v10 isEqualToData:v11])
      {
        v12 = [v7 tag];
        v13 = [(HMCameraClipEncryptedDataContext *)self tag];
        v14 = [v12 isEqualToData:v13];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSData)dataRepresentation
{
  v3 = [(HMCameraClipEncryptedDataContext *)self initializationVector];
  v4 = [v3 length];
  v5 = [(HMCameraClipEncryptedDataContext *)self ciphertext];
  v6 = [v5 length] + v4;
  v7 = [(HMCameraClipEncryptedDataContext *)self tag];
  v8 = [v7 length];

  v9 = [MEMORY[0x1E695DF88] dataWithCapacity:v6 + v8];
  v10 = [(HMCameraClipEncryptedDataContext *)self initializationVector];
  [v9 appendData:v10];

  v11 = [(HMCameraClipEncryptedDataContext *)self ciphertext];
  [v9 appendData:v11];

  v12 = [(HMCameraClipEncryptedDataContext *)self tag];
  [v9 appendData:v12];

  v13 = [v9 copy];

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(HMCameraClipEncryptedDataContext *)self initializationVector];
  [v3 appendFormat:@" IV length: %lu", objc_msgSend(v4, "length")];

  v5 = [(HMCameraClipEncryptedDataContext *)self ciphertext];
  [v3 appendFormat:@" Ciphertext length: %lu", objc_msgSend(v5, "length")];

  v6 = [(HMCameraClipEncryptedDataContext *)self tag];
  [v3 appendFormat:@" Tag length: %lu", objc_msgSend(v6, "length")];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (HMCameraClipEncryptedDataContext)initWithInitializationVector:(id)a3 ciphertext:(id)a4 tag:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  v11 = v10;
  if ([v8 length] != 16)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v9)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v11)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if ([v11 length] != 16)
  {
LABEL_13:
    v20 = _HMFPreconditionFailure();
    return [(HMCameraClipEncryptedDataContext *)v20 initWithDataRepresentation:v21, v22];
  }

  v23.receiver = self;
  v23.super_class = HMCameraClipEncryptedDataContext;
  v12 = [(HMCameraClipEncryptedDataContext *)&v23 init];
  if (v12)
  {
    v13 = [v8 copy];
    initializationVector = v12->_initializationVector;
    v12->_initializationVector = v13;

    v15 = [v9 copy];
    ciphertext = v12->_ciphertext;
    v12->_ciphertext = v15;

    v17 = [v11 copy];
    tag = v12->_tag;
    v12->_tag = v17;
  }

  return v12;
}

- (HMCameraClipEncryptedDataContext)initWithDataRepresentation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [v4 subdataWithRange:{0, 16}];
    v7 = [v5 subdataWithRange:{objc_msgSend(v5, "length") - 16, 16}];
    v8 = [v5 subdataWithRange:{16, objc_msgSend(v5, "length") - 32}];
    v9 = [(HMCameraClipEncryptedDataContext *)self initWithInitializationVector:v6 ciphertext:v8 tag:v7];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    [(_HMPrivacySettingsProvider *)v11 requestMicrophoneAccessWithQueue:v12 completion:v13, v14];
  }

  return result;
}

@end