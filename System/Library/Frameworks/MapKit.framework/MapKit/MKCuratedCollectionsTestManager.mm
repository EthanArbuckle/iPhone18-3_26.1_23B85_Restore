@interface MKCuratedCollectionsTestManager
- (id)placeWithCollectionUsingJSONAtPath:(id)path;
@end

@implementation MKCuratedCollectionsTestManager

- (id)placeWithCollectionUsingJSONAtPath:(id)path
{
  v12 = 0;
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:path options:0 error:&v12];
  v4 = v12;
  v11 = v4;
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v11];
  v6 = v11;

  v7 = [objc_alloc(MEMORY[0x1E69A2320]) initWithJSON:v5];
  legacyPlaceResults = [v7 legacyPlaceResults];
  firstObject = [legacyPlaceResults firstObject];

  return firstObject;
}

@end