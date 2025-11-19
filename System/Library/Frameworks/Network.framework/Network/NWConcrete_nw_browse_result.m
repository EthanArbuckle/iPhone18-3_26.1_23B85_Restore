@interface NWConcrete_nw_browse_result
- (NSString)description;
- (id)redactedDescription;
- (void)dealloc;
@end

@implementation NWConcrete_nw_browse_result

- (NSString)description
{
  v2 = *MEMORY[0x1E695E480];
  description = nw_browse_result_get_description(self, 0);
  v4 = CFStringCreateWithCString(v2, description, 0x8000100u);

  return v4;
}

- (void)dealloc
{
  v3 = *(self + 4);
  if (v3)
  {
    free(v3);
    *(self + 4) = 0;
  }

  v4 = *(self + 5);
  if (v4)
  {
    free(v4);
    *(self + 5) = 0;
  }

  v5 = *(self + 3);
  *(self + 3) = 0;

  v6 = *(self + 2);
  *(self + 2) = 0;

  v7.receiver = self;
  v7.super_class = NWConcrete_nw_browse_result;
  [(NWConcrete_nw_browse_result *)&v7 dealloc];
}

- (id)redactedDescription
{
  v2 = *MEMORY[0x1E695E480];
  description = nw_browse_result_get_description(self, 1);
  v4 = CFStringCreateWithCString(v2, description, 0x8000100u);

  return v4;
}

@end