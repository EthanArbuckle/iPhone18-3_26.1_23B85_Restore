@interface EKEventDetailCommentCell
- (BOOL)update;
- (EKEventDetailCommentCell)initWithEvent:(id)event editable:(BOOL)editable;
@end

@implementation EKEventDetailCommentCell

- (EKEventDetailCommentCell)initWithEvent:(id)event editable:(BOOL)editable
{
  v13.receiver = self;
  v13.super_class = EKEventDetailCommentCell;
  v4 = [(EKEventDetailCell *)&v13 initWithEvent:event editable:editable style:1000];
  v5 = v4;
  if (v4)
  {
    editableTextField = [(EKEventDetailCommentCell *)v4 editableTextField];
    [editableTextField setReturnKeyType:9];

    editableTextField2 = [(EKEventDetailCommentCell *)v5 editableTextField];
    [editableTextField2 setClearButtonMode:1];

    if (CalInterfaceIsLeftToRight())
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }

    editableTextField3 = [(EKEventDetailCommentCell *)v5 editableTextField];
    [editableTextField3 setTextAlignment:v8];

    editableTextField4 = [(EKEventDetailCommentCell *)v5 editableTextField];
    [editableTextField4 setAdjustsFontSizeToFitWidth:0];

    editableTextField5 = [(EKEventDetailCommentCell *)v5 editableTextField];
    CalDisableFocusRingForView();

    [(EKEventDetailCommentCell *)v5 setTextFieldOffset:0.0];
    [(EKEventDetailCommentCell *)v5 setSelectionStyle:0];
    [(EKEventDetailCommentCell *)v5 setNeedsLayout];
  }

  return v5;
}

- (BOOL)update
{
  isEditable = [(EKEventDetailCell *)self isEditable];
  if (isEditable)
  {
    isEditable = [(EKEvent *)self->super._event allowsResponseCommentModifications];
    if (isEditable)
    {
      v4 = *MEMORY[0x1E69DDCF8];
      v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      editableTextField = [(EKEventDetailCommentCell *)self editableTextField];
      [editableTextField setFont:v5];

      v7 = MEMORY[0x1E6993410];
      responseComment = [(EKEvent *)self->super._event responseComment];
      v9 = [v7 stringWithAutoCommentRemoved:responseComment];
      editableTextField2 = [(EKEventDetailCommentCell *)self editableTextField];
      [editableTextField2 setText:v9];

      v11 = objc_alloc(MEMORY[0x1E696AD40]);
      v12 = EventKitUIBundle();
      v13 = [v12 localizedStringForKey:@"Comment to Organizer" value:&stru_1F4EF6790 table:0];
      v14 = [v11 initWithString:v13];

      v15 = *MEMORY[0x1E69DB648];
      v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v4];
      [v14 addAttribute:v15 value:v16 range:{0, objc_msgSend(v14, "length")}];

      v17 = *MEMORY[0x1E69DB650];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v14 addAttribute:v17 value:secondaryLabelColor range:{0, objc_msgSend(v14, "length")}];

      editableTextField3 = [(EKEventDetailCommentCell *)self editableTextField];
      [editableTextField3 setAttributedPlaceholder:v14];

      [(EKEventDetailCommentCell *)self setNeedsLayout];
      LOBYTE(isEditable) = 1;
    }
  }

  return isEditable;
}

@end