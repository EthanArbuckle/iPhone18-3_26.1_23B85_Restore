@interface D2DSetupManualAuthViewController
- (_TtC18SharingViewService32D2DSetupManualAuthViewController)initWithContentView:(id)view;
- (void)didCompleteTextEntry:(id)entry;
@end

@implementation D2DSetupManualAuthViewController

- (void)didCompleteTextEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_10006D3D0(entryCopy);
}

- (_TtC18SharingViewService32D2DSetupManualAuthViewController)initWithContentView:(id)view
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for D2DSetupManualAuthViewController();
  return [(D2DSetupBasePasscodeViewController *)&v5 initWithContentView:view];
}

@end