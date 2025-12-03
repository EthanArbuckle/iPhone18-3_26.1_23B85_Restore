@interface SmallDropDownOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (SmallDropDownOutlineCellDelegate)delegate;
- (SmallDropDownOutlineCellModel)initWithButtonTitle:(id)title dropDownTitles:(id)titles selectedIndex:(int64_t)index delegate:(id)delegate backgroundModel:(id)model;
@end

@implementation SmallDropDownOutlineCellModel

- (SmallDropDownOutlineCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    buttonTitle = [(SmallDropDownOutlineCellModel *)v6 buttonTitle];
    v8 = buttonTitle;
    if (buttonTitle == self->_buttonTitle || [(NSString *)buttonTitle isEqual:?])
    {
      dropDownTitles = [(SmallDropDownOutlineCellModel *)v6 dropDownTitles];
      v10 = dropDownTitles;
      if ((dropDownTitles == self->_dropDownTitles || [(NSArray *)dropDownTitles isEqual:?]) && [(SmallDropDownOutlineCellModel *)v6 selectedIndex]== self->_selectedIndex)
      {
        delegate = [(SmallDropDownOutlineCellModel *)v6 delegate];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if (delegate == WeakRetained || [delegate isEqual:WeakRetained])
        {
          backgroundModel = [(SmallDropDownOutlineCellModel *)v6 backgroundModel];
          v14 = backgroundModel;
          if (backgroundModel == self->_backgroundModel)
          {
            v15 = 1;
          }

          else
          {
            v15 = [(SidebarOutlineCellBackgroundModel *)backgroundModel isEqual:?];
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

- (SmallDropDownOutlineCellModel)initWithButtonTitle:(id)title dropDownTitles:(id)titles selectedIndex:(int64_t)index delegate:(id)delegate backgroundModel:(id)model
{
  titleCopy = title;
  titlesCopy = titles;
  delegateCopy = delegate;
  modelCopy = model;
  v22.receiver = self;
  v22.super_class = SmallDropDownOutlineCellModel;
  v16 = [(SmallDropDownOutlineCellModel *)&v22 init];
  if (v16)
  {
    v17 = [titleCopy copy];
    buttonTitle = v16->_buttonTitle;
    v16->_buttonTitle = v17;

    v19 = [titlesCopy copy];
    dropDownTitles = v16->_dropDownTitles;
    v16->_dropDownTitles = v19;

    v16->_selectedIndex = index;
    objc_storeWeak(&v16->_delegate, delegateCopy);
    objc_storeStrong(&v16->_backgroundModel, model);
  }

  return v16;
}

@end