@interface ContactVisualIdentityPicker.Coordinator
- (void)visualIdentityPicker:(id)a3 didUpdatePhotoForVisualIdentity:(id)a4 withContactImage:(id)a5;
- (void)visualIdentityPickerDidCancel:(id)a3;
@end

@implementation ContactVisualIdentityPicker.Coordinator

- (void)visualIdentityPickerDidCancel:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C54FBC64(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)visualIdentityPicker:(id)a3 didUpdatePhotoForVisualIdentity:(id)a4 withContactImage:(id)a5
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  MEMORY[0x1E69E5928](self);
  sub_1C54FC0CC(a3, a4, a5);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
}

@end