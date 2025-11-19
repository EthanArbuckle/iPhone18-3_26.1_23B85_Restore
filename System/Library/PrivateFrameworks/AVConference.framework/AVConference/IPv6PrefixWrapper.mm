@interface IPv6PrefixWrapper
- (IPv6PrefixWrapper)initWithPrefix:(id *)a3;
- (void)dealloc;
@end

@implementation IPv6PrefixWrapper

- (IPv6PrefixWrapper)initWithPrefix:(id *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = IPv6PrefixWrapper;
  v4 = [(IPv6PrefixWrapper *)&v7 init];
  if (v4)
  {
    v5 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    v4->_ipv6Prefix = v5;
    if (v5)
    {
      *v5 = *a3;
      return v4;
    }

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  free(self->_ipv6Prefix);
  v3.receiver = self;
  v3.super_class = IPv6PrefixWrapper;
  [(IPv6PrefixWrapper *)&v3 dealloc];
}

@end