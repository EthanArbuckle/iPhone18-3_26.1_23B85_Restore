@interface UICommand
+ (id)mail_deleteMessageCommandPropertyList;
- (BOOL)mail_isDeleteMessageCommand;
@end

@implementation UICommand

+ (id)mail_deleteMessageCommandPropertyList
{
  if (qword_1006DD108 != -1)
  {
    sub_100488FEC();
  }

  v3 = qword_1006DD100;

  return v3;
}

- (BOOL)mail_isDeleteMessageCommand
{
  if ([(UICommand *)self action]!= "delete:")
  {
    return 0;
  }

  propertyList = [(UICommand *)self propertyList];
  v5 = +[UICommand mail_deleteMessageCommandPropertyList];
  v3 = [propertyList isEqual:v5];

  return v3;
}

@end