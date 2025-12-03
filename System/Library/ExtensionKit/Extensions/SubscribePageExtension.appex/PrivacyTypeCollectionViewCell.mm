@interface PrivacyTypeCollectionViewCell
- (NSArray)accessibilityCategoryViews;
- (void)layoutSubviews;
- (void)lowMemoryWarning:(id)warning;
- (void)prepareForReuse;
@end

@implementation PrivacyTypeCollectionViewCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002A20C0();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(PrivacyTypeCollectionViewCell *)&v4 prepareForReuse];
  sub_10014A088(0, 0, &OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_titleLabel);
  sub_10014A088(0, 0, &OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_detailLabel);
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_100743384(v5, v3);
  sub_1002A3850();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;

  sub_1002A1184();
}

- (void)lowMemoryWarning:(id)warning
{
  v4 = sub_100740EA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100740E84();
  swift_beginAccess();
  selfCopy = self;
  sub_10000C518(&qword_100930370);
  sub_100751294();
  swift_endAccess();

  (*(v5 + 8))(v7, v4);
}

- (NSArray)accessibilityCategoryViews
{
  swift_beginAccess();
  type metadata accessor for PrivacyCategoryView();

  v2.super.isa = sub_100753294().super.isa;

  return v2.super.isa;
}

@end