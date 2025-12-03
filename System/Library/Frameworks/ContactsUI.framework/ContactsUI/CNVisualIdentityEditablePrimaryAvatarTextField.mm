@interface CNVisualIdentityEditablePrimaryAvatarTextField
- (CGRect)caretRectForPosition:(id)position;
@end

@implementation CNVisualIdentityEditablePrimaryAvatarTextField

- (CGRect)caretRectForPosition:(id)position
{
  v19.receiver = self;
  v19.super_class = CNVisualIdentityEditablePrimaryAvatarTextField;
  [(CNVisualIdentityEditablePrimaryAvatarTextField *)&v19 caretRectForPosition:position];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CNVisualIdentityEditablePrimaryAvatarTextField *)self bounds];
  v13 = v11 - v12 * 0.5;
  v14 = v11 <= v12 * 0.5;
  if (v11 <= v12 * 0.5)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12 * 0.5;
  }

  if (v14)
  {
    v16 = v7;
  }

  else
  {
    v16 = v7 + v13 * 0.5;
  }

  v17 = v5;
  v18 = v9;
  result.size.height = v15;
  result.size.width = v18;
  result.origin.y = v16;
  result.origin.x = v17;
  return result;
}

@end