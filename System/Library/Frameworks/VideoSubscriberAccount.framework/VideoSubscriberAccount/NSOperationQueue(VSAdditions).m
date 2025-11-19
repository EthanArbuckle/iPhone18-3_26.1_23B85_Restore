@interface NSOperationQueue(VSAdditions)
+ (id)queueWithName:()VSAdditions;
@end

@implementation NSOperationQueue(VSAdditions)

+ (id)queueWithName:()VSAdditions
{
  v3 = MEMORY[0x277CCABD8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setName:v4];

  return v5;
}

@end