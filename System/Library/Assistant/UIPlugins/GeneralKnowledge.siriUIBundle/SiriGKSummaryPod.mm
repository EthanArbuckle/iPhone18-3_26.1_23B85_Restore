@interface SiriGKSummaryPod
- (SiriGKSummaryPod)initWithPod:(id)pod usingPersistentStore:(id)store;
- (UIEdgeInsets)edgeInsets;
@end

@implementation SiriGKSummaryPod

- (SiriGKSummaryPod)initWithPod:(id)pod usingPersistentStore:(id)store
{
  podCopy = pod;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = SiriGKSummaryPod;
  v8 = [(SiriGKSummaryPod *)&v16 init];
  if (v8)
  {
    v9 = [SiriGKSummaryView alloc];
    text = [podCopy text];
    caption = [podCopy caption];
    imageResource = [podCopy imageResource];
    v13 = [(SiriGKSummaryView *)v9 initWithText:text caption:caption imageResource:imageResource usingPersistentStore:storeCopy];
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