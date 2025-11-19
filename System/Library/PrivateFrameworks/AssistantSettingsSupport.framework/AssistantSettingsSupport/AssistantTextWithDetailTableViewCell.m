@interface AssistantTextWithDetailTableViewCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AssistantTextWithDetailTableViewCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = AssistantTextWithDetailTableViewCell;
  v4 = a3;
  [(PSTableCell *)&v9 refreshCellContentsWithSpecifier:v4];
  v5 = [(AssistantTextWithDetailTableViewCell *)self textLabel:v9.receiver];
  v6 = [v4 name];
  [v5 setText:v6];

  v7 = [(AssistantTextWithDetailTableViewCell *)self detailTextLabel];
  v8 = [v4 propertyForKey:*MEMORY[0x277D40160]];

  [v7 setText:v8];
  [(AssistantTextWithDetailTableViewCell *)self setNeedsLayout];
}

@end