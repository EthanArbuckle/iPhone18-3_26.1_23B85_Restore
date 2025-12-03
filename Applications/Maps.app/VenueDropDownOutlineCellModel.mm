@interface VenueDropDownOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (VenueDropDownOutlineCellDelegate)delegate;
- (VenueDropDownOutlineCellModel)initWithButtonTitle:(id)title categories:(id)categories selectedCategory:(id)category venueIdentifier:(id)identifier delegate:(id)delegate;
- (unint64_t)hash;
@end

@implementation VenueDropDownOutlineCellModel

- (VenueDropDownOutlineCellDelegate)delegate
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
    buttonTitle = [(VenueDropDownOutlineCellModel *)v6 buttonTitle];
    v8 = buttonTitle;
    if (buttonTitle == self->_buttonTitle || [(NSString *)buttonTitle isEqual:?])
    {
      categories = [(VenueDropDownOutlineCellModel *)v6 categories];
      v10 = categories;
      if (categories == self->_categories || [(NSArray *)categories isEqual:?])
      {
        selectedCategory = [(VenueDropDownOutlineCellModel *)v6 selectedCategory];
        v12 = selectedCategory;
        if (selectedCategory == self->_selectedCategory || [(GEOSearchCategory *)selectedCategory isEqual:?])
        {
          delegate = [(VenueDropDownOutlineCellModel *)v6 delegate];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (delegate == WeakRetained)
          {
            v15 = 1;
          }

          else
          {
            v15 = [delegate isEqual:WeakRetained];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_buttonTitle hash];
  v4 = [(NSArray *)self->_categories hash]^ v3;
  return v4 ^ [(GEOSearchCategory *)self->_selectedCategory hash];
}

- (VenueDropDownOutlineCellModel)initWithButtonTitle:(id)title categories:(id)categories selectedCategory:(id)category venueIdentifier:(id)identifier delegate:(id)delegate
{
  titleCopy = title;
  categoriesCopy = categories;
  categoryCopy = category;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = VenueDropDownOutlineCellModel;
  v17 = [(VenueDropDownOutlineCellModel *)&v23 init];
  if (v17)
  {
    v18 = [titleCopy copy];
    buttonTitle = v17->_buttonTitle;
    v17->_buttonTitle = v18;

    v20 = [categoriesCopy copy];
    categories = v17->_categories;
    v17->_categories = v20;

    objc_storeStrong(&v17->_venueIdentifier, identifier);
    objc_storeStrong(&v17->_selectedCategory, category);
    objc_storeWeak(&v17->_delegate, delegateCopy);
  }

  return v17;
}

@end