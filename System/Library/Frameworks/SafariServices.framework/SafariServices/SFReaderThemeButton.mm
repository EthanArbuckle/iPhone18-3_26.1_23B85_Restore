@interface SFReaderThemeButton
- (id)focusEffect;
- (void)pressesBegan:(id)began withEvent:(id)event;
@end

@implementation SFReaderThemeButton

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (SFShouldHandleSelectionForPresses())
  {
    [(SFReaderThemeButton *)self sendActionsForControlEvents:0x2000];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SFReaderThemeButton;
    [(SFReaderThemeButton *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (id)focusEffect
{
  v2 = MEMORY[0x1E69DCA28];
  v3 = MEMORY[0x1E69DC728];
  [(SFReaderThemeButton *)self bounds];
  v4 = [v3 bezierPathWithOvalInRect:?];
  v5 = [v2 effectWithPath:v4];

  return v5;
}

@end