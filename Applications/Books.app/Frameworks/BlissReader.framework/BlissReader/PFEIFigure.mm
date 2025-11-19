@interface PFEIFigure
- (void)mapEndElementWithState:(id)a3;
@end

@implementation PFEIFigure

- (void)mapEndElementWithState:(id)a3
{
  v3 = [a3 currentHtmlStackEntry];
  v4 = [v3 currentEntryMediaState];
  v5 = [v3 xmlValueForAttribute:PFXWidgetConstantDataWidgetObjectType[0]];
  if (xmlStrEqual(v5, PFXWidgetConstantGalleryObjectValueItem[0]) && [v4 childResultCount])
  {
    v6 = [PFEIGallery galleryItemFromEntry:v3];
    if (!v6)
    {
      return;
    }
  }

  else
  {
    if (![v4 childResultCount])
    {
      return;
    }

    v6 = [v4 childResults];
  }

  [v4 setResult:v6];
}

@end