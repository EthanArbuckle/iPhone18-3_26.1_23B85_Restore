@interface EKDirectoryPerson
+ (id)recordFromSearchResult:(id)result;
@end

@implementation EKDirectoryPerson

+ (id)recordFromSearchResult:(id)result
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___EKDirectoryPerson;
  resultCopy = result;
  v4 = objc_msgSendSuper2(&v7, sel_recordFromSearchResult_, resultCopy);
  principalPath = [resultCopy principalPath];

  [v4 setPrincipalPath:principalPath];

  return v4;
}

@end