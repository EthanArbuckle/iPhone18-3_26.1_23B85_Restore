@interface ATXRootOfAppData
- (id)initInternal;
- (unint64_t)sessionCountForBundleId:(id)id;
- (unint64_t)sessionCountForBundleId:(id)id firstAction:(id)action;
- (void)recordDocFreqWithBundleId:(id)id hasAction:(id)action;
- (void)recordSessionWithBundleId:(id)id firstAction:(id)action;
@end

@implementation ATXRootOfAppData

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = ATXRootOfAppData;
  return [(ATXRootOfAppData *)&v3 init];
}

- (unint64_t)sessionCountForBundleId:(id)id
{
  result = id;
  __break(1u);
  return result;
}

- (unint64_t)sessionCountForBundleId:(id)id firstAction:(id)action
{
  idCopy = id;
  result = action;
  __break(1u);
  return result;
}

- (void)recordSessionWithBundleId:(id)id firstAction:(id)action
{
  idCopy = id;
  actionCopy = action;
  __break(1u);
}

- (void)recordDocFreqWithBundleId:(id)id hasAction:(id)action
{
  actionCopy = action;
  v7 = [@"DocFreq_" stringByAppendingString:id];
  [(ATXRootOfAppData *)self recordSessionWithBundleId:v7 firstAction:actionCopy];
}

@end