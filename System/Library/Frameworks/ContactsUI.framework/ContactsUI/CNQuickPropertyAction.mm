@interface CNQuickPropertyAction
- (BOOL)enabled;
- (CNQuickPropertyAction)initWithPropertyAction:(id)action;
- (id)_coreDuetValue;
- (id)identifier;
- (id)propertyItem;
- (id)subtitleForContext:(int64_t)context;
- (id)titleForContext:(int64_t)context;
- (unint64_t)score;
- (void)performWithCompletionBlock:(id)block;
@end

@implementation CNQuickPropertyAction

- (void)performWithCompletionBlock:(id)block
{
  blockCopy = block;
  if (+[CNQuickAction reallyPerform])
  {
    v33.receiver = self;
    v33.super_class = CNQuickPropertyAction;
    [(CNQuickContactAction *)&v33 performWithCompletionBlock:blockCopy];
  }

  else
  {
    globalIdentifier = [(CNQuickAction *)self globalIdentifier];
    NSLog(&cfstr_PerformAction.isa, globalIdentifier);

    [(CNQuickContactAction *)self setCompletionBlock:blockCopy];
    globalIdentifier2 = [(CNQuickAction *)self globalIdentifier];
    propertyItem = [(CNQuickPropertyAction *)self propertyItem];
    displayValue = [propertyItem displayValue];

    propertyAction = [(CNQuickPropertyAction *)self propertyAction];
    contact = [propertyAction contact];

    category = [(CNQuickAction *)self category];
    v12 = [category isEqualToString:CNQuickActionCategoryAudioCall];

    if (v12)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        globalIdentifier2 = @"FaceTime Audio with";
      }

      else
      {
        globalIdentifier2 = @"Call";
      }
    }

    else
    {
      category2 = [(CNQuickAction *)self category];
      v15 = [category2 isEqualToString:CNQuickActionCategoryVideoCall];

      if (v15)
      {

        globalIdentifier2 = @"FaceTime with";
      }

      else
      {
        category3 = [(CNQuickAction *)self category];
        v17 = [category3 isEqualToString:CNQuickActionCategoryInstantMessage];

        if (v17)
        {

          globalIdentifier2 = @"Send message to";
        }

        else
        {
          category4 = [(CNQuickAction *)self category];
          v19 = [category4 isEqualToString:CNQuickActionCategoryMail];

          if (v19)
          {

            globalIdentifier2 = @"Send email to";
          }
        }
      }
    }

    v20 = MEMORY[0x1E696AEC0];
    v21 = [MEMORY[0x1E695CD80] stringFromContact:contact style:0];
    v22 = [v20 stringWithFormat:@"%@ %@ on %@\n\nNote: If you want to really perform the action, go to Internal Settings > Contacts and enable Quick Actions Perform.", globalIdentifier2, v21, displayValue];

    v23 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Performing action" message:v22 preferredStyle:1];
    v24 = MEMORY[0x1E69DC648];
    v25 = CNContactsUIBundle();
    v26 = [v25 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __52__CNQuickPropertyAction_performWithCompletionBlock___block_invoke;
    v30[3] = &unk_1E74E7308;
    v31 = v23;
    selfCopy = self;
    v27 = v23;
    v28 = [v24 actionWithTitle:v26 style:0 handler:v30];
    [v27 addAction:v28];

    delegate = [(CNQuickContactAction *)self delegate];
    [delegate contactAction:self presentViewController:v27];
  }
}

void __52__CNQuickPropertyAction_performWithCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(a1 + 40);
  v3 = [v2 propertyAction];
  [v2 actionDidFinish:v3];
}

- (unint64_t)score
{
  v9.receiver = self;
  v9.super_class = CNQuickPropertyAction;
  score = [(CNQuickAction *)&v9 score];
  propertyAction = [(CNQuickPropertyAction *)self propertyAction];
  contact = [propertyAction contact];
  v6 = [CNQuickActionsUsageManager managerForContact:contact];

  [v6 scoreForAction:self];
  if (v7 > 0.0)
  {
    score += vcvtpd_u64_f64((v7 + 1.0) * 1000.0);
  }

  return score;
}

- (BOOL)enabled
{
  if ([(CNQuickAction *)self cached])
  {
    v6.receiver = self;
    v6.super_class = CNQuickPropertyAction;
    return [(CNQuickAction *)&v6 enabled];
  }

  else
  {
    propertyAction = [(CNQuickPropertyAction *)self propertyAction];
    canPerformAction = [propertyAction canPerformAction];

    return canPerformAction;
  }
}

- (id)subtitleForContext:(int64_t)context
{
  if ((context - 2) < 3)
  {
    propertyItem = [(CNQuickPropertyAction *)self propertyItem];
    displayValue = [propertyItem displayValue];
LABEL_5:

    goto LABEL_6;
  }

  if (context == 1)
  {
    propertyItem = [(CNQuickPropertyAction *)self propertyItem];
    v5 = MEMORY[0x1E695CEE0];
    labeledValue = [propertyItem labeledValue];
    label = [labeledValue label];
    property = [propertyItem property];
    displayValue = [v5 localizedDisplayStringForLabel:label propertyName:property];

    goto LABEL_5;
  }

  displayValue = 0;
LABEL_6:

  return displayValue;
}

- (id)titleForContext:(int64_t)context
{
  if ((context - 2) < 4)
  {
    goto LABEL_2;
  }

  if (context >= 2)
  {
    if (context == 6)
    {
LABEL_2:
      propertyItem = [(CNQuickPropertyAction *)self propertyItem];
      displayLabel = [propertyItem displayLabel];
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CNQuickPropertyAction;
    displayLabel = [(CNQuickAction *)&v6 titleForContext:?];
  }

  return displayLabel;
}

- (id)_coreDuetValue
{
  propertyItem = [(CNQuickPropertyAction *)self propertyItem];
  labeledValue = [propertyItem labeledValue];
  value = [labeledValue value];

  return value;
}

- (id)identifier
{
  propertyItem = [(CNQuickPropertyAction *)self propertyItem];
  labeledValue = [propertyItem labeledValue];
  identifier = [labeledValue identifier];

  return identifier;
}

- (id)propertyItem
{
  propertyAction = [(CNQuickPropertyAction *)self propertyAction];
  propertyItem = [propertyAction propertyItem];

  return propertyItem;
}

- (CNQuickPropertyAction)initWithPropertyAction:(id)action
{
  v4.receiver = self;
  v4.super_class = CNQuickPropertyAction;
  return [(CNQuickContactAction *)&v4 initWithContactAction:action];
}

@end