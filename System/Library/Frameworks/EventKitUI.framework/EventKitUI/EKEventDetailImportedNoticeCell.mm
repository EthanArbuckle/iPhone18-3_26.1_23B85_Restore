@interface EKEventDetailImportedNoticeCell
- (BOOL)update;
- (EKEventDetailImportedNoticeCell)initWithEvent:(id)event editable:(BOOL)editable;
@end

@implementation EKEventDetailImportedNoticeCell

- (EKEventDetailImportedNoticeCell)initWithEvent:(id)event editable:(BOOL)editable
{
  v15.receiver = self;
  v15.super_class = EKEventDetailImportedNoticeCell;
  v4 = [(EKEventDetailCell *)&v15 initWithEvent:event editable:editable style:0];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    textLabel = [(EKEventDetailImportedNoticeCell *)v4 textLabel];
    [textLabel setFont:v5];

    v7 = objc_alloc(MEMORY[0x1E696AD40]);
    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"This event is read-only" value:&stru_1F4EF6790 table:0];
    v10 = [v7 initWithString:v9];

    [v10 addAttribute:*MEMORY[0x1E69DB648] value:v5 range:{0, objc_msgSend(v10, "length")}];
    v11 = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v10 addAttribute:v11 value:secondaryLabelColor range:{0, objc_msgSend(v10, "length")}];

    textLabel2 = [(EKEventDetailImportedNoticeCell *)v4 textLabel];
    [textLabel2 setAttributedText:v10];
  }

  return v4;
}

- (BOOL)update
{
  event = [(EKEventDetailCell *)self event];
  isEditable = [event isEditable];

  return isEditable ^ 1;
}

@end