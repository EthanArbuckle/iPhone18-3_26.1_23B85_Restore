@interface String:
- (uint64_t)Any;
- (uint64_t)String;
- (unint64_t)Any;
- (void)Any;
- (void)Encodable;
@end

@implementation String:

- (void)Encodable
{
  if (!lazy cache variable for type metadata for [String : Encodable])
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for Encodable);
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : Encodable]);
    }
  }
}

- (void)Any
{
  if (!lazy cache variable for type metadata for [String : Any])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : Any]);
    }
  }
}

- (unint64_t)Any
{
  result = lazy protocol witness table cache variable for type [String : Any].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [String : Any].Keys and conformance [A : B].Keys)
  {
    type metadata accessor for [String : Any](255, &lazy cache variable for type metadata for [String : Any].Keys, MEMORY[0x1E69E5D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : Any].Keys and conformance [A : B].Keys);
  }

  return result;
}

- (uint64_t)Any
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

- (uint64_t)String
{
  result = *a1;
  if (!result)
  {
    _sSDySSypGMaTm_0(255, &lazy cache variable for type metadata for [String : String]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

@end