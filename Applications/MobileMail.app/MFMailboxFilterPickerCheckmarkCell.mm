@interface MFMailboxFilterPickerCheckmarkCell
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation MFMailboxFilterPickerCheckmarkCell

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFMailboxFilterPickerCheckmarkCell;
  [(MFMailboxFilterPickerCheckmarkCell *)&v7 setSelected:a3 animated:a4];
  if (v4)
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