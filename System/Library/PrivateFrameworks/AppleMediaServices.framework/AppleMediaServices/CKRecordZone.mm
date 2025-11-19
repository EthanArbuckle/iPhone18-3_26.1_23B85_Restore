@interface CKRecordZone
- (BOOL)isDefaultRecordZone;
- (NSString)hashedDescription;
@end

@implementation CKRecordZone

- (BOOL)isDefaultRecordZone
{
  v3 = +[CKRecordZone defaultRecordZone];
  v4 = [v3 identifier];
  v5 = [v4 name];
  v6 = [(CKRecordZone *)self identifier];
  v7 = [v6 name];
  v8 = [v5 isEqualToString:v7];

  return v8;
}

- (NSString)hashedDescription
{
  v2 = [(CKRecordZone *)self identifier];
  v3 = [v2 hashedDescription];

  return v3;
}

@end