@interface CNRecentCallCountAndName
+ (id)instanceWithName:(id)a3 callCount:(unint64_t)a4;
@end

@implementation CNRecentCallCountAndName

+ (id)instanceWithName:(id)a3 callCount:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(CNRecentCallCountAndName);
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &stru_1F0CE7398;
  }

  objc_storeStrong(&v6->_speakableName, v8);

  v7->_callCount = a4;

  return v7;
}

@end