@interface CRLImmutableBoard
+ (id)copyInMemoryBoardWithoutRemappingWithBoard:(id)board error:(id *)error;
- (id)qa_drawingDataAndReturnError:(id *)error;
@end

@implementation CRLImmutableBoard

+ (id)copyInMemoryBoardWithoutRemappingWithBoard:(id)board error:(id *)error
{
  boardCopy = board;
  v5 = sub_100EDD510(boardCopy);

  return v5;
}

- (id)qa_drawingDataAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = sub_100EB7474();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10002640C(v4, v6);

  return v7.super.isa;
}

@end