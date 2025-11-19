@interface AVDisplayCriteria
- (AVDisplayCriteria)initWithRefreshRate:(float)a3 videoDynamicRange:(int)a4;
- (AVDisplayCriteria)initWithRefreshRate:(float)refreshRate formatDescription:(CMFormatDescriptionRef)formatDescription;
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  videoDynamicRange = self->_videoDynamicRange;
  if (videoDynamicRange != [a3 videoDynamicRange])
  {
    return 0;
  }

  refreshRate = self->_refreshRate;
  [a3 refreshRate];
  return refreshRate == v7;
}

- (AVDisplayCriteria)initWithRefreshRate:(float)a3 videoDynamicRange:(int)a4
{
  v7.receiver = self;
  v7.super_class = AVDisplayCriteria;
  result = [(AVDisplayCriteria *)&v7 init];
  if (result)
  {
    result->_videoDynamicRange = a4;
    result->_refreshRate = a3;
  }

  return result;
}

@end