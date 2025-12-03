@interface NSKeyedUnarchiver
+ (id)crl_securelyUnarchiveObjectWithFile:(id)file ofClasses:(id)classes;
+ (id)crl_securelyUnarchiveRoot:(id)root forClass:(Class)class;
+ (id)crl_securelyUnarchiveRoot:(id)root forClasses:(id)classes;
@end

@implementation NSKeyedUnarchiver

+ (id)crl_securelyUnarchiveRoot:(id)root forClass:(Class)class
{
  rootCopy = root;
  v6 = objc_opt_class();
  v7 = [NSSet setWithObject:class];
  v8 = [v6 crl_securelyUnarchiveRoot:rootCopy forClasses:v7];

  return v8;
}

+ (id)crl_securelyUnarchiveRoot:(id)root forClasses:(id)classes
{
  rootCopy = root;
  v11 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:classes fromData:rootCopy error:&v11];
  v7 = v11;
  if (!v6)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10131C9B8();
    }

    v8 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10131C9E0(rootCopy, v8, v7);
    }

    if (qword_101AD5A08 != -1)
    {
      sub_10131CAA8();
    }

    v9 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEBUG))
    {
      sub_10131CAD0(rootCopy, v9);
    }
  }

  return v6;
}

+ (id)crl_securelyUnarchiveObjectWithFile:(id)file ofClasses:(id)classes
{
  fileCopy = file;
  classesCopy = classes;
  v12 = 0;
  v7 = [NSData dataWithContentsOfFile:fileCopy options:0 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [objc_opt_class() crl_securelyUnarchiveRoot:v7 forClasses:classesCopy];
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10131CB48();
    }

    v10 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10131CB70(fileCopy, v10, v8);
    }

    v9 = 0;
  }

  return v9;
}

@end