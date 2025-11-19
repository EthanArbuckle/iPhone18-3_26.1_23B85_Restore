@interface ICSystemPaperDismissAction
- (ICSystemPaperDismissAction)initWithReason:(id)a3;
- (NSString)dismissalReason;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation ICSystemPaperDismissAction

- (ICSystemPaperDismissAction)initWithReason:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(BSMutableSettings);
  [v5 setObject:v4 forSetting:1];

  v8.receiver = self;
  v8.super_class = ICSystemPaperDismissAction;
  v6 = [(ICSystemPaperDismissAction *)&v8 initWithInfo:v5 responder:0];

  return v6;
}

- (NSString)dismissalReason
{
  v2 = [(ICSystemPaperDismissAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"dismissalReason";
  }

  else
  {
    return 0;
  }
}

@end