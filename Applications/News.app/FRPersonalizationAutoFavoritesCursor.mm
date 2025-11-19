@interface FRPersonalizationAutoFavoritesCursor
- (FRPersonalizationAutoFavoritesCursor)initWithCoreDuetLastQueryDate:(id)a3 portraitLastQueryDate:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FRPersonalizationAutoFavoritesCursor

- (FRPersonalizationAutoFavoritesCursor)initWithCoreDuetLastQueryDate:(id)a3 portraitLastQueryDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FRPersonalizationAutoFavoritesCursor;
  v9 = [(FRPersonalizationAutoFavoritesCursor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coreDuetLastQueryDate, a3);
    objc_storeStrong(&v10->_portraitLastQueryDate, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(FRPersonalizationAutoFavoritesCursor *)self lastInternalSignalProcessingDate];
  [v4 setLastInternalSignalProcessingDate:v5];

  v6 = [(FRPersonalizationAutoFavoritesCursor *)self lastExternalSignalProcessingDate];
  [v4 setLastExternalSignalProcessingDate:v6];

  v7 = [(FRPersonalizationAutoFavoritesCursor *)self coreDuetLastQueryDate];
  [v4 setCoreDuetLastQueryDate:v7];

  v8 = [(FRPersonalizationAutoFavoritesCursor *)self portraitLastQueryDate];
  [v4 setPortraitLastQueryDate:v8];

  v9 = [(FRPersonalizationAutoFavoritesCursor *)self lastAppUsageAutoFavoriteResults];
  [v4 setLastAppUsageAutoFavoriteResults:v9];

  v10 = [(FRPersonalizationAutoFavoritesCursor *)self lastSafariAutoFavoriteResults];
  [v4 setLastSafariAutoFavoriteResults:v10];

  v11 = [(FRPersonalizationAutoFavoritesCursor *)self lastPortraitAutoFavoriteResults];
  [v4 setLastPortraitAutoFavoriteResults:v11];

  v12 = [(FRPersonalizationAutoFavoritesCursor *)self lastLocationAutoFavoriteResults];
  [v4 setLastLocationAutoFavoriteResults:v12];

  v13 = [(FRPersonalizationAutoFavoritesCursor *)self lastInternalSignalAutoFavorites];
  [v4 setLastInternalSignalAutoFavorites:v13];

  v14 = [(FRPersonalizationAutoFavoritesCursor *)self lastInternalSignalGroupableFavorites];
  [v4 setLastInternalSignalGroupableFavorites:v14];

  return v4;
}

@end