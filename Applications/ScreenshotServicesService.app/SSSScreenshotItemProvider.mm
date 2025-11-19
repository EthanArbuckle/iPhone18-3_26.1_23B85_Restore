@interface SSSScreenshotItemProvider
- (SSSScreenshot)screenshot;
- (SSSScreenshotItemProvider)initWithScreenshot:(id)a3;
- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
- (id)nameForScreenshot;
@end

@implementation SSSScreenshotItemProvider

- (SSSScreenshotItemProvider)initWithScreenshot:(id)a3
{
  v4 = a3;
  v5 = [(SSSScreenshotItemProvider *)self placeholderItemForScreenshot:v4];
  v8.receiver = self;
  v8.super_class = SSSScreenshotItemProvider;
  v6 = [(SSSScreenshotItemProvider *)&v8 initWithPlaceholderItem:v5];
  [(SSSScreenshotItemProvider *)v6 setScreenshot:v4];

  return v6;
}

- (id)nameForScreenshot
{
  overrideName = self->_overrideName;
  if (overrideName)
  {
    v3 = overrideName;
  }

  else
  {
    v4 = [(SSSScreenshotItemProvider *)self screenshot];
    v3 = [v4 filename];
  }

  return v3;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v4 = [(SSSScreenshotItemProvider *)self screenshot];
  v5 = [(SSSScreenshotItemProvider *)self placeholderItemForScreenshot:v4];

  return v5;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v5 = [NSException exceptionWithName:NSGenericException reason:@"Subclass must override [SSSScreenshotItemProvider activityViewController:subjectForActivityType]" userInfo:0];
  v6 = [(SSSScreenshotItemProvider *)self screenshot];
  v7 = [v6 filename];

  return v7;
}

- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4
{
  v5 = [NSException exceptionWithName:NSGenericException reason:@"Subclass must override [SSSScreenshotItemProvider activityViewController:attachmentNameForActivityType]" userInfo:0];
  v6 = [(SSSScreenshotItemProvider *)self screenshot];
  v7 = [v6 filename];

  return v7;
}

- (SSSScreenshot)screenshot
{
  WeakRetained = objc_loadWeakRetained(&self->_screenshot);

  return WeakRetained;
}

@end