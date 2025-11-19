@interface EKDirectoryPerson
+ (id)recordFromSearchResult:(id)a3;
@end

@implementation EKDirectoryPerson

+ (id)recordFromSearchResult:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___EKDirectoryPerson;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v7, sel_recordFromSearchResult_, v3);
  v5 = [v3 principalPath];

  [v4 setPrincipalPath:v5];

  return v4;
}

@end