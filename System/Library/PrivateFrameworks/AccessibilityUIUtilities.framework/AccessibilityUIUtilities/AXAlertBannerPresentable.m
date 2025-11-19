@interface AXAlertBannerPresentable
- (AXAlertBannerPresentable)initWithAlertContent:(id)a3 requesterID:(id)a4;
- (BNTemplateItemProviding)primaryTemplateItemProvider;
- (BNTemplateItemProviding)secondaryTemplateItemProvider;
- (BNTemplateViewProviding)leadingTemplateViewProvider;
- (BNTemplateViewProviding)trailingTemplateViewProvider;
- (NSString)requestIdentifier;
- (void)handleTemplateContentEvent:(int64_t)a3;
@end

@implementation AXAlertBannerPresentable

- (AXAlertBannerPresentable)initWithAlertContent:(id)a3 requesterID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AXAlertBannerPresentable;
  v8 = [(AXAlertBannerPresentable *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXAlertBannerPresentable *)v8 setAlertContent:v6];
    [(AXAlertBannerPresentable *)v9 setRequesterID:v7];
  }

  return v9;
}

- (NSString)requestIdentifier
{
  v2 = [(AXAlertBannerPresentable *)self alertContent];
  v3 = [v2 identifier];

  return v3;
}

- (BNTemplateViewProviding)leadingTemplateViewProvider
{
  v2 = [(AXAlertBannerPresentable *)self alertContent];
  v3 = [v2 iconImage];

  v4 = [objc_alloc(MEMORY[0x1E698E588]) initWithImage:v3];
  v5 = [objc_alloc(MEMORY[0x1E698E590]) initWithItem:v4];

  return v5;
}

- (BNTemplateViewProviding)trailingTemplateViewProvider
{
  v3 = [(AXAlertBannerPresentable *)self alertContent];
  v4 = [v3 actionButtonConfiguration];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E698E590]);
    v6 = [(AXAlertBannerPresentable *)self alertContent];
    v7 = [v6 actionButtonConfiguration];
    v8 = [v5 initWithItem:v7];
  }

  else
  {
    v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:12.0];
    v9 = MEMORY[0x1E69DCAD8];
    v10 = [MEMORY[0x1E69DC888] systemBlueColor];
    v7 = [v9 configurationWithHierarchicalColor:v10];

    v11 = [v6 configurationByApplyingConfiguration:v7];
    v12 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [v12 setCornerStyle:4];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v11];
    [v12 setImage:v13];

    v8 = [objc_alloc(MEMORY[0x1E698E590]) initWithItem:v12];
  }

  [v8 setVisualStyleCategory:2];
  [v8 setVisualStyle:1];
  v14 = [(AXAlertBannerPresentable *)self alertContent];
  v15 = [v14 actionBlock];
  [v8 setHidden:v15 == 0];

  return v8;
}

- (BNTemplateItemProviding)primaryTemplateItemProvider
{
  v3 = [(AXAlertBannerPresentable *)self alertContent];
  v4 = [v3 title];
  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x1E698E590]);
    v6 = [(AXAlertBannerPresentable *)self alertContent];
    v7 = [v6 title];
    v8 = [v5 initWithItem:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BNTemplateItemProviding)secondaryTemplateItemProvider
{
  v3 = [(AXAlertBannerPresentable *)self alertContent];
  v4 = [v3 subtitle];
  if ([v4 length])
  {
    v5 = objc_alloc(MEMORY[0x1E698E590]);
    v6 = [(AXAlertBannerPresentable *)self alertContent];
    v7 = [v6 subtitle];
    v8 = [v5 initWithItem:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)handleTemplateContentEvent:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = [(AXAlertBannerPresentable *)self alertContent];
    v4 = [v5 actionBlock];
    v4[2]();
  }
}

@end