@interface NEIKEv2EncryptedPayload
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)data;
@end

@implementation NEIKEv2EncryptedPayload

- (BOOL)parsePayloadData:(id)data
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, data, 40);
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