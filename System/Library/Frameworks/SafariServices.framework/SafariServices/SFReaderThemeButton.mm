@interface SFReaderThemeButton
- (id)focusEffect;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SFReaderThemeButton

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (SFShouldHandleSelectionForPresses())
  {
    [(SFReaderThemeButton *)self sendActionsForControlEvents:0x2000];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SFReaderThemeButton;
    [(SFReaderThemeButton *)&v8 pressesBegan:v6 withEvent:v7];
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