@interface AVFrameRateRange
+ (AVFrameRateRange)frameRateRangeWithMinRate:(int)a3 maxFrameRate:(int)a4;
- (AVFrameRateRange)initWithMinFrameRate:(int)a3 maxFrameRate:(int)a4;
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  v11 = v3;
  v12 = v4;
  v7 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v7)
  {
    return v7;
  }

  if (a3)
  {
    [a3 maxFrameDuration];
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

  if (!a3)
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

  [a3 minFrameDuration];
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

+ (AVFrameRateRange)frameRateRangeWithMinRate:(int)a3 maxFrameRate:(int)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithMinFrameRate:*&a3 maxFrameRate:*&a4];

  return v4;
}

- (AVFrameRateRange)initWithMinFrameRate:(int)a3 maxFrameRate:(int)a4
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
      v7->minFrameRate = a3;
      v6->_internal->maxFrameRate = a4;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

@end