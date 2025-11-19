@interface LinkableFooterView
- (_TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView)initWithCoder:(id)a3;
- (_TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView)initWithReuseIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation LinkableFooterView

- (_TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_10060F2EC(v3, v4);
}

- (_TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView)initWithCoder:(id)a3
{
  v4 = type metadata accessor for FontUseCase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel;
  if (qword_10096E298 != -1)
  {
    swift_once();
  }

  v9 = sub_1000056A8(v4, qword_1009D1748);
  (*(v5 + 16))(v7, v9, v4);
  v10 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(&self->super.super.super.super.isa + v8) = sub_1002F5B8C(v7, 0, 0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10060F774();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10060FA0C(a3);
}

@end