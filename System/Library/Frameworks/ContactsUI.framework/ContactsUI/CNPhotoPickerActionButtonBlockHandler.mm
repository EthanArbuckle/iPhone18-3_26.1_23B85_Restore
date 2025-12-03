@interface CNPhotoPickerActionButtonBlockHandler
- (CNPhotoPickerActionButtonBlockHandler)initWithActionBlock:(id)block;
- (void)performAction;
@end

@implementation CNPhotoPickerActionButtonBlockHandler

- (void)performAction
{
  actionBlock = [(CNPhotoPickerActionButtonBlockHandler *)self actionBlock];

  if (actionBlock)
  {
    actionBlock2 = [(CNPhotoPickerActionButtonBlockHandler *)self actionBlock];
    actionBlock2[2]();
  }
}

- (CNPhotoPickerActionButtonBlockHandler)initWithActionBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = CNPhotoPickerActionButtonBlockHandler;
  v5 = [(CNPhotoPickerActionButtonBlockHandler *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    actionBlock = v5->_actionBlock;
    v5->_actionBlock = v6;
  }

  return v5;
}

@end