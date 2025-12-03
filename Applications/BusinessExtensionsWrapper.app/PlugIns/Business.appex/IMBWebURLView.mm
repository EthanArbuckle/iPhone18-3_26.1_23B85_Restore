@interface IMBWebURLView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC8Business13IMBWebURLView)initWithCoder:(id)coder;
- (_TtC8Business13IMBWebURLView)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)toolTipInteraction:(id)interaction configurationAtPoint:(CGPoint)point;
- (void)copy:(id)copy;
- (void)handleLongPress;
@end

@implementation IMBWebURLView

- (_TtC8Business13IMBWebURLView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8Business13IMBWebURLView_domainLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC8Business13IMBWebURLView_separator;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC8Business13IMBWebURLView_navigationURL;
  v7 = sub_1000AB6EC();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)handleLongPress
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedMenuController = [v3 sharedMenuController];
  [(IMBWebURLView *)selfCopy becomeFirstResponder];
  [(IMBWebURLView *)selfCopy bounds];
  [sharedMenuController showMenuFromView:selfCopy rect:?];
}

- (void)copy:(id)copy
{
  if (copy)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1000AC47C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10007E664();

  sub_10000E784(v6, &unk_1000F1DF0, &qword_1000B18F0);
}

- (_TtC8Business13IMBWebURLView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  selfCopy = self;
  if (sub_10002CE60() == 2)
  {

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass() != 0;
  }

  else
  {
    sharedMenuController = [objc_opt_self() sharedMenuController];
    v7 = [(IMBWebURLView *)selfCopy canPerformAction:"copy:" withSender:sharedMenuController];

    recognizerCopy = selfCopy;
  }

  return v7;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  sub_100005A24(0, &qword_1000F29F0, UIContextMenuConfiguration_ptr);
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  selfCopy = self;
  v7 = sub_10007ED84(0, 0, 0, sub_10007F340, v5);

  return v7;
}

- (id)toolTipInteraction:(id)interaction configurationAtPoint:(CGPoint)point
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_10007F0FC();

  return v7;
}

@end