@interface ICContentInsetViewControllerConfiguration
- (BOOL)isEqual:(id)a3;
- (ICContentInsetViewControllerConfiguration)init;
- (ICContentInsetViewControllerConfiguration)initWithInsets:(NSDirectionalEdgeInsets)a3 usesSafeAreaLayoutGuide:(BOOL)a4 cornerRadius:(double)a5;
- (NSDirectionalEdgeInsets)insets;
@end

@implementation ICContentInsetViewControllerConfiguration

- (NSDirectionalEdgeInsets)insets
{
  v2 = *(&self->super.isa + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets);
  v3 = *(&self->insets.top + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets);
  v4 = *(&self->insets.leading + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets);
  v5 = *(&self->insets.bottom + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets);
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (ICContentInsetViewControllerConfiguration)initWithInsets:(NSDirectionalEdgeInsets)a3 usesSafeAreaLayoutGuide:(BOOL)a4 cornerRadius:(double)a5
{
  *(&self->super.isa + OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets) = a3;
  *(&self->super.isa + OBJC_IVAR___ICContentInsetViewControllerConfiguration_usesSafeAreaLayoutGuide) = a4;
  *(&self->super.isa + OBJC_IVAR___ICContentInsetViewControllerConfiguration_cornerRadius) = a5;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ContentInsetViewController.Configuration();
  return [(ICContentInsetViewControllerConfiguration *)&v6 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v5 = self;
  }

  sub_10027CA3C(v11, v9);
  if (!v10)
  {
    sub_10027CAAC(v9);
    goto LABEL_8;
  }

  type metadata accessor for ContentInsetViewController.Configuration();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = _s11MobileNotes26ContentInsetViewControllerC13ConfigurationC2eeoiySbAE_AEtFZ_0(self, v8);

LABEL_9:
  sub_10027CAAC(v11);
  return v6;
}

- (ICContentInsetViewControllerConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end