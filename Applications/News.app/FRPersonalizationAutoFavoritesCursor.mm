@interface FRPersonalizationAutoFavoritesCursor
- (FRPersonalizationAutoFavoritesCursor)initWithCoreDuetLastQueryDate:(id)date portraitLastQueryDate:(id)queryDate;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FRPersonalizationAutoFavoritesCursor

- (FRPersonalizationAutoFavoritesCursor)initWithCoreDuetLastQueryDate:(id)date portraitLastQueryDate:(id)queryDate
{
  dateCopy = date;
  queryDateCopy = queryDate;
  v12.receiver = self;
  v12.super_class = FRPersonalizationAutoFavoritesCursor;
  v9 = [(FRPersonalizationAutoFavoritesCursor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coreDuetLastQueryDate, date);
    objc_storeStrong(&v10->_portraitLastQueryDate, queryDate);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  lastInternalSignalProcessingDate = [(FRPersonalizationAutoFavoritesCursor *)self lastInternalSignalProcessingDate];
  [v4 setLastInternalSignalProcessingDate:lastInternalSignalProcessingDate];

  lastExternalSignalProcessingDate = [(FRPersonalizationAutoFavoritesCursor *)self lastExternalSignalProcessingDate];
  [v4 setLastExternalSignalProcessingDate:lastExternalSignalProcessingDate];

  coreDuetLastQueryDate = [(FRPersonalizationAutoFavoritesCursor *)self coreDuetLastQueryDate];
  [v4 setCoreDuetLastQueryDate:coreDuetLastQueryDate];

  portraitLastQueryDate = [(FRPersonalizationAutoFavoritesCursor *)self portraitLastQueryDate];
  [v4 setPortraitLastQueryDate:portraitLastQueryDate];

  lastAppUsageAutoFavoriteResults = [(FRPersonalizationAutoFavoritesCursor *)self lastAppUsageAutoFavoriteResults];
  [v4 setLastAppUsageAutoFavoriteResults:lastAppUsageAutoFavoriteResults];

  lastSafariAutoFavoriteResults = [(FRPersonalizationAutoFavoritesCursor *)self lastSafariAutoFavoriteResults];
  [v4 setLastSafariAutoFavoriteResults:lastSafariAutoFavoriteResults];

  lastPortraitAutoFavoriteResults = [(FRPersonalizationAutoFavoritesCursor *)self lastPortraitAutoFavoriteResults];
  [v4 setLastPortraitAutoFavoriteResults:lastPortraitAutoFavoriteResults];

  lastLocationAutoFavoriteResults = [(FRPersonalizationAutoFavoritesCursor *)self lastLocationAutoFavoriteResults];
  [v4 setLastLocationAutoFavoriteResults:lastLocationAutoFavoriteResults];

  lastInternalSignalAutoFavorites = [(FRPersonalizationAutoFavoritesCursor *)self lastInternalSignalAutoFavorites];
  [v4 setLastInternalSignalAutoFavorites:lastInternalSignalAutoFavorites];

  lastInternalSignalGroupableFavorites = [(FRPersonalizationAutoFavoritesCursor *)self lastInternalSignalGroupableFavorites];
  [v4 setLastInternalSignalGroupableFavorites:lastInternalSignalGroupableFavorites];

  return v4;
}

@end