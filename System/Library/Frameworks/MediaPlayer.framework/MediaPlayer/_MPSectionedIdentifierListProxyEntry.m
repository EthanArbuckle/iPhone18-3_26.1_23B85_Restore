@interface _MPSectionedIdentifierListProxyEntry
+ (id)endEntry;
+ (id)startEntry;
- (NSString)description;
@end

@implementation _MPSectionedIdentifierListProxyEntry

- (NSString)description
{
  entryType = self->_entryType;
  if (entryType > 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7678408[entryType];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p entryType=%@>", objc_opt_class(), self, v3];
}

+ (id)endEntry
{
  v2 = objc_alloc_init(_MPSectionedIdentifierListProxyEntry);
  v2->_entryType = 5;

  return v2;
}

+ (id)startEntry
{
  v2 = objc_alloc_init(_MPSectionedIdentifierListProxyEntry);
  v2->_entryType = 1;

  return v2;
}

@end