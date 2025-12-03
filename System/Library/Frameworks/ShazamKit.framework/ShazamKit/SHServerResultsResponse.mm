@interface SHServerResultsResponse
- (NSArray)shazamIDs;
- (SHServerResultsResponse)initWithResultsDictionary:(id)dictionary;
- (double)recordingIntermissionSeconds;
- (double)recordingSignatureOffsetSeconds;
- (double)retrySeconds;
@end

@implementation SHServerResultsResponse

- (SHServerResultsResponse)initWithResultsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SHServerResultsResponse;
  v6 = [(SHServerResultsResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resultsDictionary, dictionary);
  }

  return v7;
}

- (NSArray)shazamIDs
{
  resultsDictionary = [(SHServerResultsResponse *)self resultsDictionary];
  v3 = [resultsDictionary objectForKeyedSubscript:@"matches"];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:{@"id", v13}];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (double)retrySeconds
{
  resultsDictionary = [(SHServerResultsResponse *)self resultsDictionary];
  v3 = [resultsDictionary objectForKeyedSubscript:@"retry"];

  v4 = [v3 objectForKeyedSubscript:@"recordingIntermissionInMilliseconds"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"retryInMilliseconds"];
    [v5 doubleValue];
    v7 = v6 / 1000.0;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (double)recordingIntermissionSeconds
{
  resultsDictionary = [(SHServerResultsResponse *)self resultsDictionary];
  v3 = [resultsDictionary objectForKeyedSubscript:@"retry"];

  v4 = [v3 objectForKeyedSubscript:@"recordingIntermissionInMilliseconds"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"recordingIntermissionInMilliseconds"];
    [v5 doubleValue];
    v7 = v6 / 1000.0;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (double)recordingSignatureOffsetSeconds
{
  resultsDictionary = [(SHServerResultsResponse *)self resultsDictionary];
  v3 = [resultsDictionary objectForKeyedSubscript:@"retry"];

  v4 = [v3 objectForKeyedSubscript:@"recordingOffsetInMilliseconds"];

  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"recordingOffsetInMilliseconds"];
    [v5 doubleValue];
    v7 = v6 / 1000.0;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

@end