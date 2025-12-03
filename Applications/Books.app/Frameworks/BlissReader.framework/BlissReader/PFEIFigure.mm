@interface PFEIFigure
- (void)mapEndElementWithState:(id)state;
@end

@implementation PFEIFigure

- (void)mapEndElementWithState:(id)state
{
  currentHtmlStackEntry = [state currentHtmlStackEntry];
  currentEntryMediaState = [currentHtmlStackEntry currentEntryMediaState];
  v5 = [currentHtmlStackEntry xmlValueForAttribute:PFXWidgetConstantDataWidgetObjectType[0]];
  if (xmlStrEqual(v5, PFXWidgetConstantGalleryObjectValueItem[0]) && [currentEntryMediaState childResultCount])
  {
    childResults = [PFEIGallery galleryItemFromEntry:currentHtmlStackEntry];
    if (!childResults)
    {
      return;
    }
  }

  else
  {
    if (![currentEntryMediaState childResultCount])
    {
      return;
    }

    childResults = [currentEntryMediaState childResults];
  }

  [currentEntryMediaState setResult:childResults];
}

@end