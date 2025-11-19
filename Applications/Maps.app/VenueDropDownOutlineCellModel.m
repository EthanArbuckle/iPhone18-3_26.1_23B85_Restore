@interface VenueDropDownOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (VenueDropDownOutlineCellDelegate)delegate;
- (VenueDropDownOutlineCellModel)initWithButtonTitle:(id)a3 categories:(id)a4 selectedCategory:(id)a5 venueIdentifier:(id)a6 delegate:(id)a7;
- (unint64_t)hash;
@end

@implementation VenueDropDownOutlineCellModel

- (VenueDropDownOutlineCellDelegate)delegate
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
    v7 = [(VenueDropDownOutlineCellModel *)v6 buttonTitle];
    v8 = v7;
    if (v7 == self->_buttonTitle || [(NSString *)v7 isEqual:?])
    {
      v9 = [(VenueDropDownOutlineCellModel *)v6 categories];
      v10 = v9;
      if (v9 == self->_categories || [(NSArray *)v9 isEqual:?])
      {
        v11 = [(VenueDropDownOutlineCellModel *)v6 selectedCategory];
        v12 = v11;
        if (v11 == self->_selectedCategory || [(GEOSearchCategory *)v11 isEqual:?])
        {
          v13 = [(VenueDropDownOutlineCellModel *)v6 delegate];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (v13 == WeakRetained)
          {
            v15 = 1;
          }

          else
          {
            v15 = [v13 isEqual:WeakRetained];
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

- (VenueDropDownOutlineCellModel)initWithButtonTitle:(id)a3 categories:(id)a4 selectedCategory:(id)a5 venueIdentifier:(id)a6 delegate:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = VenueDropDownOutlineCellModel;
  v17 = [(VenueDropDownOutlineCellModel *)&v23 init];
  if (v17)
  {
    v18 = [v12 copy];
    buttonTitle = v17->_buttonTitle;
    v17->_buttonTitle = v18;

    v20 = [v13 copy];
    categories = v17->_categories;
    v17->_categories = v20;

    objc_storeStrong(&v17->_venueIdentifier, a6);
    objc_storeStrong(&v17->_selectedCategory, a5);
    objc_storeWeak(&v17->_delegate, v16);
  }

  return v17;
}

@end