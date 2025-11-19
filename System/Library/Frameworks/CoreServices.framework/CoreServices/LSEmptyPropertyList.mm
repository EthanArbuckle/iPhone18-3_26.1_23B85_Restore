@interface LSEmptyPropertyList
@end

@implementation LSEmptyPropertyList

void __38___LSEmptyPropertyList_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_LSEmptyPropertyList);
  v1 = +[_LSEmptyPropertyList sharedInstance]::result;
  +[_LSEmptyPropertyList sharedInstance]::result = v0;
}

@end