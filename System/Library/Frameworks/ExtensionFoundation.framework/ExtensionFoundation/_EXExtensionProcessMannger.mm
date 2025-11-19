@interface _EXExtensionProcessMannger
- (_EXExtensionProcessMannger)init;
- (void)processDidInvalidate:(id)a3;
@end

@implementation _EXExtensionProcessMannger

- (_EXExtensionProcessMannger)init
{
  v3 = OBJC_IVAR____EXExtensionProcessMannger_processExtensionMap;
  *(&self->super.isa + v3) = [objc_opt_self() strongToWeakObjectsMapTable];
  v4 = OBJC_IVAR____EXExtensionProcessMannger_processExtensionMapLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 4) = 0;
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = type metadata accessor for _EXExtensionProcessMannger();
  return [(_EXExtensionProcessMannger *)&v7 init];
}

- (void)processDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  _EXExtensionProcessMannger.processDidInvalidate(_:)(v4);
}

@end