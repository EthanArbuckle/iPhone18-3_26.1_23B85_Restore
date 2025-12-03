@interface AppEventCollectionViewCell
- (_TtC8AppStore26AppEventCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AppEventCollectionViewCell

- (_TtC8AppStore26AppEventCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v2 = v11.receiver;
  [(AppEventCollectionViewCell *)&v11 layoutSubviews];
  v3 = OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView];
  [v2 bounds];
  [v4 setBounds:{0.0, 0.0}];
  v5 = *&v2[v3];
  [v2 bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  [v5 setCenter:{MidX, CGRectGetMidY(v13)}];
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1001D31D4();
}

@end