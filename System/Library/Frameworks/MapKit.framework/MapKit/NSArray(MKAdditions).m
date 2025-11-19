@interface NSArray(MKAdditions)
- (id)_mapkit_componentsJoinedInCommaDelimitedList;
- (id)_mapkit_joinedAddressComponents;
@end

@implementation NSArray(MKAdditions)

- (id)_mapkit_joinedAddressComponents
{
  v2 = _MKLocalizedStringFromThisBundle(@"Address component delimiter");
  v3 = [a1 componentsJoinedByString:v2];

  return v3;
}

- (id)_mapkit_componentsJoinedInCommaDelimitedList
{
  v2 = [MEMORY[0x1E696AEC0] _mapkit_commaListDelimiter];
  v3 = [a1 componentsJoinedByString:v2];

  return v3;
}

@end