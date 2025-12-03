@interface GeoRequestCounterDurations
- (GeoRequestCounterDurations)init;
- (double)currentDurationInterval;
- (id)stringForRow:(int64_t)row;
- (void)setSelection:(id)selection;
@end

@implementation GeoRequestCounterDurations

- (id)stringForRow:(int64_t)row
{
  v7[0] = @"10 minutes";
  v7[1] = @"1 hour";
  v7[2] = @"6 hours";
  v7[3] = @"12 hours";
  v7[4] = @"1 day";
  v7[5] = @"7 days";
  v7[6] = @"30 days";
  v4 = [NSArray arrayWithObjects:v7 count:7];
  v5 = [v4 objectAtIndexedSubscript:row];

  return v5;
}

- (double)currentDurationInterval
{
  v2 = [&off_1016EC848 objectAtIndexedSubscript:self->_selectedRow];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setSelection:(id)selection
{
  self->_selectedRow = [selection firstIndex];
  v5 = +[NSUserDefaults standardUserDefaults];
  v4 = [NSNumber numberWithInteger:self->_selectedRow];
  [v5 setObject:v4 forKey:@"_debug_geoReqCountDuration"];
}

- (GeoRequestCounterDurations)init
{
  v6.receiver = self;
  v6.super_class = GeoRequestCounterDurations;
  v2 = [(GeoRequestCounterDurations *)&v6 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 valueForKey:@"_debug_geoReqCountDuration"];

    v2->_selectedRow = [v4 integerValue];
  }

  return v2;
}

@end