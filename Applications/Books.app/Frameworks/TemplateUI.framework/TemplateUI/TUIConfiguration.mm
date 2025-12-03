@interface TUIConfiguration
- (BOOL)BOOLForKey:(id)key;
- (CGSize)sizeForKey:(id)key;
- (TUIConfiguration)initWithData:(id)data;
- (UIEdgeInsets)insetsForKey:(id)key;
- (double)floatForKey:(id)key;
- (id)sectionForKey:(id)key;
- (int64_t)integerForKey:(id)key;
@end

@implementation TUIConfiguration

- (TUIConfiguration)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = TUIConfiguration;
  v5 = [(TUIConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy copy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (id)sectionForKey:(id)key
{
  v3 = [(NSDictionary *)self->_data objectForKeyedSubscript:key];
  if (v3)
  {
    v4 = [[TUIConfiguration alloc] initWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)floatForKey:(id)key
{
  v3 = [(NSDictionary *)self->_data objectForKeyedSubscript:key];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (int64_t)integerForKey:(id)key
{
  v3 = [(NSDictionary *)self->_data objectForKeyedSubscript:key];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)BOOLForKey:(id)key
{
  v3 = [(NSDictionary *)self->_data objectForKeyedSubscript:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (CGSize)sizeForKey:(id)key
{
  v3 = [(NSDictionary *)self->_data objectForKeyedSubscript:key];
  v4 = v3;
  if (v3)
  {
    [v3 CGSizeValue];
    width = v5;
    height = v7;
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (UIEdgeInsets)insetsForKey:(id)key
{
  v3 = [(NSDictionary *)self->_data objectForKeyedSubscript:key];
  v4 = v3;
  if (v3)
  {
    [v3 UIEdgeInsetsValue];
    top = v5;
    left = v7;
    bottom = v9;
    right = v11;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v13 = top;
  v14 = left;
  v15 = bottom;
  v16 = right;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

@end