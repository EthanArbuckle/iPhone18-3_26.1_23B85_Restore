@interface CFPrefsSynchronizer
@end

@implementation CFPrefsSynchronizer

void __28___CFPrefsSynchronizer_init__block_invoke()
{
  v0 = +[_CFPrefsSynchronizer sharedInstance];

  [(_CFPrefsSynchronizer *)v0 synchronize];
}

_CFPrefsSynchronizer *__38___CFPrefsSynchronizer_sharedInstance__block_invoke()
{
  result = objc_alloc_init(_CFPrefsSynchronizer);
  sharedInstance_shared = result;
  return result;
}

@end