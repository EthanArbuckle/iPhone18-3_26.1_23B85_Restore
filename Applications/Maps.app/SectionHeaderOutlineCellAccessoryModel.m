@interface SectionHeaderOutlineCellAccessoryModel
- (BOOL)isEqual:(id)a3;
- (SectionHeaderOutlineCellAccessoryDelegate)delegate;
- (SectionHeaderOutlineCellAccessoryModel)initWithAccessoryType:(int64_t)a3 visibility:(int64_t)a4 delegate:(id)a5;
- (id)createAccessoryConfigurationWithActionHandler:(id)a3;
@end

@implementation SectionHeaderOutlineCellAccessoryModel

- (SectionHeaderOutlineCellAccessoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)createAccessoryConfigurationWithActionHandler:(id)a3
{
  v4 = a3;
  accessoryType = self->_accessoryType;
  switch(accessoryType)
  {
    case 1:
      v6 = [[_UICellAccessoryConfigurationOutlineDisclosure alloc] initWithCellSelectionTogglesExpansionState:0];
      v12 = [UIImageSymbolConfiguration configurationWithPointSize:7 weight:1 scale:15.0];
      v13 = [UIImage systemImageNamed:@"chevron.forward" withConfiguration:v12];

      [v6 setImage:v13];
      goto LABEL_7;
    case 3:
      v7 = +[UIButtonConfiguration tintedButtonConfiguration];
      v8 = [UIImage systemImageNamed:@"chevron.forward.circle.fill"];
      [v7 setImage:v8];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1010198D8;
      v15[3] = &unk_101661C18;
      v16 = v4;
      v9 = [UIAction actionWithHandler:v15];
      v10 = [UIButton buttonWithConfiguration:v7 primaryAction:v9];

      v6 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v10];
      v11 = +[UIColor tertiaryLabelColor];
      [v6 setTintColor:v11];

LABEL_8:
      goto LABEL_10;
    case 2:
      v6 = objc_alloc_init(_UICellAccessoryConfigurationInsert);
      [v6 setActionHandler:v4];
LABEL_7:
      v7 = +[UIColor tertiaryLabelColor];
      [v6 setTintColor:v7];
      goto LABEL_8;
  }

  v6 = 0;
LABEL_10:

  return v6;
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
    v7 = [(SectionHeaderOutlineCellAccessoryModel *)v6 accessoryType];
    if (v7 == [(SectionHeaderOutlineCellAccessoryModel *)self accessoryType]&& (v8 = [(SectionHeaderOutlineCellAccessoryModel *)v6 visibility], v8 == [(SectionHeaderOutlineCellAccessoryModel *)self visibility]))
    {
      v9 = [(SectionHeaderOutlineCellAccessoryModel *)v6 delegate];
      v10 = [(SectionHeaderOutlineCellAccessoryModel *)self delegate];
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

- (SectionHeaderOutlineCellAccessoryModel)initWithAccessoryType:(int64_t)a3 visibility:(int64_t)a4 delegate:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = SectionHeaderOutlineCellAccessoryModel;
  v9 = [(SectionHeaderOutlineCellAccessoryModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_visibility = a4;
    v9->_accessoryType = a3;
    objc_storeWeak(&v9->_delegate, v8);
  }

  return v10;
}

@end