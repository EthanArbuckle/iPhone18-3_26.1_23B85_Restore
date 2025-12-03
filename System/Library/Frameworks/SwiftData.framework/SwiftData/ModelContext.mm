@interface ModelContext
- (void)_clearChangedThisTransaction:(id)transaction;
- (void)_processChangedManagedObjectIDs:(id)ds;
- (void)autosave;
- (void)checkAutosaveConditions;
@end

@implementation ModelContext

- (void)_processChangedManagedObjectIDs:(id)ds
{
  v3 = sub_197520BFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197520BDC();

  sub_1974B06F8();

  (*(v4 + 8))(v8, v3);
}

- (void)_clearChangedThisTransaction:(id)transaction
{
  v3 = sub_1975219CC();

  sub_1974B4C84(v3);
}

- (void)checkAutosaveConditions
{

  sub_1974B71DC();
}

- (void)autosave
{
  v3 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  if (*(&self->super.isa + v3) == 1 && self->_hasChanges[0] == 1)
  {
    *(&self->super.isa + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = 0;

    sub_19740FF68();
  }
}

@end