@interface NWConcrete_nw_content_context
- (NSString)description;
- (void)dealloc;
@end

@implementation NWConcrete_nw_content_context

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NWConcrete_nw_content_context;
  [(NWConcrete_nw_content_context *)&v2 dealloc];
}

- (NSString)description
{
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<nw_content_context %s priority %f expiration %llu>", self + 24, *(self + 10), *(self + 8));

  return v2;
}

@end