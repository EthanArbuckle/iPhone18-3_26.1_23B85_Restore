@interface AADataEventTraits
- (AADataEventTraits)init;
- (BOOL)discardWhenPresent;
- (BOOL)onlyOnce;
- (BOOL)unique;
- (void)setDiscardWhenPresent:(BOOL)present;
- (void)setOnlyOnce:(BOOL)once;
- (void)setUnique:(BOOL)unique;
@end

@implementation AADataEventTraits

- (BOOL)onlyOnce
{
  v3 = OBJC_IVAR___AADataEventTraits_onlyOnce;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOnlyOnce:(BOOL)once
{
  v5 = OBJC_IVAR___AADataEventTraits_onlyOnce;
  swift_beginAccess();
  *(&self->super.isa + v5) = once;
}

- (BOOL)unique
{
  v3 = OBJC_IVAR___AADataEventTraits_unique;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUnique:(BOOL)unique
{
  v5 = OBJC_IVAR___AADataEventTraits_unique;
  swift_beginAccess();
  *(&self->super.isa + v5) = unique;
}

- (BOOL)discardWhenPresent
{
  v3 = OBJC_IVAR___AADataEventTraits_discardWhenPresent;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDiscardWhenPresent:(BOOL)present
{
  v5 = OBJC_IVAR___AADataEventTraits_discardWhenPresent;
  swift_beginAccess();
  *(&self->super.isa + v5) = present;
}

- (AADataEventTraits)init
{
  *(&self->super.isa + OBJC_IVAR___AADataEventTraits_onlyOnce) = 0;
  *(&self->super.isa + OBJC_IVAR___AADataEventTraits_unique) = 0;
  *(&self->super.isa + OBJC_IVAR___AADataEventTraits_discardWhenPresent) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for BridgedDataEventTraits();
  return [(AADataEventTraits *)&v3 init];
}

@end