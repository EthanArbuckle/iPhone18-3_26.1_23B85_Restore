@interface CNPropertyCell
+ (id)labelStringFromAppName:(id)name andPropertyLabel:(id)label;
- (BOOL)isSuggested;
- (BOOL)shouldShowSuggestionOrigin;
- (CNPresenterDelegate)presentingDelegate;
- (CNPropertyCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CNPropertyCellDelegate)delegate;
- (id)appNameForSuggestion:(id)suggestion;
- (id)labelString;
- (id)property;
- (id)valueString;
- (void)copy:(id)copy;
- (void)performAccessoryAction;
- (void)performDefaultAction;
- (void)setCardGroupItem:(id)item;
- (void)setProperty:(id)property;
- (void)tintColorDidChange;
- (void)updateValueWithPropertyItem:(id)item;
- (void)updateWithPropertyItem:(id)item;
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

- (void)updateValueWithPropertyItem:(id)item
{
  valueString = [(CNPropertyCell *)self valueString];
  valueView = [(CNLabeledCell *)self valueView];
  ab_text = [valueView ab_text];
  v7 = [valueString isEqualToString:ab_text];

  if ((v7 & 1) == 0)
  {
    valueString2 = [(CNPropertyCell *)self valueString];
    valueView2 = [(CNLabeledCell *)self valueView];
    [valueView2 setAb_text:valueString2];
  }
}

- (void)updateWithPropertyItem:(id)item
{
  itemCopy = item;
  labelString = [(CNPropertyCell *)self labelString];
  labelView = [(CNLabeledCell *)self labelView];
  ab_text = [labelView ab_text];
  v7 = [labelString isEqualToString:ab_text];

  if ((v7 & 1) == 0)
  {
    labelView2 = [(CNLabeledCell *)self labelView];
    [labelView2 setAb_text:labelString];
  }

  [(CNPropertyCell *)self updateValueWithPropertyItem:itemCopy];
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
    valueTextAttributes = [(CNLabeledCell *)self valueTextAttributes];
    tintColorOverride = [(UIView *)self tintColorOverride];
    v5 = *MEMORY[0x1E69DB650];
    v6 = [valueTextAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB650]];
    v7 = [v6 isEqual:tintColorOverride];

    if ((v7 & 1) == 0)
    {
      v8 = [valueTextAttributes mutableCopy];
      [v8 setObject:tintColorOverride forKeyedSubscript:v5];
      [(CNLabeledCell *)self setValueTextAttributes:v8];
    }
  }
}

- (void)copy:(id)copy
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  displayValue = [propertyItem displayValue];

  if (displayValue)
  {
    v5 = displayValue;
  }

  else
  {
    v5 = &stru_1F0CE7398;
  }

  v7 = v5;
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  [generalPasteboard setString:v7];
}

- (id)valueString
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  displayValue = [propertyItem displayValue];

  return displayValue;
}

- (id)appNameForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if ([suggestionCopy isSuggested])
  {
    localizedAppName = [suggestionCopy localizedAppName];
    if (!localizedAppName)
    {
      delegate = [(CNPropertyCell *)self delegate];
      contactViewCache = [delegate contactViewCache];
      contactStore = [contactViewCache contactStore];

      v11 = 0;
      v9 = [contactStore originForSuggestion:suggestionCopy error:&v11];
      localizedAppName = [v9 localizedApplicationName];
    }
  }

  else
  {
    localizedAppName = 0;
  }

  return localizedAppName;
}

