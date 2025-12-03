@interface CNPropertyAddressingGrammarEditingCell
- (void)updateConstraints;
- (void)updateWithPropertyItem:(id)item;
@end

@implementation CNPropertyAddressingGrammarEditingCell

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = CNPropertyAddressingGrammarEditingCell;
  [(CNContactCell *)&v4 updateConstraints];
  labelLabel = [(CNPropertySimpleCell *)self labelLabel];
  [labelLabel setNumberOfLines:{objc_msgSend(MEMORY[0x1E69DB878], "ab_preferredContentSizeCategoryIsAccessibilityCategory") ^ 1}];
}

- (void)updateWithPropertyItem:(id)item
{
  v11.receiver = self;
  v11.super_class = CNPropertyAddressingGrammarEditingCell;
  itemCopy = item;
  [(CNPropertyCell *)&v11 updateWithPropertyItem:itemCopy];
  objc_opt_class();
  labeledValue = [itemCopy labeledValue];

  value = [labeledValue value];
  if (objc_opt_isKindOfClass())
  {
    v7 = value;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  localizedShortDescription = [v8 localizedShortDescription];
  labelLabel = [(CNPropertySimpleCell *)self labelLabel];
  [labelLabel setText:localizedShortDescription];
}

@end