@interface ParagraphCollectionViewCell
- (_TtC8AppStore27ParagraphCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ParagraphCollectionViewCell

- (_TtC8AppStore27ParagraphCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_expandableTextView;
  sub_100005744(0, &qword_100970180);
  v7 = static UIColor.defaultBackground.getter();
  v8 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *(&self->super.super.super.super.super.isa + v6) = sub_10059F344(v7, 0.0, 0.0, 0.0, 0.0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = swift_getObjectType();
  v2 = v17.receiver;
  [(ParagraphCollectionViewCell *)&v17 layoutSubviews];
  v3 = [v2 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_expandableTextView;
  [*&v2[OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_expandableTextView] sizeThatFits:{v9, v11}];
  v14 = v13;
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  MinX = CGRectGetMinX(v18);
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  MinY = CGRectGetMinY(v19);
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  [*&v2[v12] setFrame:{MinX, MinY, CGRectGetWidth(v20), v14}];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(ParagraphCollectionViewCell *)&v7 prepareForReuse];
  v3 = OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_expandableTextView;
  sub_10059FAC0(0, 0);
  *(*&v2[v3] + OBJC_IVAR____TtC8AppStore18ExpandableTextView_hasMoreButton) = 0;
  sub_1005A0320();
  v4 = *&v2[v3];
  v5 = (v4 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
  v6 = *(v4 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
  *v5 = 0;
  v5[1] = 0;
  sub_10001F63C(v6);
  [*(v4 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton) setUserInteractionEnabled:{0, v7.receiver, v7.super_class}];
}

@end