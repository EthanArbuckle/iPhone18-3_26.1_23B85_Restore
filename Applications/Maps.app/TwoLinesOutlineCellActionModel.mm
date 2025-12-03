@interface TwoLinesOutlineCellActionModel
- (BOOL)isEqual:(id)equal;
- (TwoLinesOutlineCellActionModel)initWithButtonTitle1:(id)title1 buttonTitle2:(id)title2 delegate:(id)delegate;
@end

@implementation TwoLinesOutlineCellActionModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    buttonTitle1 = [(TwoLinesOutlineCellActionModel *)v6 buttonTitle1];
    v8 = buttonTitle1;
    if (buttonTitle1 == self->_buttonTitle1 || [(NSString *)buttonTitle1 isEqual:?])
    {
      buttonTitle2 = [(TwoLinesOutlineCellActionModel *)v6 buttonTitle2];
      v10 = buttonTitle2;
      if (buttonTitle2 == self->_buttonTitle2 || [(NSString *)buttonTitle2 isEqual:?])
      {
        delegate = [(TwoLinesOutlineCellActionModel *)v6 delegate];
        v12 = delegate;
        if (delegate == self->_delegate)
        {
          v13 = 1;
        }

        else
        {
          v13 = [(TwoLinesOutlineCellActionViewDelegate *)delegate isEqual:?];
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TwoLinesOutlineCellActionModel)initWithButtonTitle1:(id)title1 buttonTitle2:(id)title2 delegate:(id)delegate
{
  title1Copy = title1;
  title2Copy = title2;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = TwoLinesOutlineCellActionModel;
  v11 = [(TwoLinesOutlineCellActionModel *)&v17 init];
  if (v11)
  {
    v12 = [title1Copy copy];
    buttonTitle1 = v11->_buttonTitle1;
    v11->_buttonTitle1 = v12;

    v14 = [title2Copy copy];
    buttonTitle2 = v11->_buttonTitle2;
    v11->_buttonTitle2 = v14;

    objc_storeStrong(&v11->_delegate, delegate);
  }

  return v11;
}

@end