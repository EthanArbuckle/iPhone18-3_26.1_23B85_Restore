@interface CRLFileRep
- (NSString)crlaxDescriptionForConnections;
- (_TtC8Freeform10CRLFileRep)initWithLayout:(id)layout canvas:(id)canvas;
- (_TtC8Freeform11CRLFileItem)item;
- (int64_t)supportedMediaTypes;
- (void)enterPreviewMode;
- (void)processChangedProperty:(unint64_t)property;
- (void)willBeRemoved;
@end

@implementation CRLFileRep

- (_TtC8Freeform10CRLFileRep)initWithLayout:(id)layout canvas:(id)canvas
{
  layoutCopy = layout;
  canvasCopy = canvas;
  return sub_100BABCAC(layoutCopy, canvas);
}

- (void)willBeRemoved
{
  selfCopy = self;
  sub_100BABDB0();
}

- (void)processChangedProperty:(unint64_t)property
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLFileRep();
  v4 = v5.receiver;
  [(CRLCanvasRep *)&v5 processChangedProperty:property];
  if (property == 53)
  {
    CRLLinkViewHostingRep.resetLinkView()();
  }
}

- (_TtC8Freeform11CRLFileItem)item
{
  selfCopy = self;
  v3 = sub_100BAC798();

  return v3;
}

- (NSString)crlaxDescriptionForConnections
{
  selfCopy = self;
  sub_100BACE08();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (int64_t)supportedMediaTypes
{
  selfCopy = self;
  layout = [(CRLCanvasRep *)selfCopy layout];
  isInGroup = [(CRLCanvasLayout *)layout isInGroup];

  if (isInGroup)
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
  selfCopy = self;
  info = [(CRLCanvasRep *)selfCopy info];
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