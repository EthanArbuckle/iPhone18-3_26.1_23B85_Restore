@interface MPRadioStationEvent
- (MPRadioStationEvent)initWithBlock:(id)block;
- (MPRadioStationEvent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPRadioStationEvent

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_descriptionText forKey:@"descriptionText"];
  [coderCopy encodeObject:self->_startTime forKey:@"startTime"];
  [coderCopy encodeObject:self->_endTime forKey:@"endTime"];
}

- (MPRadioStationEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MPRadioStationEvent *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptionText"];
    descriptionText = v5->_descriptionText;
    v5->_descriptionText = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    startTime = v5->_startTime;
    v5->_startTime = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
    endTime = v5->_endTime;
    v5->_endTime = v12;
  }

  return v5;
}

- (MPRadioStationEvent)initWithBlock:(id)block
{
  blockCopy = block;
  v7.receiver = self;
  v7.super_class = MPRadioStationEvent;
  v5 = [(MPRadioStationEvent *)&v7 init];
  if (v5)
  {
    blockCopy[2](blockCopy, v5);
  }

  return v5;
}

@end