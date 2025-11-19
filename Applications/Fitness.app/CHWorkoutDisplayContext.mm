@interface CHWorkoutDisplayContext
+ (BOOL)_screenIsLarge;
+ (id)_dayViewDisplayContext;
+ (id)_friendDetailDisplayContext;
+ (id)_workoutDetailDisplayContext;
+ (id)_workoutDetailOpenGoalDisplayContext;
+ (id)_workoutsListDisplayContext;
+ (id)displayContextWithName:(id)a3;
@end

@implementation CHWorkoutDisplayContext

+ (id)displayContextWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"DayViewDisplayContext"])
  {
    v5 = [a1 _dayViewDisplayContext];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"WorkoutsListDisplayContext"])
  {
    goto LABEL_4;
  }

  if ([v4 isEqualToString:@"FriendDetailDisplayContext"])
  {
    v5 = [a1 _friendDetailDisplayContext];
  }

  else if ([v4 isEqualToString:@"WorkoutDetailDisplayContext"])
  {
    v5 = [a1 _workoutDetailDisplayContext];
  }

  else
  {
    if (![v4 isEqualToString:@"WorkoutDetailOpenGoalDisplayContext"])
    {
LABEL_4:
      v5 = [a1 _workoutsListDisplayContext];
      goto LABEL_11;
    }

    v5 = [a1 _workoutDetailOpenGoalDisplayContext];
  }

LABEL_11:
  v6 = v5;

  return v6;
}

+ (id)_dayViewDisplayContext
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A9688;
  block[3] = &unk_10083A788;
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
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
  block[4] = a1;
  if (qword_1008F9928 != -1)
  {
    dispatch_once(&qword_1008F9928, block);
  }

  v2 = qword_1008F9920;

  return v2;
}

@end