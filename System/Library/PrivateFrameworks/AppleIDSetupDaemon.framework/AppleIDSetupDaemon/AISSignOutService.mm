@interface AISSignOutService
- (void)signOutAllAccountsWith:(AISSignOutContext *)with completionHandler:(id)handler;
@end

@implementation AISSignOutService

- (void)signOutAllAccountsWith:(AISSignOutContext *)with completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = with;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2408D4E60();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2408D8D98;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2408D69E0;
  v15[5] = v14;
  withCopy = with;

  sub_24087FFF8(0, 0, v10, &unk_2408D69E8, v15);
}

@end