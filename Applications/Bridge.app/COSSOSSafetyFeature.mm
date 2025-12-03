@interface COSSOSSafetyFeature
- (COSSOSSafetyFeature)initWithTitle:(id)title subtitle:(id)subtitle assetName:(id)name;
@end

@implementation COSSOSSafetyFeature

- (COSSOSSafetyFeature)initWithTitle:(id)title subtitle:(id)subtitle assetName:(id)name
{
  titleCopy = title;
  subtitleCopy = subtitle;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = COSSOSSafetyFeature;
  v12 = [(COSSOSSafetyFeature *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_subtitle, subtitle);
    objc_storeStrong(&v13->_assetName, name);
  }

  return v13;
}

@end