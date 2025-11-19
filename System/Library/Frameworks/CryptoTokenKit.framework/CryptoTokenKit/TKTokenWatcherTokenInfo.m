@interface TKTokenWatcherTokenInfo
- (TKTokenWatcherTokenInfo)initWithTokenID:(id)a3 slotName:(id)a4 driverName:(id)a5;
- (TKTokenWatcherTokenInfo)initWithTokenInfo:(id)a3;
@end

@implementation TKTokenWatcherTokenInfo

- (TKTokenWatcherTokenInfo)initWithTokenInfo:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TKTokenWatcherTokenInfo;
  v5 = [(TKTokenWatcherTokenInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 firstObject];
    tokenID = v5->_tokenID;
    v5->_tokenID = v6;

    if ([v4 count] >= 2)
    {
      v8 = [v4 objectAtIndexedSubscript:1];
      v9 = [v8 length];
      if (v9)
      {
        v9 = [v4 objectAtIndexedSubscript:1];
      }

      driverName = v5->_driverName;
      v5->_driverName = v9;

      if ([v4 count] >= 3)
      {
        v11 = [v4 objectAtIndexedSubscript:2];
        v12 = [v11 length];
        if (v12)
        {
          v12 = [v4 objectAtIndexedSubscript:2];
        }

        slotName = v5->_slotName;
        v5->_slotName = v12;
      }
    }
  }

  return v5;
}

- (TKTokenWatcherTokenInfo)initWithTokenID:(id)a3 slotName:(id)a4 driverName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TKTokenWatcherTokenInfo;
  v12 = [(TKTokenWatcherTokenInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tokenID, a3);
    objc_storeStrong(&v13->_slotName, a4);
    objc_storeStrong(&v13->_driverName, a5);
  }

  return v13;
}

@end