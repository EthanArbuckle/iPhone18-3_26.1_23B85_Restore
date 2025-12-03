@interface LSRecordBuilder
+ (id)recordBuilderForType:(unint64_t)type;
@end

@implementation LSRecordBuilder

+ (id)recordBuilderForType:(unint64_t)type
{
  if (type)
  {
    if (type - 1 < 2)
    {
      abort();
    }
  }

  else
  {
    self = objc_alloc_init(LSBundleRecordBuilder);
  }

  return self;
}

@end