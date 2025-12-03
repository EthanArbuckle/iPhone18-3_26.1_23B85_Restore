@interface BRLTTable
- (id)localeIdentifier;
@end

@implementation BRLTTable

- (id)localeIdentifier
{
  language = [(BRLTTable *)self language];
  v3 = [NSLocale localeWithLocaleIdentifier:language];
  localeIdentifier = [v3 localeIdentifier];

  return localeIdentifier;
}

@end