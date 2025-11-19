@interface CRLWPFontVerificationCache
- (CRLWPFontVerificationCache)init;
- (id)filterFontNames:(id)a3 withStatus:(int64_t)a4;
- (id)filterFontNames:(id)a3 withStatusInSet:(id)a4;
- (id)filterFontNames:(id)a3 withoutStatus:(int64_t)a4;
- (id)fontNamesWithStatus:(int64_t)a3;
- (id)fontNamesWithStatusInSet:(id)a3;
- (int64_t)statusForFontName:(id)a3;
- (void)resetFontNames:(id)a3 withStatus:(int64_t)a4;
- (void)resetFontNames:(id)a3 withStatusInSet:(id)a4;
- (void)setStatus:(int64_t)a3 forFontName:(id)a4;
- (void)setStatus:(int64_t)a3 forFontNames:(id)a4;
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

- (int64_t)statusForFontName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_verifiedFonts objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setStatus:(int64_t)a3 forFontName:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v8 = [NSNumber numberWithInteger:a3];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }

  else
  {
    verifiedFonts = self->_verifiedFonts;
    v8 = a4;
    [(NSMutableDictionary *)verifiedFonts removeObjectForKey:?];
  }
}

- (void)setStatus:(int64_t)a3 forFontNames:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [NSNumber numberWithInteger:a3];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
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
    [(NSMutableDictionary *)self->_verifiedFonts removeObjectsForKeys:v6];
  }
}

- (void)resetFontNames:(id)a3 withStatus:(int64_t)a4
{
  if (a4)
  {
    v7 = [(CRLWPFontVerificationCache *)self fontNamesWithStatus:a4];
    verifiedFonts = self->_verifiedFonts;
    v6 = [v7 allObjects];
    [(NSMutableDictionary *)verifiedFonts removeObjectsForKeys:v6];
  }
}

- (void)resetFontNames:(id)a3 withStatusInSet:(id)a4
{
  v7 = [(CRLWPFontVerificationCache *)self fontNamesWithStatusInSet:a4];
  verifiedFonts = self->_verifiedFonts;
  v6 = [v7 allObjects];
  [(NSMutableDictionary *)verifiedFonts removeObjectsForKeys:v6];
}

- (id)fontNamesWithStatus:(int64_t)a3
{
  if (a3)
  {
    verifiedFonts = self->_verifiedFonts;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100562FB4;
    v6[3] = &unk_10186F220;
    v6[4] = a3;
    v4 = [(NSMutableDictionary *)verifiedFonts keysOfEntriesPassingTest:v6];
  }

  else
  {
    v4 = +[NSSet set];
  }

  return v4;
}

- (id)fontNamesWithStatusInSet:(id)a3
{
  v4 = a3;
  verifiedFonts = self->_verifiedFonts;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10056309C;
  v9[3] = &unk_10186F248;
  v10 = v4;
  v6 = v4;
  v7 = [(NSMutableDictionary *)verifiedFonts keysOfEntriesPassingTest:v9];

  return v7;
}

- (id)filterFontNames:(id)a3 withStatus:(int64_t)a4
{
  v6 = [a3 mutableCopy];
  if (a4)
  {
    v7 = [(CRLWPFontVerificationCache *)self fontNamesWithStatus:a4];
    [v6 intersectSet:v7];
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_verifiedFonts allKeys];
    v8 = [NSSet setWithArray:v7];
    [v6 minusSet:v8];
  }

  v9 = [v6 copy];

  return v9;
}

- (id)filterFontNames:(id)a3 withStatusInSet:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10056321C;
  v8[3] = &unk_10186F270;
  v8[4] = self;
  v9 = a4;
  v5 = v9;
  v6 = [a3 objectsPassingTest:v8];

  return v6;
}

- (id)filterFontNames:(id)a3 withoutStatus:(int64_t)a4
{
  v6 = a3;
  v7 = [NSMutableSet setWithObjects:&off_1018E2E98, &off_1018E2EB0, &off_1018E2EC8, &off_1018E2EE0, 0];
  v8 = [NSNumber numberWithInteger:a4];
  [v7 removeObject:v8];

  v9 = [(CRLWPFontVerificationCache *)self filterFontNames:v6 withStatusInSet:v7];

  return v9;
}

@end