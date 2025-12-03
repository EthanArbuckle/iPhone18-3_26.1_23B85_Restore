@interface SHServerDataResponse
- (NSArray)hapticItemIDs;
- (NSArray)shazamIDs;
- (SHServerDataResponse)initWithDataArray:(id)array;
@end

@implementation SHServerDataResponse

- (SHServerDataResponse)initWithDataArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = SHServerDataResponse;
  v6 = [(SHServerDataResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataArray, array);
  }

  return v7;
}

- (NSArray)shazamIDs
{
  dataArray = [(SHServerDataResponse *)self dataArray];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dataArray count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataArray2 = [(SHServerDataResponse *)self dataArray];
  v6 = [dataArray2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(dataArray2);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:@"id"];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [dataArray2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (NSArray)hapticItemIDs
{
  dataArray = [(SHServerDataResponse *)self dataArray];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dataArray count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataArray2 = [(SHServerDataResponse *)self dataArray];
  v6 = [dataArray2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(dataArray2);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:@"id"];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [dataArray2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

@end