@interface CHWorkoutDisplayContext
+ (BOOL)_screenIsLarge;
+ (id)_dayViewDisplayContext;
+ (id)_friendDetailDisplayContext;
+ (id)_workoutDetailDisplayContext;
+ (id)_workoutDetailOpenGoalDisplayContext;
+ (id)_workoutsListDisplayContext;
+ (id)displayContextWithName:(id)name;
@end

@implementation CHWorkoutDisplayContext

+ (id)displayContextWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"DayViewDisplayContext"])
  {
    _dayViewDisplayContext = [self _dayViewDisplayContext];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"WorkoutsListDisplayContext"])
  {
    goto LABEL_4;
  }

  if ([nameCopy isEqualToString:@"FriendDetailDisplayContext"])
  {
    _dayViewDisplayContext = [self _friendDetailDisplayContext];
  }

  else if ([nameCopy isEqualToString:@"WorkoutDetailDisplayContext"])
  {
    _dayViewDisplayContext = [self _workoutDetailDisplayContext];
  }

  else
  {
    if (![nameCopy isEqualToString:@"WorkoutDetailOpenGoalDisplayContext"])
    {
LABEL_4:
      _dayViewDisplayContext = [self _workoutsListDisplayContext];
      goto LABEL_11;
    }

    _dayViewDisplayContext = [self _workoutDetailOpenGoalDisplayContext];
  }

LABEL_11:
  v6 = _dayViewDisplayContext;

  return v6;
}

+ (id)_dayViewDisplayContext
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A9688;
  block[3] = &unk_10083A788;
  block[4] = self;
  if (qword_1008F98E8 != -1)
  {
    dispatch_once(&qword_1008F98E8, block);
  }

  v2 = qword_1008F98E0;

  return v2;
}

+ (id)_workoutsListDisplayContext
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A98E4;
  block[3] = &unk_10083A788;
  block[4] = self;
  if (qword_1008F98F8 != -1)
  {
    dispatch_once(&qword_1008F98F8, block);
  }

  v2 = qword_1008F98F0;

  return v2;
}

+ (id)_friendDetailDisplayContext
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A9CC0;
  block[3] = &unk_10083A788;
  block[4] = self;
  if (qword_1008F9908 != -1)
  {
    dispatch_once(&qword_1008F9908, block);
  }

  v2 = qword_1008F9900;

  return v2;
}

+ (BOOL)_screenIsLarge
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3 > 320.0;

  return v4;
}

+ (id)_workoutDetailDisplayContext
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AA0A0;
  block[3] = &unk_10083A788;
  block[4] = self;
  if (qword_1008F9918 != -1)
  {
    dispatch_once(&qword_1008F9918, block);
  }

  v2 = qword_1008F9910;

  return v2;
}

+ (id)_workoutDetailOpenGoalDisplayContext
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AA434;
  block[3] = &unk_10083A788;
  block[4] = self;
  if (qword_1008F9928 != -1)
  {
    dispatch_once(&qword_1008F9928, block);
  }

  v2 = qword_1008F9920;

  return v2;
}

@end