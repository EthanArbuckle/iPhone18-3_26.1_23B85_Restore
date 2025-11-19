@interface SmallDropDownOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (SmallDropDownOutlineCellDelegate)delegate;
- (SmallDropDownOutlineCellModel)initWithButtonTitle:(id)a3 dropDownTitles:(id)a4 selectedIndex:(int64_t)a5 delegate:(id)a6 backgroundModel:(id)a7;
@end

@implementation SmallDropDownOutlineCellModel

- (SmallDropDownOutlineCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v15 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(SmallDropDownOutlineCellModel *)v6 buttonTitle];
    v8 = v7;
    if (v7 == self->_buttonTitle || [(NSString *)v7 isEqual:?])
    {
      v9 = [(SmallDropDownOutlineCellModel *)v6 dropDownTitles];
      v10 = v9;
      if ((v9 == self->_dropDownTitles || [(NSArray *)v9 isEqual:?]) && [(SmallDropDownOutlineCellModel *)v6 selectedIndex]== self->_selectedIndex)
      {
        v11 = [(SmallDropDownOutlineCellModel *)v6 delegate];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if (v11 == WeakRetained || [v11 isEqual:WeakRetained])
        {
          v13 = [(SmallDropDownOutlineCellModel *)v6 backgroundModel];
          v14 = v13;
          if (v13 == self->_backgroundModel)
          {
            v15 = 1;
          }

          else
          {
            v15 = [(SidebarOutlineCellBackgroundModel *)v13 isEqual:?];
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (SmallDropDownOutlineCellModel)initWithButtonTitle:(id)a3 dropDownTitles:(id)a4 selectedIndex:(int64_t)a5 delegate:(id)a6 backgroundModel:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = SmallDropDownOutlineCellModel;
  v16 = [(SmallDropDownOutlineCellModel *)&v22 init];
  if (v16)
  {
    v17 = [v12 copy];
    buttonTitle = v16->_buttonTitle;
    v16->_buttonTitle = v17;

    v19 = [v13 copy];
    dropDownTitles = v16->_dropDownTitles;
    v16->_dropDownTitles = v19;

    v16->_selectedIndex = a5;
    objc_storeWeak(&v16->_delegate, v14);
    objc_storeStrong(&v16->_backgroundModel, a7);
  }

  return v16;
}

@end