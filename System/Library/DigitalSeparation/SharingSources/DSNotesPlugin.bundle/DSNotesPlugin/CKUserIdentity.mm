@interface CKUserIdentity
- (NSString)unifiedContactIdentifier;
@end

@implementation CKUserIdentity

- (NSString)unifiedContactIdentifier
{
  selfCopy = self;
  contactIdentifiers = [(CKUserIdentity *)selfCopy contactIdentifiers];
  v4 = sub_1132C();

  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];

    v7 = sub_1128C();
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

@end