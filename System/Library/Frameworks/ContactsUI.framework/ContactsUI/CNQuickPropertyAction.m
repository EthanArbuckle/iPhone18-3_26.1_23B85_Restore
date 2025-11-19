@interface CNQuickPropertyAction
- (BOOL)enabled;
- (CNQuickPropertyAction)initWithPropertyAction:(id)a3;
- (id)_coreDuetValue;
- (id)identifier;
- (id)propertyItem;
- (id)subtitleForContext:(int64_t)a3;
- (id)titleForContext:(int64_t)a3;
- (unint64_t)score;
- (void)performWithCompletionBlock:(id)a3;
@end

@implementation CNQuickPropertyAction

- (void)performWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (+[CNQuickAction reallyPerform])
  {
    v33.receiver = self;
    v33.super_class = CNQuickPropertyAction;
    [(CNQuickContactAction *)&v33 performWithCompletionBlock:v4];
  }

  else
  {
    v5 = [(CNQuickAction *)self globalIdentifier];
    NSLog(&cfstr_PerformAction.isa, v5);

    [(CNQuickContactAction *)self setCompletionBlock:v4];
    v6 = [(CNQuickAction *)self globalIdentifier];
    v7 = [(CNQuickPropertyAction *)self propertyItem];
    v8 = [v7 displayValue];

    v9 = [(CNQuickPropertyAction *)self propertyAction];
    v10 = [v9 contact];

    v11 = [(CNQuickAction *)self category];
    v12 = [v11 isEqualToString:CNQuickActionCategoryAudioCall];

    if (v12)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v6 = @"FaceTime Audio with";
      }

      else
      {
        v6 = @"Call";
      }
    }

    else
    {
      v14 = [(CNQuickAction *)self category];
      v15 = [v14 isEqualToString:CNQuickActionCategoryVideoCall];

      if (v15)
      {

        v6 = @"FaceTime with";
      }

      else
      {
        v16 = [(CNQuickAction *)self category];
        v17 = [v16 isEqualToString:CNQuickActionCategoryInstantMessage];

        if (v17)
        {

          v6 = @"Send message to";
        }

        else
        {
          v18 = [(CNQuickAction *)self category];
          v19 = [v18 isEqualToString:CNQuickActionCategoryMail];

          if (v19)
          {

            v6 = @"Send email to";
          }
        }
      }
    }

    v20 = MEMORY[0x1E696AEC0];
    v21 = [MEMORY[0x1E695CD80] stringFromContact:v10 style:0];
    v22 = [v20 stringWithFormat:@"%@ %@ on %@\n\nNote: If you want to really perform the action, go to Internal Settings > Contacts and enable Quick Actions Perform.", v6, v21, v8];

    v23 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Performing action" message:v22 preferredStyle:1];
    v24 = MEMORY[0x1E69DC648];
    v25 = CNContactsUIBundle();
    v26 = [v25 localizedStringForKey:@"OK" value:&stru_1F0CE7398 table:@"Localized"];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __52__CNQuickPropertyAction_performWithCompletionBlock___block_invoke;
    v30[3] = &unk_1E74E7308;
    v31 = v23;
    v32 = self;
    v27 = v23;
    v28 = [v24 actionWithTitle:v26 style:0 handler:v30];
    [v27 addAction:v28];

    v29 = [(CNQuickContactAction *)self delegate];
    [v29 contactAction:self presentViewController:v27];
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
  v3 = [(CNQuickAction *)&v9 score];
  v4 = [(CNQuickPropertyAction *)self propertyAction];
  v5 = [v4 contact];
  v6 = [CNQuickActionsUsageManager managerForContact:v5];

  [v6 scoreForAction:self];
  if (v7 > 0.0)
  {
    v3 += vcvtpd_u64_f64((v7 + 1.0) * 1000.0);
  }

  return v3;
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
    v4 = [(CNQuickPropertyAction *)self propertyAction];
    v5 = [v4 canPerformAction];

    return v5;
  }
}

- (id)subtitleForContext:(int64_t)a3
{
  if ((a3 - 2) < 3)
  {
    v3 = [(CNQuickPropertyAction *)self propertyItem];
    v4 = [v3 displayValue];
LABEL_5:

    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v3 = [(CNQuickPropertyAction *)self propertyItem];
    v5 = MEMORY[0x1E695CEE0];
    v6 = [v3 labeledValue];
    v7 = [v6 label];
    v8 = [v3 property];
    v4 = [v5 localizedDisplayStringForLabel:v7 propertyName:v8];

    goto LABEL_5;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (id)titleForContext:(int64_t)a3
{
  if ((a3 - 2) < 4)
  {
    goto LABEL_2;
  }

  if (a3 >= 2)
  {
    if (a3 == 6)
    {
LABEL_2:
      v4 = [(CNQuickPropertyAction *)self propertyItem];
      v3 = [v4 displayLabel];
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CNQuickPropertyAction;
    v3 = [(CNQuickAction *)&v6 titleForContext:?];
  }

  return v3;
}

- (id)_coreDuetValue
{
  v2 = [(CNQuickPropertyAction *)self propertyItem];
  v3 = [v2 labeledValue];
  v4 = [v3 value];

  return v4;
}

- (id)identifier
{
  v2 = [(CNQuickPropertyAction *)self propertyItem];
  v3 = [v2 labeledValue];
  v4 = [v3 identifier];

  return v4;
}

- (id)propertyItem
{
  v2 = [(CNQuickPropertyAction *)self propertyAction];
  v3 = [v2 propertyItem];

  return v3;
}

- (CNQuickPropertyAction)initWithPropertyAction:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNQuickPropertyAction;
  return [(CNQuickContactAction *)&v4 initWithContactAction:a3];
}

@end