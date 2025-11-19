@interface ObjectIdentifier:
- (void)AccessibilitySortCache;
@end

@implementation ObjectIdentifier:

- (void)AccessibilitySortCache
{
  if (!lazy cache variable for type metadata for [ObjectIdentifier : AccessibilitySortCache])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ObjectIdentifier : AccessibilitySortCache]);
    }
  }
}

@end