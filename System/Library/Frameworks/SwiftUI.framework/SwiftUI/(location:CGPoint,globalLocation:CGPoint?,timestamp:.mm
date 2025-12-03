@interface (location:CGPoint,globalLocation:CGPoint?,timestamp:
- (unint64_t)Date);
- (void)Date);
@end

@implementation (location:CGPoint,globalLocation:CGPoint?,timestamp:

- (unint64_t)Date)
{
  result = lazy protocol witness table cache variable for type [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)] and conformance [A])
  {
    type metadata accessor for CGPoint?(255, &lazy cache variable for type metadata for [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)], type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date), MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)] and conformance [A]);
  }

  return result;
}

- (void)Date)
{
  if (!*a2)
  {
    type metadata accessor for CGPoint?(255, &lazy cache variable for type metadata for [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)], type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date), MEMORY[0x1E69E62F8]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)] and conformance [A]();
    v9 = a3(self, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

@end