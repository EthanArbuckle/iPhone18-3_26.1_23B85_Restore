@interface CFStringRef?:
- (void)Int;
@end

@implementation CFStringRef?:

- (void)Int
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, [CFStringRef? : Int]>)
  {
    type metadata accessor for CFStringRef(255);
    type metadata accessor for _DictionaryStorage<CFStringRef?, Int>(255, &lazy cache variable for type metadata for [CFStringRef? : Int], MEMORY[0x1E69E5E28]);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, [CFStringRef? : Int]>);
    }
  }
}

@end