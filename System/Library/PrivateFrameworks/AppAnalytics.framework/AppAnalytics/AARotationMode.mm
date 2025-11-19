@interface AARotationMode
- (AARotationMode)init;
- (AARotationMode)initWithMode:(int64_t)a3 namespaceName:(id)a4 startDate:(id)a5 cachedRotations:(int64_t)a6 resetCount:(int64_t)a7 lastRotation:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AARotationMode

- (AARotationMode)initWithMode:(int64_t)a3 namespaceName:(id)a4 startDate:(id)a5 cachedRotations:(int64_t)a6 resetCount:(int64_t)a7 lastRotation:(id)a8
{
  v25 = a6;
  v26 = a7;
  sub_1B69867A4(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  v14 = sub_1B6AB8DB0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B6AB8E40();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8E00();
  sub_1B6AB8D80();
  if (a8)
  {
    sub_1B6AB8D80();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v15 + 56))(v13, v23, 1, v14);
  return BridgedRotationMode.init(mode:namespaceName:startDate:cachedRotations:resetCount:lastRotation:)(a3, v22, v18, v25, v26, v13);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  BridgedRotationMode.encode(with:)(v4);
}

- (AARotationMode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end