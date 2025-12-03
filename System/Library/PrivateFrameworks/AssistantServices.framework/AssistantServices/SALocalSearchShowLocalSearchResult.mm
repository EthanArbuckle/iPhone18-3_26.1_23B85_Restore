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
  rawData = [(SALocalSearchShowLocalSearchResult *)self rawData];
  [v3 setGeoResult:rawData];

  [v3 setResultType:2];
  v5 = [STShowMapsSearchResultsRequest alloc];
  extSessionGuid = [(SALocalSearchShowLocalSearchResult *)self extSessionGuid];
  extSessionGuidCreatedTimestamp = [(SALocalSearchShowLocalSearchResult *)self extSessionGuidCreatedTimestamp];
  v8 = [v5 _initWithLocation:v3 extSessionGuid:extSessionGuid extSessionGuidCreatedTimestamp:extSessionGuidCreatedTimestamp];

  return v8;
}

@end