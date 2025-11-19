@interface _NSAttributeDescriptor
+ (id)descriptorForAttributeKey:(id)a3;
+ (void)initialize;
- (_NSAttributeDescriptor)initWithName:(id)a3;
- (void)dealloc;
@end

@implementation _NSAttributeDescriptor

+ (void)initialize
{
  if (_NSAttributeDescriptor == a1)
  {
    objc_opt_class();
    objc_opt_class();

    objc_opt_class();
  }
}

- (_NSAttributeDescriptor)initWithName:(id)a3
{
  v4 = [(_NSAttributeDescriptor *)self init];
  if (v4)
  {
    v4->_name = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSAttributeDescriptor;
  [(_NSAttributeDescriptor *)&v3 dealloc];
}

+ (id)descriptorForAttributeKey:(id)a3
{
  v3 = a3;
  __key[2] = *MEMORY[0x1E69E9840];
  if (([a3 hasPrefix:@"NS"] & 1) == 0)
  {
    if ([v3 length] && -[NSCharacterSet characterIsMember:](+[NSCharacterSet lowercaseLetterCharacterSet](NSCharacterSet, "lowercaseLetterCharacterSet"), "characterIsMember:", objc_msgSend(v3, "characterAtIndex:", 0)))
    {
      v4 = [v3 mutableCopy];
      [v4 replaceCharactersInRange:0 withString:{1, objc_msgSend(objc_msgSend(v3, "substringWithRange:", 0, 1), "capitalizedString")}];
      [v4 insertString:@"NS" atIndex:0];
      [v4 appendString:@"AttributeName"];
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  result = [v3 length];
  if (result)
  {
    __key[0] = v3;
    __key[1] = 0;
    result = bsearch_b(__key, &attributeKeyToDescriptor, 0xCuLL, 0x10uLL, &__block_literal_global_27);
    if (result)
    {
      return *(result + 1);
    }
  }

  return result;
}

@end