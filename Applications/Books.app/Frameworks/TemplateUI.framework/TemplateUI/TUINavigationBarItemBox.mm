@interface TUINavigationBarItemBox
- (void)setMenuContainer:(id)container;
@end

@implementation TUINavigationBarItemBox

- (void)setMenuContainer:(id)container
{
  containerCopy = container;
  menuContainer = self->_menuContainer;
  if (menuContainer != containerCopy)
  {
    v7 = containerCopy;
    [(TUIMenuContainer *)menuContainer setParentModel:0];
    objc_storeStrong(&self->_menuContainer, container);
    [(TUIMenuContainer *)self->_menuContainer setParentModel:self];
    containerCopy = v7;
  }
}

@end