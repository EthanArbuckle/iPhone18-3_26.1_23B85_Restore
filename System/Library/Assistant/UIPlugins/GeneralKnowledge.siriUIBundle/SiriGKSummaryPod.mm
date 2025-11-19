@interface SiriGKSummaryPod
- (SiriGKSummaryPod)initWithPod:(id)a3 usingPersistentStore:(id)a4;
- (UIEdgeInsets)edgeInsets;
@end

@implementation SiriGKSummaryPod

- (SiriGKSummaryPod)initWithPod:(id)a3 usingPersistentStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SiriGKSummaryPod;
  v8 = [(SiriGKSummaryPod *)&v16 init];
  if (v8)
  {
    v9 = [SiriGKSummaryView alloc];
    v10 = [v6 text];
    v11 = [v6 caption];
    v12 = [v6 imageResource];
    v13 = [(SiriGKSummaryView *)v9 initWithText:v10 caption:v11 imageResource:v12 usingPersistentStore:v7];
    summaryView = v8->_summaryView;
    v8->_summaryView = v13;
  }

  return v8;
}

- (UIEdgeInsets)edgeInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end