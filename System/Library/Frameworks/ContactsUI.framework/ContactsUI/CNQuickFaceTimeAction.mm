@interface CNQuickFaceTimeAction
+ (id)defaultFaceTimeAudioTitle;
+ (id)defaultFaceTimeTitle;
- (id)_coreDuetInteractionMechanisms;
- (id)category;
- (id)identifier;
- (id)subtitleForContext:(int64_t)a3;
- (id)titleForContext:(int64_t)a3;
- (unint64_t)score;
- (void)performWithCompletionBlock:(id)a3;
@end

@implementation CNQuickFaceTimeAction

- (void)performWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (+[CNQuickAction reallyPerform])
  {
    v5 = [(CNQuickPropertyAction *)self propertyAction];
    if ([(CNQuickFaceTimeAction *)self audioOnly])
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }

    [v5 setType:v6];
    [v5 performActionForItem:0 sender:self];
    [(CNQuickContactAction *)self setCompletionBlock:v4];
    [(CNQuickContactAction *)self actionDidFinish:v5];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNQuickFaceTimeAction;
    [(CNQuickPropertyAction *)&v7 performWithCompletionBlock:v4];
  }
}

- (unint64_t)score
{
  v3.receiver = self;
  v3.super_class = CNQuickFaceTimeAction;
  return [(CNQuickPropertyAction *)&v3 score]+ 100;
}

- (id)subtitleForContext:(int64_t)a3
{
  if ((a3 - 2) < 2)
  {
    v7.receiver = self;
    v7.super_class = CNQuickFaceTimeAction;
    v5 = [(CNQuickPropertyAction *)&v7 subtitleForContext:0];
  }

  else if (a3 == 4 || a3 == 1)
  {
    v3 = [(CNQuickFaceTimeAction *)self audioOnly];
    v4 = objc_opt_class();
    if (v3)
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

- (id)titleForContext:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v8.receiver = self;
        v8.super_class = CNQuickFaceTimeAction;
        v4 = [(CNQuickPropertyAction *)&v8 titleForContext:?];
      }

      goto LABEL_12;
    }

LABEL_9:
    v6 = [(CNQuickFaceTimeAction *)self audioOnly];
    v5 = objc_opt_class();
    if (v6)
    {
      v4 = [v5 defaultFaceTimeAudioTitle];
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((a3 - 2) < 2)
  {
    goto LABEL_9;
  }

  if (a3 == 5 || a3 == 6)
  {
    v5 = objc_opt_class();
LABEL_11:
    v4 = [v5 defaultFaceTimeTitle];
  }

LABEL_12:

  return v4;
}

- (id)_coreDuetInteractionMechanisms
{
  v3 = [MEMORY[0x1E696AD50] indexSet];
  if ([(CNQuickFaceTimeAction *)self audioOnly])
  {
    v4 = 11;
  }

  else
  {
    v4 = 17;
  }

  [v3 addIndex:v4];
  [v3 addIndex:10];

  return v3;
}

- (id)category
{
  v2 = [(CNQuickFaceTimeAction *)self audioOnly];
  v3 = &CNQuickActionCategoryAudioCall;
  if (!v2)
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