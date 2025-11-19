@interface NEIKEv2EncryptedPayload
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)a3;
@end

@implementation NEIKEv2EncryptedPayload

- (BOOL)parsePayloadData:(id)a3
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, a3, 40);
  }

  return [(NEIKEv2EncryptedPayload *)self hasRequiredFields];
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
  }

  return self != 0;
}

@end