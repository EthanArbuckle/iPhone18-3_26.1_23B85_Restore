@interface CRLImmutableBoard
+ (id)copyInMemoryBoardWithoutRemappingWithBoard:(id)a3 error:(id *)a4;
- (id)qa_drawingDataAndReturnError:(id *)a3;
@end

@implementation CRLImmutableBoard

+ (id)copyInMemoryBoardWithoutRemappingWithBoard:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_100EDD510(v4);

  return v5;
}

- (id)qa_drawingDataAndReturnError:(id *)a3
{
  v3 = self;
  v4 = sub_100EB7474();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10002640C(v4, v6);

  return v7.super.isa;
}

@end