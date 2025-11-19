@interface EKContactDescriptionGenerator
+ (id)EKLabeledDisplayStringForContact:(id)a3 label:(id)a4;
+ (id)EKLabeledDisplayStringForContact:(id)a3 label:(id)a4 isMe:(BOOL)a5;
@end

@implementation EKContactDescriptionGenerator

+ (id)EKLabeledDisplayStringForContact:(id)a3 label:(id)a4
{
  v6 = MEMORY[0x1E6992F50];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultProvider];
  v10 = [v8 identifier];
  v11 = [v9 contactIdentifierIsMe:v10];

  v12 = [a1 EKLabeledDisplayStringForContact:v8 label:v7 isMe:v11];

  return v12;
}

+ (id)EKLabeledDisplayStringForContact:(id)a3 label:(id)a4 isMe:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
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
  v11 = [v9 localizedStringForLabel:v8];
  v12 = [v11 localizedCapitalizedString];

  if (v5)
  {
    if (v12)
    {
      v13 = v12;
      goto LABEL_15;
    }

    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"My Address" value:&stru_1F1B49D68 table:0];
  }

  else
  {
    v14 = [getCNContactFormatterClass() stringFromContact:v7 style:0];
    if ([v7 contactType] != 1)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v18 = v17;
      if (v12)
      {
        v19 = [v17 localizedStringForKey:@"%@’s %@" value:&stru_1F1B49D68 table:0];
        [v16 localizedStringWithFormat:v19, v14, v12];
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