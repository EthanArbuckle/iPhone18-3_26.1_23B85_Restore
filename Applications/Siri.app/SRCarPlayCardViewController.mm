@interface SRCarPlayCardViewController
- (BOOL)shouldHandleCardSectionEngagement:(id)engagement;
- (void)cardViewController:(id)controller preferredContentSizeDidChange:(CGSize)change animated:(BOOL)animated;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidLoad;
@end

@implementation SRCarPlayCardViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100092838();
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3 = qword_10018D798;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006160(v4, qword_10018EE28);
  v5 = static os_log_type_t.info.getter();
  sub_10000AABC(v5, 0x10uLL, 0xD000000000000017, 0x8000000100116550, 0xD000000000000036, 0x8000000100116570);
  v6 = *&selfCopy->super.isRightHandDrive[OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_delegate];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 24);
  swift_unknownObjectRetain();
  v8(selfCopy, ObjectType, v6);
  swift_unknownObjectRelease();
}

- (void)cardViewController:(id)controller preferredContentSizeDidChange:(CGSize)change animated:(BOOL)animated
{
  height = change.height;
  width = change.width;
  controllerCopy = controller;
  selfCopy = self;
  sub_1000940F8(width, height);
}

- (BOOL)shouldHandleCardSectionEngagement:(id)engagement
{
  engagementCopy = engagement;
  selfCopy = self;
  sub_100092EBC(engagement);

  return 0;
}

@end