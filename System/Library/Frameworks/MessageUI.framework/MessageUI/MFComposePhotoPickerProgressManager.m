@interface MFComposePhotoPickerProgressManager
- (BOOL)hasAnyProgress;
- (id)progressFor:(id)a3;
- (void)cancelEverything;
- (void)cancelProgressFor:(id)a3;
- (void)setProgress:(id)a3 for:(id)a4;
@end

@implementation MFComposePhotoPickerProgressManager

- (BOOL)hasAnyProgress
{
  MEMORY[0x1E69E5928](self);
  sub_1BE93B678();
  MEMORY[0x1E69E5920](self);
  return sub_1BE941E8C() & 1;
}

- (void)setProgress:(id)a3 for:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](self);
  sub_1BE94225C();
  sub_1BE93B71C(a3);

  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (id)progressFor:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1BE94225C();
  v7 = sub_1BE93BAB8();

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);

  return v7;
}

- (void)cancelProgressFor:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1BE94225C();
  sub_1BE93BC90();

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
}

- (void)cancelEverything
{
  MEMORY[0x1E69E5928](self);
  sub_1BE93BF1C();
  MEMORY[0x1E69E5920](self);
}

@end