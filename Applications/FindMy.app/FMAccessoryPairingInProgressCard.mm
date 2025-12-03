@interface FMAccessoryPairingInProgressCard
- (_TtC6FindMy32FMAccessoryPairingInProgressCard)initWithContentView:(id)view;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FMAccessoryPairingInProgressCard

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMAccessoryPairingInProgressCard();
  v2 = v3.receiver;
  [(FMAccessoryPairingInProgressCard *)&v3 viewDidLoad];
  sub_10047D9B4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10047D130(appear);
}

- (_TtC6FindMy32FMAccessoryPairingInProgressCard)initWithContentView:(id)view
{
  v5 = OBJC_IVAR____TtC6FindMy32FMAccessoryPairingInProgressCard_imageView;
  v6 = objc_allocWithZone(UIImageView);
  viewCopy = view;
  *&self->PRXCardContentViewController_opaque[v5] = [v6 init];
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC6FindMy32FMAccessoryPairingInProgressCard_imageFetchCancellable] = 0;
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = type metadata accessor for FMAccessoryPairingInProgressCard();
  v8 = [(FMAccessoryPairingInProgressCard *)&v10 initWithContentView:viewCopy];

  return v8;
}

@end