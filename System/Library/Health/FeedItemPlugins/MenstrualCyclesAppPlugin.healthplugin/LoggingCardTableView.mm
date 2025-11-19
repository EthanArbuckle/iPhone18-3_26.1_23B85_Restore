@interface LoggingCardTableView
- (CGSize)previousContentSize;
- (LoggingCardTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (LoggingCardTableViewObserver)loggingCardTableViewObserver;
- (_TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)layoutSubviews;
@end

@implementation LoggingCardTableView

- (LoggingCardTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  [(LoggingCardTableView *)self setPreviousContentSize:*MEMORY[0x29EDB90E8], *(MEMORY[0x29EDB90E8] + 8), a3.size.width, a3.size.height];
  v7.receiver = self;
  v7.super_class = LoggingCardTableView;
  return [(LoggingCardTableView *)&v7 initWithFrame:a4 style:*MEMORY[0x29EDB90E0], *(MEMORY[0x29EDB90E0] + 8), *(MEMORY[0x29EDB90E0] + 16), *(MEMORY[0x29EDB90E0] + 24)];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_29DEBEC3C();
}

- (CGSize)previousContentSize
{
  width = self->_previousContentSize.width;
  height = self->_previousContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (LoggingCardTableViewObserver)loggingCardTableViewObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_loggingCardTableViewObserver);

  return WeakRetained;
}

- (_TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_previousContentSize);
  *v10 = 0;
  v10[1] = 0;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_loggingCardTableViewObserver) = 0;
  swift_unknownObjectWeakInit();
  v12.receiver = self;
  v12.super_class = type metadata accessor for LoggingCardTableView();
  return [(LoggingCardTableView *)&v12 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView)initWithCoder:(id)a3
{
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_previousContentSize);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_loggingCardTableViewObserver) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for LoggingCardTableView();
  v6 = a3;
  v7 = [(LoggingCardTableView *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end