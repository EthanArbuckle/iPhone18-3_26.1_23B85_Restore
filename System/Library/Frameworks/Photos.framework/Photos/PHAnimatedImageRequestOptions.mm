@interface PHAnimatedImageRequestOptions
- (PHAnimatedImageRequestOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PHAnimatedImageRequestOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PHAnimatedImageRequestOptions;
  v4 = [(PHImageRequestOptions *)&v6 copyWithZone:zone];
  [v4 setAllowPreCaching:self->_allowPreCaching];
  [v4 setUseSharedImageDecoding:self->_useSharedImageDecoding];
  return v4;
}

- (PHAnimatedImageRequestOptions)init
{
  v3.receiver = self;
  v3.super_class = PHAnimatedImageRequestOptions;
  result = [(PHImageRequestOptions *)&v3 init];
  if (result)
  {
    result->_allowPreCaching = 1;
    result->_useSharedImageDecoding = 0;
  }

  return result;
}

@end