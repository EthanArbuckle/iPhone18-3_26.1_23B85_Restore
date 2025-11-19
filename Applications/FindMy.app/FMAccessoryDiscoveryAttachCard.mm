@interface FMAccessoryDiscoveryAttachCard
- (_TtC6FindMy30FMAccessoryDiscoveryAttachCard)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation FMAccessoryDiscoveryAttachCard

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMAccessoryDiscoveryAttachCard();
  v2 = v5.receiver;
  [(FMAccessoryDiscoveryAttachCard *)&v5 viewDidLoad];
  v3 = OBJC_IVAR____TtC6FindMy30FMAccessoryDiscoveryAttachCard_imageView;
  [*&v2[OBJC_IVAR____TtC6FindMy30FMAccessoryDiscoveryAttachCard_imageView] setTranslatesAutoresizingMaskIntoConstraints:{0, v5.receiver, v5.super_class}];
  [*&v2[OBJC_IVAR____TtC6FindMy30FMAccessoryDiscoveryAttachCard_imageViewContainer] setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v2 contentView];
  [v4 addSubview:*&v2[v3]];

  sub_1004B08A8();
  sub_1004B0DA0();
}

- (_TtC6FindMy30FMAccessoryDiscoveryAttachCard)initWithContentView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end