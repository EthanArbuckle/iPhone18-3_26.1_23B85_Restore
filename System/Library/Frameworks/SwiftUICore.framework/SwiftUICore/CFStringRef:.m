@interface CFStringRef:
- (void)Any;
- (void)CGFloat;
@end

@implementation CFStringRef:

- (void)Any
{
  if (!lazy cache variable for type metadata for [CFStringRef : Any])
  {
    type metadata accessor for CFStringRef(255);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CFStringRef : Any]);
    }
  }
}

- (void)CGFloat
{
  if (!lazy cache variable for type metadata for [CFStringRef : CGFloat])
  {
    type metadata accessor for CFStringRef(255);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [CFStringRef : CGFloat]);
    }
  }
}

@end