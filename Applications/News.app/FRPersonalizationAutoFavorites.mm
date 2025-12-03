@interface FRPersonalizationAutoFavorites
- (FRPersonalizationAutoFavorites)initWithCoder:(id)coder;
- (NSSet)autoFavoriteTagIDs;
- (id)activeAppUsageAutoFavorites;
- (id)activeInternalUsageAutoFavorites;
- (id)activeLocationAutoFavorites;
- (id)activePortraitAutoFavorites;
- (id)activeSafariAutoFavorites;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FRPersonalizationAutoFavorites

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  autoFavoriteTagIDsToScores = [(FRPersonalizationAutoFavorites *)self autoFavoriteTagIDsToScores];
  [v4 setAutoFavoriteTagIDsToScores:autoFavoriteTagIDsToScores];

  groupableFavoriteTagIDs = [(FRPersonalizationAutoFavorites *)self groupableFavoriteTagIDs];
  [v4 setGroupableFavoriteTagIDs:groupableFavoriteTagIDs];

  defaultCandidates = [(FRPersonalizationAutoFavorites *)self defaultCandidates];
  [v4 setDefaultCandidates:defaultCandidates];

  internalSignalAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self internalSignalAutoFavoriteCandidates];
  [v4 setInternalSignalAutoFavoriteCandidates:internalSignalAutoFavoriteCandidates];

  existingInternalSignalAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self existingInternalSignalAutoFavoriteCandidates];
  [v4 setExistingInternalSignalAutoFavoriteCandidates:existingInternalSignalAutoFavoriteCandidates];

  groupableCandidates = [(FRPersonalizationAutoFavorites *)self groupableCandidates];
  [v4 setGroupableCandidates:groupableCandidates];

  portraitAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self portraitAutoFavoriteCandidates];
  [v4 setPortraitAutoFavoriteCandidates:portraitAutoFavoriteCandidates];

  appUsageAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self appUsageAutoFavoriteCandidates];
  [v4 setAppUsageAutoFavoriteCandidates:appUsageAutoFavoriteCandidates];

  safariAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self safariAutoFavoriteCandidates];
  [v4 setSafariAutoFavoriteCandidates:safariAutoFavoriteCandidates];

  locationAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self locationAutoFavoriteCandidates];
  [v4 setLocationAutoFavoriteCandidates:locationAutoFavoriteCandidates];

  return v4;
}

- (NSSet)autoFavoriteTagIDs
{
  autoFavoriteTagIDsToScores = [(FRPersonalizationAutoFavorites *)self autoFavoriteTagIDsToScores];
  allKeys = [autoFavoriteTagIDsToScores allKeys];
  v4 = [NSSet setWithArray:allKeys];

  return v4;
}

- (id)activeAppUsageAutoFavorites
{
  appUsageAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self appUsageAutoFavoriteCandidates];
  v4 = appUsageAutoFavoriteCandidates;
  if (!appUsageAutoFavoriteCandidates)
  {
    v4 = objc_opt_new();
  }

  autoFavoriteTagIDs = [(FRPersonalizationAutoFavorites *)self autoFavoriteTagIDs];
  v6 = [v4 fc_setByIntersectingSet:autoFavoriteTagIDs];

  if (!appUsageAutoFavoriteCandidates)
  {
  }

  return v6;
}

- (id)activeSafariAutoFavorites
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029C38;
  v4[3] = &unk_1000C37B8;
  v4[4] = self;
  v2 = [NSSet fc_set:v4];

  return v2;
}

- (id)activePortraitAutoFavorites
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029D74;
  v4[3] = &unk_1000C37B8;
  v4[4] = self;
  v2 = [NSSet fc_set:v4];

  return v2;
}

- (id)activeLocationAutoFavorites
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029ED0;
  v4[3] = &unk_1000C37B8;
  v4[4] = self;
  v2 = [NSSet fc_set:v4];

  return v2;
}

- (id)activeInternalUsageAutoFavorites
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002A04C;
  v4[3] = &unk_1000C37B8;
  v4[4] = self;
  v2 = [NSSet fc_set:v4];

  return v2;
}

