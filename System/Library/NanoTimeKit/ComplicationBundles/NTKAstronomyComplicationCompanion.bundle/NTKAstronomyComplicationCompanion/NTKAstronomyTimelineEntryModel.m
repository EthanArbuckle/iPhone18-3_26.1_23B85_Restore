@interface NTKAstronomyTimelineEntryModel
- (NTKAstronomyTimelineEntryModel)initWithVista:(unint64_t)a3 entryDate:(id)a4 currentDate:(id)a5 currentLocation:(id)a6 anyLocation:(id)a7;
- (id)_graphicRectangular;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NTKAstronomyTimelineEntryModel

- (NTKAstronomyTimelineEntryModel)initWithVista:(unint64_t)a3 entryDate:(id)a4 currentDate:(id)a5 currentLocation:(id)a6 anyLocation:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = NTKAstronomyTimelineEntryModel;
  v16 = [(NTKAstronomyTimelineEntryModel *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_vista = a3;
    objc_storeStrong(&v16->_currentLocation, a6);
    objc_storeStrong(&v17->_anyLocation, a7);
    objc_storeStrong(&v17->_currentDate, a5);
    [(NTKAstronomyTimelineEntryModel *)v17 setEntryDate:v12];
  }

  return v17;
}

- (id)templateForComplicationFamily:(int64_t)a3
{
  if (a3 == 11)
  {
    v4 = [(NTKAstronomyTimelineEntryModel *)self _graphicRectangular];
  }

  else
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [NSNumber numberWithInt:LODWORD(self->_vista)];
    [v6 setObject:v7 forKeyedSubscript:@"vista"];

    v8 = [(NTKAstronomyTimelineEntryModel *)self entryDate];
    [v6 setObject:v8 forKeyedSubscript:@"entry date"];

    [v6 setObject:self->_currentDate forKeyedSubscript:@"current date"];
    [v6 setObject:self->_currentLocation forKeyedSubscript:@"current location"];
    [v6 setObject:self->_anyLocation forKeyedSubscript:@"any location"];
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      currentLocation = self->_currentLocation;
      anyLocation = self->_anyLocation;
      v12 = [(NTKAstronomyTimelineEntryModel *)self entryDate];
      v15 = 138478339;
      v16 = currentLocation;
      v17 = 2113;
      v18 = anyLocation;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "NTKAstronomyTimeLineEntryModel templateForComplicationFamily with currentLocation?:%{private}@, anyLocation?:%{private}@, with date:%@", &v15, 0x20u);
    }

    v13 = a3 - 8;
    if (a3 - 8) <= 4 && ((0x17u >> v13))
    {
      v4 = [*off_C3F8[v13] templateWithMetadata:v6];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_graphicRectangular
{
  v3 = [(NTKAstronomyTimelineEntryModel *)self currentDate];
  v4 = NUNILocalizedString();
  v5 = [v3 dateByAddingTimeInterval:172800.0];
  v6 = [CLKSimpleTextProvider textProviderWithText:v4];
  v7 = [UIColor colorWithRed:0.811764706 green:0.937254902 blue:0.584313725 alpha:1.0];
  [v6 setTintColor:v7];

  v8 = [(NTKAstronomyTimelineEntryModel *)self anyLocation];
  v9 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v3, @"CurrentEventDate", v5, @"MoonViewOffsetDate", v8, @"AnyLocation", 0];

  v10 = [(NTKAstronomyTimelineEntryModel *)self currentLocation];

  if (v10)
  {
    v11 = [(NTKAstronomyTimelineEntryModel *)self currentLocation];
    [v9 setObject:v11 forKey:@"CurrentLocation"];
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