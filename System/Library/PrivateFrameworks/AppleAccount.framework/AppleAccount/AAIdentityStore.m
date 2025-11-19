@interface AAIdentityStore
- (AAIdentityStore)init;
- (void)fetchIdentityFor:(ACAccount *)a3 completionHandler:(id)a4;
@end

@implementation AAIdentityStore

- (AAIdentityStore)init
{
  type metadata accessor for IdentityDaemonConnection();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980AF8, &qword_1B7070950);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 2) = v4;
  *(v3 + 3) = 0;
  *(&self->super.isa + OBJC_IVAR___AAIdentityStore_daemonConnection) = v3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for IdentityStore();
  return [(AAIdentityStore *)&v6 init];
}

- (void)fetchIdentityFor:(ACAccount *)a3 completionHandler:(id)a4
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB980B10, &qword_1B70709A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B70558A0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B70709B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B70709C0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1B700AC44(0, 0, v9, &unk_1B70709D0, v14);
}

@end