- (FRPersonalizationAutoFavorites)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = FRPersonalizationAutoFavorites;
  v5 = [(FRPersonalizationAutoFavorites *)&v22 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"autoFavoriteTagIDsToScores"];
    [(FRPersonalizationAutoFavorites *)v5 setAutoFavoriteTagIDsToScores:v11];

    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:@"groupableFavoriteTagIDs"];
    [(FRPersonalizationAutoFavorites *)v5 setGroupableFavoriteTagIDs:v12];

    v13 = [coderCopy decodeObjectOfClasses:v10 forKey:@"defaultCandidates"];
    [(FRPersonalizationAutoFavorites *)v5 setDefaultCandidates:v13];

    v14 = [coderCopy decodeObjectOfClasses:v10 forKey:@"internalSignalAutoFavoriteCandidates"];
    [(FRPersonalizationAutoFavorites *)v5 setInternalSignalAutoFavoriteCandidates:v14];

    v15 = [coderCopy decodeObjectOfClasses:v10 forKey:@"existingInternalSignalAutoFavoriteCandidates"];
    [(FRPersonalizationAutoFavorites *)v5 setExistingInternalSignalAutoFavoriteCandidates:v15];

    v16 = [coderCopy decodeObjectOfClasses:v10 forKey:@"groupableCandidates"];
    [(FRPersonalizationAutoFavorites *)v5 setGroupableCandidates:v16];

    v17 = [coderCopy decodeObjectOfClasses:v10 forKey:@"portraitAutoFavoriteCandidates"];
    [(FRPersonalizationAutoFavorites *)v5 setPortraitAutoFavoriteCandidates:v17];

    v18 = [coderCopy decodeObjectOfClasses:v10 forKey:@"appUsageAutoFavoriteCandidates"];
    [(FRPersonalizationAutoFavorites *)v5 setAppUsageAutoFavoriteCandidates:v18];

    v19 = [coderCopy decodeObjectOfClasses:v10 forKey:@"safariAutoFavoriteCandidates"];
    [(FRPersonalizationAutoFavorites *)v5 setSafariAutoFavoriteCandidates:v19];

    v20 = [coderCopy decodeObjectOfClasses:v10 forKey:@"locationAutoFavoriteCandidates"];
    [(FRPersonalizationAutoFavorites *)v5 setLocationAutoFavoriteCandidates:v20];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  autoFavoriteTagIDsToScores = [(FRPersonalizationAutoFavorites *)self autoFavoriteTagIDsToScores];
  [coderCopy encodeObject:autoFavoriteTagIDsToScores forKey:@"autoFavoriteTagIDsToScores"];

  groupableFavoriteTagIDs = [(FRPersonalizationAutoFavorites *)self groupableFavoriteTagIDs];
  [coderCopy encodeObject:groupableFavoriteTagIDs forKey:@"groupableFavoriteTagIDs"];

  defaultCandidates = [(FRPersonalizationAutoFavorites *)self defaultCandidates];
  [coderCopy encodeObject:defaultCandidates forKey:@"defaultCandidates"];

  internalSignalAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self internalSignalAutoFavoriteCandidates];
  [coderCopy encodeObject:internalSignalAutoFavoriteCandidates forKey:@"internalSignalAutoFavoriteCandidates"];

  existingInternalSignalAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self existingInternalSignalAutoFavoriteCandidates];
  [coderCopy encodeObject:existingInternalSignalAutoFavoriteCandidates forKey:@"existingInternalSignalAutoFavoriteCandidates"];

  groupableCandidates = [(FRPersonalizationAutoFavorites *)self groupableCandidates];
  [coderCopy encodeObject:groupableCandidates forKey:@"groupableCandidates"];

  portraitAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self portraitAutoFavoriteCandidates];
  [coderCopy encodeObject:portraitAutoFavoriteCandidates forKey:@"portraitAutoFavoriteCandidates"];

  appUsageAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self appUsageAutoFavoriteCandidates];
  [coderCopy encodeObject:appUsageAutoFavoriteCandidates forKey:@"appUsageAutoFavoriteCandidates"];

  safariAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self safariAutoFavoriteCandidates];
  [coderCopy encodeObject:safariAutoFavoriteCandidates forKey:@"safariAutoFavoriteCandidates"];

  locationAutoFavoriteCandidates = [(FRPersonalizationAutoFavorites *)self locationAutoFavoriteCandidates];
  [coderCopy encodeObject:locationAutoFavoriteCandidates forKey:@"locationAutoFavoriteCandidates"];
}

@end