@interface MTMoreActionSheetAction
+ (id)action;
+ (id)moreIcon;
- (MTMoreActionSheetAction)init;
@end

@implementation MTMoreActionSheetAction

+ (id)action
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (MTMoreActionSheetAction)init
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"MORE_ACTIONS" value:&stru_1004F3018 table:0];
  v12.receiver = self;
  v12.super_class = MTMoreActionSheetAction;
  v5 = [(IMAction *)&v12 initWithTitle:v4 icon:0];

  if (v5)
  {
    objc_initWeak(&location, v5);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100059804;
    v9[3] = &unk_1004D8260;
    objc_copyWeak(&v10, &location);
    [(IMAction *)v5 setActionBlock:v9];
    [(IMAction *)v5 setConditionBlock:&stru_1004D82A0];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005989C;
    v7[3] = &unk_1004D82C8;
    objc_copyWeak(&v8, &location);
    [(IMAction *)v5 setButtonBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v5;
}

+ (id)moreIcon
{
  if (qword_100583A18 != -1)
  {
    sub_1003B2AA8();
  }

  v3 = qword_100583A10;

  return v3;
}

@end