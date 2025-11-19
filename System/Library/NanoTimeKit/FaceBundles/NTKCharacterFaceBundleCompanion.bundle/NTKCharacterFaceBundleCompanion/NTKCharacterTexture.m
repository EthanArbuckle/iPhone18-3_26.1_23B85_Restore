@interface NTKCharacterTexture
- (NTKCharacterTexture)initWithData:(const void *)a3 length:(int)a4;
@end

@implementation NTKCharacterTexture

- (NTKCharacterTexture)initWithData:(const void *)a3 length:(int)a4
{
  v7.receiver = self;
  v7.super_class = NTKCharacterTexture;
  result = [(NTKCharacterTexture *)&v7 init];
  if (result)
  {
    result->_data = a3;
    result->_length = a4;
  }

  return result;
}

@end