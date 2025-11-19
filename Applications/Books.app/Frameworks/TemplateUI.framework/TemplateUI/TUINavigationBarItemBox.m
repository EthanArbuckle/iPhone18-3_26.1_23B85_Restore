@interface TUINavigationBarItemBox
- (void)setMenuContainer:(id)a3;
@end

@implementation TUINavigationBarItemBox

- (void)setMenuContainer:(id)a3
{
  v5 = a3;
  menuContainer = self->_menuContainer;
  if (menuContainer != v5)
  {
    v7 = v5;
    [(TUIMenuContainer *)menuContainer setParentModel:0];
    objc_storeStrong(&self->_menuContainer, a3);
    [(TUIMenuContainer *)self->_menuContainer setParentModel:self];
    v5 = v7;
  }
}

@end