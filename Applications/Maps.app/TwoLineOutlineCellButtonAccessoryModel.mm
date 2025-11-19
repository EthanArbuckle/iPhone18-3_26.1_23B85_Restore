@interface TwoLineOutlineCellButtonAccessoryModel
- (BOOL)isEqual:(id)a3;
- (TwoLineOutlineCellButtonAccessoryModel)initWithAccessoryType:(int64_t)a3 visibility:(int64_t)a4 delegate:(id)a5;
- (TwoLinesOutlineCellAccessoryDelegate)delegate;
- (id)createAccessoryConfigurationWithAction:(id)a3;
@end

@implementation TwoLineOutlineCellButtonAccessoryModel

- (TwoLinesOutlineCellAccessoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)createAccessoryConfigurationWithAction:(id)a3
{
  v4 = a3;
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

    [v6 addAction:v4 forControlEvents:0x2000];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(TwoLineOutlineCellButtonAccessoryModel *)v6 accessoryType];
    if (v7 == [(TwoLineOutlineCellButtonAccessoryModel *)self accessoryType]&& (v8 = [(TwoLineOutlineCellButtonAccessoryModel *)v6 visibility], v8 == [(TwoLineOutlineCellButtonAccessoryModel *)self visibility]))
    {
      v9 = [(TwoLineOutlineCellButtonAccessoryModel *)v6 delegate];
      v10 = [(TwoLineOutlineCellButtonAccessoryModel *)self delegate];
      if (v9 == v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = [v9 isEqual:v10];
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

- (TwoLineOutlineCellButtonAccessoryModel)initWithAccessoryType:(int64_t)a3 visibility:(int64_t)a4 delegate:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = TwoLineOutlineCellButtonAccessoryModel;
  v9 = [(TwoLineOutlineCellButtonAccessoryModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_accessoryType = a3;
    v9->_visibility = a4;
    objc_storeWeak(&v9->_delegate, v8);
  }

  return v10;
}

@end