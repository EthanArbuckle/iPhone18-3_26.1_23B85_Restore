@interface CNTestQuickActionView
- (CNTestQuickActionView)init;
- (void)setEnabled:(BOOL)enabled;
- (void)setTitle:(id)title;
@end

@implementation CNTestQuickActionView

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactQuickActionControllerTestUtilities.m" lineNumber:39 description:@"-[CNTestQuickActionView setEnabled:] should only be called on the main thread"];
  }

  self->_enabled = enabledCopy;
  statesAssigned = [(CNTestQuickActionView *)self statesAssigned];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [statesAssigned addObject:v6];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactQuickActionControllerTestUtilities.m" lineNumber:31 description:@"-[CNTestQuickActionView setTitle:] should only be called on the main thread"];
  }

  title = self->_title;
  self->_title = titleCopy;
  v7 = titleCopy;

  titlesAssigned = [(CNTestQuickActionView *)self titlesAssigned];
  [titlesAssigned addObject:v7];
}

- (CNTestQuickActionView)init
{
  v9.receiver = self;
  v9.super_class = CNTestQuickActionView;
  v2 = [(CNTestQuickActionView *)&v9 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    titlesAssigned = v2->_titlesAssigned;
    v2->_titlesAssigned = array;

    array2 = [MEMORY[0x1E695DF70] array];
    statesAssigned = v2->_statesAssigned;
    v2->_statesAssigned = array2;

    v7 = v2;
  }

  return v2;
}

@end