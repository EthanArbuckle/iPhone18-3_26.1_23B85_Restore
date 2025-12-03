@interface AEAssessmentModeGestalt
+ (id)makeAssessmentStateReaderWithQueue:(id)queue;
- (AEAssessmentModeGestalt)initWithQueue:(id)queue;
- (BOOL)isActive;
@end

@implementation AEAssessmentModeGestalt

- (AEAssessmentModeGestalt)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = AEAssessmentModeGestalt;
  v5 = [(AEAssessmentModeGestalt *)&v9 init];
  if (v5)
  {
    v6 = [AEAssessmentModeGestalt makeAssessmentStateReaderWithQueue:queueCopy];
    assessmentStateReader = v5->_assessmentStateReader;
    v5->_assessmentStateReader = v6;
  }

  return v5;
}

+ (id)makeAssessmentStateReaderWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = objc_opt_new();
  if (AEIsMultiAppAvailableForDeviceType([v4 deviceType]))
  {
    v5 = [AEFileBackedAssessmentStateReader alloc];
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v8 = +[AEFileSystem assessmentModeFileURL];
    v9 = [(AEFileBackedAssessmentStateReader *)v5 initWithSystemNotificationPrimitives:v6 fileSystemPrimitives:v7 assessmentFileURL:v8 queue:queueCopy];

    v10 = [AEAccessibilityServerBackedAssessmentStateReader alloc];
    v11 = objc_opt_new();
    v12 = [(AEAccessibilityServerBackedAssessmentStateReader *)v10 initWithAccessibilityServerPrimitives:v11 queue:queueCopy];

    v13 = [[AECompositeAssessmentStateReader alloc] initWithFileBackedReader:v9 accessibilityServerReader:v12];
    queueCopy = v12;
  }

  else
  {
    v14 = [AEAccessibilityServerBackedAssessmentStateReader alloc];
    v9 = objc_opt_new();
    v13 = [(AEAccessibilityServerBackedAssessmentStateReader *)v14 initWithAccessibilityServerPrimitives:v9 queue:queueCopy];
  }

  return v13;
}

- (BOOL)isActive
{
  assessmentStateReader = [(AEAssessmentModeGestalt *)self assessmentStateReader];
  isActive = [assessmentStateReader isActive];

  return isActive;
}

@end