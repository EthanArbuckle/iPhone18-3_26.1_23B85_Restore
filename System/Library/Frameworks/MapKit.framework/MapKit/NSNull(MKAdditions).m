@interface NSNull(MKAdditions)
+ (id)_mapkit_fakeNil;
@end

@implementation NSNull(MKAdditions)

+ (id)_mapkit_fakeNil
{
  if (_mapkit_fakeNil_onceToken != -1)
  {
    dispatch_once(&_mapkit_fakeNil_onceToken, &__block_literal_global_127);
  }

  v1 = _mapkit_fakeNil_fakeNil;

  return v1;
}

@end