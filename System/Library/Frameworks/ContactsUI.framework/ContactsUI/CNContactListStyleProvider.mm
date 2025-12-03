@interface CNContactListStyleProvider
+ (id)contactListStyle;
+ (id)contactListStyleWithContactStyle:(id)style;
@end

@implementation CNContactListStyleProvider

+ (id)contactListStyleWithContactStyle:(id)style
{
  styleCopy = style;
  v4 = [[CNContactListStyleWrapperProvider alloc] initWithContactStyle:styleCopy];

  return v4;
}

+ (id)contactListStyle
{
  v2 = objc_alloc_init(CNContactListStyleDefaultProvider);

  return v2;
}

@end