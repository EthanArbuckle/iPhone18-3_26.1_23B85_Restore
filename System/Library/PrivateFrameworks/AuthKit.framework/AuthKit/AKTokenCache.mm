@interface AKTokenCache
- (AKTokenCache)init;
- (id)fetchWithContext:(id)context;
- (void)clearAllTokensForAltDSID:(id)d;
- (void)deleteWithContext:(id)context;
- (void)updateWithContext:(id)context;
@end

@implementation AKTokenCache

- (AKTokenCache)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKTokenCache;
  v6 = [(AKTokenCache *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = +[NSMutableDictionary dictionary];
    tokenCache = v9->_tokenCache;
    v9->_tokenCache = v2;
    _objc_release(tokenCache);
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)fetchWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  tokenCache = selfCopy->_tokenCache;
  altDSID = [location[0] altDSID];
  v10 = [(NSMutableDictionary *)tokenCache objectForKeyedSubscript:?];
  _objc_release(altDSID);
  if ([v10 count])
  {
    tokenIdentifier = [location[0] tokenIdentifier];
    v8 = [v10 objectForKeyedSubscript:?];
    _objc_release(tokenIdentifier);
    v13 = _objc_retain(v8);
    v9 = 1;
    objc_storeStrong(&v8, 0);
  }

  else
  {
    v13 = 0;
    v9 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  v3 = v13;

  return v3;
}

- (void)updateWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  tokenCache = selfCopy->_tokenCache;
  altDSID = [location[0] altDSID];
  v13 = [(NSMutableDictionary *)tokenCache objectForKeyedSubscript:?];
  _objc_release(altDSID);
  if (!v13)
  {
    v10 = +[NSMutableDictionary dictionary];
    v8 = selfCopy->_tokenCache;
    altDSID2 = [location[0] altDSID];
    [(NSMutableDictionary *)v8 setObject:v10 forKeyedSubscript:?];
    _objc_release(altDSID2);
    _objc_release(v10);
  }

  token = [location[0] token];
  v3 = selfCopy->_tokenCache;
  altDSID3 = [location[0] altDSID];
  v5 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:?];
  tokenIdentifier = [location[0] tokenIdentifier];
  [v5 setObject:token forKeyedSubscript:?];
  _objc_release(tokenIdentifier);
  _objc_release(v5);
  _objc_release(altDSID3);
  _objc_release(token);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)deleteWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  tokenCache = selfCopy->_tokenCache;
  altDSID = [location[0] altDSID];
  v9 = [(NSMutableDictionary *)tokenCache objectForKeyedSubscript:?];
  _objc_release(v9);
  _objc_release(altDSID);
  if (v9)
  {
    v3 = selfCopy->_tokenCache;
    altDSID2 = [location[0] altDSID];
    v5 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:?];
    tokenIdentifier = [location[0] tokenIdentifier];
    [v5 setObject:0 forKeyedSubscript:?];
    _objc_release(tokenIdentifier);
    _objc_release(v5);
    _objc_release(altDSID2);
  }

  objc_storeStrong(location, 0);
}

- (void)clearAllTokensForAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  [(NSMutableDictionary *)selfCopy->_tokenCache setObject:0 forKeyedSubscript:location[0]];
  objc_storeStrong(location, 0);
}

@end