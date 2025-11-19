@interface PlaceholderBuilder
- (PlaceholderBuilder)init;
@end

@implementation PlaceholderBuilder

- (PlaceholderBuilder)init
{
  v5.receiver = self;
  v5.super_class = PlaceholderBuilder;
  v2 = [(PlaceholderBuilder *)&v5 init];
  if (v2)
  {
    v3 = ASDLogHandleForCategory();
    v2->_signpostID = os_signpost_id_make_with_pointer(v3, v2);
  }

  return v2;
}

@end