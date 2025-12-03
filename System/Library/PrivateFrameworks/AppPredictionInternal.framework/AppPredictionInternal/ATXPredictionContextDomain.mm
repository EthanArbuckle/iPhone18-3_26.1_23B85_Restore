@interface ATXPredictionContextDomain
- (ATXPredictionContextDomain)initWithProto:(id)proto;
- (ATXPredictionContextDomain)initWithProtoData:(id)data;
@end

@implementation ATXPredictionContextDomain

- (ATXPredictionContextDomain)initWithProtoData:(id)data
{
  result = data;
  __break(1u);
  return result;
}

- (ATXPredictionContextDomain)initWithProto:(id)proto
{
  result = proto;
  __break(1u);
  return result;
}

@end