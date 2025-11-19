@interface EKEventDetailCommentCell
- (BOOL)update;
- (EKEventDetailCommentCell)initWithEvent:(id)a3 editable:(BOOL)a4;
@end

@implementation EKEventDetailCommentCell

- (EKEventDetailCommentCell)initWithEvent:(id)a3 editable:(BOOL)a4
{
  v13.receiver = self;
  v13.super_class = EKEventDetailCommentCell;
  v4 = [(EKEventDetailCell *)&v13 initWithEvent:a3 editable:a4 style:1000];
  v5 = v4;
  if (v4)
  {
    v6 = [(EKEventDetailCommentCell *)v4 editableTextField];
    [v6 setReturnKeyType:9];

    v7 = [(EKEventDetailCommentCell *)v5 editableTextField];
    [v7 setClearButtonMode:1];

    if (CalInterfaceIsLeftToRight())
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }

    v9 = [(EKEventDetailCommentCell *)v5 editableTextField];
    [v9 setTextAlignment:v8];

    v10 = [(EKEventDetailCommentCell *)v5 editableTextField];
    [v10 setAdjustsFontSizeToFitWidth:0];

    v11 = [(EKEventDetailCommentCell *)v5 editableTextField];
    CalDisableFocusRingForView();

    [(EKEventDetailCommentCell *)v5 setTextFieldOffset:0.0];
    [(EKEventDetailCommentCell *)v5 setSelectionStyle:0];
    [(EKEventDetailCommentCell *)v5 setNeedsLayout];
  }

  return v5;
}

- (BOOL)update
{
  v3 = [(EKEventDetailCell *)self isEditable];
  if (v3)
  {
    v3 = [(EKEvent *)self->super._event allowsResponseCommentModifications];
    if (v3)
    {
      v4 = *MEMORY[0x1E69DDCF8];
      v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      v6 = [(EKEventDetailCommentCell *)self editableTextField];
      [v6 setFont:v5];

      v7 = MEMORY[0x1E6993410];
      v8 = [(EKEvent *)self->super._event responseComment];
      v9 = [v7 stringWithAutoCommentRemoved:v8];
      v10 = [(EKEventDetailCommentCell *)self editableTextField];
      [v10 setText:v9];

      v11 = objc_alloc(MEMORY[0x1E696AD40]);
      v12 = EventKitUIBundle();
      v13 = [v12 localizedStringForKey:@"Comment to Organizer" value:&stru_1F4EF6790 table:0];
      v14 = [v11 initWithString:v13];

      v15 = *MEMORY[0x1E69DB648];
      v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v4];
      [v14 addAttribute:v15 value:v16 range:{0, objc_msgSend(v14, "length")}];

      v17 = *MEMORY[0x1E69DB650];
      v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v14 addAttribute:v17 value:v18 range:{0, objc_msgSend(v14, "length")}];

      v19 = [(EKEventDetailCommentCell *)self editableTextField];
      [v19 setAttributedPlaceholder:v14];

      [(EKEventDetailCommentCell *)self setNeedsLayout];
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

@end