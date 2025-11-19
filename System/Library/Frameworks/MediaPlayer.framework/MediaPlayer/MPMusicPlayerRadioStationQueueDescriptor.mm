@interface MPMusicPlayerRadioStationQueueDescriptor
- (BOOL)isEqual:(id)a3;
- (MPMusicPlayerRadioStationQueueDescriptor)initWithCoder:(id)a3;
- (MPMusicPlayerRadioStationQueueDescriptor)initWithRadioStation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPMusicPlayerRadioStationQueueDescriptor

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MPMusicPlayerRadioStationQueueDescriptor;
  v4 = [(MPMusicPlayerQueueDescriptor *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 11, self->_radioStation);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPMusicPlayerRadioStationQueueDescriptor;
  v4 = a3;
  [(MPMusicPlayerQueueDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_radioStation forKey:{@"radioStation", v5.receiver, v5.super_class}];
}

- (MPMusicPlayerRadioStationQueueDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerRadioStationQueueDescriptor;
  v5 = [(MPMusicPlayerQueueDescriptor *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"radioStation"];
    radioStation = v5->_radioStation;
    v5->_radioStation = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MPMusicPlayerRadioStationQueueDescriptor;
  if ([(MPMusicPlayerQueueDescriptor *)&v10 isEqual:v4])
  {
    v5 = v4[11];
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

- (MPMusicPlayerRadioStationQueueDescriptor)initWithRadioStation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPMusicPlayerRadioStationQueueDescriptor;
  v6 = [(MPMusicPlayerQueueDescriptor *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 11, a3);
  }

  return v7;
}

@end