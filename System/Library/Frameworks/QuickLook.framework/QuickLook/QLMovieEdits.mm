@interface QLMovieEdits
+ (id)editsWithRightRotationsCount:(unint64_t)count trimStartTime:(double)time trimEndTime:(double)endTime;
- (BOOL)hasEdits;
- (BOOL)isEqual:(id)equal;
- (BOOL)trimmed;
- (QLMovieEdits)init;
@end

@implementation QLMovieEdits

- (QLMovieEdits)init
{
  v5.receiver = self;
  v5.super_class = QLMovieEdits;
  v2 = [(QLMovieEdits *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(QLMovieEdits *)v2 resetEditingValues];
  }

  return v3;
}

+ (id)editsWithRightRotationsCount:(unint64_t)count trimStartTime:(double)time trimEndTime:(double)endTime
{
  v8 = objc_opt_new();
  [v8 setRightRotationsCount:count];
  [v8 setTrimStartTime:time];
  [v8 setTrimEndTime:endTime];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      rightRotationsCount = self->_rightRotationsCount;
      if (rightRotationsCount == [(QLMovieEdits *)v5 rightRotationsCount]&& (trimStartTime = self->_trimStartTime, [(QLMovieEdits *)v5 trimStartTime], trimStartTime == v8))
      {
        trimEndTime = self->_trimEndTime;
        [(QLMovieEdits *)v5 trimEndTime];
        v11 = trimEndTime == v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)hasEdits
{
  if ([(QLMovieEdits *)self rotated])
  {
    return 1;
  }

  return [(QLMovieEdits *)self trimmed];
}

- (BOOL)trimmed
{
  trimStartTime = self->_trimStartTime;
  trimEndTime = self->_trimEndTime;
  return 1;
}

@end