@interface SectionHeaderOutlineCell
- (void)_accessoryButtonTapped:(id)tapped;
- (void)_updateAccessoryConfigurations;
- (void)_updateFromModel:(BOOL)model;
- (void)setCellModel:(id)model;
- (void)setHovering:(BOOL)hovering;
- (void)updateBackgroundStyle;
@end

@implementation SectionHeaderOutlineCell

- (void)_accessoryButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [tappedCopy delegate];
  accessoryType = [tappedCopy accessoryType];

  [delegate sectionHeaderOutlineCell:self accessoryTypeTapped:accessoryType];
}

- (void)_updateAccessoryConfigurations
{
  v3 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  accessoryModels = [(SectionHeaderOutlineCellModel *)self->_cellModel accessoryModels];
  v5 = [accessoryModels countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(accessoryModels);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        visibility = [v8 visibility];
        if (!visibility || visibility == 1 && [(SidebarOutlineCell *)self isHovering])
        {
          accessoryType = [v8 accessoryType];
          if ((accessoryType - 2) >= 2)
          {
            if (accessoryType == 1)
            {
              v11 = [v8 createAccessoryConfigurationWithActionHandler:0];
              if (v11)
              {
LABEL_14:
                [v3 addObject:v11];

                continue;
              }
            }
          }

          else
          {
            objc_initWeak(&location, self);
            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_100D14718;
            v12[3] = &unk_101661340;
            objc_copyWeak(&v13, &location);
            v12[4] = v8;
            v11 = [v8 createAccessoryConfigurationWithActionHandler:v12];
            objc_destroyWeak(&v13);
            objc_destroyWeak(&location);
            if (v11)
            {
              goto LABEL_14;
            }
          }
        }
      }

      v5 = [accessoryModels countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  [(SectionHeaderOutlineCell *)self setTrailingAccessoryConfigurations:v3];
}

- (void)updateBackgroundStyle
{
  v3 = +[UIBackgroundConfiguration listHeaderConfiguration];
  [(SectionHeaderOutlineCell *)self setBackgroundConfiguration:v3];
}

- (void)setHovering:(BOOL)hovering
{
  v4.receiver = self;
  v4.super_class = SectionHeaderOutlineCell;
  [(SidebarOutlineCell *)&v4 setHovering:hovering];
  [(SectionHeaderOutlineCell *)self _updateAccessoryConfigurations];
}

- (void)_updateFromModel:(BOOL)model
{
  modelCopy = model;
  v13 = +[UIListContentConfiguration headerConfiguration];
  [v13 directionalLayoutMargins];
  v6 = v5;
  [v13 directionalLayoutMargins];
  [v13 setDirectionalLayoutMargins:{v6, 0.0}];
  title = [(SectionHeaderOutlineCellModel *)self->_cellModel title];
  [v13 setText:title];

  [(SectionHeaderOutlineCell *)self setContentConfiguration:v13];
  axSectionIdentifier = [(SidebarOutlineCell *)self axSectionIdentifier];
  if ([axSectionIdentifier length])
  {
    axSectionIdentifier2 = [(SidebarOutlineCell *)self axSectionIdentifier];
  }

  else
  {
    axSectionIdentifier2 = &stru_1016631F0;
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(__CFString *)axSectionIdentifier2 stringByAppendingString:v11];
  [(SectionHeaderOutlineCell *)self setAccessibilityIdentifier:v12];

  if (modelCopy)
  {
    [(SectionHeaderOutlineCell *)self _updateAccessoryConfigurations];
  }
}

- (void)setCellModel:(id)model
{
  modelCopy = model;
  accessoryModels = [(SectionHeaderOutlineCellModel *)modelCopy accessoryModels];
  accessoryModels2 = [(SectionHeaderOutlineCellModel *)self->_cellModel accessoryModels];
  if (accessoryModels == accessoryModels2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [accessoryModels isEqual:accessoryModels2] ^ 1;
  }

  v8 = modelCopy;
  if (self->_cellModel != modelCopy)
  {
    v9 = [(SectionHeaderOutlineCellModel *)modelCopy isEqual:?];
    v8 = modelCopy;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_cellModel, model);
      [(SectionHeaderOutlineCell *)self _updateFromModel:v7];
      v8 = modelCopy;
    }
  }
}

@end