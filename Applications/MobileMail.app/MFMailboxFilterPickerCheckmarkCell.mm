@interface MFMailboxFilterPickerCheckmarkCell
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation MFMailboxFilterPickerCheckmarkCell

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = MFMailboxFilterPickerCheckmarkCell;
  [(MFMailboxFilterPickerCheckmarkCell *)&v7 setSelected:selected animated:animated];
  if (selectedCopy)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  [(MFMailboxFilterPickerCheckmarkCell *)self setAccessoryType:v6];
}

@end