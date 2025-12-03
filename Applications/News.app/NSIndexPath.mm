@interface NSIndexPath
+ (id)fr_indexPathsForRows:(id)rows inSection:(int64_t)section;
- (id)indexPathInvalidatingIndexesFollowingPosition:(int64_t)position;
@end

@implementation NSIndexPath

- (id)indexPathInvalidatingIndexesFollowingPosition:(int64_t)position
{
  if ([(NSIndexPath *)self length]- 1 <= position)
  {
    selfCopy = self;
  }

  else
  {
    indexPathByRemovingLastIndex = [(NSIndexPath *)self indexPathByRemovingLastIndex];
    selfCopy = [indexPathByRemovingLastIndex indexPathInvalidatingIndexesFollowingPosition:position];
  }

  return selfCopy;
}

+ (id)fr_indexPathsForRows:(id)rows inSection:(int64_t)section
{
  rowsCopy = rows;
  if (rowsCopy)
  {
    v6 = objc_opt_new();
    firstIndex = [rowsCopy firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [rowsCopy indexGreaterThanIndex:i])
      {
        v9 = [NSIndexPath indexPathForRow:i inSection:section];
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