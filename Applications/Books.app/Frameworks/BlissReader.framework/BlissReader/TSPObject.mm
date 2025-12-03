@interface TSPObject
- (PFDContext)drmContext;
@end

@implementation TSPObject

- (PFDContext)drmContext
{
  objc_opt_class();
  [(TSPObject *)self documentRoot];
  bookDescription = [TSUCheckedDynamicCast() bookDescription];

  return [bookDescription drmContext];
}

@end