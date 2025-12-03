@interface SNaPEditorInteraction
- (UIView)view;
- (void)didMoveToView:(id)view;
- (void)onboardingControllerDidDismissSettings:(id)settings;
- (void)onboardingControllerDidFinishSetup:(id)setup;
- (void)setView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation SNaPEditorInteraction

- (UIView)view
{
  MEMORY[0x1E69E5928](self);
  v4 = sub_1C553FD8C();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setView:(id)view
{
  MEMORY[0x1E69E5928](view);
  MEMORY[0x1E69E5928](self);
  sub_1C553FE64(view);
  MEMORY[0x1E69E5920](self);
}

- (void)willMoveToView:(id)view
{
  MEMORY[0x1E69E5928](view);
  MEMORY[0x1E69E5928](self);
  sub_1C5540C88();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](view);
}

- (void)didMoveToView:(id)view
{
  MEMORY[0x1E69E5928](view);
  MEMORY[0x1E69E5928](self);
  sub_1C5540D74(view);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](view);
}

- (void)onboardingControllerDidDismissSettings:(id)settings
{
  MEMORY[0x1E69E5928](settings);
  MEMORY[0x1E69E5928](self);
  sub_1C5540E74(settings);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](settings);
}

- (void)onboardingControllerDidFinishSetup:(id)setup
{
  MEMORY[0x1E69E5928](setup);
  MEMORY[0x1E69E5928](self);
  sub_1C55416C8();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](setup);
}

@end