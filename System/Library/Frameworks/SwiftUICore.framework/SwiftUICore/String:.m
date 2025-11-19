@interface String:
- (uint64_t)AccessibilityCustomAttributes.Value;
- (uint64_t)Any;
- (uint64_t)CGFloat;
- (unint64_t)AccessibilityCustomAttributes.Value;
- (unint64_t)String;
- (void)AccessibilityCustomAttributes.Value;
- (void)Any;
- (void)CGFloat;
- (void)Double;
- (void)String;
@end

@implementation String:

- (uint64_t)AccessibilityCustomAttributes.Value
{
  if (a3)
  {
  }

  return result;
}

- (uint64_t)CGFloat
{
  type metadata accessor for (String, [String : CGFloat])();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

- (void)CGFloat
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _DictionaryStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

- (void)Any
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, [String : Any]>)
  {
    type metadata accessor for CFStringRef(255);
    type metadata accessor for [String : Any]();
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, [String : Any]>);
    }
  }
}

- (void)Double
{
  if (!lazy cache variable for type metadata for JSONCodable<[String : Double]>)
  {
    type metadata accessor for [Int : CGFloat](255, &lazy cache variable for type metadata for [String : Double]);
    v0 = type metadata accessor for JSONCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for JSONCodable<[String : Double]>);
    }
  }
}

- (unint64_t)AccessibilityCustomAttributes.Value
{
  result = lazy protocol witness table cache variable for type [String : AccessibilityCustomAttributes.Value].Index and conformance [A : B].Index;
  if (!lazy protocol witness table cache variable for type [String : AccessibilityCustomAttributes.Value].Index and conformance [A : B].Index)
  {
    type metadata accessor for [String : AccessibilityCustomAttributes.Value](255, &lazy cache variable for type metadata for [String : AccessibilityCustomAttributes.Value].Index, MEMORY[0x1E69E5DC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : AccessibilityCustomAttributes.Value].Index and conformance [A : B].Index);
  }

  return result;
}

- (void)AccessibilityCustomAttributes.Value
{
  if (!*a2)
  {
    v6 = type metadata accessor for AccessibilityCustomAttributes.Value();
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

- (uint64_t)Any
{
  type metadata accessor for (CFStringRef, [String : Any])(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

- (void)String
{
  if (!lazy cache variable for type metadata for [String : String])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : String]);
    }
  }
}

- (unint64_t)String
{
  result = lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B])
  {
    type metadata accessor for [String : String]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  }

  return result;
}

@end