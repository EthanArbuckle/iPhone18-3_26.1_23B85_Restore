@interface MPMusicPlayerRadioStationQueueDescriptor
- (BOOL)isEqual:(id)equal;
- (MPMusicPlayerRadioStationQueueDescriptor)initWithCoder:(id)coder;
- (MPMusicPlayerRadioStationQueueDescriptor)initWithRadioStation:(id)station;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPMusicPlayerRadioStationQueueDescriptor

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MPMusicPlayerRadioStationQueueDescriptor;
  v4 = [(MPMusicPlayerQueueDescriptor *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 11, self->_radioStation);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPMusicPlayerRadioStationQueueDescriptor;
  coderCopy = coder;
  [(MPMusicPlayerQueueDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_radioStation forKey:{@"radioStation", v5.receiver, v5.super_class}];
}

- (MPMusicPlayerRadioStationQueueDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerRadioStationQueueDescriptor;
  v5 = [(MPMusicPlayerQueueDescriptor *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"radioStation"];
    radioStation = v5->_radioStation;
    v5->_radioStation = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = MPMusicPlayerRadioStationQueueDescriptor;
  if ([(MPMusicPlayerQueueDescriptor *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy[11];
    v6 = self->_radioStation;
    v7 = v6;
    if (v6 == v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(MPRadioStation *)v6 isEqual:v5];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MPMusicPlayerRadioStationQueueDescriptor)initWithRadioStation:(id)station
{
  stationCopy = station;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerRadioStationQueueDescriptor;
  _init = [(MPMusicPlayerQueueDescriptor *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 11, station);
  }

  return v7;
}

@end