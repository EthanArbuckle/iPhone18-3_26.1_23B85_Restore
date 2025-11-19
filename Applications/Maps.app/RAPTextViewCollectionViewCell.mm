@interface RAPTextViewCollectionViewCell
+ (NSString)reuseIdentifier;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (_TtC4Maps29RAPTextViewCollectionViewCell)initWithCoder:(id)a3;
- (_TtC4Maps29RAPTextViewCollectionViewCell)initWithFrame:(CGRect)a3;
- (_TtP4Maps37RAPTextViewCollectionViewCellDelegate_)delegate;
- (double)preferredHeight;
- (void)textViewDidChange:(id)a3;
@end

@implementation RAPTextViewCollectionViewCell

+ (NSString)reuseIdentifier
{
  type metadata accessor for RAPTextViewCollectionViewCell();
  sub_1000CE6B8(&qword_10190B728);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtP4Maps37RAPTextViewCollectionViewCellDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps29RAPTextViewCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC4Maps29RAPTextViewCollectionViewCell_textView;
  *(self + v8) = [objc_allocWithZone(TextViewWithPlaceholderText) init];
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for RAPTextViewCollectionViewCell();
  v9 = [(RAPTextViewCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
  sub_100118A8C();
  sub_100118C18();

  return v9;
}

- (_TtC4Maps29RAPTextViewCollectionViewCell)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC4Maps29RAPTextViewCollectionViewCell_textView;
  *(self + v3) = [objc_allocWithZone(TextViewWithPlaceholderText) init];
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (double)preferredHeight
{
  v2 = *(self + OBJC_IVAR____TtC4Maps29RAPTextViewCollectionViewCell_textView);
  v3 = self;
  v4 = [v2 font];
  if (v4)
  {
    v5 = v4;
    [v4 _mapkit_scaledValueForValue:100.0];
    v7 = v6;
  }

  else
  {
    v7 = 100.0;
  }

  return v7;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(RAPTextViewCollectionViewCell *)v2 contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  Width = CGRectGetWidth(v18);
  [(RAPTextViewCollectionViewCell *)v2 preferredHeight];
  v14 = v13;

  v15 = Width;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  width = a3.width;
  [(RAPTextViewCollectionViewCell *)self intrinsicContentSize:a3.width];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10011928C(v4);
}

@end