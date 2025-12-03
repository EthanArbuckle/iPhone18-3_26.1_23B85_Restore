@interface CNPropertyGroupAddressingGrammarItem
+ (id)propertyGroupItemWithLabeledValue:(id)value group:(id)group contact:(id)contact;
- (BOOL)modified;
- (BOOL)shouldShowLanguageLabel;
- (id)displayLabel;
- (id)displayStringForValue:(id)value;
@end

@implementation CNPropertyGroupAddressingGrammarItem

+ (id)propertyGroupItemWithLabeledValue:(id)value group:(id)group contact:(id)contact
{
  valueCopy = value;
  groupCopy = group;
  contactCopy = contact;
  objc_opt_class();
  value = [valueCopy value];
  if (objc_opt_isKindOfClass())
  {
    v12 = value;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = (*(*MEMORY[0x1E6996528] + 16))();
  v15 = 0;
  if ((v14 & 1) == 0)
  {
    v17.receiver = self;
    v17.super_class = &OBJC_METACLASS___CNPropertyGroupAddressingGrammarItem;
    v15 = objc_msgSendSuper2(&v17, sel_propertyGroupItemWithLabeledValue_group_contact_, valueCopy, groupCopy, contactCopy);
  }

  return v15;
}

- (id)displayLabel
{
  objc_opt_class();
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];
  if (objc_opt_isKindOfClass())
  {
    v5 = value;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if ((*(*MEMORY[0x1E6996528] + 16))())
  {
    v10.receiver = self;
    v10.super_class = CNPropertyGroupAddressingGrammarItem;
    displayLabel = [(CNPropertyGroupItem *)&v10 displayLabel];
  }

  else
  {
    displayLabel = [v6 localizedLanguageDescription];
  }

  v8 = displayLabel;

  return v8;
}

- (id)displayStringForValue:(id)value
{
  objc_opt_class();
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];
  if (objc_opt_isKindOfClass())
  {
    v6 = value;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    localizedShortDescription = [v7 localizedShortDescription];
  }

  else
  {
    localizedShortDescription = &stru_1F0CE7398;
  }

  return localizedShortDescription;
}

- (BOOL)modified
{
  v9.receiver = self;
  v9.super_class = CNPropertyGroupAddressingGrammarItem;
  if ([(CNPropertyGroupItem *)&v9 modified])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    objc_opt_class();
    labeledValue = [(CNPropertyGroupItem *)self labeledValue];
    value = [labeledValue value];
    if (objc_opt_isKindOfClass())
    {
      v6 = value;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if ([(CNPropertyGroupAddressingGrammarItem *)self wasAdded])
    {
      v3 = (*(*MEMORY[0x1E6996528] + 16))() ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (BOOL)shouldShowLanguageLabel
{
  objc_opt_class();
  group = [(CNPropertyGroupItem *)self group];
  if (objc_opt_isKindOfClass())
  {
    v4 = group;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    shouldShowLanguageLabel = [v5 shouldShowLanguageLabel];
  }

  else
  {
    shouldShowLanguageLabel = 0;
  }

  return shouldShowLanguageLabel;
}

@end