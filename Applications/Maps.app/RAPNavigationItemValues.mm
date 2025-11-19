@interface RAPNavigationItemValues
- (void)setValuesOnNavigationItem:(id)a3 animated:(BOOL)a4;
- (void)takeValuesFromNavigationItem:(id)a3;
@end

@implementation RAPNavigationItemValues

- (void)setValuesOnNavigationItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  title = self->_title;
  v7 = a3;
  [v7 setTitle:title];
  [v7 setBackBarButtonItem:self->_backBarButtonItem];
  [v7 setTitleView:self->_titleView];
  [v7 setPrompt:self->_prompt];
  [v7 setLeftItemsSupplementBackButton:self->_leftItemsSupplementBackButton];
  [v7 setHidesBackButton:self->_hidesBackButton animated:v4];
  [v7 setLeftBarButtonItems:self->_leftBarButtonItems animated:v4];
  [v7 setRightBarButtonItems:self->_rightBarButtonItems animated:v4];
}

- (void)takeValuesFromNavigationItem:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [v5 copy];
  title = self->_title;
  self->_title = v6;

  v8 = [v4 backBarButtonItem];
  backBarButtonItem = self->_backBarButtonItem;
  self->_backBarButtonItem = v8;

  v10 = [v4 titleView];
  titleView = self->_titleView;
  self->_titleView = v10;

  v12 = [v4 prompt];
  v13 = [v12 copy];
  prompt = self->_prompt;
  self->_prompt = v13;

  self->_leftItemsSupplementBackButton = [v4 leftItemsSupplementBackButton];
  self->_hidesBackButton = [v4 hidesBackButton];
  v15 = [v4 leftBarButtonItems];
  v16 = [v15 copy];
  leftBarButtonItems = self->_leftBarButtonItems;
  self->_leftBarButtonItems = v16;

  v20 = [v4 rightBarButtonItems];

  v18 = [v20 copy];
  rightBarButtonItems = self->_rightBarButtonItems;
  self->_rightBarButtonItems = v18;
}

@end