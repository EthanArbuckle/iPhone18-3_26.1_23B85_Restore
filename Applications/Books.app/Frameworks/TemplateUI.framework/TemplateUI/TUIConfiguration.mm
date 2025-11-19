@interface TUIConfiguration
- (BOOL)BOOLForKey:(id)a3;
- (CGSize)sizeForKey:(id)a3;
- (TUIConfiguration)initWithData:(id)a3;
- (UIEdgeInsets)insetsForKey:(id)a3;
- (double)floatForKey:(id)a3;
- (id)sectionForKey:(id)a3;
- (int64_t)integerForKey:(id)a3;
@end

@implementation TUIConfiguration

- (TUIConfiguration)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIConfiguration;
  v5 = [(TUIConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (id)sectionForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_data objectForKeyedSubscript:a3];
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

- (double)floatForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_data objectForKeyedSubscript:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (int64_t)integerForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_data objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (BOOL)BOOLForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_data objectForKeyedSubscript:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (CGSize)sizeForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_data objectForKeyedSubscript:a3];
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

- (UIEdgeInsets)insetsForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_data objectForKeyedSubscript:a3];
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