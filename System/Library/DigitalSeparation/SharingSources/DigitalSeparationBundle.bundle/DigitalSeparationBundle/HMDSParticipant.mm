@interface HMDSParticipant
- (HMDSParticipant)initWithRole:(int64_t)role permission:(int64_t)permission identity:(id)identity homeUniqueIdentifier:(id)identifier;
@end

@implementation HMDSParticipant

- (HMDSParticipant)initWithRole:(int64_t)role permission:(int64_t)permission identity:(id)identity homeUniqueIdentifier:(id)identifier
{
  identityCopy = identity;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = HMDSParticipant;
  v13 = [(HMDSParticipant *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_role = role;
    v13->_permission = permission;
    objc_storeStrong(&v13->_identity, identity);
    objc_storeStrong(&v14->_homeUniqueIdentifier, identifier);
  }

  return v14;
}

@end