@interface QLRemoteItemTransformer
+ (id)allowedOutputClasses;
@end

@implementation QLRemoteItemTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

@end