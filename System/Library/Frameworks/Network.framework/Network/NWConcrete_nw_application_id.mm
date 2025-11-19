@interface NWConcrete_nw_application_id
- (NSString)description;
- (void)dealloc;
@end

@implementation NWConcrete_nw_application_id

- (void)dealloc
{
  v3 = *(self + 9);
  if (v3)
  {
    free(v3);
    *(self + 9) = 0;
  }

  v4 = *(self + 10);
  if (v4)
  {
    free(v4);
    *(self + 10) = 0;
  }

  v5.receiver = self;
  v5.super_class = NWConcrete_nw_application_id;
  [(NWConcrete_nw_application_id *)&v5 dealloc];
}

- (NSString)description
{
  if (uuid_is_null(self + 88))
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<nw_application_id %p>", self);
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self + 88];
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<nw_application_id %p p:%@>", self, v4);

    v3 = v5;
  }

  return v3;
}

@end