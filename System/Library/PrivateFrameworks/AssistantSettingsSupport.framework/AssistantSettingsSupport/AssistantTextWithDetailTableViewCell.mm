@interface AssistantTextWithDetailTableViewCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AssistantTextWithDetailTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = AssistantTextWithDetailTableViewCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [(AssistantTextWithDetailTableViewCell *)self textLabel:v9.receiver];
  name = [specifierCopy name];
  [v5 setText:name];

  detailTextLabel = [(AssistantTextWithDetailTableViewCell *)self detailTextLabel];
  v8 = [specifierCopy propertyForKey:*MEMORY[0x277D40160]];

  [detailTextLabel setText:v8];
  [(AssistantTextWithDetailTableViewCell *)self setNeedsLayout];
}

@end