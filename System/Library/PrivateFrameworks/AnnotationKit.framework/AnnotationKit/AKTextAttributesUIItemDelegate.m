@interface AKTextAttributesUIItemDelegate
- (AKTextAttributesViewController)parentController;
- (id)convertTextAttributes:(id)a3;
- (void)syncTextAttributesToUI:(id)a3;
@end

@implementation AKTextAttributesUIItemDelegate

- (id)convertTextAttributes:(id)a3
{
  v4 = a3;
  v5 = [(AKTextAttributesUIItemDelegate *)self parentController];
  v6 = [v5 convertTextAttributes:v4];

  return v6;
}

- (void)syncTextAttributesToUI:(id)a3
{
  v4 = a3;
  v5 = [(AKTextAttributesUIItemDelegate *)self parentController];
  [v5 syncTextAttributesToUI:v4];
}

- (AKTextAttributesViewController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end