@interface AXAlertBannerContent
- (AXAlertBannerContent)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 iconImage:(id)a6 userInfo:(id)a7 actionBlock:(id)a8;
@end

@implementation AXAlertBannerContent

- (AXAlertBannerContent)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 iconImage:(id)a6 userInfo:(id)a7 actionBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v24.receiver = self;
  v24.super_class = AXAlertBannerContent;
  v20 = [(AXAlertBannerContent *)&v24 init];
  v21 = v20;
  if (v20)
  {
    [(AXAlertBannerContent *)v20 setIdentifier:v14];
    [(AXAlertBannerContent *)v21 setTitle:v15];
    [(AXAlertBannerContent *)v21 setSubtitle:v16];
    if (v17)
    {
      [(AXAlertBannerContent *)v21 setIconImage:v17];
    }

    else
    {
      v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"accessibility"];
      [(AXAlertBannerContent *)v21 setIconImage:v22];
    }

    [(AXAlertBannerContent *)v21 setUserInfo:v18];
    [(AXAlertBannerContent *)v21 setActionBlock:v19];
  }

  return v21;
}

@end