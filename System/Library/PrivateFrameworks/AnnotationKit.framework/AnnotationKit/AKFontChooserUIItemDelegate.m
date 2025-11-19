@interface AKFontChooserUIItemDelegate
- (AKTextAttributesViewController)parentController;
- (id)convertFont:(id)a3;
- (void)syncFontsToUI:(id)a3;
@end

@implementation AKFontChooserUIItemDelegate

- (id)convertFont:(id)a3
{
  v4 = a3;
  v5 = [(AKFontChooserUIItemDelegate *)self parentController];
  v6 = [v5 convertFont:v4];

  return v6;
}

- (void)syncFontsToUI:(id)a3
{
  v4 = a3;
  v5 = [(AKFontChooserUIItemDelegate *)self parentController];
  [v5 syncFontsToUI:v4];
}

- (AKTextAttributesViewController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end