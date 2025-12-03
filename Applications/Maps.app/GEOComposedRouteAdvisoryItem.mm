@interface GEOComposedRouteAdvisoryItem
- (void)updateModel:(id)model;
@end

@implementation GEOComposedRouteAdvisoryItem

- (void)updateModel:(id)model
{
  modelCopy = model;
  titleString = [(GEOComposedRouteAdvisoryItem *)self titleString];
  stringWithDefaultOptions = [titleString stringWithDefaultOptions];
  [modelCopy setFirstLine:stringWithDefaultOptions];

  subtitleString = [(GEOComposedRouteAdvisoryItem *)self subtitleString];
  stringWithDefaultOptions2 = [subtitleString stringWithDefaultOptions];
  [modelCopy setSecondLine:stringWithDefaultOptions2];
}

@end