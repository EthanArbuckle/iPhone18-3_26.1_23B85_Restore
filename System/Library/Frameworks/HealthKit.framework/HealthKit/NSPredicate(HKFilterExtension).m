@interface NSPredicate(HKFilterExtension)
- (uint64_t)hk_filterRepresentationForDataTypes:()HKFilterExtension isSubpredicate:;
@end

@implementation NSPredicate(HKFilterExtension)

- (uint64_t)hk_filterRepresentationForDataTypes:()HKFilterExtension isSubpredicate:
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end