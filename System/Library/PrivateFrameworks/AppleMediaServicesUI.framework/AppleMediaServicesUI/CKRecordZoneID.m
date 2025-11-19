@interface CKRecordZoneID
- (NSString)hashedDescription;
@end

@implementation CKRecordZoneID

- (NSString)hashedDescription
{
  v3 = objc_opt_class();
  v4 = [(CKRecordZoneID *)self zoneName];
  v5 = AMSHashIfNeeded();
  v6 = [(CKRecordZoneID *)self ownerName];
  v7 = AMSHashIfNeeded();
  v8 = [NSString stringWithFormat:@"<%@: %p name = %@ | owner = %@>", v3, self, v5, v7];

  return v8;
}

@end