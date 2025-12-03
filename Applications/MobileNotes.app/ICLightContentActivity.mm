@interface ICLightContentActivity
- (ICLightContentActivity)initWithNote:(id)note;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICLightContentActivity

- (ICLightContentActivity)initWithNote:(id)note
{
  noteCopy = note;
  v9.receiver = self;
  v9.super_class = ICLightContentActivity;
  v6 = [(ICLightContentActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_note, note);
  }

  return v7;
}

- (id)activityTitle
{
  note = [(ICLightContentActivity *)self note];
  prefersLightBackground = [note prefersLightBackground];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (prefersLightBackground)
  {
    v6 = @"Use Dark Background";
  }

  else
  {
    v6 = @"Use Light Background";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100661CF0 table:0];

  return v7;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  note = [(ICLightContentActivity *)self note];
  [note managedObjectContext];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100138C5C;
  v12 = &unk_100645BA0;
  v14 = v13 = note;
  v6 = v14;
  v7 = note;
  [v6 performBlockAndWait:&v9];
  [(ICLightContentActivity *)self activityDidFinish:1, v9, v10, v11, v12];
  if (completionCopy)
  {
    activityType = [(ICLightContentActivity *)self activityType];
    completionCopy[2](completionCopy, 1, activityType);
  }
}

@end