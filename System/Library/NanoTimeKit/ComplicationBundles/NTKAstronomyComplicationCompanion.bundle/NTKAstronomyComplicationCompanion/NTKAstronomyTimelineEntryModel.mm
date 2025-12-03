@interface NTKAstronomyTimelineEntryModel
- (NTKAstronomyTimelineEntryModel)initWithVista:(unint64_t)vista entryDate:(id)date currentDate:(id)currentDate currentLocation:(id)location anyLocation:(id)anyLocation;
- (id)_graphicRectangular;
- (id)templateForComplicationFamily:(int64_t)family;
@end

@implementation NTKAstronomyTimelineEntryModel

- (NTKAstronomyTimelineEntryModel)initWithVista:(unint64_t)vista entryDate:(id)date currentDate:(id)currentDate currentLocation:(id)location anyLocation:(id)anyLocation
{
  dateCopy = date;
  currentDateCopy = currentDate;
  locationCopy = location;
  anyLocationCopy = anyLocation;
  v19.receiver = self;
  v19.super_class = NTKAstronomyTimelineEntryModel;
  v16 = [(NTKAstronomyTimelineEntryModel *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_vista = vista;
    objc_storeStrong(&v16->_currentLocation, location);
    objc_storeStrong(&v17->_anyLocation, anyLocation);
    objc_storeStrong(&v17->_currentDate, currentDate);
    [(NTKAstronomyTimelineEntryModel *)v17 setEntryDate:dateCopy];
  }

  return v17;
}

- (id)templateForComplicationFamily:(int64_t)family
{
  if (family == 11)
  {
    _graphicRectangular = [(NTKAstronomyTimelineEntryModel *)self _graphicRectangular];
  }

  else
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [NSNumber numberWithInt:LODWORD(self->_vista)];
    [v6 setObject:v7 forKeyedSubscript:@"vista"];

    entryDate = [(NTKAstronomyTimelineEntryModel *)self entryDate];
    [v6 setObject:entryDate forKeyedSubscript:@"entry date"];

    [v6 setObject:self->_currentDate forKeyedSubscript:@"current date"];
    [v6 setObject:self->_currentLocation forKeyedSubscript:@"current location"];
    [v6 setObject:self->_anyLocation forKeyedSubscript:@"any location"];
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      currentLocation = self->_currentLocation;
      anyLocation = self->_anyLocation;
      entryDate2 = [(NTKAstronomyTimelineEntryModel *)self entryDate];
      v15 = 138478339;
      v16 = currentLocation;
      v17 = 2113;
      v18 = anyLocation;
      v19 = 2112;
      v20 = entryDate2;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "NTKAstronomyTimeLineEntryModel templateForComplicationFamily with currentLocation?:%{private}@, anyLocation?:%{private}@, with date:%@", &v15, 0x20u);
    }

    v13 = family - 8;
    if (family - 8) <= 4 && ((0x17u >> v13))
    {
      _graphicRectangular = [*off_C3F8[v13] templateWithMetadata:v6];
    }

    else
    {
      _graphicRectangular = 0;
    }
  }

  return _graphicRectangular;
}

- (id)_graphicRectangular
{
  currentDate = [(NTKAstronomyTimelineEntryModel *)self currentDate];
  v4 = NUNILocalizedString();
  v5 = [currentDate dateByAddingTimeInterval:172800.0];
  v6 = [CLKSimpleTextProvider textProviderWithText:v4];
  v7 = [UIColor colorWithRed:0.811764706 green:0.937254902 blue:0.584313725 alpha:1.0];
  [v6 setTintColor:v7];

  anyLocation = [(NTKAstronomyTimelineEntryModel *)self anyLocation];
  v9 = [NSMutableDictionary dictionaryWithObjectsAndKeys:currentDate, @"CurrentEventDate", v5, @"MoonViewOffsetDate", anyLocation, @"AnyLocation", 0];

  currentLocation = [(NTKAstronomyTimelineEntryModel *)self currentLocation];

  if (currentLocation)
  {
    currentLocation2 = [(NTKAstronomyTimelineEntryModel *)self currentLocation];
    [v9 setObject:currentLocation2 forKey:@"CurrentLocation"];
  }

  v12 = [CLKFullColorImageProvider fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v13 = [v9 copy];
  [v12 setMetadata:v13];

  v14 = [CLKComplicationTemplateGraphicRectangularLargeImage templateWithTextProvider:v6 imageProvider:v12];
  v17 = NTKColoringLabelTwoToneStyleInMonochromeKey;
  v18 = &off_C9B0;
  v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v14 setMetadata:v15];

  return v14;
}

@end