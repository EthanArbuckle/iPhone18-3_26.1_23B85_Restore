@interface CNQuickFaceTimeAction
+ (id)defaultFaceTimeAudioTitle;
+ (id)defaultFaceTimeTitle;
- (id)_coreDuetInteractionMechanisms;
- (id)category;
- (id)identifier;
- (id)subtitleForContext:(int64_t)context;
- (id)titleForContext:(int64_t)context;
- (unint64_t)score;
- (void)performWithCompletionBlock:(id)block;
@end

@implementation CNQuickFaceTimeAction

- (void)performWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (+[CNQuickAction reallyPerform])
  {
    propertyAction = [(CNQuickPropertyAction *)self propertyAction];
    if ([(CNQuickFaceTimeAction *)self audioOnly])
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    [propertyAction setType:v6];
    [propertyAction performActionForItem:0 sender:self];
    [(CNQuickContactAction *)self setCompletionBlock:blockCopy];
    [(CNQuickContactAction *)self actionDidFinish:propertyAction];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNQuickFaceTimeAction;
    [(CNQuickPropertyAction *)&v7 performWithCompletionBlock:blockCopy];
  }
}

- (unint64_t)score
{
  v3.receiver = self;
  v3.super_class = CNQuickFaceTimeAction;
  return [(CNQuickPropertyAction *)&v3 score]+ 100;
}

- (id)subtitleForContext:(int64_t)context
{
  if ((context - 2) < 2)
  {
    v7.receiver = self;
    v7.super_class = CNQuickFaceTimeAction;
    v5 = [(CNQuickPropertyAction *)&v7 subtitleForContext:0];
  }

  else if (context == 4 || context == 1)
  {
    audioOnly = [(CNQuickFaceTimeAction *)self audioOnly];
    v4 = objc_opt_class();
    if (audioOnly)
    {
      [v4 defaultFaceTimeAudioTitle];
    }

    else
    {
      [v4 defaultFaceTimeTitle];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)titleForContext:(int64_t)context
{
  defaultFaceTimeAudioTitle = 0;
  if (context <= 1)
  {
    if (context)
    {
      if (context == 1)
      {
        v8.receiver = self;
        v8.super_class = CNQuickFaceTimeAction;
        defaultFaceTimeAudioTitle = [(CNQuickPropertyAction *)&v8 titleForContext:?];
      }

      goto LABEL_12;
    }

LABEL_9:
    audioOnly = [(CNQuickFaceTimeAction *)self audioOnly];
    v5 = objc_opt_class();
    if (audioOnly)
    {
      defaultFaceTimeAudioTitle = [v5 defaultFaceTimeAudioTitle];
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((context - 2) < 2)
  {
    goto LABEL_9;
  }

  if (context == 5 || context == 6)
  {
    v5 = objc_opt_class();
LABEL_11:
    defaultFaceTimeAudioTitle = [v5 defaultFaceTimeTitle];
  }

LABEL_12:

  return defaultFaceTimeAudioTitle;
}

- (id)_coreDuetInteractionMechanisms
{
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if ([(CNQuickFaceTimeAction *)self audioOnly])
  {
    v4 = 11;
  }

  else
  {
    v4 = 17;
  }

  [indexSet addIndex:v4];
  [indexSet addIndex:10];

  return indexSet;
}

- (id)category
{
  audioOnly = [(CNQuickFaceTimeAction *)self audioOnly];
  v3 = &CNQuickActionCategoryAudioCall;
  if (!audioOnly)
  {
    v3 = &CNQuickActionCategoryVideoCall;
  }

  v4 = *v3;

  return v4;
}

- (id)identifier
{
  if ([(CNQuickFaceTimeAction *)self audioOnly])
  {
    return @"facetime-audio";
  }

  else
  {
    return @"facetime-video";
  }
}

+ (id)defaultFaceTimeAudioTitle
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"FACETIME_AUDIO_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

+ (id)defaultFaceTimeTitle
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"FACETIME_ACTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

@end