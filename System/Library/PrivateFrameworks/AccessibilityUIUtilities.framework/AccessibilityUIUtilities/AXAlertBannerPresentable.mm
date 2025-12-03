@interface AXAlertBannerPresentable
- (AXAlertBannerPresentable)initWithAlertContent:(id)content requesterID:(id)d;
- (BNTemplateItemProviding)primaryTemplateItemProvider;
- (BNTemplateItemProviding)secondaryTemplateItemProvider;
- (BNTemplateViewProviding)leadingTemplateViewProvider;
- (BNTemplateViewProviding)trailingTemplateViewProvider;
- (NSString)requestIdentifier;
- (void)handleTemplateContentEvent:(int64_t)event;
@end

@implementation AXAlertBannerPresentable

- (AXAlertBannerPresentable)initWithAlertContent:(id)content requesterID:(id)d
{
  contentCopy = content;
  dCopy = d;
  v11.receiver = self;
  v11.super_class = AXAlertBannerPresentable;
  v8 = [(AXAlertBannerPresentable *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXAlertBannerPresentable *)v8 setAlertContent:contentCopy];
    [(AXAlertBannerPresentable *)v9 setRequesterID:dCopy];
  }

  return v9;
}

- (NSString)requestIdentifier
{
  alertContent = [(AXAlertBannerPresentable *)self alertContent];
  identifier = [alertContent identifier];

  return identifier;
}

- (BNTemplateViewProviding)leadingTemplateViewProvider
{
  alertContent = [(AXAlertBannerPresentable *)self alertContent];
  iconImage = [alertContent iconImage];

  v4 = [objc_alloc(MEMORY[0x1E698E588]) initWithImage:iconImage];
  v5 = [objc_alloc(MEMORY[0x1E698E590]) initWithItem:v4];

  return v5;
}

- (BNTemplateViewProviding)trailingTemplateViewProvider
{
  alertContent = [(AXAlertBannerPresentable *)self alertContent];
  actionButtonConfiguration = [alertContent actionButtonConfiguration];

  if (actionButtonConfiguration)
  {
    v5 = objc_alloc(MEMORY[0x1E698E590]);
    alertContent2 = [(AXAlertBannerPresentable *)self alertContent];
    actionButtonConfiguration2 = [alertContent2 actionButtonConfiguration];
    v8 = [v5 initWithItem:actionButtonConfiguration2];
  }

  else
  {
    alertContent2 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:12.0];
    v9 = MEMORY[0x1E69DCAD8];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    actionButtonConfiguration2 = [v9 configurationWithHierarchicalColor:systemBlueColor];

    v11 = [alertContent2 configurationByApplyingConfiguration:actionButtonConfiguration2];
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [filledButtonConfiguration setCornerStyle:4];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v11];
    [filledButtonConfiguration setImage:v13];

    v8 = [objc_alloc(MEMORY[0x1E698E590]) initWithItem:filledButtonConfiguration];
  }

  [v8 setVisualStyleCategory:2];
  [v8 setVisualStyle:1];
  alertContent3 = [(AXAlertBannerPresentable *)self alertContent];
  actionBlock = [alertContent3 actionBlock];
  [v8 setHidden:actionBlock == 0];

  return v8;
}

- (BNTemplateItemProviding)primaryTemplateItemProvider
{
  alertContent = [(AXAlertBannerPresentable *)self alertContent];
  title = [alertContent title];
  if ([title length])
  {
    v5 = objc_alloc(MEMORY[0x1E698E590]);
    alertContent2 = [(AXAlertBannerPresentable *)self alertContent];
    title2 = [alertContent2 title];
    v8 = [v5 initWithItem:title2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BNTemplateItemProviding)secondaryTemplateItemProvider
{
  alertContent = [(AXAlertBannerPresentable *)self alertContent];
  subtitle = [alertContent subtitle];
  if ([subtitle length])
  {
    v5 = objc_alloc(MEMORY[0x1E698E590]);
    alertContent2 = [(AXAlertBannerPresentable *)self alertContent];
    subtitle2 = [alertContent2 subtitle];
    v8 = [v5 initWithItem:subtitle2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)handleTemplateContentEvent:(int64_t)event
{
  if (event == 2)
  {
    alertContent = [(AXAlertBannerPresentable *)self alertContent];
    actionBlock = [alertContent actionBlock];
    actionBlock[2]();
  }
}

@end