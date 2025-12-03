@interface ICDebuggingItemCell
- (void)setItem:(id)item;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation ICDebuggingItemCell

- (void)setItem:(id)item
{
  objc_storeStrong(&self->_item, item);

  [(ICDebuggingItemCell *)self setNeedsUpdateConfiguration];
}

- (void)updateConfigurationUsingState:(id)state
{
  v20.receiver = self;
  v20.super_class = ICDebuggingItemCell;
  [(ICDebuggingItemCell *)&v20 updateConfigurationUsingState:state];
  v4 = +[UIListContentConfiguration accompaniedSidebarSubtitleCellConfiguration];
  item = [(ICDebuggingItemCell *)self item];
  title = [item title];
  [v4 setText:title];

  item2 = [(ICDebuggingItemCell *)self item];
  subtitle = [item2 subtitle];
  [v4 setSecondaryText:subtitle];

  item3 = [(ICDebuggingItemCell *)self item];
  LODWORD(subtitle) = [item3 isDestructive];

  if (subtitle)
  {
    v10 = +[UIColor systemRedColor];
    textProperties = [v4 textProperties];
    [textProperties setColor:v10];
  }

  [(ICDebuggingItemCell *)self setContentConfiguration:v4];
  v12 = +[NSMutableArray array];
  item4 = [(ICDebuggingItemCell *)self item];
  isSelected = [item4 isSelected];

  if (isSelected)
  {
    v15 = objc_alloc_init(UICellAccessoryCheckmark);
    [v12 addObject:v15];
  }

  item5 = [(ICDebuggingItemCell *)self item];
  isPresenter = [item5 isPresenter];

  if (isPresenter)
  {
    v18 = objc_alloc_init(UICellAccessoryDisclosureIndicator);
    [v12 addObject:v18];
  }

  v19 = [v12 copy];
  [(ICDebuggingItemCell *)self setAccessories:v19];
}

@end