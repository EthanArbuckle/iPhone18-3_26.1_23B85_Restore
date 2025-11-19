@interface AXAuditCategoryGeneral
- (id)allSupportedAuditTypes;
- (id)caseSelectorsForAuditing;
- (void)auditHitUISize;
@end

@implementation AXAuditCategoryGeneral

- (id)caseSelectorsForAuditing
{
  if (qword_14DD0 != -1)
  {
    sub_8248();
  }

  v3 = qword_14DC8;

  return v3;
}

- (id)allSupportedAuditTypes
{
  if (qword_14DE0 != -1)
  {
    sub_825C();
  }

  v3 = qword_14DD8;

  return v3;
}

- (void)auditHitUISize
{
  v3 = NSStringFromSelector(a2);
  v4 = [(AXAuditCategoryGeneral *)self caseStartedForSelectorName:v3];
  if (([(AXAuditCategoryGeneral *)self shouldRunAuditTestType:AXAuditTestTypeHitRegion]& 1) != 0)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_3BB0;
    v5[3] = &unk_106C8;
    v5[4] = self;
    [(AXAuditCategoryEmbedded *)self testOnAllVisibleElements:v5];
  }

  [(AXAuditCategoryGeneral *)self caseEndedForSelectorName:v3 result:v4];
}

@end