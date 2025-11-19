@interface HMDSParticipant
- (HMDSParticipant)initWithRole:(int64_t)a3 permission:(int64_t)a4 identity:(id)a5 homeUniqueIdentifier:(id)a6;
@end

@implementation HMDSParticipant

- (HMDSParticipant)initWithRole:(int64_t)a3 permission:(int64_t)a4 identity:(id)a5 homeUniqueIdentifier:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = HMDSParticipant;
  v13 = [(HMDSParticipant *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_role = a3;
    v13->_permission = a4;
    objc_storeStrong(&v13->_identity, a5);
    objc_storeStrong(&v14->_homeUniqueIdentifier, a6);
  }

  return v14;
}

@end