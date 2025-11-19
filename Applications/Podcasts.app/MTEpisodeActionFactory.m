@interface MTEpisodeActionFactory
+ (id)addToUpNextAction;
+ (id)markPlayedAction;
+ (id)markUnplayedAction;
+ (id)playNextAction;
+ (id)removeFromUpNext;
+ (id)shareAction;
+ (id)viewAction;
@end

@implementation MTEpisodeActionFactory

+ (id)playNextAction
{
  v2 = [UIImage imageNamed:@"UpNext"];
  v3 = [IMAction alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Play Next" value:&stru_1004F3018 table:0];
  v6 = [(IMAction *)v3 initWithTitle:v5 icon:v2];

  [(IMAction *)v6 setConditionBlock:&stru_1004DA2B0];
  [(IMAction *)v6 setActionBlock:&stru_1004DA2F0];

  return v6;
}

+ (id)addToUpNextAction
{
  v2 = [UIImage imageNamed:@"UpNext"];
  v3 = [IMAction alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Play Last" value:&stru_1004F3018 table:0];
  v6 = [(IMAction *)v3 initWithTitle:v5 icon:v2];

  [(IMAction *)v6 setConditionBlock:&stru_1004DA310];
  [(IMAction *)v6 setActionBlock:&stru_1004DA330];

  return v6;
}

+ (id)removeFromUpNext
{
  v2 = [UIImage imageNamed:@"UpNext"];
  v3 = [IMAction alloc];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"REMOVE_FROM_QUEUE" value:&stru_1004F3018 table:0];
  v6 = [(IMAction *)v3 initWithTitle:v5 icon:v2];

  [(IMAction *)v6 setConditionBlock:&stru_1004DA350];
  [(IMAction *)v6 setActionBlock:&stru_1004DA370];

  return v6;
}

+ (id)markUnplayedAction
{
  v2 = objc_opt_new();
  [v2 setTitleBlock:&stru_1004DA3B0];
  [v2 setConditionBlock:&stru_1004DA3D0];
  [v2 setActionBlock:&stru_1004DA3F0];

  return v2;
}

+ (id)markPlayedAction
{
  v2 = objc_opt_new();
  [v2 setTitleBlock:&stru_1004DA410];
  [v2 setConditionBlock:&stru_1004DA430];
  [v2 setActionBlock:&stru_1004DA450];

  return v2;
}

+ (id)viewAction
{
  v2 = [IMAction alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"VIEW_DOCUMENT" value:&stru_1004F3018 table:0];
  v5 = [(IMAction *)v2 initWithTitle:v4 icon:0];

  [(IMAction *)v5 setConditionBlock:&stru_1004DA470];
  [(IMAction *)v5 setActionBlock:&stru_1004DA490];

  return v5;
}

+ (id)shareAction
{
  v2 = [IMPopoverAction alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Share Episode" value:&stru_1004F3018 table:0];
  v5 = [(IMAction *)v2 initWithTitle:v4 icon:0];

  [(IMAction *)v5 setConditionBlock:&stru_1004DA4B0];
  [(IMAction *)v5 setButtonItemBlock:&stru_1004DA4F0];
  objc_initWeak(&location, v5);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009B6A4;
  v7[3] = &unk_1004DA518;
  objc_copyWeak(&v8, &location);
  [(IMAction *)v5 setActionBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

@end