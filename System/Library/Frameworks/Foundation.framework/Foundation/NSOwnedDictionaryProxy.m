@interface NSOwnedDictionaryProxy
- (NSOwnedDictionaryProxy)initWithOwner:(id)a3;
- (NSOwnedDictionaryProxy)retain;
- (void)release;
- (void)superRelease;
@end

@implementation NSOwnedDictionaryProxy

- (NSOwnedDictionaryProxy)retain
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = self->_owner;
  v5.receiver = self;
  v5.super_class = NSOwnedDictionaryProxy;
  return [(NSOwnedDictionaryProxy *)&v5 retain];
}

- (void)release
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSOwnedDictionaryProxy;
  [(NSOwnedDictionaryProxy *)&v3 release];
}

- (void)superRelease
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = NSOwnedDictionaryProxy;
  [(NSOwnedDictionaryProxy *)&v2 release];
}

- (NSOwnedDictionaryProxy)initWithOwner:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSOwnedDictionaryProxy;
  result = [(NSOwnedDictionaryProxy *)&v5 init];
  if (result)
  {
    result->_owner = a3;
  }

  return result;
}

@end