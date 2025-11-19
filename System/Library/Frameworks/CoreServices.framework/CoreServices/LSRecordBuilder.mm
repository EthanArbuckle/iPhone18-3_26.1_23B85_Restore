@interface LSRecordBuilder
+ (id)recordBuilderForType:(unint64_t)a3;
@end

@implementation LSRecordBuilder

+ (id)recordBuilderForType:(unint64_t)a3
{
  if (a3)
  {
    if (a3 - 1 < 2)
    {
      abort();
    }
  }

  else
  {
    a1 = objc_alloc_init(LSBundleRecordBuilder);
  }

  return a1;
}

@end