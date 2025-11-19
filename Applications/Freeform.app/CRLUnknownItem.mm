@interface CRLUnknownItem
- (Class)layoutClass;
- (Class)repClass;
@end

@implementation CRLUnknownItem

- (Class)layoutClass
{
  type metadata accessor for CRLUnknownLayout();

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  type metadata accessor for CRLUnknownRep();

  return swift_getObjCClassFromMetadata();
}

@end