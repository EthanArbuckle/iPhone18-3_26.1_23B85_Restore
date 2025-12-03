@interface CKRecordID
- (NSString)hashedDescription;
@end

@implementation CKRecordID

- (NSString)hashedDescription
{
  v3 = objc_opt_class();
  name = [(CKRecordID *)self name];
  v5 = AMSHashIfNeeded();
  zoneIdentifier = [(CKRecordID *)self zoneIdentifier];
  v7 = AMSHashIfNeeded();
  v8 = [NSString stringWithFormat:@"<%@: %p name = %@ | zoneIdentifier = %@", v3, self, v5, v7];

  return v8;
}

@end