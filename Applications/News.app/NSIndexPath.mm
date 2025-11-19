@interface NSIndexPath
+ (id)fr_indexPathsForRows:(id)a3 inSection:(int64_t)a4;
- (id)indexPathInvalidatingIndexesFollowingPosition:(int64_t)a3;
@end

@implementation NSIndexPath

- (id)indexPathInvalidatingIndexesFollowingPosition:(int64_t)a3
{
  if ([(NSIndexPath *)self length]- 1 <= a3)
  {
    v6 = self;
  }

  else
  {
    v5 = [(NSIndexPath *)self indexPathByRemovingLastIndex];
    v6 = [v5 indexPathInvalidatingIndexesFollowingPosition:a3];
  }

  return v6;
}

+ (id)fr_indexPathsForRows:(id)a3 inSection:(int64_t)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [v5 firstIndex];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v7; i != 0x7FFFFFFFFFFFFFFFLL; i = [v5 indexGreaterThanIndex:i])
      {
        v9 = [NSIndexPath indexPathForRow:i inSection:a4];
        [v6 addObject:v9];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100070E4C();
    }

    v6 = 0;
  }

  return v6;
}

@end