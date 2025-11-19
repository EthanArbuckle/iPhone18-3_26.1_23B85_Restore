@interface NSUserDefaults(NSKeyValueCoding)
- (uint64_t)setValue:()NSKeyValueCoding forKey:;
- (uint64_t)valueForKey:()NSKeyValueCoding;
@end

@implementation NSUserDefaults(NSKeyValueCoding)

- (uint64_t)valueForKey:()NSKeyValueCoding
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a3 length];
  if (v5 && (v6 = v5, [a3 characterAtIndex:0] == 64) && (v7 = objc_msgSend(a3, "_newSubstringWithRange:zone:", 1, v6 - 1, 0)) != 0)
  {
    v8 = v7;
    v11.receiver = a1;
    v11.super_class = &off_1EEF970D8;
    v9 = objc_msgSendSuper2(&v11, sel_valueForKey_, v7);

    return v9;
  }

  else
  {

    return [a1 objectForKey:a3];
  }
}

- (uint64_t)setValue:()NSKeyValueCoding forKey:
{
  if (a3)
  {
    return [a1 setObject:? forKey:?];
  }

  else
  {
    return [a1 removeObjectForKey:a4];
  }
}

@end