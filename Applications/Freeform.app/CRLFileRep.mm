@interface CRLFileRep
- (NSString)crlaxDescriptionForConnections;
- (_TtC8Freeform10CRLFileRep)initWithLayout:(id)a3 canvas:(id)a4;
- (_TtC8Freeform11CRLFileItem)item;
- (int64_t)supportedMediaTypes;
- (void)enterPreviewMode;
- (void)processChangedProperty:(unint64_t)a3;
- (void)willBeRemoved;
@end

@implementation CRLFileRep

- (_TtC8Freeform10CRLFileRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_100BABCAC(v5, a4);
}

- (void)willBeRemoved
{
  v2 = self;
  sub_100BABDB0();
}

- (void)processChangedProperty:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLFileRep();
  v4 = v5.receiver;
  [(CRLCanvasRep *)&v5 processChangedProperty:a3];
  if (a3 == 53)
  {
    CRLLinkViewHostingRep.resetLinkView()();
  }
}

- (_TtC8Freeform11CRLFileItem)item
{
  v2 = self;
  v3 = sub_100BAC798();

  return v3;
}

- (NSString)crlaxDescriptionForConnections
{
  v2 = self;
  sub_100BACE08();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (int64_t)supportedMediaTypes
{
  v2 = self;
  v3 = [(CRLCanvasRep *)v2 layout];
  v4 = [(CRLCanvasLayout *)v3 isInGroup];

  if (v4)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

- (void)enterPreviewMode
{
  v6 = self;
  v2 = [(CRLCanvasRep *)v6 info];
  type metadata accessor for CRLBoardItem(0);
  v3 = swift_isaMask & *swift_dynamicCastClassUnconditional();
  v4 = (*(v3 + 624))();
  v5 = swift_unknownObjectRelease();
  if (v4)
  {
    sub_10125C4B0(v5);
  }

  else
  {
    sub_10125D2E4();
  }
}

@end