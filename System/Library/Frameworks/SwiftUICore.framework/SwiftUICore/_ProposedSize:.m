@interface _ProposedSize:
- (void)CGSize;
@end

@implementation _ProposedSize:

- (void)CGSize
{
  if (!lazy cache variable for type metadata for [_ProposedSize : CGSize])
  {
    type metadata accessor for CGSize(255);
    lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [_ProposedSize : CGSize]);
    }
  }
}

@end