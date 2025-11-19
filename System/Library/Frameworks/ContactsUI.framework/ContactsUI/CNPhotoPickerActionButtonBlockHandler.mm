@interface CNPhotoPickerActionButtonBlockHandler
- (CNPhotoPickerActionButtonBlockHandler)initWithActionBlock:(id)a3;
- (void)performAction;
@end

@implementation CNPhotoPickerActionButtonBlockHandler

- (void)performAction
{
  v3 = [(CNPhotoPickerActionButtonBlockHandler *)self actionBlock];

  if (v3)
  {
    v4 = [(CNPhotoPickerActionButtonBlockHandler *)self actionBlock];
    v4[2]();
  }
}

- (CNPhotoPickerActionButtonBlockHandler)initWithActionBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNPhotoPickerActionButtonBlockHandler;
  v5 = [(CNPhotoPickerActionButtonBlockHandler *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    actionBlock = v5->_actionBlock;
    v5->_actionBlock = v6;
  }

  return v5;
}

@end