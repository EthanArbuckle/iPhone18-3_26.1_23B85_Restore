@interface CRLTextInputResponder.CRLWPInputStringTokenizer
- (BOOL)isPosition:(id)position atBoundary:(int64_t)boundary inDirection:(int64_t)direction;
- (_TtCC8Freeform21CRLTextInputResponder25CRLWPInputStringTokenizer)init;
- (_TtCC8Freeform21CRLTextInputResponder25CRLWPInputStringTokenizer)initWithTextInput:(id)input;
- (id)positionFromPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction;
@end

@implementation CRLTextInputResponder.CRLWPInputStringTokenizer

- (_TtCC8Freeform21CRLTextInputResponder25CRLWPInputStringTokenizer)initWithTextInput:(id)input
{
  swift_unknownObjectWeakInit();
  type metadata accessor for CRLTextInputResponder();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    inputCopy = input;
  }

  swift_unknownObjectWeakAssign();
  inputCopy2 = input;

  v10.receiver = self;
  v10.super_class = type metadata accessor for CRLTextInputResponder.CRLWPInputStringTokenizer();
  v8 = [(CRLTextInputResponder.CRLWPInputStringTokenizer *)&v10 initWithTextInput:inputCopy2];

  return v8;
}

- (BOOL)isPosition:(id)position atBoundary:(int64_t)boundary inDirection:(int64_t)direction
{
  positionCopy = position;
  selfCopy = self;
  LOBYTE(direction) = sub_1007EDA20(positionCopy, boundary, direction);

  return direction & 1;
}

- (id)positionFromPosition:(id)position toBoundary:(int64_t)boundary inDirection:(int64_t)direction
{
  positionCopy = position;
  selfCopy = self;
  v10 = sub_1007EDBB4(positionCopy, boundary, direction);

  return v10;
}

- (_TtCC8Freeform21CRLTextInputResponder25CRLWPInputStringTokenizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end