@interface CNContactActionDropdownMenuButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (CNContactActionDropdownMenuButton)init;
@end

@implementation CNContactActionDropdownMenuButton

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CNContactActionDropdownMenuButton *)self traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 2)
  {
    [(CNContactActionDropdownMenuButton *)self frame];
    MidX = CGRectGetMidX(v15);
    v8 = 0.0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CNContactActionDropdownMenuButton;
    [(CNContactActionDropdownMenuButton *)&v13 menuAttachmentPointForConfiguration:v4];
    MidX = v9;
    v8 = v10;
  }

  v11 = MidX;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CNContactActionDropdownMenuButton)init
{
  v6.receiver = self;
  v6.super_class = CNContactActionDropdownMenuButton;
  v2 = [(CNContactActionDropdownMenuButton *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [(CNContactActionDropdownMenuButton *)v2 setBackgroundColor:v3];

    v4 = v2;
  }

  return v2;
}

@end