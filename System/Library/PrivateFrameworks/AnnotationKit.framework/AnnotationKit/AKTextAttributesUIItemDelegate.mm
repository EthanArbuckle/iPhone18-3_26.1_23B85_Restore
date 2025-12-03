@interface AKTextAttributesUIItemDelegate
- (AKTextAttributesViewController)parentController;
- (id)convertTextAttributes:(id)attributes;
- (void)syncTextAttributesToUI:(id)i;
@end

@implementation AKTextAttributesUIItemDelegate

- (id)convertTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  parentController = [(AKTextAttributesUIItemDelegate *)self parentController];
  v6 = [parentController convertTextAttributes:attributesCopy];

  return v6;
}

- (void)syncTextAttributesToUI:(id)i
{
  iCopy = i;
  parentController = [(AKTextAttributesUIItemDelegate *)self parentController];
  [parentController syncTextAttributesToUI:iCopy];
}

- (AKTextAttributesViewController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end