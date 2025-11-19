@interface NSKeyedUnarchiver
+ (id)crl_securelyUnarchiveObjectWithFile:(id)a3 ofClasses:(id)a4;
+ (id)crl_securelyUnarchiveRoot:(id)a3 forClass:(Class)a4;
+ (id)crl_securelyUnarchiveRoot:(id)a3 forClasses:(id)a4;
@end

@implementation NSKeyedUnarchiver

+ (id)crl_securelyUnarchiveRoot:(id)a3 forClass:(Class)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [NSSet setWithObject:a4];
  v8 = [v6 crl_securelyUnarchiveRoot:v5 forClasses:v7];

  return v8;
}

+ (id)crl_securelyUnarchiveRoot:(id)a3 forClasses:(id)a4
{
  v5 = a3;
  v11 = 0;
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:a4 fromData:v5 error:&v11];
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
      sub_10131C9E0(v5, v8, v7);
    }

    if (qword_101AD5A08 != -1)
    {
      sub_10131CAA8();
    }

    v9 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEBUG))
    {
      sub_10131CAD0(v5, v9);
    }
  }

  return v6;
}

+ (id)crl_securelyUnarchiveObjectWithFile:(id)a3 ofClasses:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v7 = [NSData dataWithContentsOfFile:v5 options:0 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [objc_opt_class() crl_securelyUnarchiveRoot:v7 forClasses:v6];
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
      sub_10131CB70(v5, v10, v8);
    }

    v9 = 0;
  }

  return v9;
}

@end