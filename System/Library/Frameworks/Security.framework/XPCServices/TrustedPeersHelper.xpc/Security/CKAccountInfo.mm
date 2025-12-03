@interface CKAccountInfo
- (id)description;
@end

@implementation CKAccountInfo

- (id)description
{
  cKPropertiesDescription = [(CKAccountInfo *)self CKPropertiesDescription];
  v3 = [NSString stringWithFormat:@"<CKAccountInfo: %@>", cKPropertiesDescription];

  return v3;
}

@end