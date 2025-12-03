@interface SectionHeaderOutlineCellAccessoryModel
- (BOOL)isEqual:(id)equal;
- (SectionHeaderOutlineCellAccessoryDelegate)delegate;
- (SectionHeaderOutlineCellAccessoryModel)initWithAccessoryType:(int64_t)type visibility:(int64_t)visibility delegate:(id)delegate;
- (id)createAccessoryConfigurationWithActionHandler:(id)handler;
@end

@implementation SectionHeaderOutlineCellAccessoryModel

- (SectionHeaderOutlineCellAccessoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)createAccessoryConfigurationWithActionHandler:(id)handler
{
  handlerCopy = handler;
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
      v16 = handlerCopy;
      v9 = [UIAction actionWithHandler:v15];
      v10 = [UIButton buttonWithConfiguration:v7 primaryAction:v9];

      v6 = [[_UICellAccessoryConfigurationCustomView alloc] initWithCustomView:v10];
      v11 = +[UIColor tertiaryLabelColor];
      [v6 setTintColor:v11];

LABEL_8:
      goto LABEL_10;
    case 2:
      v6 = objc_alloc_init(_UICellAccessoryConfigurationInsert);
      [v6 setActionHandler:handlerCopy];
LABEL_7:
      v7 = +[UIColor tertiaryLabelColor];
      [v6 setTintColor:v7];
      goto LABEL_8;
  }

  v6 = 0;
LABEL_10:

  return v6;
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
    accessoryType = [(SectionHeaderOutlineCellAccessoryModel *)v6 accessoryType];
    if (accessoryType == [(SectionHeaderOutlineCellAccessoryModel *)self accessoryType]&& (v8 = [(SectionHeaderOutlineCellAccessoryModel *)v6 visibility], v8 == [(SectionHeaderOutlineCellAccessoryModel *)self visibility]))
    {
      delegate = [(SectionHeaderOutlineCellAccessoryModel *)v6 delegate];
      delegate2 = [(SectionHeaderOutlineCellAccessoryModel *)self delegate];
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

- (SectionHeaderOutlineCellAccessoryModel)initWithAccessoryType:(int64_t)type visibility:(int64_t)visibility delegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SectionHeaderOutlineCellAccessoryModel;
  v9 = [(SectionHeaderOutlineCellAccessoryModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_visibility = visibility;
    v9->_accessoryType = type;
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v10;
}

@end