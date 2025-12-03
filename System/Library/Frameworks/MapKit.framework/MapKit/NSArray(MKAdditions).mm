@interface NSArray(MKAdditions)
- (id)_mapkit_componentsJoinedInCommaDelimitedList;
- (id)_mapkit_joinedAddressComponents;
@end

@implementation NSArray(MKAdditions)

- (id)_mapkit_joinedAddressComponents
{
  v2 = _MKLocalizedStringFromThisBundle(@"Address component delimiter");
  v3 = [self componentsJoinedByString:v2];

  return v3;
}

- (id)_mapkit_componentsJoinedInCommaDelimitedList
{
  _mapkit_commaListDelimiter = [MEMORY[0x1E696AEC0] _mapkit_commaListDelimiter];
  v3 = [self componentsJoinedByString:_mapkit_commaListDelimiter];

  return v3;
}

@end