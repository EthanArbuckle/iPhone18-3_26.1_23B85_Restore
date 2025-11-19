@interface AppEventSearchResultCollectionViewCell
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AppEventSearchResultCollectionViewCell

- (void)dealloc
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer);
  v3 = self;
  [v2 removeTarget:v3 action:0];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for AppEventSearchResultCollectionViewCell();
  [(AppEventSearchResultCollectionViewCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100227BA0();
}

- (void)handleTapWithGestureRecognizer:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction);
  if (v3)
  {
    v4 = self;
    v5 = sub_10001CE50(v3);
    v3(v5);

    sub_1000167E0(v3);
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1002289B4(v7);

  return v9 & 1;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1002281E0();
}

@end