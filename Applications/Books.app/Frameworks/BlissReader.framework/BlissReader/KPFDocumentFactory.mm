@interface KPFDocumentFactory
+ (id)createDocumentWithKPFBundle:(id)bundle drmContext:(id)context;
@end

@implementation KPFDocumentFactory

+ (id)createDocumentWithKPFBundle:(id)bundle drmContext:(id)context
{
  v6 = [bundle pathForResource:@"header" ofType:@"json"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    if (context)
    {
LABEL_3:
      v9 = [context dataWithContentsOfFile:v8 error:0];
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [bundle pathForResource:@"kpf" ofType:@"json"];
    if (!v10)
    {
      v10 = [bundle pathForResource:&stru_471858 ofType:@"json"];
    }

    v8 = v10;
    if (context)
    {
      goto LABEL_3;
    }
  }

  v9 = [NSData dataWithContentsOfFile:v8];
LABEL_8:
  if (v9)
  {
    v11 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 == 0;
  v13 = v7 == 0;
  v14 = off_459670;
  if (!v12)
  {
    v14 = off_459678;
  }

  v15 = [objc_alloc(*v14) initWithKPFBundle:bundle kpfDictionary:v11 drmContext:context];
  [v15 setIsLegacy:v13];
  return v15;
}

@end