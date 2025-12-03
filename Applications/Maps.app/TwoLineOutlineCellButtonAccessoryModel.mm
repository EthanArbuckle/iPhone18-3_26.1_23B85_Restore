@interface TwoLineOutlineCellButtonAccessoryModel
- (BOOL)isEqual:(id)equal;
- (TwoLineOutlineCellButtonAccessoryModel)initWithAccessoryType:(int64_t)type visibility:(int64_t)visibility delegate:(id)delegate;
- (TwoLinesOutlineCellAccessoryDelegate)delegate;
- (id)createAccessoryConfigurationWithAction:(id)action;
@end

@implementation TwoLineOutlineCellButtonAccessoryModel

- (TwoLinesOutlineCellAccessoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)createAccessoryConfigurationWithAction:(id)action
{
  actionCopy = action;
  accessoryType = self->_accessoryType;
  if (accessoryType == 2)
  {
    v10 = [[_UICellAccessoryConfigurationOutlineDisclosure alloc] initWithCellSelectionTogglesExpansionState:0];
    v6 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:15.0];
    v11 = [UIImage systemImageNamed:@"chevron.forward.circle.fill" withConfiguration:v6];
    [v10 setImage:v11];

    goto LABEL_5;
  }

  if (accessoryType == 1)
  {
    v6 = [MapsThemeButton buttonWithType:0];
    v7 = [UIImage systemImageNamed:@"info.circle.fill"];
    [v6 setImage:v7 forState:0];

    v8 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:2 scale:15.0];
    [v6 setPreferredSymbolConfiguration:v8 forImageInState:0];

    [v6 addAction:actionCopy forControlEvents:0x2000];
    v9 = +[UIColor tertiaryLabelColor];
    [v6 setTintColor:v9];

    [v6 setAccessibilityIdentifier:@"DetailButton"];
    v10 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v6];
LABEL_5:

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    accessoryType = [(TwoLineOutlineCellButtonAccessoryModel *)v6 accessoryType];
    if (accessoryType == [(TwoLineOutlineCellButtonAccessoryModel *)self accessoryType]&& (v8 = [(TwoLineOutlineCellButtonAccessoryModel *)v6 visibility], v8 == [(TwoLineOutlineCellButtonAccessoryModel *)self visibility]))
    {
      delegate = [(TwoLineOutlineCellButtonAccessoryModel *)v6 delegate];
      delegate2 = [(TwoLineOutlineCellButtonAccessoryModel *)self delegate];
      if (delegate == delegate2)
      {
        v11 = 1;
      }

      else
      {
        v11 = [delegate isEqual:delegate2];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (TwoLineOutlineCellButtonAccessoryModel)initWithAccessoryType:(int64_t)type visibility:(int64_t)visibility delegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = TwoLineOutlineCellButtonAccessoryModel;
  v9 = [(TwoLineOutlineCellButtonAccessoryModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_accessoryType = type;
    v9->_visibility = visibility;
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v10;
}

@end