@interface EKContactDescriptionGenerator
+ (id)EKLabeledDisplayStringForContact:(id)contact label:(id)label;
+ (id)EKLabeledDisplayStringForContact:(id)contact label:(id)label isMe:(BOOL)me;
@end

@implementation EKContactDescriptionGenerator

+ (id)EKLabeledDisplayStringForContact:(id)contact label:(id)label
{
  v6 = MEMORY[0x1E6992F50];
  labelCopy = label;
  contactCopy = contact;
  defaultProvider = [v6 defaultProvider];
  identifier = [contactCopy identifier];
  v11 = [defaultProvider contactIdentifierIsMe:identifier];

  v12 = [self EKLabeledDisplayStringForContact:contactCopy label:labelCopy isMe:v11];

  return v12;
}

+ (id)EKLabeledDisplayStringForContact:(id)contact label:(id)label isMe:(BOOL)me
{
  meCopy = me;
  contactCopy = contact;
  labelCopy = label;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v9 = getCNLabeledValueClass_softClass;
  v26 = getCNLabeledValueClass_softClass;
  if (!getCNLabeledValueClass_softClass)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __getCNLabeledValueClass_block_invoke;
    v22[3] = &unk_1E77FCFD8;
    v22[4] = &v23;
    __getCNLabeledValueClass_block_invoke(v22);
    v9 = v24[3];
  }

  v10 = v9;
  _Block_object_dispose(&v23, 8);
  v11 = [v9 localizedStringForLabel:labelCopy];
  localizedCapitalizedString = [v11 localizedCapitalizedString];

  if (meCopy)
  {
    if (localizedCapitalizedString)
    {
      v13 = localizedCapitalizedString;
      goto LABEL_15;
    }

    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"My Address" value:&stru_1F1B49D68 table:0];
  }

  else
  {
    v14 = [getCNContactFormatterClass() stringFromContact:contactCopy style:0];
    if ([contactCopy contactType] != 1)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v18 = v17;
      if (localizedCapitalizedString)
      {
        v19 = [v17 localizedStringForKey:@"%@’s %@" value:&stru_1F1B49D68 table:0];
        [v16 localizedStringWithFormat:v19, v14, localizedCapitalizedString];
      }

      else
      {
        v19 = [v17 localizedStringForKey:@"%@’s address" value:&stru_1F1B49D68 table:0];
        [v16 localizedStringWithFormat:v19, v14, v21];
      }
      v13 = ;

      goto LABEL_14;
    }

    v15 = v14;
  }

  v13 = v15;
LABEL_14:

LABEL_15:

  return v13;
}

@end