@interface CNRecentCallCountAndName
+ (id)instanceWithName:(id)name callCount:(unint64_t)count;
@end

@implementation CNRecentCallCountAndName

+ (id)instanceWithName:(id)name callCount:(unint64_t)count
{
  nameCopy = name;
  v6 = objc_alloc_init(CNRecentCallCountAndName);
  v7 = v6;
  if (nameCopy)
  {
    v8 = nameCopy;
  }

  else
  {
    v8 = &stru_1F0CE7398;
  }

  objc_storeStrong(&v6->_speakableName, v8);

  v7->_callCount = count;

  return v7;
}

@end