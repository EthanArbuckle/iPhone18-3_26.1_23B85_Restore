@interface IMBWebURLView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC8Business13IMBWebURLView)initWithCoder:(id)a3;
- (_TtC8Business13IMBWebURLView)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)toolTipInteraction:(id)a3 configurationAtPoint:(CGPoint)a4;
- (void)copy:(id)a3;
- (void)handleLongPress;
@end

@implementation IMBWebURLView

- (_TtC8Business13IMBWebURLView)initWithCoder:(id)a3
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
  v5 = self;
  v4 = [v3 sharedMenuController];
  [(IMBWebURLView *)v5 becomeFirstResponder];
  [(IMBWebURLView *)v5 bounds];
  [v4 showMenuFromView:v5 rect:?];
}

- (void)copy:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1000AC47C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10007E664();

  sub_10000E784(v6, &unk_1000F1DF0, &qword_1000B18F0);
}

- (_TtC8Business13IMBWebURLView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a3;
  v6 = self;
  if (sub_10002CE60() == 2)
  {

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass() != 0;
  }

  else
  {
    v8 = [objc_opt_self() sharedMenuController];
    v7 = [(IMBWebURLView *)v6 canPerformAction:"copy:" withSender:v8];

    v5 = v6;
  }

  return v7;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  sub_100005A24(0, &qword_1000F29F0, UIContextMenuConfiguration_ptr);
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v6 = self;
  v7 = sub_10007ED84(0, 0, 0, sub_10007F340, v5);

  return v7;
}

- (id)toolTipInteraction:(id)a3 configurationAtPoint:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_10007F0FC();

  return v7;
}

@end