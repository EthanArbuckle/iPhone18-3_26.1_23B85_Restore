@interface AARotationMode
- (AARotationMode)init;
- (AARotationMode)initWithMode:(int64_t)mode namespaceName:(id)name startDate:(id)date cachedRotations:(int64_t)rotations resetCount:(int64_t)count lastRotation:(id)rotation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AARotationMode

- (AARotationMode)initWithMode:(int64_t)mode namespaceName:(id)name startDate:(id)date cachedRotations:(int64_t)rotations resetCount:(int64_t)count lastRotation:(id)rotation
{
  rotationsCopy = rotations;
  countCopy = count;
  sub_1B69867A4(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &rotationsCopy - v12;
  v14 = sub_1B6AB8DB0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &rotationsCopy - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B6AB8E40();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &rotationsCopy - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8E00();
  sub_1B6AB8D80();
  if (rotation)
  {
    sub_1B6AB8D80();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v15 + 56))(v13, v23, 1, v14);
  return BridgedRotationMode.init(mode:namespaceName:startDate:cachedRotations:resetCount:lastRotation:)(mode, v22, v18, rotationsCopy, countCopy, v13);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  BridgedRotationMode.encode(with:)(coderCopy);
}

- (AARotationMode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end