@interface SHServerDataResponse
- (NSArray)hapticItemIDs;
- (NSArray)shazamIDs;
- (SHServerDataResponse)initWithDataArray:(id)a3;
@end

@implementation SHServerDataResponse

- (SHServerDataResponse)initWithDataArray:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHServerDataResponse;
  v6 = [(SHServerDataResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataArray, a3);
  }

  return v7;
}

- (NSArray)shazamIDs
{
  v3 = [(SHServerDataResponse *)self dataArray];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SHServerDataResponse *)self dataArray];
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

        v10 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:@"id"];
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

- (NSArray)hapticItemIDs
{
  v3 = [(SHServerDataResponse *)self dataArray];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SHServerDataResponse *)self dataArray];
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

        v10 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:@"id"];
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

@end