@interface COSSOSSafetyFeature
- (COSSOSSafetyFeature)initWithTitle:(id)a3 subtitle:(id)a4 assetName:(id)a5;
@end

@implementation COSSOSSafetyFeature

- (COSSOSSafetyFeature)initWithTitle:(id)a3 subtitle:(id)a4 assetName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = COSSOSSafetyFeature;
  v12 = [(COSSOSSafetyFeature *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_subtitle, a4);
    objc_storeStrong(&v13->_assetName, a5);
  }

  return v13;
}

@end