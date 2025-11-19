@interface TodayCardChinLockupListIconView
- (_TtC8AppStore31TodayCardChinLockupListIconView)initWithCoder:(id)a3;
- (void)handleTap;
- (void)layoutSubviews;
@end

@implementation TodayCardChinLockupListIconView

- (_TtC8AppStore31TodayCardChinLockupListIconView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore31TodayCardChinLockupListIconView_artworkView;
  type metadata accessor for ArtworkView();
  *(&self->super.super.super.super.isa + v4) = static ArtworkView.iconArtworkView.getter();
  v5 = OBJC_IVAR____TtC8AppStore31TodayCardChinLockupListIconView_clickAction;
  v6 = sub_10002849C(&unk_10097B3D0);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TodayCardChinLockupListIconView *)&v3 layoutSubviews];
  [v2 bounds];
  ArtworkView.frame.setter();
}

- (void)handleTap
{
  v2 = self;
  sub_1000793FC();
}

@end