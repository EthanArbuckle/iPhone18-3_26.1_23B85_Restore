@interface _NSAttributeDescriptor
+ (id)descriptorForAttributeKey:(id)key;
+ (void)initialize;
- (_NSAttributeDescriptor)initWithName:(id)name;
- (void)dealloc;
@end

@implementation _NSAttributeDescriptor

+ (void)initialize
{
  if (_NSAttributeDescriptor == self)
  {
    objc_opt_class();
    objc_opt_class();

    objc_opt_class();
  }
}

- (_NSAttributeDescriptor)initWithName:(id)name
{
  v4 = [(_NSAttributeDescriptor *)self init];
  if (v4)
  {
    v4->_name = [name copy];
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

+ (id)descriptorForAttributeKey:(id)key
{
  keyCopy = key;
  __key[2] = *MEMORY[0x1E69E9840];
  if (([key hasPrefix:@"NS"] & 1) == 0)
  {
    if ([keyCopy length] && -[NSCharacterSet characterIsMember:](+[NSCharacterSet lowercaseLetterCharacterSet](NSCharacterSet, "lowercaseLetterCharacterSet"), "characterIsMember:", objc_msgSend(keyCopy, "characterAtIndex:", 0)))
    {
      v4 = [keyCopy mutableCopy];
      [v4 replaceCharactersInRange:0 withString:{1, objc_msgSend(objc_msgSend(keyCopy, "substringWithRange:", 0, 1), "capitalizedString")}];
      [v4 insertString:@"NS" atIndex:0];
      [v4 appendString:@"AttributeName"];
      keyCopy = v4;
    }

    else
    {
      keyCopy = 0;
    }
  }

  result = [keyCopy length];
  if (result)
  {
    __key[0] = keyCopy;
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