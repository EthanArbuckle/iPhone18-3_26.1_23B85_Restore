@interface BRLTTable
- (id)localeIdentifier;
@end

@implementation BRLTTable

- (id)localeIdentifier
{
  v2 = [(BRLTTable *)self language];
  v3 = [NSLocale localeWithLocaleIdentifier:v2];
  v4 = [v3 localeIdentifier];

  return v4;
}

@end