@interface AVInternetDateFormatter
+ (id)internetDateFormatter;
- (AVInternetDateFormatter)init;
@end

@implementation AVInternetDateFormatter

- (AVInternetDateFormatter)init
{
  v6.receiver = self;
  v6.super_class = AVInternetDateFormatter;
  v2 = [(AVInternetDateFormatter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AC80]);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v3;
  }

  return v2;
}

+ (id)internetDateFormatter
{
  if (internetDateFormatter_onceToken != -1)
  {
    dispatch_once(&internetDateFormatter_onceToken, &__block_literal_global_32252);
  }

  v3 = internetDateFormatter__shared;

  return v3;
}

uint64_t __48__AVInternetDateFormatter_internetDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(AVInternetDateFormatter);
  v1 = internetDateFormatter__shared;
  internetDateFormatter__shared = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end