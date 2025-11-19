@interface TSPObject
- (PFDContext)drmContext;
@end

@implementation TSPObject

- (PFDContext)drmContext
{
  objc_opt_class();
  [(TSPObject *)self documentRoot];
  v3 = [TSUCheckedDynamicCast() bookDescription];

  return [v3 drmContext];
}

@end