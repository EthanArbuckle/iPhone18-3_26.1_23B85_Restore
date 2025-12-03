@interface AXAlertBannerContent
- (AXAlertBannerContent)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle iconImage:(id)image userInfo:(id)info actionBlock:(id)block;
@end

@implementation AXAlertBannerContent

- (AXAlertBannerContent)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle iconImage:(id)image userInfo:(id)info actionBlock:(id)block
{
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  infoCopy = info;
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = AXAlertBannerContent;
  v20 = [(AXAlertBannerContent *)&v24 init];
  v21 = v20;
  if (v20)
  {
    [(AXAlertBannerContent *)v20 setIdentifier:identifierCopy];
    [(AXAlertBannerContent *)v21 setTitle:titleCopy];
    [(AXAlertBannerContent *)v21 setSubtitle:subtitleCopy];
    if (imageCopy)
    {
      [(AXAlertBannerContent *)v21 setIconImage:imageCopy];
    }

    else
    {
      v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"accessibility"];
      [(AXAlertBannerContent *)v21 setIconImage:v22];
    }

    [(AXAlertBannerContent *)v21 setUserInfo:infoCopy];
    [(AXAlertBannerContent *)v21 setActionBlock:blockCopy];
  }

  return v21;
}

@end