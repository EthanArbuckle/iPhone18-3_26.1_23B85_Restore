@interface MPRadioStationEvent
- (MPRadioStationEvent)initWithBlock:(id)a3;
- (MPRadioStationEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPRadioStationEvent

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_descriptionText forKey:@"descriptionText"];
  [v5 encodeObject:self->_startTime forKey:@"startTime"];
  [v5 encodeObject:self->_endTime forKey:@"endTime"];
}

- (MPRadioStationEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MPRadioStationEvent *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptionText"];
    descriptionText = v5->_descriptionText;
    v5->_descriptionText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    startTime = v5->_startTime;
    v5->_startTime = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
    endTime = v5->_endTime;
    v5->_endTime = v12;
  }

  return v5;
}

- (MPRadioStationEvent)initWithBlock:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MPRadioStationEvent;
  v5 = [(MPRadioStationEvent *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

@end