@interface NSDictionary(NSKeyValueCoding)
- (id)valueForKeyPath:()NSKeyValueCoding;
- (uint64_t)valueForKey:()NSKeyValueCoding;
@end

@implementation NSDictionary(NSKeyValueCoding)

- (uint64_t)valueForKey:()NSKeyValueCoding
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a3 length];
  if (v5 && (v6 = v5, [a3 characterAtIndex:0] == 64) && (v7 = objc_msgSend(a3, "_newSubstringWithRange:zone:", 1, v6 - 1, 0)) != 0)
  {
    v8 = v7;
    v11.receiver = self;
    v11.super_class = NSDictionary_0;
    v9 = objc_msgSendSuper2(&v11, sel_valueForKey_, v7);

    return v9;
  }

  else
  {

    return [self objectForKey:a3];
  }
}

- (id)valueForKeyPath:()NSKeyValueCoding
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [a3 length];
  if (v5)
  {
    v6 = v5;
    if ([a3 characterAtIndex:0] == 64)
    {
      v7 = [a3 rangeOfString:@"." options:2 range:{0, v6}];
      if (v8)
      {
        v9 = v7 + 1;
        v10 = [a3 _newSubstringWithRange:1 zone:{v7 - 1, 0}];
        v11 = [a3 _newSubstringWithRange:v9 zone:{v6 - v9, 0}];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 lengthOfBytesUsingEncoding:4];
          v14 = MEMORY[0x1EEE9AC00](v13);
          v16 = &v25 - v15;
          [v10 getCString:&v25 - v15 maxLength:v17 + 1 encoding:{4, v14}];
          v18 = objc_opt_class();
          if (!NSKeyValueMethodForPattern(v18, "%sForKeyPath:", v16))
          {
            v19 = objc_opt_class();
            if (!NSKeyValueMethodForPattern(v19, "_%sForKeyPath:", v16))
            {

              v23 = v10;
              v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"[<%@ %p> valueForKeyPath:]: this class does not implement the %@ operation.", objc_opt_class(), self, v10), 0}];
              objc_exception_throw(v24);
            }
          }

          method_invoke();
          v21 = v20;

          goto LABEL_12;
        }
      }

      else
      {
        v10 = [a3 _newSubstringWithRange:1 zone:{v6 - 1, 0}];
      }

      v27.receiver = self;
      v27.super_class = NSDictionary_0;
      v21 = objc_msgSendSuper2(&v27, sel_valueForKey_, v10);
LABEL_12:

      return v21;
    }
  }

  v21 = [self objectForKey:a3];
  if (!v21)
  {
    v26.receiver = self;
    v26.super_class = NSDictionary_0;
    return objc_msgSendSuper2(&v26, sel_valueForKeyPath_, a3);
  }

  return v21;
}

@end