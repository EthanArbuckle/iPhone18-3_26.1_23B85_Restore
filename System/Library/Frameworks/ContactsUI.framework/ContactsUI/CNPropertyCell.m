@interface CNPropertyCell
+ (id)labelStringFromAppName:(id)a3 andPropertyLabel:(id)a4;
- (BOOL)isSuggested;
- (BOOL)shouldShowSuggestionOrigin;
- (CNPresenterDelegate)presentingDelegate;
- (CNPropertyCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CNPropertyCellDelegate)delegate;
- (id)appNameForSuggestion:(id)a3;
- (id)labelString;
- (id)property;
- (id)valueString;
- (void)copy:(id)a3;
- (void)performAccessoryAction;
- (void)performDefaultAction;
- (void)setCardGroupItem:(id)a3;
- (void)setProperty:(id)a3;
- (void)tintColorDidChange;
- (void)updateValueWithPropertyItem:(id)a3;
- (void)updateWithPropertyItem:(id)a3;
@end

@implementation CNPropertyCell

- (CNPresenterDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (CNPropertyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)property
{
  WeakRetained = objc_loadWeakRetained(&self->_property);

  return WeakRetained;
}

- (void)updateValueWithPropertyItem:(id)a3
{
  v4 = [(CNPropertyCell *)self valueString];
  v5 = [(CNLabeledCell *)self valueView];
  v6 = [v5 ab_text];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v9 = [(CNPropertyCell *)self valueString];
    v8 = [(CNLabeledCell *)self valueView];
    [v8 setAb_text:v9];
  }
}

- (void)updateWithPropertyItem:(id)a3
{
  v10 = a3;
  v4 = [(CNPropertyCell *)self labelString];
  v5 = [(CNLabeledCell *)self labelView];
  v6 = [v5 ab_text];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(CNLabeledCell *)self labelView];
    [v8 setAb_text:v4];
  }

  [(CNPropertyCell *)self updateValueWithPropertyItem:v10];
  if ([(CNPropertyCell *)self isSuggested]&& ![(CNPropertyCell *)self forceSuggested])
  {
    [(CNPropertyCell *)self setAccessoryType:1];
    v9 = +[CNUIColorRepository contactCardDisclosureAccessoryTintColor];
    [(CNPropertyCell *)self _setAccessoryTintColor:v9];
  }

  else
  {
    [(CNPropertyCell *)self setAccessoryType:0];
  }
}

- (void)tintColorDidChange
{
  v9.receiver = self;
  v9.super_class = CNPropertyCell;
  [(CNLabeledCell *)&v9 tintColorDidChange];
  if (![(CNPropertyCell *)self isSuggested]&& (![(CNPropertyCell *)self isHighlightedProperty]|| ![(CNPropertyCell *)self isImportant]) && [(CNPropertyCell *)self supportsTintColorValue])
  {
    v3 = [(CNLabeledCell *)self valueTextAttributes];
    v4 = [(UIView *)self tintColorOverride];
    v5 = *MEMORY[0x1E69DB650];
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    v7 = [v6 isEqual:v4];

    if ((v7 & 1) == 0)
    {
      v8 = [v3 mutableCopy];
      [v8 setObject:v4 forKeyedSubscript:v5];
      [(CNLabeledCell *)self setValueTextAttributes:v8];
    }
  }
}

- (void)copy:(id)a3
{
  v3 = [(CNPropertyCell *)self propertyItem];
  v4 = [v3 displayValue];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F0CE7398;
  }

  v7 = v5;
  v6 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v6 setString:v7];
}

- (id)valueString
{
  v2 = [(CNPropertyCell *)self propertyItem];
  v3 = [v2 displayValue];

  return v3;
}

