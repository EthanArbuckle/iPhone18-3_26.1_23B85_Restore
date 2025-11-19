@interface CondensedAppEventCardView
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)a3;
- (void)layoutSubviews;
@end

@implementation CondensedAppEventCardView

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventTapGestureRecognizer);
  v3 = self;
  [v2 removeTarget:v3 action:0];
  [*(&v3->super.super.super.isa + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton) removeTarget:v3 action:"handleTapWithGestureRecognizer:" forControlEvents:0xFFFFFFFFLL];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for CondensedAppEventCardView();
  [(CondensedAppEventCardView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1005BB668();
}

- (void)handleTapWithGestureRecognizer:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventViewTappedAction);
  if (v3)
  {
    v4 = self;
    v5 = sub_10000827C(v3);
    v3(v5);

    sub_10001F63C(v3);
  }
}

@end