@interface NSKeyedUnarchiver
+ (id)cls_secureUnarchiveObjectOfClass:(Class)a3 withData:(id)a4;
+ (id)cls_secureUnarchiveObjectOfClasses:(id)a3 withData:(id)a4;
@end

@implementation NSKeyedUnarchiver

+ (id)cls_secureUnarchiveObjectOfClass:(Class)a3 withData:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = [NSSet setWithObject:a3];
    v8 = [a1 cls_secureUnarchiveObjectOfClasses:v7 withData:v6];
  }

  else
  {
    v7 = a4;
    v8 = [a1 cls_secureUnarchiveObjectOfClasses:0 withData:v7];
  }

  return v8;
}

+ (id)cls_secureUnarchiveObjectOfClasses:(id)a3 withData:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v12 = 0;
    v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:&v12];
    v8 = v12;
    v9 = v8;
    if (v8)
    {
      [v8 cls_debug:CLSLogDefault];
      v10 = 0;
    }

    else
    {
      v10 = [v7 decodeObjectOfClasses:v5 forKey:NSKeyedArchiveRootObjectKey];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end