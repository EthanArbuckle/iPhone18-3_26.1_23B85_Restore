@interface AVFrameRateRange
+ (AVFrameRateRange)frameRateRangeWithMinRate:(int)rate maxFrameRate:(int)frameRate;
- (AVFrameRateRange)initWithMinFrameRate:(int)rate maxFrameRate:(int)frameRate;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)dealloc;
@end

@implementation AVFrameRateRange

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVFrameRateRange;
  [(AVFrameRateRange *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %d - %d>", NSStringFromClass(v4), self, self->_internal->minFrameRate, self->_internal->maxFrameRate];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  v11 = v3;
  v12 = v4;
  v7 = [equal isMemberOfClass:objc_opt_class()];
  if (!v7)
  {
    return v7;
  }

  if (equal)
  {
    [equal maxFrameDuration];
    if (self)
    {
LABEL_5:
      [(AVFrameRateRange *)self maxFrameDuration];
      goto LABEL_9;
    }
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    if (self)
    {
      goto LABEL_5;
    }
  }

  memset(&v9, 0, sizeof(v9));
LABEL_9:
  if (CMTimeCompare(&time1, &v9))
  {
LABEL_16:
    LOBYTE(v7) = 0;
    return v7;
  }

  if (!equal)
  {
    memset(&time1, 0, sizeof(time1));
    if (self)
    {
      goto LABEL_12;
    }

LABEL_14:
    memset(&v9, 0, sizeof(v9));
    goto LABEL_15;
  }

  [equal minFrameDuration];
  if (!self)
  {
    goto LABEL_14;
  }

LABEL_12:
  [(AVFrameRateRange *)self minFrameDuration:v9.value];
LABEL_15:
  if (CMTimeCompare(&time1, &v9))
  {
    goto LABEL_16;
  }

  LOBYTE(v7) = 1;
  return v7;
}

+ (AVFrameRateRange)frameRateRangeWithMinRate:(int)rate maxFrameRate:(int)frameRate
{
  v4 = [objc_alloc(objc_opt_class()) initWithMinFrameRate:*&rate maxFrameRate:*&frameRate];

  return v4;
}

- (AVFrameRateRange)initWithMinFrameRate:(int)rate maxFrameRate:(int)frameRate
{
  v9.receiver = self;
  v9.super_class = AVFrameRateRange;
  v6 = [(AVFrameRateRange *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVFrameRateRangeInternal);
    v6->_internal = v7;
    if (v7)
    {
      v7->minFrameRate = rate;
      v6->_internal->maxFrameRate = frameRate;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

@end