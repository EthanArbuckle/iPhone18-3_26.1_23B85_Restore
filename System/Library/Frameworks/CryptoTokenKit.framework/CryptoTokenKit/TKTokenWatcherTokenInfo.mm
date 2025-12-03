@interface TKTokenWatcherTokenInfo
- (TKTokenWatcherTokenInfo)initWithTokenID:(id)d slotName:(id)name driverName:(id)driverName;
- (TKTokenWatcherTokenInfo)initWithTokenInfo:(id)info;
@end

@implementation TKTokenWatcherTokenInfo

- (TKTokenWatcherTokenInfo)initWithTokenInfo:(id)info
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = TKTokenWatcherTokenInfo;
  v5 = [(TKTokenWatcherTokenInfo *)&v15 init];
  if (v5)
  {
    firstObject = [infoCopy firstObject];
    tokenID = v5->_tokenID;
    v5->_tokenID = firstObject;

    if ([infoCopy count] >= 2)
    {
      v8 = [infoCopy objectAtIndexedSubscript:1];
      v9 = [v8 length];
      if (v9)
      {
        v9 = [infoCopy objectAtIndexedSubscript:1];
      }

      driverName = v5->_driverName;
      v5->_driverName = v9;

      if ([infoCopy count] >= 3)
      {
        v11 = [infoCopy objectAtIndexedSubscript:2];
        v12 = [v11 length];
        if (v12)
        {
          v12 = [infoCopy objectAtIndexedSubscript:2];
        }

        slotName = v5->_slotName;
        v5->_slotName = v12;
      }
    }
  }

  return v5;
}

- (TKTokenWatcherTokenInfo)initWithTokenID:(id)d slotName:(id)name driverName:(id)driverName
{
  dCopy = d;
  nameCopy = name;
  driverNameCopy = driverName;
  v15.receiver = self;
  v15.super_class = TKTokenWatcherTokenInfo;
  v12 = [(TKTokenWatcherTokenInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tokenID, d);
    objc_storeStrong(&v13->_slotName, name);
    objc_storeStrong(&v13->_driverName, driverName);
  }

  return v13;
}

@end