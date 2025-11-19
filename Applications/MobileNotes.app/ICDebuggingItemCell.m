@interface ICDebuggingItemCell
- (void)setItem:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation ICDebuggingItemCell

- (void)setItem:(id)a3
{
  objc_storeStrong(&self->_item, a3);

  [(ICDebuggingItemCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v20.receiver = self;
  v20.super_class = ICDebuggingItemCell;
  [(ICDebuggingItemCell *)&v20 updateConfigurationUsingState:a3];
  v4 = +[UIListContentConfiguration accompaniedSidebarSubtitleCellConfiguration];
  v5 = [(ICDebuggingItemCell *)self item];
  v6 = [v5 title];
  [v4 setText:v6];

  v7 = [(ICDebuggingItemCell *)self item];
  v8 = [v7 subtitle];
  [v4 setSecondaryText:v8];

  v9 = [(ICDebuggingItemCell *)self item];
  LODWORD(v8) = [v9 isDestructive];

  if (v8)
  {
    v10 = +[UIColor systemRedColor];
    v11 = [v4 textProperties];
    [v11 setColor:v10];
  }

  [(ICDebuggingItemCell *)self setContentConfiguration:v4];
  v12 = +[NSMutableArray array];
  v13 = [(ICDebuggingItemCell *)self item];
  v14 = [v13 isSelected];

  if (v14)
  {
    v15 = objc_alloc_init(UICellAccessoryCheckmark);
    [v12 addObject:v15];
  }

  v16 = [(ICDebuggingItemCell *)self item];
  v17 = [v16 isPresenter];

  if (v17)
  {
    v18 = objc_alloc_init(UICellAccessoryDisclosureIndicator);
    [v12 addObject:v18];
  }

  v19 = [v12 copy];
  [(ICDebuggingItemCell *)self setAccessories:v19];
}

@end