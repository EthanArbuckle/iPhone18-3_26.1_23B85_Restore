@interface CNContactListStyleProvider
+ (id)contactListStyle;
+ (id)contactListStyleWithContactStyle:(id)a3;
@end

@implementation CNContactListStyleProvider

+ (id)contactListStyleWithContactStyle:(id)a3
{
  v3 = a3;
  v4 = [[CNContactListStyleWrapperProvider alloc] initWithContactStyle:v3];

  return v4;
}

+ (id)contactListStyle
{
  v2 = objc_alloc_init(CNContactListStyleDefaultProvider);

  return v2;
}

@end