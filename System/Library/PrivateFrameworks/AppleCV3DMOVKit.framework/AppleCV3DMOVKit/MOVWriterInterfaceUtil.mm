@interface MOVWriterInterfaceUtil
+ (id)makeDeviceString;
@end

@implementation MOVWriterInterfaceUtil

+ (id)makeDeviceString
{
  v10 = &unk_28521AC78;
  sub_24019C750(&v10, __p);
  nullsub_2(&v10);
  v2 = MEMORY[0x277CCACA8];
  v3 = v12;
  v4 = __p[0];
  v5 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v3 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = v4;
  }

  v7 = [v2 stringWithCString:v6 encoding:v5];
  if (v12 < 0)
  {
    v9 = v7;
    operator delete(__p[0]);
    v7 = v9;
  }

  return v7;
}

@end