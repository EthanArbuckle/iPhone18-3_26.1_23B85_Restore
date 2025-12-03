@interface RAPNavigationItemValues
- (void)setValuesOnNavigationItem:(id)item animated:(BOOL)animated;
- (void)takeValuesFromNavigationItem:(id)item;
@end

@implementation RAPNavigationItemValues

- (void)setValuesOnNavigationItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  title = self->_title;
  itemCopy = item;
  [itemCopy setTitle:title];
  [itemCopy setBackBarButtonItem:self->_backBarButtonItem];
  [itemCopy setTitleView:self->_titleView];
  [itemCopy setPrompt:self->_prompt];
  [itemCopy setLeftItemsSupplementBackButton:self->_leftItemsSupplementBackButton];
  [itemCopy setHidesBackButton:self->_hidesBackButton animated:animatedCopy];
  [itemCopy setLeftBarButtonItems:self->_leftBarButtonItems animated:animatedCopy];
  [itemCopy setRightBarButtonItems:self->_rightBarButtonItems animated:animatedCopy];
}

- (void)takeValuesFromNavigationItem:(id)item
{
  itemCopy = item;
  title = [itemCopy title];
  v6 = [title copy];
  title = self->_title;
  self->_title = v6;

  backBarButtonItem = [itemCopy backBarButtonItem];
  backBarButtonItem = self->_backBarButtonItem;
  self->_backBarButtonItem = backBarButtonItem;

  titleView = [itemCopy titleView];
  titleView = self->_titleView;
  self->_titleView = titleView;

  prompt = [itemCopy prompt];
  v13 = [prompt copy];
  prompt = self->_prompt;
  self->_prompt = v13;

  self->_leftItemsSupplementBackButton = [itemCopy leftItemsSupplementBackButton];
  self->_hidesBackButton = [itemCopy hidesBackButton];
  leftBarButtonItems = [itemCopy leftBarButtonItems];
  v16 = [leftBarButtonItems copy];
  leftBarButtonItems = self->_leftBarButtonItems;
  self->_leftBarButtonItems = v16;

  rightBarButtonItems = [itemCopy rightBarButtonItems];

  v18 = [rightBarButtonItems copy];
  rightBarButtonItems = self->_rightBarButtonItems;
  self->_rightBarButtonItems = v18;
}

@end