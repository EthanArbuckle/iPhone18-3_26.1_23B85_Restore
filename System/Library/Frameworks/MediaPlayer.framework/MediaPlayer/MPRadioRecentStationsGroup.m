@interface MPRadioRecentStationsGroup
- (MPRadioRecentStationsGroup)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPRadioRecentStationsGroup

- (MPRadioRecentStationsGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MPRadioRecentStationsGroup *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"MPRadioRecentStationsGroupStations"];
    stations = v5->_stations;
    v5->_stations = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPRadioRecentStationsGroupLocalizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  localizedTitle = self->_localizedTitle;
  v5 = a3;
  [v5 encodeObject:localizedTitle forKey:@"MPRadioRecentStationsGroupLocalizedTitle"];
  [v5 encodeObject:self->_stations forKey:@"MPRadioRecentStationsGroupStations"];
}

@end