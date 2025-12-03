@interface MPRadioRecentStationsGroup
- (MPRadioRecentStationsGroup)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPRadioRecentStationsGroup

- (MPRadioRecentStationsGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MPRadioRecentStationsGroup *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MPRadioRecentStationsGroupStations"];
    stations = v5->_stations;
    v5->_stations = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPRadioRecentStationsGroupLocalizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  localizedTitle = self->_localizedTitle;
  coderCopy = coder;
  [coderCopy encodeObject:localizedTitle forKey:@"MPRadioRecentStationsGroupLocalizedTitle"];
  [coderCopy encodeObject:self->_stations forKey:@"MPRadioRecentStationsGroupStations"];
}

@end