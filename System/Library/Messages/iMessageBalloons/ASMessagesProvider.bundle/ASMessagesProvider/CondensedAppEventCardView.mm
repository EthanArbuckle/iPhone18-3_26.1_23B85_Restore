@interface CondensedAppEventCardView
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)a3;
- (void)layoutSubviews;
@end

@implementation CondensedAppEventCardView

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventTapGestureRecognizer);
  v3 = self;
  [v2 removeTarget:v3 action:0];
  [*(&v3->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_viewButton) removeTarget:v3 action:"handleTapWithGestureRecognizer:" forControlEvents:0xFFFFFFFFLL];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for CondensedAppEventCardView();
  [(CondensedAppEventCardView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_68F380();
}

- (void)handleTapWithGestureRecognizer:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventViewTappedAction);
  if (v3)
  {
    v4 = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
  }
}

@end