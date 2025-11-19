@interface ContactsButtonSlotView
- (CGRect)frame;
- (_TtC10ContactsUI22ContactsButtonSlotView)init;
- (_TtC10ContactsUI22ContactsButtonSlotView)initWithCoder:(id)a3;
- (_TtC10ContactsUI22ContactsButtonSlotView)initWithFrame:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation ContactsButtonSlotView

- (_TtC10ContactsUI22ContactsButtonSlotView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DD730]) init];
  v9 = OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_logger;
  if (qword_1EAF71EF8 != -1)
  {
    swift_once();
  }

  v10 = sub_199DF804C();
  v11 = __swift_project_value_buffer(v10, qword_1EAF87058);
  (*(*(v10 - 8) + 16))(self + v9, v11, v10);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker) = 0;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ContactsButtonSlotView(0);
  return [(ContactsButtonSlotView *)&v13 initWithFrame:x, y, width, height];
}

- (_TtC10ContactsUI22ContactsButtonSlotView)init
{
  v3 = OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DD730]) init];
  v4 = OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_logger;
  if (qword_1EAF71EF8 != -1)
  {
    swift_once();
  }

  v5 = sub_199DF804C();
  v6 = __swift_project_value_buffer(v5, qword_1EAF87058);
  (*(*(v5 - 8) + 16))(self + v4, v6, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContactsButtonSlotView(0);
  return [(ContactsButtonSlotView *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtC10ContactsUI22ContactsButtonSlotView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_internalSlotView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DD730]) init];
  v5 = OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_logger;
  if (qword_1EAF71EF8 != -1)
  {
    swift_once();
  }

  v6 = sub_199DF804C();
  v7 = __swift_project_value_buffer(v6, qword_1EAF87058);
  (*(*(v6 - 8) + 16))(self + v5, v7, v6);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10ContactsUI22ContactsButtonSlotView_slotMaker) = 0;
  result = sub_199DFA85C();
  __break(1u);
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ContactsButtonSlotView(0);
  [(ContactsButtonSlotView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ContactsButtonSlotView(0);
  v7 = v8.receiver;
  [(ContactsButtonSlotView *)&v8 setFrame:x, y, width, height];
  sub_199B1E34C();
}

@end