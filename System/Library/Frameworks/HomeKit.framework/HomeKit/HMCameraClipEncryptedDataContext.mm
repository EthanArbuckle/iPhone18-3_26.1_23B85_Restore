@interface HMCameraClipEncryptedDataContext
- (BOOL)isEqual:(id)equal;
- (HMCameraClipEncryptedDataContext)initWithDataRepresentation:(id)representation;
- (HMCameraClipEncryptedDataContext)initWithInitializationVector:(id)vector ciphertext:(id)ciphertext tag:(id)tag;
- (NSData)dataRepresentation;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMCameraClipEncryptedDataContext

- (unint64_t)hash
{
  initializationVector = [(HMCameraClipEncryptedDataContext *)self initializationVector];
  v4 = [initializationVector hash];

  ciphertext = [(HMCameraClipEncryptedDataContext *)self ciphertext];
  v6 = [ciphertext hash] ^ v4;

  v7 = [(HMCameraClipEncryptedDataContext *)self tag];
  v8 = [v7 hash];

  return v6 ^ v8;
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
    initializationVector = [v6 initializationVector];
    initializationVector2 = [(HMCameraClipEncryptedDataContext *)self initializationVector];
    if ([initializationVector isEqualToData:initializationVector2])
    {
      ciphertext = [v7 ciphertext];
      ciphertext2 = [(HMCameraClipEncryptedDataContext *)self ciphertext];
      if ([ciphertext isEqualToData:ciphertext2])
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
  initializationVector = [(HMCameraClipEncryptedDataContext *)self initializationVector];
  v4 = [initializationVector length];
  ciphertext = [(HMCameraClipEncryptedDataContext *)self ciphertext];
  v6 = [ciphertext length] + v4;
  v7 = [(HMCameraClipEncryptedDataContext *)self tag];
  v8 = [v7 length];

  v9 = [MEMORY[0x1E695DF88] dataWithCapacity:v6 + v8];
  initializationVector2 = [(HMCameraClipEncryptedDataContext *)self initializationVector];
  [v9 appendData:initializationVector2];

  ciphertext2 = [(HMCameraClipEncryptedDataContext *)self ciphertext];
  [v9 appendData:ciphertext2];

  v12 = [(HMCameraClipEncryptedDataContext *)self tag];
  [v9 appendData:v12];

  v13 = [v9 copy];

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  initializationVector = [(HMCameraClipEncryptedDataContext *)self initializationVector];
  [v3 appendFormat:@" IV length: %lu", objc_msgSend(initializationVector, "length")];

  ciphertext = [(HMCameraClipEncryptedDataContext *)self ciphertext];
  [v3 appendFormat:@" Ciphertext length: %lu", objc_msgSend(ciphertext, "length")];

  v6 = [(HMCameraClipEncryptedDataContext *)self tag];
  [v3 appendFormat:@" Tag length: %lu", objc_msgSend(v6, "length")];

  [v3 appendString:@">"];
  v7 = [v3 copy];

  return v7;
}

- (HMCameraClipEncryptedDataContext)initWithInitializationVector:(id)vector ciphertext:(id)ciphertext tag:(id)tag
{
  vectorCopy = vector;
  ciphertextCopy = ciphertext;
  tagCopy = tag;
  if (!vectorCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  v11 = tagCopy;
  if ([vectorCopy length] != 16)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!ciphertextCopy)
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
    v13 = [vectorCopy copy];
    initializationVector = v12->_initializationVector;
    v12->_initializationVector = v13;

    v15 = [ciphertextCopy copy];
    ciphertext = v12->_ciphertext;
    v12->_ciphertext = v15;

    v17 = [v11 copy];
    tag = v12->_tag;
    v12->_tag = v17;
  }

  return v12;
}

- (HMCameraClipEncryptedDataContext)initWithDataRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy)
  {
    v5 = representationCopy;
    v6 = [representationCopy subdataWithRange:{0, 16}];
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