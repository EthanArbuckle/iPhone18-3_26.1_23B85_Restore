@interface EditMenu
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (void)didLongPress:(id)a3;
@end

@implementation EditMenu

- (void)didLongPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_3AD00(v4);
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  sub_CE5C(0, &qword_C4F68);
  sub_8F6C4();
  v5 = sub_3AEDC();

  return v5;
}

@end