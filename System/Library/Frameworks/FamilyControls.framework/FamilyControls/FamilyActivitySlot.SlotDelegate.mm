@interface FamilyActivitySlot.SlotDelegate
- (_TtCC14FamilyControls18FamilyActivitySlot12SlotDelegate)init;
- (id)slotMachineForFinalContentInSlotView:(id)a3;
- (id)slotView:(id)a3 replacementForFinalContent:(id)a4 style:(id)a5 tag:(id)a6;
- (void)dealloc;
@end

@implementation FamilyActivitySlot.SlotDelegate

- (void)dealloc
{
  v2 = self;
  sub_238334630(1);
  v3.receiver = v2;
  v3.super_class = type metadata accessor for FamilyActivitySlot.SlotDelegate();
  [(FamilyActivitySlot.SlotDelegate *)&v3 dealloc];
}

- (id)slotMachineForFinalContentInSlotView:(id)a3
{
  v3 = self;
  v4 = sub_23833415C();

  return v4;
}

- (id)slotView:(id)a3 replacementForFinalContent:(id)a4 style:(id)a5 tag:(id)a6
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