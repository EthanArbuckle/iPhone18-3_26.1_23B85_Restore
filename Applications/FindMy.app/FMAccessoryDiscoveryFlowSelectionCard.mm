@interface FMAccessoryDiscoveryFlowSelectionCard
- (_TtC6FindMy37FMAccessoryDiscoveryFlowSelectionCard)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation FMAccessoryDiscoveryFlowSelectionCard

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMAccessoryDiscoveryFlowSelectionCard();
  v2 = v5.receiver;
  [(FMAccessoryDiscoveryFlowSelectionCard *)&v5 viewDidLoad];
  v3 = OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFlowSelectionCard_imageView;
  [*&v2[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFlowSelectionCard_imageView] setTranslatesAutoresizingMaskIntoConstraints:{0, v5.receiver, v5.super_class}];
  [*&v2[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFlowSelectionCard_imageViewContainer] setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [v2 contentView];
  [contentView addSubview:*&v2[v3]];

  sub_100252798();
  sub_100252D54();
}

- (_TtC6FindMy37FMAccessoryDiscoveryFlowSelectionCard)initWithContentView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end