@interface AEFileBackedAssessmentStateReader
- (AEFileBackedAssessmentStateReader)initWithSystemNotificationPrimitives:(id)primitives fileSystemPrimitives:(id)systemPrimitives assessmentFileURL:(id)l queue:(id)queue;
- (uint64_t)isAssessmentStateActive;
- (void)beginObserving;
- (void)dealloc;
- (void)endObserving;
- (void)updateForLatestAssessmentState;
@end

@implementation AEFileBackedAssessmentStateReader

- (void)dealloc
{
  [(AEFileBackedAssessmentStateReader *)self endObserving];
  v3.receiver = self;
  v3.super_class = AEFileBackedAssessmentStateReader;
  [(AEFileBackedAssessmentStateReader *)&v3 dealloc];
}

- (AEFileBackedAssessmentStateReader)initWithSystemNotificationPrimitives:(id)primitives fileSystemPrimitives:(id)systemPrimitives assessmentFileURL:(id)l queue:(id)queue
{
  primitivesCopy = primitives;
  systemPrimitivesCopy = systemPrimitives;
  lCopy = l;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = AEFileBackedAssessmentStateReader;
  v15 = [(AEFileBackedAssessmentStateReader *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_systemNotificationPrimitives, primitives);
    objc_storeStrong(&v16->_fileSystemPrimitives, systemPrimitives);
    objc_storeStrong(&v16->_assessmentFileURL, l);
    objc_storeStrong(&v16->_queue, queue);
  }

  [(AEFileBackedAssessmentStateReader *)&v16->super.isa beginObserving];
  [(AEFileBackedAssessmentStateReader *)v16 updateForLatestAssessmentState];

  return v16;
}

- (void)beginObserving
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = val[3];
    v3 = val[5];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__AEFileBackedAssessmentStateReader_beginObserving__block_invoke;
    v6[3] = &unk_278BB6CF0;
    objc_copyWeak(&v7, &location);
    v4 = [v2 observeSystemNotificationWithName:@"AssessmentStateDidChange" onQueue:v3 withHandler:v6];
    v5 = val[6];
    val[6] = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)endObserving
{
  if (self)
  {
    [*(self + 48) invalidate];
    v2 = *(self + 48);
    *(self + 48) = 0;
  }
}

- (void)updateForLatestAssessmentState
{
  if (result)
  {
    v1 = result;
    isActive = [result isActive];
    result = [(AEFileBackedAssessmentStateReader *)v1 isAssessmentStateActive];
    if (isActive != result)
    {

      return [v1 setActive:result];
    }
  }

  return result;
}

void __51__AEFileBackedAssessmentStateReader_beginObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AEFileBackedAssessmentStateReader *)WeakRetained updateForLatestAssessmentState];
}

- (uint64_t)isAssessmentStateActive
{
  if (result)
  {
    v1 = *(result + 16);
    v2 = *(result + 32);
    v3 = [v2 fileExistsAtURL:v1];

    return v3;
  }

  return result;
}

@end