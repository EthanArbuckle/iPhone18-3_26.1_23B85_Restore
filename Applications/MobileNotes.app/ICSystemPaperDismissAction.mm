@interface ICSystemPaperDismissAction
- (ICSystemPaperDismissAction)initWithReason:(id)reason;
- (NSString)dismissalReason;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation ICSystemPaperDismissAction

- (ICSystemPaperDismissAction)initWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = objc_alloc_init(BSMutableSettings);
  [v5 setObject:reasonCopy forSetting:1];

  v8.receiver = self;
  v8.super_class = ICSystemPaperDismissAction;
  v6 = [(ICSystemPaperDismissAction *)&v8 initWithInfo:v5 responder:0];

  return v6;
}

- (NSString)dismissalReason
{
  info = [(ICSystemPaperDismissAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"dismissalReason";
  }

  else
  {
    return 0;
  }
}

@end