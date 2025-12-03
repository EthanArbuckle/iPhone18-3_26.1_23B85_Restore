@interface FamilyActivitySlot.SlotDelegate
- (_TtCC14FamilyControls18FamilyActivitySlot12SlotDelegate)init;
- (id)slotMachineForFinalContentInSlotView:(id)view;
- (id)slotView:(id)view replacementForFinalContent:(id)content style:(id)style tag:(id)tag;
- (void)dealloc;
@end

@implementation FamilyActivitySlot.SlotDelegate

- (void)dealloc
{
  selfCopy = self;
  sub_238334630(1);
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for FamilyActivitySlot.SlotDelegate();
  [(FamilyActivitySlot.SlotDelegate *)&v3 dealloc];
}

- (id)slotMachineForFinalContentInSlotView:(id)view
{
  selfCopy = self;
  v4 = sub_23833415C();

  return v4;
}

- (id)slotView:(id)view replacementForFinalContent:(id)content style:(id)style tag:(id)tag
{
  v6 = swift_unknownObjectRetain();

  return v6;
}

- (_TtCC14FamilyControls18FamilyActivitySlot12SlotDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end