- (BOOL)shouldShowSuggestionOrigin
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  contact = [propertyItem contact];
  isSuggestedMe = [contact isSuggestedMe];

  if (isSuggestedMe)
  {
    propertyItem2 = [(CNPropertyCell *)self propertyItem];
    if ([propertyItem2 isSuggested])
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
  propertyItem = [(CNPropertyCell *)self propertyItem];
  displayLabel = [propertyItem displayLabel];
  property = [propertyItem property];
  v6 = CNUILocalizedStringForPropertyWithFormatKey(@"LOWERCASE_LABEL", property);

  shouldShowSuggestionOrigin = [(CNPropertyCell *)self shouldShowSuggestionOrigin];
  propertyItem2 = [(CNPropertyCell *)self propertyItem];
  v9 = propertyItem2;
  if (shouldShowSuggestionOrigin)
  {
    labeledValue = [propertyItem2 labeledValue];
    valueOrigin = [labeledValue valueOrigin];

    if (valueOrigin)
    {
      propertyItem3 = [(CNPropertyCell *)self propertyItem];
      labeledValue2 = [propertyItem3 labeledValue];
      valueOrigin2 = [labeledValue2 valueOrigin];
      localizedApplicationName = [valueOrigin2 localizedApplicationName];

      v16 = [objc_opt_class() labelStringFromAppName:localizedApplicationName andPropertyLabel:v6];

      displayLabel = localizedApplicationName;
    }

    else
    {
      labeledValue3 = [propertyItem labeledValue];
      v19 = [(CNPropertyCell *)self appNameForSuggestion:labeledValue3];

      v16 = [objc_opt_class() labelStringFromAppName:v19 andPropertyLabel:v6];

      displayLabel = v19;
    }
  }

  else
  {
    isSuggested = [propertyItem2 isSuggested];

    if (!isSuggested)
    {
      goto LABEL_8;
    }

    v16 = v6;
  }

  displayLabel = v16;
LABEL_8:

  return displayLabel;
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

  propertyItem = [(CNPropertyCell *)self propertyItem];
  if ([propertyItem isSuggested])
  {
    isSuggested = 1;
  }

  else
  {
    propertyItem2 = [(CNPropertyCell *)self propertyItem];
    contact = [propertyItem2 contact];
    isSuggested = [contact isSuggested];
  }

  return isSuggested;
}

- (void)setCardGroupItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = CNPropertyCell;
  cardGroupItem = [(CNContactCell *)&v8 cardGroupItem];
  v6 = cardGroupItem;
  if (itemCopy && !cardGroupItem || cardGroupItem && ([cardGroupItem isEqual:itemCopy] & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = CNPropertyCell;
    [(CNContactCell *)&v7 setCardGroupItem:itemCopy];
    if (itemCopy)
    {
      [(CNPropertyCell *)self updateWithPropertyItem:itemCopy];
    }
  }
}

- (void)setProperty:(id)property
{
  obj = property;
  value = [obj value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    label = [obj label];
    labelView = [(CNLabeledCell *)self labelView];
    [labelView setAb_text:label];

    value2 = [obj value];
    valueView = [(CNLabeledCell *)self valueView];
    [valueView setAb_text:value2];
  }

  objc_storeWeak(&self->_property, obj);
}

- (void)performAccessoryAction
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  isSuggested = [propertyItem isSuggested];

  if (isSuggested)
  {
    delegate = [(CNPropertyCell *)self delegate];
    propertyItem2 = [(CNPropertyCell *)self propertyItem];
    [delegate propertyCell:self performActionForItem:propertyItem2 withTransportType:0];
  }
}

- (void)performDefaultAction
{
  delegate = [(CNPropertyCell *)self delegate];
  propertyItem = [(CNPropertyCell *)self propertyItem];
  [delegate propertyCell:self performActionForItem:propertyItem withTransportType:0];
}

- (CNPropertyCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = CNPropertyCell;
  v4 = [(CNLabeledCell *)&v6 initWithStyle:style reuseIdentifier:identifier];
  [(CNPropertyCell *)v4 setAccessoryType:0];
  return v4;
}

+ (id)labelStringFromAppName:(id)name andPropertyLabel:(id)label
{
  nameCopy = name;
  v6 = *MEMORY[0x1E6996568];
  v7 = *(*MEMORY[0x1E6996568] + 16);
  labelCopy = label;
  LOBYTE(v7) = v7(v6, nameCopy);
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
    v15 = nameCopy;
  }

  v13 = [v9 stringWithFormat:v12, labelCopy, v15];

  return v13;
}

@end