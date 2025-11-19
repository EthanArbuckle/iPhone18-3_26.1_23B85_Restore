@interface CNPropertyAddressingGrammarEditingCell
- (void)updateConstraints;
- (void)updateWithPropertyItem:(id)a3;
@end

@implementation CNPropertyAddressingGrammarEditingCell

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = CNPropertyAddressingGrammarEditingCell;
  [(CNContactCell *)&v4 updateConstraints];
  v3 = [(CNPropertySimpleCell *)self labelLabel];
  [v3 setNumberOfLines:{objc_msgSend(MEMORY[0x1E69DB878], "ab_preferredContentSizeCategoryIsAccessibilityCategory") ^ 1}];
}

- (void)updateWithPropertyItem:(id)a3
{
  v11.receiver = self;
  v11.super_class = CNPropertyAddressingGrammarEditingCell;
  v4 = a3;
  [(CNPropertyCell *)&v11 updateWithPropertyItem:v4];
  objc_opt_class();
  v5 = [v4 labeledValue];

  v6 = [v5 value];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 localizedShortDescription];
  v10 = [(CNPropertySimpleCell *)self labelLabel];
  [v10 setText:v9];
}

@end