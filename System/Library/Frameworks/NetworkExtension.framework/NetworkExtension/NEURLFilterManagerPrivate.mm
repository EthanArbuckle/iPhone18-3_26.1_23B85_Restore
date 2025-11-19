@interface NEURLFilterManagerPrivate
+ (void)enableConfig:(BOOL)a3 serviceID:(NSUUID *)a4 completion:(id)a5;
- (NEURLFilterManagerPrivate)init;
@end

@implementation NEURLFilterManagerPrivate

+ (void)enableConfig:(BOOL)a3 serviceID:(NSUUID *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = a1;
  v15 = sub_1BAA39EFC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1BAA4D8E0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1BAA4D100;
  v17[5] = v16;
  v18 = a4;
  sub_1BA8737D8(0, 0, v12, &unk_1BAA4CD70, v17);
}

- (NEURLFilterManagerPrivate)init
{
  v3.receiver = self;
  v3.super_class = NEURLFilterManagerPrivate;
  return [(NEURLFilterManagerPrivate *)&v3 init];
}

@end