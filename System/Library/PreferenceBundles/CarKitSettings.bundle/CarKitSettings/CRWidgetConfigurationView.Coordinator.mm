@interface CRWidgetConfigurationView.Coordinator
- (_TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator)init;
- (void)widgetConfigurationViewController:(id)controller didFinishWithIntent:(id)intent;
@end

@implementation CRWidgetConfigurationView.Coordinator

- (void)widgetConfigurationViewController:(id)controller didFinishWithIntent:(id)intent
{
  v5 = *(&stru_20.maxprot + (swift_isaMask & self->super.isa));
  intentCopy = intent;
  selfCopy = self;
  v7 = v5();
  v9 = v8;

  v9(intentCopy);
}

- (_TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end