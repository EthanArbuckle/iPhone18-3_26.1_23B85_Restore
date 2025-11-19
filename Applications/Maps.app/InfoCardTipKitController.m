@interface InfoCardTipKitController
- (_TtC4Maps24InfoCardTipKitController)init;
- (void)presentAddToLibraryTipIfNeededWithSourceItem:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)reset;
- (void)usedAddToLibrary;
@end

@implementation InfoCardTipKitController

- (void)usedAddToLibrary
{
  v2 = type metadata accessor for Tips.InvalidationReason();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for Tips.InvalidationReason.actionPerformed(_:), v2, v4);
  sub_10023ED18();
  Tip.invalidate(reason:)();
  (*(v3 + 8))(v6, v2);
}

- (void)reset
{
  v2 = self;
  sub_10023CAC0();
}

- (void)presentAddToLibraryTipIfNeededWithSourceItem:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10023CCB4(a3);
  swift_unknownObjectRelease();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps24InfoCardTipKitController_hasShownForCurrentPlacecard) = 1;
  v3 = qword_1019065F8;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_1000CE6B8(&qword_101914D68);
  sub_100021540(v5, qword_10195FD30);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
}

- (_TtC4Maps24InfoCardTipKitController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end