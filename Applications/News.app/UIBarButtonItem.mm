@interface UIBarButtonItem
- (id)fr_barButtonItemView;
@end

@implementation UIBarButtonItem

- (id)fr_barButtonItemView
{
  objc_opt_class();
  v3 = [(UIBarButtonItem *)self valueForKey:@"view"];
  v4 = FCDynamicCast();

  return v4;
}

@end