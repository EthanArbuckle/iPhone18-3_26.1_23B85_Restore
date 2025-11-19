@interface ASDInstallationEventProofOfPurchase
- (ASDInstallationEventProofOfPurchase)initWithCoder:(id)a3;
- (ASDInstallationEventProofOfPurchase)initWithItemID:(unint64_t)a3 timestampString:(id)a4 isRedownload:(BOOL)a5 privateInput:(id)a6 certificate:(id)a7 finalizedToken:(id)a8;
- (NSData)publicKey;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDInstallationEventProofOfPurchase

- (ASDInstallationEventProofOfPurchase)initWithItemID:(unint64_t)a3 timestampString:(id)a4 isRedownload:(BOOL)a5 privateInput:(id)a6 certificate:(id)a7 finalizedToken:(id)a8
{
  v27.receiver = self;
  v27.super_class = ASDInstallationEventProofOfPurchase;
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = [(ASDInstallationEventProofOfPurchase *)&v27 init];
  v17->_itemID = a3;
  v18 = [v16 copy];

  timestampString = v17->_timestampString;
  v17->_timestampString = v18;

  v17->_isRedownload = a5;
  v20 = [v15 copy];

  privateInput = v17->_privateInput;
  v17->_privateInput = v20;

  v22 = [v14 copy];
  certificate = v17->_certificate;
  v17->_certificate = v22;

  v24 = [v13 copy];
  finalizedToken = v17->_finalizedToken;
  v17->_finalizedToken = v24;

  return v17;
}

- (ASDInstallationEventProofOfPurchase)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"_itemID"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timestampString"];
    if (v6)
    {
      v7 = [v4 decodeBoolForKey:@"_isRedownload"];
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_privateInput"];
      if (v8)
      {
        v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_certificate"];
        if (v9)
        {
          v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_finalizedToken"];
          if (v10)
          {
            self = [(ASDInstallationEventProofOfPurchase *)self initWithItemID:v5 timestampString:v6 isRedownload:v7 privateInput:v8 certificate:v9 finalizedToken:v10];
            v5 = self;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  itemID = self->_itemID;
  v5 = a3;
  [v5 encodeInt64:itemID forKey:@"_itemID"];
  [v5 encodeObject:self->_timestampString forKey:@"_timestampString"];
  [v5 encodeBool:self->_isRedownload forKey:@"_isRedownload"];
  [v5 encodeObject:self->_privateInput forKey:@"_privateInput"];
  [v5 encodeObject:self->_certificate forKey:@"_certificate"];
  [v5 encodeObject:self->_finalizedToken forKey:@"_finalizedToken"];
}

- (NSData)publicKey
{
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:self->_certificate options:0];

  return v2;
}

@end