@interface CBRecordingIndicatorWindow
- (CBRecordingIndicatorWindow)initWithWindowScene:(id)scene debugName:(id)name;
@end

@implementation CBRecordingIndicatorWindow

- (CBRecordingIndicatorWindow)initWithWindowScene:(id)scene debugName:(id)name
{
  v5.receiver = self;
  v5.super_class = CBRecordingIndicatorWindow;
  return [(CBRecordingIndicatorWindow *)&v5 initWithWindowScene:scene, name];
}

@end