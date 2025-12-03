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
  sub_100497BA4();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(PrivacyTypeCollectionViewCell *)&v4 prepareForReuse];
  sub_1001581A4(0, 0, &OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_titleLabel);
  sub_1001581A4(0, 0, &OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_detailLabel);
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_10075FCEC(v5, v3);
  sub_100499334();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;

  sub_100496C68();
}

- (void)lowMemoryWarning:(id)warning
{
  v4 = sub_10075D7BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D79C();
  swift_beginAccess();
  selfCopy = self;
  sub_10000A5D4(&qword_100959100);
  sub_10076E13C();
  swift_endAccess();

  (*(v5 + 8))(v7, v4);
}

- (NSArray)accessibilityCategoryViews
{
  swift_beginAccess();
  type metadata accessor for PrivacyCategoryView();

  v2.super.isa = sub_1007701AC().super.isa;

  return v2.super.isa;
}

@end