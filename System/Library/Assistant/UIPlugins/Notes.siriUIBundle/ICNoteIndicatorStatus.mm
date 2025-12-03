@interface ICNoteIndicatorStatus
- (ICNoteIndicatorStatus)initWithStatusType:(int64_t)type isDisplayedInFolder:(BOOL)folder;
- (NSString)imageName;
@end

@implementation ICNoteIndicatorStatus

- (ICNoteIndicatorStatus)initWithStatusType:(int64_t)type isDisplayedInFolder:(BOOL)folder
{
  v7.receiver = self;
  v7.super_class = ICNoteIndicatorStatus;
  result = [(ICNoteIndicatorStatus *)&v7 init];
  if (result)
  {
    result->_statusType = type;
    result->_isDisplayedInFolder = folder;
  }

  return result;
}

- (NSString)imageName
{
  statusType = [(ICNoteIndicatorStatus *)self statusType];
  if (statusType > 2)
  {
    if (statusType == 3)
    {
      v5 = @"person.crop.circle";
    }

    else if (statusType == 4)
    {
      isDisplayedInFolder = [(ICNoteIndicatorStatus *)self isDisplayedInFolder];
      v7 = @"person.crop.circle";
      if (isDisplayedInFolder)
      {
        v7 = 0;
      }

      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = @"lock.open.fill";
    if (statusType != 2)
    {
      v4 = 0;
    }

    if (statusType == 1)
    {
      v5 = @"lock.fill";
    }

    else
    {
      v5 = v4;
    }
  }

  return v5;
}

@end