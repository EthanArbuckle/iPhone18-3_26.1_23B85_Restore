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
  sub_82294();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(PrivacyTypeCollectionViewCell *)&v4 prepareForReuse];
  sub_811FC(0, 0, &OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_titleLabel);
  sub_811FC(0, 0, &OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_detailLabel);
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_7591D0(v5, v3);
  sub_8458C();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;

  sub_81358();
}

- (void)lowMemoryWarning:(id)warning
{
  v4 = sub_756CE0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756CC0();
  swift_beginAccess();
  selfCopy = self;
  sub_BD88(&qword_941E18);
  sub_767430();
  swift_endAccess();

  (*(v5 + 8))(v7, v4);
}

- (NSArray)accessibilityCategoryViews
{
  swift_beginAccess();
  type metadata accessor for PrivacyCategoryView();

  v2.super.isa = sub_769450().super.isa;

  return v2.super.isa;
}

@end