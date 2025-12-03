@interface HMDSHomeSharedResource
- (HMDSHomeSharedResource)initWithDisplayName:(id)name displayDetail:(id)detail participants:(id)participants UUID:(id)d;
@end

@implementation HMDSHomeSharedResource

- (HMDSHomeSharedResource)initWithDisplayName:(id)name displayDetail:(id)detail participants:(id)participants UUID:(id)d
{
  nameCopy = name;
  detailCopy = detail;
  participantsCopy = participants;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = HMDSHomeSharedResource;
  v15 = [(HMDSHomeSharedResource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_displayName, name);
    objc_storeStrong(&v16->_displayDetail, detail);
    objc_storeStrong(&v16->_participants, participants);
    objc_storeStrong(&v16->_UUID, d);
  }

  return v16;
}

@end