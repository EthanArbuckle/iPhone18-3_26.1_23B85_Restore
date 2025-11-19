@interface HMDSHomeSharedResource
- (HMDSHomeSharedResource)initWithDisplayName:(id)a3 displayDetail:(id)a4 participants:(id)a5 UUID:(id)a6;
@end

@implementation HMDSHomeSharedResource

- (HMDSHomeSharedResource)initWithDisplayName:(id)a3 displayDetail:(id)a4 participants:(id)a5 UUID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDSHomeSharedResource;
  v15 = [(HMDSHomeSharedResource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_displayName, a3);
    objc_storeStrong(&v16->_displayDetail, a4);
    objc_storeStrong(&v16->_participants, a5);
    objc_storeStrong(&v16->_UUID, a6);
  }

  return v16;
}

@end