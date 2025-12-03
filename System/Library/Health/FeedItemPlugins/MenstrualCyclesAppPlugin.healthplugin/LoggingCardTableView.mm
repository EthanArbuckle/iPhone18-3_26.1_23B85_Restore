@interface LoggingCardTableView
- (CGSize)previousContentSize;
- (LoggingCardTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (LoggingCardTableViewObserver)loggingCardTableViewObserver;
- (_TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)layoutSubviews;
@end

@implementation LoggingCardTableView

- (LoggingCardTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  [(LoggingCardTableView *)self setPreviousContentSize:*MEMORY[0x29EDB90E8], *(MEMORY[0x29EDB90E8] + 8), frame.size.width, frame.size.height];
  v7.receiver = self;
  v7.super_class = LoggingCardTableView;
  return [(LoggingCardTableView *)&v7 initWithFrame:style style:*MEMORY[0x29EDB90E0], *(MEMORY[0x29EDB90E0] + 8), *(MEMORY[0x29EDB90E0] + 16), *(MEMORY[0x29EDB90E0] + 24)];
}

- (void)layoutSubviews
{
  selfCopy = self;
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

- (_TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_previousContentSize);
  *v10 = 0;
  v10[1] = 0;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_loggingCardTableViewObserver) = 0;
  swift_unknownObjectWeakInit();
  v12.receiver = self;
  v12.super_class = type metadata accessor for LoggingCardTableView();
  return [(LoggingCardTableView *)&v12 initWithFrame:style style:x, y, width, height];
}

- (_TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView)initWithCoder:(id)coder
{
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_previousContentSize);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_CF600760015F1B1EB9BB714E5E29173820LoggingCardTableView_loggingCardTableViewObserver) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for LoggingCardTableView();
  coderCopy = coder;
  v7 = [(LoggingCardTableView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end