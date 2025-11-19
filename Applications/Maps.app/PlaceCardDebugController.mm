@interface PlaceCardDebugController
- (void)prepareContent;
@end

@implementation PlaceCardDebugController

- (void)prepareContent
{
  v3 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:&stru_101657828];
  if (MapsFeature_IsEnabled_PlaceCardShowcase())
  {
    v4 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Place Enrichment" content:&stru_101657988];
  }

  v5 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Override" content:&stru_1016579A8];
}

@end