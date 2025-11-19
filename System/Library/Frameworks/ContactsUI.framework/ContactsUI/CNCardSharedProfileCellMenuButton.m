@interface CNCardSharedProfileCellMenuButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (CNCardSharedProfileCellMenuButton)init;
@end

@implementation CNCardSharedProfileCellMenuButton

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNCardSharedProfileCellMenuButton;
  [(CNCardSharedProfileCellMenuButton *)&v9 menuAttachmentPointForConfiguration:a3];
  v5 = v4;
  [(CNCardSharedProfileCellMenuButton *)self frame];
  v7 = v6;
  v8 = v5;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CNCardSharedProfileCellMenuButton)init
{
  v6.receiver = self;
  v6.super_class = CNCardSharedProfileCellMenuButton;
  v2 = [(CNCardSharedProfileCellMenuButton *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [(CNCardSharedProfileCellMenuButton *)v2 setBackgroundColor:v3];

    v4 = v2;
  }

  return v2;
}

@end