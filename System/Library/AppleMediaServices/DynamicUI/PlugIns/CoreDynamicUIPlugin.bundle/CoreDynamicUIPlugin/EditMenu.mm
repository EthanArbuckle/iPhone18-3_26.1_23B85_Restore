@interface EditMenu
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)didLongPress:(id)press;
@end

@implementation EditMenu

- (void)didLongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_3AD00(pressCopy);
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  sub_CE5C(0, &qword_C4F68);
  sub_8F6C4();
  v5 = sub_3AEDC();

  return v5;
}

@end