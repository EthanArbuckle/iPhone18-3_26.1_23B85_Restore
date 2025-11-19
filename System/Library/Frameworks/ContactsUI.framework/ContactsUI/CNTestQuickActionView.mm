@interface CNTestQuickActionView
- (CNTestQuickActionView)init;
- (void)setEnabled:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation CNTestQuickActionView

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"CNContactQuickActionControllerTestUtilities.m" lineNumber:39 description:@"-[CNTestQuickActionView setEnabled:] should only be called on the main thread"];
  }

  self->_enabled = v3;
  v8 = [(CNTestQuickActionView *)self statesAssigned];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v8 addObject:v6];
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"CNContactQuickActionControllerTestUtilities.m" lineNumber:31 description:@"-[CNTestQuickActionView setTitle:] should only be called on the main thread"];
  }

  title = self->_title;
  self->_title = v5;
  v7 = v5;

  v9 = [(CNTestQuickActionView *)self titlesAssigned];
  [v9 addObject:v7];
}

- (CNTestQuickActionView)init
{
  v9.receiver = self;
  v9.super_class = CNTestQuickActionView;
  v2 = [(CNTestQuickActionView *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    titlesAssigned = v2->_titlesAssigned;
    v2->_titlesAssigned = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    statesAssigned = v2->_statesAssigned;
    v2->_statesAssigned = v5;

    v7 = v2;
  }

  return v2;
}

@end