@interface MigrationObserver
- (_TtC23ActivitySharingServices17MigrationObserver)init;
- (void)cloudKitManager:(id)a3 didBeginUpdatesForFetchWithType:(int64_t)a4;
- (void)cloudKitManager:(id)a3 didReceiveNewMigrationAvailableItems:(id)a4 moreComing:(BOOL)a5 changesProcessedHandler:(id)a6;
- (void)cloudKitManager:(id)a3 didReceiveNewMigrationAvailableItemsForSelf:(id)a4 moreComing:(BOOL)a5 changesProcessedHandler:(id)a6;
- (void)dealloc;
@end

@implementation MigrationObserver

- (void)dealloc
{
  v3 = *__swift_project_boxed_opaque_existential_0Tm((&self->super.isa + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_cloudKitCoordinator), *&self->cloudKitCoordinator[OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_cloudKitCoordinator + 16]);
  v4 = self;
  [v3 removeObserver_];
  v5.receiver = v4;
  v5.super_class = type metadata accessor for MigrationObserver();
  [(MigrationObserver *)&v5 dealloc];
}

- (_TtC23ActivitySharingServices17MigrationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cloudKitManager:(id)a3 didBeginUpdatesForFetchWithType:(int64_t)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  if (!a4)
  {
    v10 = sub_221FB64C8();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = self;
    v12 = self;
    sub_221FA7A78(0, 0, v9, &unk_221FBC6A0, v11);
  }
}

- (void)cloudKitManager:(id)a3 didReceiveNewMigrationAvailableItemsForSelf:(id)a4 moreComing:(BOOL)a5 changesProcessedHandler:(id)a6
{
  v8 = _Block_copy(a6);
  sub_221E9D138(0, &qword_281306E80, 0x277CE9108);
  v9 = sub_221FB6438();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = a3;
  v12 = self;
  sub_221F35984(v9, sub_221F36194, v10, "Handling migration available items for self: %s", &unk_28355ADB0, &unk_221FBC670);
}

- (void)cloudKitManager:(id)a3 didReceiveNewMigrationAvailableItems:(id)a4 moreComing:(BOOL)a5 changesProcessedHandler:(id)a6
{
  v8 = _Block_copy(a6);
  sub_221E9D138(0, &qword_281306E80, 0x277CE9108);
  v9 = sub_221FB6438();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = a3;
  v12 = self;
  sub_221F35984(v9, sub_221F3555C, v10, "Handling migration available items from remote: %s", &unk_28355AD60, &unk_221FBC648);
}

@end