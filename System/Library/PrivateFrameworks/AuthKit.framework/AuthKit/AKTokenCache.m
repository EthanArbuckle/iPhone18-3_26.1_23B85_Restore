@interface AKTokenCache
- (AKTokenCache)init;
- (id)fetchWithContext:(id)a3;
- (void)clearAllTokensForAltDSID:(id)a3;
- (void)deleteWithContext:(id)a3;
- (void)updateWithContext:(id)a3;
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

- (id)fetchWithContext:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  tokenCache = v12->_tokenCache;
  v7 = [location[0] altDSID];
  v10 = [(NSMutableDictionary *)tokenCache objectForKeyedSubscript:?];
  _objc_release(v7);
  if ([v10 count])
  {
    v5 = [location[0] tokenIdentifier];
    v8 = [v10 objectForKeyedSubscript:?];
    _objc_release(v5);
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

- (void)updateWithContext:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  tokenCache = v15->_tokenCache;
  v12 = [location[0] altDSID];
  v13 = [(NSMutableDictionary *)tokenCache objectForKeyedSubscript:?];
  _objc_release(v12);
  if (!v13)
  {
    v10 = +[NSMutableDictionary dictionary];
    v8 = v15->_tokenCache;
    v9 = [location[0] altDSID];
    [(NSMutableDictionary *)v8 setObject:v10 forKeyedSubscript:?];
    _objc_release(v9);
    _objc_release(v10);
  }

  v7 = [location[0] token];
  v3 = v15->_tokenCache;
  v6 = [location[0] altDSID];
  v5 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:?];
  v4 = [location[0] tokenIdentifier];
  [v5 setObject:v7 forKeyedSubscript:?];
  _objc_release(v4);
  _objc_release(v5);
  _objc_release(v6);
  _objc_release(v7);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)deleteWithContext:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  tokenCache = v11->_tokenCache;
  v8 = [location[0] altDSID];
  v9 = [(NSMutableDictionary *)tokenCache objectForKeyedSubscript:?];
  _objc_release(v9);
  _objc_release(v8);
  if (v9)
  {
    v3 = v11->_tokenCache;
    v6 = [location[0] altDSID];
    v5 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:?];
    v4 = [location[0] tokenIdentifier];
    [v5 setObject:0 forKeyedSubscript:?];
    _objc_release(v4);
    _objc_release(v5);
    _objc_release(v6);
  }

  objc_storeStrong(location, 0);
}

- (void)clearAllTokensForAltDSID:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSMutableDictionary *)v4->_tokenCache setObject:0 forKeyedSubscript:location[0]];
  objc_storeStrong(location, 0);
}

@end