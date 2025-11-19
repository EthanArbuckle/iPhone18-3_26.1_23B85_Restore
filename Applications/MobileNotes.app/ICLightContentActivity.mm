@interface ICLightContentActivity
- (ICLightContentActivity)initWithNote:(id)a3;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICLightContentActivity

- (ICLightContentActivity)initWithNote:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICLightContentActivity;
  v6 = [(ICLightContentActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_note, a3);
  }

  return v7;
}

- (id)activityTitle
{
  v2 = [(ICLightContentActivity *)self note];
  v3 = [v2 prefersLightBackground];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (v3)
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

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICLightContentActivity *)self note];
  [v5 managedObjectContext];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100138C5C;
  v12 = &unk_100645BA0;
  v14 = v13 = v5;
  v6 = v14;
  v7 = v5;
  [v6 performBlockAndWait:&v9];
  [(ICLightContentActivity *)self activityDidFinish:1, v9, v10, v11, v12];
  if (v4)
  {
    v8 = [(ICLightContentActivity *)self activityType];
    v4[2](v4, 1, v8);
  }
}

@end