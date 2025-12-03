@interface MFComposePhotoPickerProgressManager
- (BOOL)hasAnyProgress;
- (id)progressFor:(id)for;
- (void)cancelEverything;
- (void)cancelProgressFor:(id)for;
- (void)setProgress:(id)progress for:(id)for;
@end

@implementation MFComposePhotoPickerProgressManager

- (BOOL)hasAnyProgress
{
  MEMORY[0x1E69E5928](self);
  sub_1BE93B678();
  MEMORY[0x1E69E5920](self);
  return sub_1BE941E8C() & 1;
}

- (void)setProgress:(id)progress for:(id)for
{
  MEMORY[0x1E69E5928](progress);
  MEMORY[0x1E69E5928](for);
  MEMORY[0x1E69E5928](self);
  sub_1BE94225C();
  sub_1BE93B71C(progress);

  MEMORY[0x1E69E5920](for);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](progress);
}

- (id)progressFor:(id)for
{
  MEMORY[0x1E69E5928](for);
  MEMORY[0x1E69E5928](self);
  sub_1BE94225C();
  v7 = sub_1BE93BAB8();

  MEMORY[0x1E69E5920](for);
  MEMORY[0x1E69E5920](self);

  return v7;
}

- (void)cancelProgressFor:(id)for
{
  MEMORY[0x1E69E5928](for);
  MEMORY[0x1E69E5928](self);
  sub_1BE94225C();
  sub_1BE93BC90();

  MEMORY[0x1E69E5920](for);
  MEMORY[0x1E69E5920](self);
}

- (void)cancelEverything
{
  MEMORY[0x1E69E5928](self);
  sub_1BE93BF1C();
  MEMORY[0x1E69E5920](self);
}

@end