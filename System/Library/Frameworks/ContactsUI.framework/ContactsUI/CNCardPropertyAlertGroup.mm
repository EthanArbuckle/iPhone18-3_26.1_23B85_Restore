@interface CNCardPropertyAlertGroup
- (id)_loadPropertyItems;
@end

@implementation CNCardPropertyAlertGroup

- (id)_loadPropertyItems
{
  v12[1] = *MEMORY[0x1E69E9840];
  contact = [(CNCardGroup *)self contact];
  property = [(CNCardPropertyGroup *)self property];
  v5 = [contact valueForKey:property];

  if (v5)
  {
    v6 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v5];
    [(CNCardPropertyAlertGroup *)self setLabeledValue:v6];
  }

  labeledValue = [(CNCardPropertyAlertGroup *)self labeledValue];
  contact2 = [(CNCardGroup *)self contact];
  v9 = [(CNPropertyGroupItem *)CNPropertyGroupAlertItem propertyGroupItemWithLabeledValue:labeledValue group:self contact:contact2];
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v10;
}

@end