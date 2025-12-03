@interface CNPhotoPickerActionButton
+ (CNPhotoPickerActionButton)buttonWithTitle:(id)title actionBlock:(id)block;
+ (id)defaultButtonWithTitle:(id)title actionBlock:(id)block;
+ (id)destructiveButtonWithTitle:(id)title actionBlock:(id)block;
- (CNPhotoPickerActionButton)initWithFrame:(CGRect)frame;
- (void)performActionBlock;
- (void)setIsDestructive:(BOOL)destructive;
@end

@implementation CNPhotoPickerActionButton

- (void)performActionBlock
{
  blockHandler = [(CNPhotoPickerActionButton *)self blockHandler];

  if (blockHandler)
  {
    blockHandler2 = [(CNPhotoPickerActionButton *)self blockHandler];
    [blockHandler2 performAction];
  }
}

- (void)setIsDestructive:(BOOL)destructive
{
  if (self->_isDestructive != destructive)
  {
    self->_isDestructive = destructive;
    if (destructive)
    {
      +[CNUIColorRepository photoPickerActionButtonDestructiveTextColor];
    }

    else
    {
      +[CNPhotoPickerActionButton defaultActionButtonTextColor];
    }
    v5 = ;
    [(CNPhotoPickerActionButton *)self setTitleColor:v5 forState:0];
  }
}

- (CNPhotoPickerActionButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CNPhotoPickerActionButton;
  v3 = [(CNPhotoPickerActionButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[CNUIColorRepository photoPickerActionButtonBackgroundColor];
    [(CNPhotoPickerActionButton *)v3 setBackgroundColor:v4];

    v5 = +[CNPhotoPickerActionButton defaultActionButtonTextColor];
    [(CNPhotoPickerActionButton *)v3 setTitleColor:v5 forState:0];

    [(CNPhotoPickerActionButton *)v3 _setContinuousCornerRadius:14.0];
  }

  return v3;
}

+ (id)destructiveButtonWithTitle:(id)title actionBlock:(id)block
{
  v4 = [CNPhotoPickerActionButton buttonWithTitle:title actionBlock:block];
  v5 = +[CNUIFontRepository contactCardPhotoPickerActionButtonFont];
  titleLabel = [v4 titleLabel];
  [titleLabel setFont:v5];

  [v4 setIsDestructive:1];

  return v4;
}

+ (id)defaultButtonWithTitle:(id)title actionBlock:(id)block
{
  v4 = [CNPhotoPickerActionButton buttonWithTitle:title actionBlock:block];
  v5 = +[CNUIFontRepository contactCardPhotoPickerActionButtonFont];
  titleLabel = [v4 titleLabel];
  [titleLabel setFont:v5];

  return v4;
}

+ (CNPhotoPickerActionButton)buttonWithTitle:(id)title actionBlock:(id)block
{
  blockCopy = block;
  titleCopy = title;
  v7 = [CNPhotoPickerActionButton buttonWithType:1];
  [v7 setTitle:titleCopy forState:0];

  if (blockCopy)
  {
    v8 = [[CNPhotoPickerActionButtonBlockHandler alloc] initWithActionBlock:blockCopy];
    [v7 setBlockHandler:v8];
    [v7 addTarget:v8 action:sel_performAction forControlEvents:64];
  }

  return v7;
}

@end