@interface AKFontChooserUIItemDelegate
- (AKTextAttributesViewController)parentController;
- (id)convertFont:(id)font;
- (void)syncFontsToUI:(id)i;
@end

@implementation AKFontChooserUIItemDelegate

- (id)convertFont:(id)font
{
  fontCopy = font;
  parentController = [(AKFontChooserUIItemDelegate *)self parentController];
  v6 = [parentController convertFont:fontCopy];

  return v6;
}

- (void)syncFontsToUI:(id)i
{
  iCopy = i;
  parentController = [(AKFontChooserUIItemDelegate *)self parentController];
  [parentController syncFontsToUI:iCopy];
}

- (AKTextAttributesViewController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end