@interface AEAccessibilityServerBackedAssessmentStateReader
- (AEAccessibilityServerBackedAssessmentStateReader)initWithAccessibilityServerPrimitives:(id)primitives queue:(id)queue;
- (id)updateForLatestAssessmentState;
- (void)beginObserving;
- (void)dealloc;
- (void)endObserving;
@end

@implementation AEAccessibilityServerBackedAssessmentStateReader

- (void)dealloc
{
  [(AEAccessibilityServerBackedAssessmentStateReader *)self endObserving];
  v3.receiver = self;
  v3.super_class = AEAccessibilityServerBackedAssessmentStateReader;
  [(AEAccessibilityServerBackedAssessmentStateReader *)&v3 dealloc];
}

- (AEAccessibilityServerBackedAssessmentStateReader)initWithAccessibilityServerPrimitives:(id)primitives queue:(id)queue
{
  primitivesCopy = primitives;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = AEAccessibilityServerBackedAssessmentStateReader;
  v9 = [(AEAccessibilityServerBackedAssessmentStateReader *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessibilityServerPrimitives, primitives);
    objc_storeStrong(&v10->_queue, queue);
  }

  [(AEAccessibilityServerBackedAssessmentStateReader *)&v10->super.isa beginObserving];
  [(AEAccessibilityServerBackedAssessmentStateReader *)&v10->super.isa updateForLatestAssessmentState];

  return v10;
}

- (void)beginObserving
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = val[2];
    v3 = val[3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__AEAccessibilityServerBackedAssessmentStateReader_beginObserving__block_invoke;
    v6[3] = &unk_278BB6CF0;
    objc_copyWeak(&v7, &location);
    v4 = [v2 observeGuidedAccessActiveStateChangeOnQueue:v3 withHandler:v6];
    v5 = val[4];
    val[4] = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)endObserving
{
  if (self)
  {
    [*(self + 32) invalidate];
    v2 = *(self + 32);
    *(self + 32) = 0;
  }
}

- (id)updateForLatestAssessmentState
{
  if (result)
  {
    v1 = result;
    isActive = [result isActive];
    result = [v1[2] isRestrictedForAAC];
    if (isActive != result)
    {

      return [v1 setActive:result];
    }
  }

  return result;
}

void __66__AEAccessibilityServerBackedAssessmentStateReader_beginObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AEAccessibilityServerBackedAssessmentStateReader *)WeakRetained updateForLatestAssessmentState];
}

@end