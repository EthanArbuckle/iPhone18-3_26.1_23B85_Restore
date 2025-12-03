@interface NTKCharacterTexture
- (NTKCharacterTexture)initWithData:(const void *)data length:(int)length;
@end

@implementation NTKCharacterTexture

- (NTKCharacterTexture)initWithData:(const void *)data length:(int)length
{
  v7.receiver = self;
  v7.super_class = NTKCharacterTexture;
  result = [(NTKCharacterTexture *)&v7 init];
  if (result)
  {
    result->_data = data;
    result->_length = length;
  }

  return result;
}

@end