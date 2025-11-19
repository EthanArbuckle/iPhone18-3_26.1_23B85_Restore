@interface AEAssessmentModeGestalt
+ (id)makeAssessmentStateReaderWithQueue:(id)a3;
- (AEAssessmentModeGestalt)initWithQueue:(id)a3;
- (BOOL)isActive;
@end

@implementation AEAssessmentModeGestalt

- (AEAssessmentModeGestalt)initWithQueue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AEAssessmentModeGestalt;
  v5 = [(AEAssessmentModeGestalt *)&v9 init];
  if (v5)
  {
    v6 = [AEAssessmentModeGestalt makeAssessmentStateReaderWithQueue:v4];
    assessmentStateReader = v5->_assessmentStateReader;
    v5->_assessmentStateReader = v6;
  }

  return v5;
}

+ (id)makeAssessmentStateReaderWithQueue:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (AEIsMultiAppAvailableForDeviceType([v4 deviceType]))
  {
    v5 = [AEFileBackedAssessmentStateReader alloc];
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v8 = +[AEFileSystem assessmentModeFileURL];
    v9 = [(AEFileBackedAssessmentStateReader *)v5 initWithSystemNotificationPrimitives:v6 fileSystemPrimitives:v7 assessmentFileURL:v8 queue:v3];

    v10 = [AEAccessibilityServerBackedAssessmentStateReader alloc];
    v11 = objc_opt_new();
    v12 = [(AEAccessibilityServerBackedAssessmentStateReader *)v10 initWithAccessibilityServerPrimitives:v11 queue:v3];

    v13 = [[AECompositeAssessmentStateReader alloc] initWithFileBackedReader:v9 accessibilityServerReader:v12];
    v3 = v12;
  }

  else
  {
    v14 = [AEAccessibilityServerBackedAssessmentStateReader alloc];
    v9 = objc_opt_new();
    v13 = [(AEAccessibilityServerBackedAssessmentStateReader *)v14 initWithAccessibilityServerPrimitives:v9 queue:v3];
  }

  return v13;
}

- (BOOL)isActive
{
  v2 = [(AEAssessmentModeGestalt *)self assessmentStateReader];
  v3 = [v2 isActive];

  return v3;
}

@end