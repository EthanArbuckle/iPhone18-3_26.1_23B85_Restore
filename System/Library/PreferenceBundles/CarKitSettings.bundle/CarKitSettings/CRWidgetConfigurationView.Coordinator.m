@interface CRWidgetConfigurationView.Coordinator
- (_TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator)init;
- (void)widgetConfigurationViewController:(id)a3 didFinishWithIntent:(id)a4;
@end

@implementation CRWidgetConfigurationView.Coordinator

- (void)widgetConfigurationViewController:(id)a3 didFinishWithIntent:(id)a4
{
  v5 = *(&stru_20.maxprot + (swift_isaMask & self->super.isa));
  v6 = a4;
  v11 = self;
  v7 = v5();
  v9 = v8;

  v9(v6);
}

- (_TtCV14CarKitSettings25CRWidgetConfigurationView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end