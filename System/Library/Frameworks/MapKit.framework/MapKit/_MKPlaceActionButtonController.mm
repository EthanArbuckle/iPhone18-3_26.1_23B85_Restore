@interface _MKPlaceActionButtonController
+ (_MKPlaceActionButtonController)actionButtonControllerWithTitle:(id)a3 subTitle:(id)a4 selectedBlock:(id)a5 disabled:(BOOL)a6 symbolName:(id)a7;
- (_MKPlaceActionButtonController)initWithTitle:(id)a3 subTitle:(id)a4 analyticsAction:(int)a5 selectedBlock:(id)a6 disabled:(BOOL)a7 symbolName:(id)a8;
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

- (_MKPlaceActionButtonController)initWithTitle:(id)a3 subTitle:(id)a4 analyticsAction:(int)a5 selectedBlock:(id)a6 disabled:(BOOL)a7 symbolName:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  if (v14)
  {
    v18 = [v14 length];
    v19 = 0;
    if (v16 && v18)
    {
      v28.receiver = self;
      v28.super_class = _MKPlaceActionButtonController;
      v20 = [(_MKPlaceActionButtonController *)&v28 init];
      if (v20)
      {
        v21 = [v14 copy];
        buttonTitle = v20->_buttonTitle;
        v20->_buttonTitle = v21;

        v23 = [v15 copy];
        buttonSubTitle = v20->_buttonSubTitle;
        v20->_buttonSubTitle = v23;

        v25 = [v16 copy];
        buttonSelectedBlock = v20->_buttonSelectedBlock;
        v20->_buttonSelectedBlock = v25;

        v20->_analyticsAction = a5;
        v20->_disabled = a7;
        objc_storeStrong(&v20->_symbolName, a8);
      }

      self = v20;
      v19 = self;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (_MKPlaceActionButtonController)actionButtonControllerWithTitle:(id)a3 subTitle:(id)a4 selectedBlock:(id)a5 disabled:(BOOL)a6 symbolName:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[a1 alloc] initWithTitle:v15 subTitle:v14 analyticsAction:0 selectedBlock:v13 disabled:v7 symbolName:v12];

  return v16;
}

@end