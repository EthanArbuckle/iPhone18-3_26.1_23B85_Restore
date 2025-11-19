@interface UnsafeRawPointer:
- (void)String;
@end

@implementation UnsafeRawPointer:

- (void)String
{
  if (!lazy cache variable for type metadata for ThreadSpecific<[UnsafeRawPointer : String]>)
  {
    type metadata accessor for [UnsafeRawPointer : String]();
    v0 = type metadata accessor for ThreadSpecific();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ThreadSpecific<[UnsafeRawPointer : String]>);
    }
  }
}

@end