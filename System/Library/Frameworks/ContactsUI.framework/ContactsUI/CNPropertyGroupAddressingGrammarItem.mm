@interface CNPropertyGroupAddressingGrammarItem
+ (id)propertyGroupItemWithLabeledValue:(id)a3 group:(id)a4 contact:(id)a5;
- (BOOL)modified;
- (BOOL)shouldShowLanguageLabel;
- (id)displayLabel;
- (id)displayStringForValue:(id)a3;
@end

@implementation CNPropertyGroupAddressingGrammarItem

+ (id)propertyGroupItemWithLabeledValue:(id)a3 group:(id)a4 contact:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  v11 = [v8 value];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
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
    v17.receiver = a1;
    v17.super_class = &OBJC_METACLASS___CNPropertyGroupAddressingGrammarItem;
    v15 = objc_msgSendSuper2(&v17, sel_propertyGroupItemWithLabeledValue_group_contact_, v8, v9, v10);
  }

  return v15;
}

- (id)displayLabel
{
  objc_opt_class();
  v3 = [(CNPropertyGroupItem *)self labeledValue];
  v4 = [v3 value];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
    v7 = [(CNPropertyGroupItem *)&v10 displayLabel];
  }

  else
  {
    v7 = [v6 localizedLanguageDescription];
  }

  v8 = v7;

  return v8;
}

- (id)displayStringForValue:(id)a3
{
  objc_opt_class();
  v4 = [(CNPropertyGroupItem *)self labeledValue];
  v5 = [v4 value];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 localizedShortDescription];
  }

  else
  {
    v8 = &stru_1F0CE7398;
  }

  return v8;
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
    v4 = [(CNPropertyGroupItem *)self labeledValue];
    v5 = [v4 value];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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
  v3 = [(CNPropertyGroupItem *)self group];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 shouldShowLanguageLabel];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end