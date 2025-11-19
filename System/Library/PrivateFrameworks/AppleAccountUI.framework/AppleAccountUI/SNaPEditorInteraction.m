@interface SNaPEditorInteraction
- (UIView)view;
- (void)didMoveToView:(id)a3;
- (void)onboardingControllerDidDismissSettings:(id)a3;
- (void)onboardingControllerDidFinishSetup:(id)a3;
- (void)setView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation SNaPEditorInteraction

- (UIView)view
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C553FD8C();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setView:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C553FE64(a3);
  MEMORY[0x1E69E5920](self);
}

- (void)willMoveToView:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C5540C88();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)didMoveToView:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C5540D74(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)onboardingControllerDidDismissSettings:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C5540E74(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)onboardingControllerDidFinishSetup:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1C55416C8();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

@end