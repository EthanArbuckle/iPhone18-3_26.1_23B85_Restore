@interface SectionHeaderOutlineCell
- (void)_accessoryButtonTapped:(id)a3;
- (void)_updateAccessoryConfigurations;
- (void)_updateFromModel:(BOOL)a3;
- (void)setCellModel:(id)a3;
- (void)setHovering:(BOOL)a3;
- (void)updateBackgroundStyle;
@end

@implementation SectionHeaderOutlineCell

- (void)_accessoryButtonTapped:(id)a3
{
  v4 = a3;
  v6 = [v4 delegate];
  v5 = [v4 accessoryType];

  [v6 sectionHeaderOutlineCell:self accessoryTypeTapped:v5];
}

- (void)_updateAccessoryConfigurations
{
  v3 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(SectionHeaderOutlineCellModel *)self->_cellModel accessoryModels];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 visibility];
        if (!v9 || v9 == 1 && [(SidebarOutlineCell *)self isHovering])
        {
          v10 = [v8 accessoryType];
          if ((v10 - 2) >= 2)
          {
            if (v10 == 1)
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

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)setHovering:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SectionHeaderOutlineCell;
  [(SidebarOutlineCell *)&v4 setHovering:a3];
  [(SectionHeaderOutlineCell *)self _updateAccessoryConfigurations];
}

- (void)_updateFromModel:(BOOL)a3
{
  v3 = a3;
  v13 = +[UIListContentConfiguration headerConfiguration];
  [v13 directionalLayoutMargins];
  v6 = v5;
  [v13 directionalLayoutMargins];
  [v13 setDirectionalLayoutMargins:{v6, 0.0}];
  v7 = [(SectionHeaderOutlineCellModel *)self->_cellModel title];
  [v13 setText:v7];

  [(SectionHeaderOutlineCell *)self setContentConfiguration:v13];
  v8 = [(SidebarOutlineCell *)self axSectionIdentifier];
  if ([v8 length])
  {
    v9 = [(SidebarOutlineCell *)self axSectionIdentifier];
  }

  else
  {
    v9 = &stru_1016631F0;
  }

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(__CFString *)v9 stringByAppendingString:v11];
  [(SectionHeaderOutlineCell *)self setAccessibilityIdentifier:v12];

  if (v3)
  {
    [(SectionHeaderOutlineCell *)self _updateAccessoryConfigurations];
  }
}

- (void)setCellModel:(id)a3
{
  v10 = a3;
  v5 = [(SectionHeaderOutlineCellModel *)v10 accessoryModels];
  v6 = [(SectionHeaderOutlineCellModel *)self->_cellModel accessoryModels];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 isEqual:v6] ^ 1;
  }

  v8 = v10;
  if (self->_cellModel != v10)
  {
    v9 = [(SectionHeaderOutlineCellModel *)v10 isEqual:?];
    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_cellModel, a3);
      [(SectionHeaderOutlineCell *)self _updateFromModel:v7];
      v8 = v10;
    }
  }
}

@end