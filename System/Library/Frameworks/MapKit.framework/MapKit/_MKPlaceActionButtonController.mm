@interface _MKPlaceActionButtonController
+ (_MKPlaceActionButtonController)actionButtonControllerWithTitle:(id)title subTitle:(id)subTitle selectedBlock:(id)block disabled:(BOOL)disabled symbolName:(id)name;
- (_MKPlaceActionButtonController)initWithTitle:(id)title subTitle:(id)subTitle analyticsAction:(int)action selectedBlock:(id)block disabled:(BOOL)disabled symbolName:(id)name;
- (_MKPlaceActionControlledButton)delegate;
- (id)infoCardChildPossibleActions;
- (void)buttonTextChanged;
@end

@implementation _MKPlaceActionButtonController

- (_MKPlaceActionControlledButton)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)infoCardChildPossibleActions
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(_MKPlaceActionButtonController *)self analyticsAction])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[_MKPlaceActionButtonController analyticsAction](self, "analyticsAction")}];
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (void)buttonTextChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained placeActionButtonControllerTextDidChange:self];
}

- (_MKPlaceActionButtonController)initWithTitle:(id)title subTitle:(id)subTitle analyticsAction:(int)action selectedBlock:(id)block disabled:(BOOL)disabled symbolName:(id)name
{
  titleCopy = title;
  subTitleCopy = subTitle;
  blockCopy = block;
  nameCopy = name;
  if (titleCopy)
  {
    v18 = [titleCopy length];
    selfCopy = 0;
    if (blockCopy && v18)
    {
      v28.receiver = self;
      v28.super_class = _MKPlaceActionButtonController;
      v20 = [(_MKPlaceActionButtonController *)&v28 init];
      if (v20)
      {
        v21 = [titleCopy copy];
        buttonTitle = v20->_buttonTitle;
        v20->_buttonTitle = v21;

        v23 = [subTitleCopy copy];
        buttonSubTitle = v20->_buttonSubTitle;
        v20->_buttonSubTitle = v23;

        v25 = [blockCopy copy];
        buttonSelectedBlock = v20->_buttonSelectedBlock;
        v20->_buttonSelectedBlock = v25;

        v20->_analyticsAction = action;
        v20->_disabled = disabled;
        objc_storeStrong(&v20->_symbolName, name);
      }

      self = v20;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (_MKPlaceActionButtonController)actionButtonControllerWithTitle:(id)title subTitle:(id)subTitle selectedBlock:(id)block disabled:(BOOL)disabled symbolName:(id)name
{
  disabledCopy = disabled;
  nameCopy = name;
  blockCopy = block;
  subTitleCopy = subTitle;
  titleCopy = title;
  v16 = [[self alloc] initWithTitle:titleCopy subTitle:subTitleCopy analyticsAction:0 selectedBlock:blockCopy disabled:disabledCopy symbolName:nameCopy];

  return v16;
}

@end