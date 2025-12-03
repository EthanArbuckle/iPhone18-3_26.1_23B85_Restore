@interface SSSScreenshotItemProvider
- (SSSScreenshot)screenshot;
- (SSSScreenshotItemProvider)initWithScreenshot:(id)screenshot;
- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (id)nameForScreenshot;
@end

@implementation SSSScreenshotItemProvider

- (SSSScreenshotItemProvider)initWithScreenshot:(id)screenshot
{
  screenshotCopy = screenshot;
  v5 = [(SSSScreenshotItemProvider *)self placeholderItemForScreenshot:screenshotCopy];
  v8.receiver = self;
  v8.super_class = SSSScreenshotItemProvider;
  v6 = [(SSSScreenshotItemProvider *)&v8 initWithPlaceholderItem:v5];
  [(SSSScreenshotItemProvider *)v6 setScreenshot:screenshotCopy];

  return v6;
}

- (id)nameForScreenshot
{
  overrideName = self->_overrideName;
  if (overrideName)
  {
    filename = overrideName;
  }

  else
  {
    screenshot = [(SSSScreenshotItemProvider *)self screenshot];
    filename = [screenshot filename];
  }

  return filename;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  screenshot = [(SSSScreenshotItemProvider *)self screenshot];
  v5 = [(SSSScreenshotItemProvider *)self placeholderItemForScreenshot:screenshot];

  return v5;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  v5 = [NSException exceptionWithName:NSGenericException reason:@"Subclass must override [SSSScreenshotItemProvider activityViewController:subjectForActivityType]" userInfo:0];
  screenshot = [(SSSScreenshotItemProvider *)self screenshot];
  filename = [screenshot filename];

  return filename;
}

- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type
{
  v5 = [NSException exceptionWithName:NSGenericException reason:@"Subclass must override [SSSScreenshotItemProvider activityViewController:attachmentNameForActivityType]" userInfo:0];
  screenshot = [(SSSScreenshotItemProvider *)self screenshot];
  filename = [screenshot filename];

  return filename;
}

- (SSSScreenshot)screenshot
{
  WeakRetained = objc_loadWeakRetained(&self->_screenshot);

  return WeakRetained;
}

@end