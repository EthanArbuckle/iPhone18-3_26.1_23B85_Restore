@interface TwoLinesOutlineCellActionModel
- (BOOL)isEqual:(id)a3;
- (TwoLinesOutlineCellActionModel)initWithButtonTitle1:(id)a3 buttonTitle2:(id)a4 delegate:(id)a5;
@end

@implementation TwoLinesOutlineCellActionModel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(TwoLinesOutlineCellActionModel *)v6 buttonTitle1];
    v8 = v7;
    if (v7 == self->_buttonTitle1 || [(NSString *)v7 isEqual:?])
    {
      v9 = [(TwoLinesOutlineCellActionModel *)v6 buttonTitle2];
      v10 = v9;
      if (v9 == self->_buttonTitle2 || [(NSString *)v9 isEqual:?])
      {
        v11 = [(TwoLinesOutlineCellActionModel *)v6 delegate];
        v12 = v11;
        if (v11 == self->_delegate)
        {
          v13 = 1;
        }

        else
        {
          v13 = [(TwoLinesOutlineCellActionViewDelegate *)v11 isEqual:?];
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

- (TwoLinesOutlineCellActionModel)initWithButtonTitle1:(id)a3 buttonTitle2:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = TwoLinesOutlineCellActionModel;
  v11 = [(TwoLinesOutlineCellActionModel *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    buttonTitle1 = v11->_buttonTitle1;
    v11->_buttonTitle1 = v12;

    v14 = [v9 copy];
    buttonTitle2 = v11->_buttonTitle2;
    v11->_buttonTitle2 = v14;

    objc_storeStrong(&v11->_delegate, a5);
  }

  return v11;
}

@end