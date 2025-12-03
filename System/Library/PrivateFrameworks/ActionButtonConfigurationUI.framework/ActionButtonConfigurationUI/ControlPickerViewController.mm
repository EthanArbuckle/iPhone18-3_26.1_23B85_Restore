@interface ControlPickerViewController
- (_TtC27ActionButtonConfigurationUI27ControlPickerViewController)initWithConfiguration:(id)configuration;
- (void)controlsGalleryViewController:(id)controller didFinishWithResult:(id)result error:(id)error;
@end

@implementation ControlPickerViewController

- (void)controlsGalleryViewController:(id)controller didFinishWithResult:(id)result error:(id)error
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  sub_23DDDD098(controllerCopy, result, error);
}

- (_TtC27ActionButtonConfigurationUI27ControlPickerViewController)initWithConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end