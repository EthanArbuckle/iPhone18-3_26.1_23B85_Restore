@interface ATXRootOfAppData
- (id)initInternal;
- (unint64_t)sessionCountForBundleId:(id)a3;
- (unint64_t)sessionCountForBundleId:(id)a3 firstAction:(id)a4;
- (void)recordDocFreqWithBundleId:(id)a3 hasAction:(id)a4;
- (void)recordSessionWithBundleId:(id)a3 firstAction:(id)a4;
@end

@implementation ATXRootOfAppData

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = ATXRootOfAppData;
  return [(ATXRootOfAppData *)&v3 init];
}

- (unint64_t)sessionCountForBundleId:(id)a3
{
  result = a3;
  __break(1u);
  return result;
}

- (unint64_t)sessionCountForBundleId:(id)a3 firstAction:(id)a4
{
  v5 = a3;
  result = a4;
  __break(1u);
  return result;
}

- (void)recordSessionWithBundleId:(id)a3 firstAction:(id)a4
{
  v5 = a3;
  v6 = a4;
  __break(1u);
}

- (void)recordDocFreqWithBundleId:(id)a3 hasAction:(id)a4
{
  v6 = a4;
  v7 = [@"DocFreq_" stringByAppendingString:a3];
  [(ATXRootOfAppData *)self recordSessionWithBundleId:v7 firstAction:v6];
}

@end