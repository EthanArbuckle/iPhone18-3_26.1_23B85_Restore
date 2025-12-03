@interface CKRecordZone
- (BOOL)isDefaultRecordZone;
- (NSString)hashedDescription;
@end

@implementation CKRecordZone

- (BOOL)isDefaultRecordZone
{
  v3 = +[CKRecordZone defaultRecordZone];
  identifier = [v3 identifier];
  name = [identifier name];
  identifier2 = [(CKRecordZone *)self identifier];
  name2 = [identifier2 name];
  v8 = [name isEqualToString:name2];

  return v8;
}

- (NSString)hashedDescription
{
  identifier = [(CKRecordZone *)self identifier];
  hashedDescription = [identifier hashedDescription];

  return hashedDescription;
}

@end