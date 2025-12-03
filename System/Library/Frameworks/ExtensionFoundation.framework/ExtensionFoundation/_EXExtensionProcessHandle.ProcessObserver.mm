@interface _EXExtensionProcessHandle.ProcessObserver
- (_TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver)init;
- (void)processDidInvalidate:(id)invalidate;
@end

@implementation _EXExtensionProcessHandle.ProcessObserver

- (void)processDidInvalidate:(id)invalidate
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock);
  invalidateCopy = invalidate;
  selfCopy = self;
  os_unfair_lock_lock(v4 + 4);
  v6 = (&selfCopy->super.isa + OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler);
  v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler);
  v7 = *&selfCopy->invalidationHandler[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
  *v6 = 0;
  v6[1] = 0;
  os_unfair_lock_unlock(v4 + 4);
  if (v8)
  {
    v8();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  }
}

- (_TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end