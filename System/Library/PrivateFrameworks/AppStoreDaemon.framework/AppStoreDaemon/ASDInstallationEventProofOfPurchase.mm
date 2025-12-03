@interface ASDInstallationEventProofOfPurchase
- (ASDInstallationEventProofOfPurchase)initWithCoder:(id)coder;
- (ASDInstallationEventProofOfPurchase)initWithItemID:(unint64_t)d timestampString:(id)string isRedownload:(BOOL)redownload privateInput:(id)input certificate:(id)certificate finalizedToken:(id)token;
- (NSData)publicKey;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDInstallationEventProofOfPurchase

- (ASDInstallationEventProofOfPurchase)initWithItemID:(unint64_t)d timestampString:(id)string isRedownload:(BOOL)redownload privateInput:(id)input certificate:(id)certificate finalizedToken:(id)token
{
  v27.receiver = self;
  v27.super_class = ASDInstallationEventProofOfPurchase;
  tokenCopy = token;
  certificateCopy = certificate;
  inputCopy = input;
  stringCopy = string;
  v17 = [(ASDInstallationEventProofOfPurchase *)&v27 init];
  v17->_itemID = d;
  v18 = [stringCopy copy];

  timestampString = v17->_timestampString;
  v17->_timestampString = v18;

  v17->_isRedownload = redownload;
  v20 = [inputCopy copy];

  privateInput = v17->_privateInput;
  v17->_privateInput = v20;

  v22 = [certificateCopy copy];
  certificate = v17->_certificate;
  v17->_certificate = v22;

  v24 = [tokenCopy copy];
  finalizedToken = v17->_finalizedToken;
  v17->_finalizedToken = v24;

  return v17;
}

- (ASDInstallationEventProofOfPurchase)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = [coderCopy decodeInt64ForKey:@"_itemID"];
  if (selfCopy)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_timestampString"];
    if (v6)
    {
      v7 = [coderCopy decodeBoolForKey:@"_isRedownload"];
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_privateInput"];
      if (v8)
      {
        v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_certificate"];
        if (v9)
        {
          v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_finalizedToken"];
          if (v10)
          {
            self = [(ASDInstallationEventProofOfPurchase *)self initWithItemID:selfCopy timestampString:v6 isRedownload:v7 privateInput:v8 certificate:v9 finalizedToken:v10];
            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  itemID = self->_itemID;
  coderCopy = coder;
  [coderCopy encodeInt64:itemID forKey:@"_itemID"];
  [coderCopy encodeObject:self->_timestampString forKey:@"_timestampString"];
  [coderCopy encodeBool:self->_isRedownload forKey:@"_isRedownload"];
  [coderCopy encodeObject:self->_privateInput forKey:@"_privateInput"];
  [coderCopy encodeObject:self->_certificate forKey:@"_certificate"];
  [coderCopy encodeObject:self->_finalizedToken forKey:@"_finalizedToken"];
}

- (NSData)publicKey
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:self->_certificate options:0];

  return v2;
}

@end