@interface CRLWPFontVerificationCache
- (CRLWPFontVerificationCache)init;
- (id)filterFontNames:(id)names withStatus:(int64_t)status;
- (id)filterFontNames:(id)names withStatusInSet:(id)set;
- (id)filterFontNames:(id)names withoutStatus:(int64_t)status;
- (id)fontNamesWithStatus:(int64_t)status;
- (id)fontNamesWithStatusInSet:(id)set;
- (int64_t)statusForFontName:(id)name;
- (void)resetFontNames:(id)names withStatus:(int64_t)status;
- (void)resetFontNames:(id)names withStatusInSet:(id)set;
- (void)setStatus:(int64_t)status forFontName:(id)name;
- (void)setStatus:(int64_t)status forFontNames:(id)names;
@end

@implementation CRLWPFontVerificationCache

- (CRLWPFontVerificationCache)init
{
  v6.receiver = self;
  v6.super_class = CRLWPFontVerificationCache;
  v2 = [(CRLWPFontVerificationCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    verifiedFonts = v2->_verifiedFonts;
    v2->_verifiedFonts = v3;
  }

  return v2;
}

- (int64_t)statusForFontName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_verifiedFonts objectForKeyedSubscript:name];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setStatus:(int64_t)status forFontName:(id)name
{
  if (status)
  {
    nameCopy = name;
    nameCopy2 = [NSNumber numberWithInteger:status];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  else
  {
    verifiedFonts = self->_verifiedFonts;
    nameCopy2 = name;
    [(NSMutableDictionary *)verifiedFonts removeObjectForKey:?];
  }
}

- (void)setStatus:(int64_t)status forFontNames:(id)names
{
  namesCopy = names;
  if (status)
  {
    v7 = [NSNumber numberWithInteger:status];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = namesCopy;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(NSMutableDictionary *)self->_verifiedFonts setObject:v7 forKeyedSubscript:*(*(&v13 + 1) + 8 * v12), v13];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_verifiedFonts removeObjectsForKeys:namesCopy];
  }
}

- (void)resetFontNames:(id)names withStatus:(int64_t)status
{
  if (status)
  {
    v7 = [(CRLWPFontVerificationCache *)self fontNamesWithStatus:status];
    verifiedFonts = self->_verifiedFonts;
    allObjects = [v7 allObjects];
    [(NSMutableDictionary *)verifiedFonts removeObjectsForKeys:allObjects];
  }
}

- (void)resetFontNames:(id)names withStatusInSet:(id)set
{
  v7 = [(CRLWPFontVerificationCache *)self fontNamesWithStatusInSet:set];
  verifiedFonts = self->_verifiedFonts;
  allObjects = [v7 allObjects];
  [(NSMutableDictionary *)verifiedFonts removeObjectsForKeys:allObjects];
}

- (id)fontNamesWithStatus:(int64_t)status
{
  if (status)
  {
    verifiedFonts = self->_verifiedFonts;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100562FB4;
    v6[3] = &unk_10186F220;
    v6[4] = status;
    v4 = [(NSMutableDictionary *)verifiedFonts keysOfEntriesPassingTest:v6];
  }

  else
  {
    v4 = +[NSSet set];
  }

  return v4;
}

- (id)fontNamesWithStatusInSet:(id)set
{
  setCopy = set;
  verifiedFonts = self->_verifiedFonts;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10056309C;
  v9[3] = &unk_10186F248;
  v10 = setCopy;
  v6 = setCopy;
  v7 = [(NSMutableDictionary *)verifiedFonts keysOfEntriesPassingTest:v9];

  return v7;
}

- (id)filterFontNames:(id)names withStatus:(int64_t)status
{
  v6 = [names mutableCopy];
  if (status)
  {
    allKeys = [(CRLWPFontVerificationCache *)self fontNamesWithStatus:status];
    [v6 intersectSet:allKeys];
  }

  else
  {
    allKeys = [(NSMutableDictionary *)self->_verifiedFonts allKeys];
    v8 = [NSSet setWithArray:allKeys];
    [v6 minusSet:v8];
  }

  v9 = [v6 copy];

  return v9;
}

- (id)filterFontNames:(id)names withStatusInSet:(id)set
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10056321C;
  v8[3] = &unk_10186F270;
  v8[4] = self;
  setCopy = set;
  v5 = setCopy;
  v6 = [names objectsPassingTest:v8];

  return v6;
}

- (id)filterFontNames:(id)names withoutStatus:(int64_t)status
{
  namesCopy = names;
  v7 = [NSMutableSet setWithObjects:&off_1018E2E98, &off_1018E2EB0, &off_1018E2EC8, &off_1018E2EE0, 0];
  v8 = [NSNumber numberWithInteger:status];
  [v7 removeObject:v8];

  v9 = [(CRLWPFontVerificationCache *)self filterFontNames:namesCopy withStatusInSet:v7];

  return v9;
}

@end