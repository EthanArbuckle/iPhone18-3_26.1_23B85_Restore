@interface NSKeyedUnarchiver
+ (id)cls_secureUnarchiveObjectOfClass:(Class)class withData:(id)data;
+ (id)cls_secureUnarchiveObjectOfClasses:(id)classes withData:(id)data;
@end

@implementation NSKeyedUnarchiver

+ (id)cls_secureUnarchiveObjectOfClass:(Class)class withData:(id)data
{
  if (class)
  {
    dataCopy = data;
    dataCopy2 = [NSSet setWithObject:class];
    v8 = [self cls_secureUnarchiveObjectOfClasses:dataCopy2 withData:dataCopy];
  }

  else
  {
    dataCopy2 = data;
    v8 = [self cls_secureUnarchiveObjectOfClasses:0 withData:dataCopy2];
  }

  return v8;
}

+ (id)cls_secureUnarchiveObjectOfClasses:(id)classes withData:(id)data
{
  classesCopy = classes;
  dataCopy = data;
  if ([dataCopy length])
  {
    v12 = 0;
    v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:dataCopy error:&v12];
    v8 = v12;
    v9 = v8;
    if (v8)
    {
      [v8 cls_debug:CLSLogDefault];
      v10 = 0;
    }

    else
    {
      v10 = [v7 decodeObjectOfClasses:classesCopy forKey:NSKeyedArchiveRootObjectKey];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end