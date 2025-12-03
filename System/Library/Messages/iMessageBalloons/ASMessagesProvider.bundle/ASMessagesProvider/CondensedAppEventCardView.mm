@interface CondensedAppEventCardView
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
@end

@implementation CondensedAppEventCardView

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventTapGestureRecognizer);
  selfCopy = self;
  [v2 removeTarget:selfCopy action:0];
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_viewButton) removeTarget:selfCopy action:"handleTapWithGestureRecognizer:" forControlEvents:0xFFFFFFFFLL];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for CondensedAppEventCardView();
  [(CondensedAppEventCardView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_68F380();
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventViewTappedAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_F714(v3);
    v3(v5);

    sub_F704(v3);
  }
}

@end