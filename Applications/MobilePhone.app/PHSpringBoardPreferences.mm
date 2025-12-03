@interface PHSpringBoardPreferences
+ (id)sharedPreferences;
@end

@implementation PHSpringBoardPreferences

+ (id)sharedPreferences
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__PHSpringBoardPreferences_sharedPreferences__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedPreferences_onceToken != -1)
  {
    dispatch_once(&sharedPreferences_onceToken, block);
  }

  v2 = sharedPreferences_sPHSpringBoardPreferences;

  return v2;
}

uint64_t __45__PHSpringBoardPreferences_sharedPreferences__block_invoke(uint64_t a1)
{
  sharedPreferences_sPHSpringBoardPreferences = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

@end