@interface TwoLinesOutlineCellUGCRatingRequestAccessoryModel
- (BOOL)isEqual:(id)a3;
- (TwoLinesOutlineCellAccessoryDelegate)delegate;
- (TwoLinesOutlineCellUGCRatingRequestAccessoryModel)initWithDelegate:(id)a3;
- (id)createAccessoryConfigurationWithAction:(id)a3;
@end

@implementation TwoLinesOutlineCellUGCRatingRequestAccessoryModel

- (TwoLinesOutlineCellAccessoryDelegate)delegate
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
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(TwoLinesOutlineCellUGCRatingRequestAccessoryModel *)v6 visibility];
    if (v7 == [(TwoLinesOutlineCellUGCRatingRequestAccessoryModel *)self visibility])
    {
      v8 = [(TwoLinesOutlineCellUGCRatingRequestAccessoryModel *)v6 delegate];
      v9 = [(TwoLinesOutlineCellUGCRatingRequestAccessoryModel *)self delegate];
      if (v8 == v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = [v8 isEqual:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createAccessoryConfigurationWithAction:(id)a3
{
  v3 = a3;
  v4 = [[UGCProactiveCallToActionButtonView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = [(UGCProactiveCallToActionButtonView *)v4 button];
  [v5 addAction:v3 forControlEvents:0x2000];

  [(UGCProactiveCallToActionButtonView *)v4 systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  [(UGCProactiveCallToActionButtonView *)v4 setFrame:0.0, 0.0, v6, v7];
  v8 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v4];
  [v8 setUsesDefaultLayoutWidth:0];

  return v8;
}

- (TwoLinesOutlineCellUGCRatingRequestAccessoryModel)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TwoLinesOutlineCellUGCRatingRequestAccessoryModel;
  v5 = [(TwoLinesOutlineCellUGCRatingRequestAccessoryModel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

@end