@interface CNPhotoPickerActionButton
+ (CNPhotoPickerActionButton)buttonWithTitle:(id)a3 actionBlock:(id)a4;
+ (id)defaultButtonWithTitle:(id)a3 actionBlock:(id)a4;
+ (id)destructiveButtonWithTitle:(id)a3 actionBlock:(id)a4;
- (CNPhotoPickerActionButton)initWithFrame:(CGRect)a3;
- (void)performActionBlock;
- (void)setIsDestructive:(BOOL)a3;
@end

@implementation CNPhotoPickerActionButton

- (void)performActionBlock
{
  v3 = [(CNPhotoPickerActionButton *)self blockHandler];

  if (v3)
  {
    v4 = [(CNPhotoPickerActionButton *)self blockHandler];
    [v4 performAction];
  }
}

- (void)setIsDestructive:(BOOL)a3
{
  if (self->_isDestructive != a3)
  {
    self->_isDestructive = a3;
    if (a3)
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

- (CNPhotoPickerActionButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CNPhotoPickerActionButton;
  v3 = [(CNPhotoPickerActionButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

+ (id)destructiveButtonWithTitle:(id)a3 actionBlock:(id)a4
{
  v4 = [CNPhotoPickerActionButton buttonWithTitle:a3 actionBlock:a4];
  v5 = +[CNUIFontRepository contactCardPhotoPickerActionButtonFont];
  v6 = [v4 titleLabel];
  [v6 setFont:v5];

  [v4 setIsDestructive:1];

  return v4;
}

+ (id)defaultButtonWithTitle:(id)a3 actionBlock:(id)a4
{
  v4 = [CNPhotoPickerActionButton buttonWithTitle:a3 actionBlock:a4];
  v5 = +[CNUIFontRepository contactCardPhotoPickerActionButtonFont];
  v6 = [v4 titleLabel];
  [v6 setFont:v5];

  return v4;
}

+ (CNPhotoPickerActionButton)buttonWithTitle:(id)a3 actionBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [CNPhotoPickerActionButton buttonWithType:1];
  [v7 setTitle:v6 forState:0];

  if (v5)
  {
    v8 = [[CNPhotoPickerActionButtonBlockHandler alloc] initWithActionBlock:v5];
    [v7 setBlockHandler:v8];
    [v7 addTarget:v8 action:sel_performAction forControlEvents:64];
  }

  return v7;
}

@end