@interface EKEventDetailImportedNoticeCell
- (BOOL)update;
- (EKEventDetailImportedNoticeCell)initWithEvent:(id)a3 editable:(BOOL)a4;
@end

@implementation EKEventDetailImportedNoticeCell

- (EKEventDetailImportedNoticeCell)initWithEvent:(id)a3 editable:(BOOL)a4
{
  v15.receiver = self;
  v15.super_class = EKEventDetailImportedNoticeCell;
  v4 = [(EKEventDetailCell *)&v15 initWithEvent:a3 editable:a4 style:0];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v6 = [(EKEventDetailImportedNoticeCell *)v4 textLabel];
    [v6 setFont:v5];

    v7 = objc_alloc(MEMORY[0x1E696AD40]);
    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"This event is read-only" value:&stru_1F4EF6790 table:0];
    v10 = [v7 initWithString:v9];

    [v10 addAttribute:*MEMORY[0x1E69DB648] value:v5 range:{0, objc_msgSend(v10, "length")}];
    v11 = *MEMORY[0x1E69DB650];
    v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v10 addAttribute:v11 value:v12 range:{0, objc_msgSend(v10, "length")}];

    v13 = [(EKEventDetailImportedNoticeCell *)v4 textLabel];
    [v13 setAttributedText:v10];
  }

  return v4;
}

- (BOOL)update
{
  v2 = [(EKEventDetailCell *)self event];
  v3 = [v2 isEditable];

  return v3 ^ 1;
}

@end