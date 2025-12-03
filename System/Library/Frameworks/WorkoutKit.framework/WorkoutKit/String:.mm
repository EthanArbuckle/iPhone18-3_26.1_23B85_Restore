@interface String:
- (Class)NSObject;
@end

@implementation String:

- (Class)NSObject
{
  v1 = *(self + 32);
  v2 = *(self + 40);

  v4 = v1(v3);

  if (v4)
  {
    type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

@end