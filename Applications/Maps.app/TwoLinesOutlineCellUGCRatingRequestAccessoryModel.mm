@interface TwoLinesOutlineCellUGCRatingRequestAccessoryModel
- (BOOL)isEqual:(id)equal;
- (TwoLinesOutlineCellAccessoryDelegate)delegate;
- (TwoLinesOutlineCellUGCRatingRequestAccessoryModel)initWithDelegate:(id)delegate;
- (id)createAccessoryConfigurationWithAction:(id)action;
@end

@implementation TwoLinesOutlineCellUGCRatingRequestAccessoryModel

- (TwoLinesOutlineCellAccessoryDelegate)delegate
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
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    visibility = [(TwoLinesOutlineCellUGCRatingRequestAccessoryModel *)v6 visibility];
    if (visibility == [(TwoLinesOutlineCellUGCRatingRequestAccessoryModel *)self visibility])
    {
      delegate = [(TwoLinesOutlineCellUGCRatingRequestAccessoryModel *)v6 delegate];
      delegate2 = [(TwoLinesOutlineCellUGCRatingRequestAccessoryModel *)self delegate];
      if (delegate == delegate2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [delegate isEqual:delegate2];
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

- (id)createAccessoryConfigurationWithAction:(id)action
{
  actionCopy = action;
  v4 = [[UGCProactiveCallToActionButtonView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  button = [(UGCProactiveCallToActionButtonView *)v4 button];
  [button addAction:actionCopy forControlEvents:0x2000];

  [(UGCProactiveCallToActionButtonView *)v4 systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  [(UGCProactiveCallToActionButtonView *)v4 setFrame:0.0, 0.0, v6, v7];
  v8 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v4];
  [v8 setUsesDefaultLayoutWidth:0];

  return v8;
}

- (TwoLinesOutlineCellUGCRatingRequestAccessoryModel)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = TwoLinesOutlineCellUGCRatingRequestAccessoryModel;
  v5 = [(TwoLinesOutlineCellUGCRatingRequestAccessoryModel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

@end