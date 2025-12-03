@interface AVDisplayCriteria
- (AVDisplayCriteria)initWithRefreshRate:(float)rate videoDynamicRange:(int)range;
- (AVDisplayCriteria)initWithRefreshRate:(float)refreshRate formatDescription:(CMFormatDescriptionRef)formatDescription;
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation AVDisplayCriteria

- (AVDisplayCriteria)initWithRefreshRate:(float)refreshRate formatDescription:(CMFormatDescriptionRef)formatDescription
{
  v7.receiver = self;
  v7.super_class = AVDisplayCriteria;
  v5 = [(AVDisplayCriteria *)&v7 init];
  if (v5)
  {
    v5->_videoDynamicRange = CMVideoFormatDescriptionGetVideoDynamicRange();
    v5->_refreshRate = refreshRate;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVDisplayCriteria;
  [(AVDisplayCriteria *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  videoDynamicRange = self->_videoDynamicRange;
  if (videoDynamicRange != [equal videoDynamicRange])
  {
    return 0;
  }

  refreshRate = self->_refreshRate;
  [equal refreshRate];
  return refreshRate == v7;
}

- (AVDisplayCriteria)initWithRefreshRate:(float)rate videoDynamicRange:(int)range
{
  v7.receiver = self;
  v7.super_class = AVDisplayCriteria;
  result = [(AVDisplayCriteria *)&v7 init];
  if (result)
  {
    result->_videoDynamicRange = range;
    result->_refreshRate = rate;
  }

  return result;
}

@end