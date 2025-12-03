@interface CNPropertyGroupNoteItem
- (BOOL)isEquivalentToItem:(id)item whenEditing:(BOOL)editing;
- (id)displayLabel;
@end

@implementation CNPropertyGroupNoteItem

- (id)displayLabel
{
  v3 = CNContactsUIBundle();
  v4 = MEMORY[0x1E695CD58];
  property = [(CNPropertyGroupItem *)self property];
  v6 = [v4 localizedStringForKey:property];
  v7 = [v3 localizedStringForKey:@"NOTES_LABEL" value:v6 table:@"Localized"];

  return v7;
}

- (BOOL)isEquivalentToItem:(id)item whenEditing:(BOOL)editing
{
  itemCopy = item;
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  labeledValue2 = [itemCopy labeledValue];

  value2 = [labeledValue2 value];

  if ([value length] && objc_msgSend(value2, "length"))
  {
    v10 = [value isEqualToString:value2];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end