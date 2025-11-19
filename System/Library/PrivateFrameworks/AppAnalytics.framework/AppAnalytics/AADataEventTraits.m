@interface AADataEventTraits
- (AADataEventTraits)init;
- (BOOL)discardWhenPresent;
- (BOOL)onlyOnce;
- (BOOL)unique;
- (void)setDiscardWhenPresent:(BOOL)a3;
- (void)setOnlyOnce:(BOOL)a3;
- (void)setUnique:(BOOL)a3;
@end

@implementation AADataEventTraits

- (BOOL)onlyOnce
{
  v3 = OBJC_IVAR___AADataEventTraits_onlyOnce;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setOnlyOnce:(BOOL)a3
{
  v5 = OBJC_IVAR___AADataEventTraits_onlyOnce;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)unique
{
  v3 = OBJC_IVAR___AADataEventTraits_unique;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUnique:(BOOL)a3
{
  v5 = OBJC_IVAR___AADataEventTraits_unique;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)discardWhenPresent
{
  v3 = OBJC_IVAR___AADataEventTraits_discardWhenPresent;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDiscardWhenPresent:(BOOL)a3
{
  v5 = OBJC_IVAR___AADataEventTraits_discardWhenPresent;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
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