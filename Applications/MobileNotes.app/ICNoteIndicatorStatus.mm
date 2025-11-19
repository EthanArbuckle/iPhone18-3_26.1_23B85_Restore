@interface ICNoteIndicatorStatus
- (ICNoteIndicatorStatus)initWithStatusType:(int64_t)a3 isDisplayedInFolder:(BOOL)a4;
- (NSString)imageName;
@end

@implementation ICNoteIndicatorStatus

- (ICNoteIndicatorStatus)initWithStatusType:(int64_t)a3 isDisplayedInFolder:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = ICNoteIndicatorStatus;
  result = [(ICNoteIndicatorStatus *)&v7 init];
  if (result)
  {
    result->_statusType = a3;
    result->_isDisplayedInFolder = a4;
  }

  return result;
}

- (NSString)imageName
{
  v3 = [(ICNoteIndicatorStatus *)self statusType];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = @"person.crop.circle";
    }

    else if (v3 == 4)
    {
      v6 = [(ICNoteIndicatorStatus *)self isDisplayedInFolder];
      v7 = @"person.crop.circle";
      if (v6)
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
    if (v3 != 2)
    {
      v4 = 0;
    }

    if (v3 == 1)
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