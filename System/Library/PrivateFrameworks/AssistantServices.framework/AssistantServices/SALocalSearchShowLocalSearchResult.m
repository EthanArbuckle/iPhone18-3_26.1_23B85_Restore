@interface SALocalSearchShowLocalSearchResult
- (id)_ad_transformedMapsRequest;
- (id)_ad_transformedMapsSuccessResponse;
@end

@implementation SALocalSearchShowLocalSearchResult

- (id)_ad_transformedMapsSuccessResponse
{
  v2 = objc_alloc_init(SACommandSucceeded);

  return v2;
}

- (id)_ad_transformedMapsRequest
{
  v3 = objc_alloc_init(STSiriLocation);
  v4 = [(SALocalSearchShowLocalSearchResult *)self rawData];
  [v3 setGeoResult:v4];

  [v3 setResultType:2];
  v5 = [STShowMapsSearchResultsRequest alloc];
  v6 = [(SALocalSearchShowLocalSearchResult *)self extSessionGuid];
  v7 = [(SALocalSearchShowLocalSearchResult *)self extSessionGuidCreatedTimestamp];
  v8 = [v5 _initWithLocation:v3 extSessionGuid:v6 extSessionGuidCreatedTimestamp:v7];

  return v8;
}

@end