- (id)appNameForSuggestion:(id)a3
{
  v4 = a3;
  if ([v4 isSuggested])
  {
    v5 = [v4 localizedAppName];
    if (!v5)
    {
      v6 = [(CNPropertyCell *)self delegate];
      v7 = [v6 contactViewCache];
      v8 = [v7 contactStore];

      v11 = 0;
      v9 = [v8 originForSuggestion:v4 error:&v11];
      v5 = [v9 localizedApplicationName];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldShowSuggestionOrigin
{
  v3 = [(CNPropertyCell *)self propertyItem];
  v4 = [v3 contact];
  v5 = [v4 isSuggestedMe];

  if (v5)
  {
    v6 = [(CNPropertyCell *)self propertyItem];
    if ([v6 isSuggested])
    {
      v7 = [(CNPropertyCell *)self isEditing]^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }

    return v7;
  }

  else
  {

    return [(CNPropertyCell *)self isSuggested];
  }
}

- (id)labelString
{
  v3 = [(CNPropertyCell *)self propertyItem];
  v4 = [v3 displayLabel];
  v5 = [v3 property];
  v6 = CNUILocalizedStringForPropertyWithFormatKey(@"LOWERCASE_LABEL", v5);

  v7 = [(CNPropertyCell *)self shouldShowSuggestionOrigin];
  v8 = [(CNPropertyCell *)self propertyItem];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 labeledValue];
    v11 = [v10 valueOrigin];

    if (v11)
    {
      v12 = [(CNPropertyCell *)self propertyItem];
      v13 = [v12 labeledValue];
      v14 = [v13 valueOrigin];
      v15 = [v14 localizedApplicationName];

      v16 = [objc_opt_class() labelStringFromAppName:v15 andPropertyLabel:v6];

      v4 = v15;
    }

    else
    {
      v18 = [v3 labeledValue];
      v19 = [(CNPropertyCell *)self appNameForSuggestion:v18];

      v16 = [objc_opt_class() labelStringFromAppName:v19 andPropertyLabel:v6];

      v4 = v19;
    }
  }

  else
  {
    v17 = [v8 isSuggested];

    if (!v17)
    {
      goto LABEL_8;
    }

    v16 = v6;
  }

  v4 = v16;
LABEL_8:

  return v4;
}

- (BOOL)isSuggested
{
  if ([(CNPropertyCell *)self forceSuggested])
  {
    return 1;
  }

  if ([(CNPropertyCell *)self ignoreSuggested])
  {
    return 0;
  }

  v4 = [(CNPropertyCell *)self propertyItem];
  if ([v4 isSuggested])
  {
    v3 = 1;
  }

  else
  {
    v5 = [(CNPropertyCell *)self propertyItem];
    v6 = [v5 contact];
    v3 = [v6 isSuggested];
  }

  return v3;
}

- (void)setCardGroupItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CNPropertyCell;
  v5 = [(CNContactCell *)&v8 cardGroupItem];
  v6 = v5;
  if (v4 && !v5 || v5 && ([v5 isEqual:v4] & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = CNPropertyCell;
    [(CNContactCell *)&v7 setCardGroupItem:v4];
    if (v4)
    {
      [(CNPropertyCell *)self updateWithPropertyItem:v4];
    }
  }
}

- (void)setProperty:(id)a3
{
  obj = a3;
  v4 = [obj value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [obj label];
    v7 = [(CNLabeledCell *)self labelView];
    [v7 setAb_text:v6];

    v8 = [obj value];
    v9 = [(CNLabeledCell *)self valueView];
    [v9 setAb_text:v8];
  }

  objc_storeWeak(&self->_property, obj);
}

- (void)performAccessoryAction
{
  v3 = [(CNPropertyCell *)self propertyItem];
  v4 = [v3 isSuggested];

  if (v4)
  {
    v6 = [(CNPropertyCell *)self delegate];
    v5 = [(CNPropertyCell *)self propertyItem];
    [v6 propertyCell:self performActionForItem:v5 withTransportType:0];
  }
}

- (void)performDefaultAction
{
  v4 = [(CNPropertyCell *)self delegate];
  v3 = [(CNPropertyCell *)self propertyItem];
  [v4 propertyCell:self performActionForItem:v3 withTransportType:0];
}

- (CNPropertyCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6.receiver = self;
  v6.super_class = CNPropertyCell;
  v4 = [(CNLabeledCell *)&v6 initWithStyle:a3 reuseIdentifier:a4];
  [(CNPropertyCell *)v4 setAccessoryType:0];
  return v4;
}

+ (id)labelStringFromAppName:(id)a3 andPropertyLabel:(id)a4
{
  v5 = a3;
  v6 = *MEMORY[0x1E6996568];
  v7 = *(*MEMORY[0x1E6996568] + 16);
  v8 = a4;
  LOBYTE(v7) = v7(v6, v5);
  v9 = MEMORY[0x1E696AEC0];
  v10 = CNContactsUIBundle();
  v11 = v10;
  if (v7)
  {
    v12 = [v10 localizedStringForKey:@"SUGGESTION_UNKNOWN_ORIGIN" value:&stru_1F0CE7398 table:@"Localized"];
  }

  else
  {
    v12 = [v10 localizedStringForKey:@"SUGGESTION_FOUND_IN_APP" value:&stru_1F0CE7398 table:@"Localized"];
    v15 = v5;
  }

  v13 = [v9 stringWithFormat:v12, v8, v15];

  return v13;
}

@end