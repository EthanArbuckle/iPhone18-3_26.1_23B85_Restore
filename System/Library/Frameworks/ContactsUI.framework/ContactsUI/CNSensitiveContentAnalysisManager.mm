@interface CNSensitiveContentAnalysisManager
+ (id)defaultManager;
- (BOOL)canShowBlockContactUI;
- (BOOL)isEntitledForSensitiveContentUI;
- (BOOL)isSensitiveContentAnalysisEnabled;
- (BOOL)requiresDescriptiveInterventions;
- (BOOL)shouldShowSensitiveContentUI;
- (BOOL)shouldShowUIForPosterWithSensitiveContent:(BOOL)content forContact:(id)contact;
- (CNSensitiveContentAnalysisManager)initWithEntitlementVerifier:(id)verifier;
@end

@implementation CNSensitiveContentAnalysisManager

- (BOOL)requiresDescriptiveInterventions
{
  sensitivityAnalyzer = [(CNSensitiveContentAnalysisManager *)self sensitivityAnalyzer];
  v3 = [sensitivityAnalyzer analysisPolicy] == 2;

  return v3;
}

- (BOOL)isSensitiveContentAnalysisEnabled
{
  sensitivityAnalyzer = [(CNSensitiveContentAnalysisManager *)self sensitivityAnalyzer];
  v3 = [sensitivityAnalyzer analysisPolicy] != 0;

  return v3;
}

- (BOOL)canShowBlockContactUI
{
  entitlementVerifier = [(CNSensitiveContentAnalysisManager *)self entitlementVerifier];
  processHasCommunicationFilterEntitlements = [entitlementVerifier processHasCommunicationFilterEntitlements];

  return processHasCommunicationFilterEntitlements;
}

- (BOOL)isEntitledForSensitiveContentUI
{
  entitlementVerifier = [(CNSensitiveContentAnalysisManager *)self entitlementVerifier];
  canShowSensitiveContentUI = [entitlementVerifier canShowSensitiveContentUI];

  return canShowSensitiveContentUI;
}

- (BOOL)shouldShowSensitiveContentUI
{
  isEntitledForSensitiveContentUI = [(CNSensitiveContentAnalysisManager *)self isEntitledForSensitiveContentUI];
  if (isEntitledForSensitiveContentUI)
  {

    LOBYTE(isEntitledForSensitiveContentUI) = [(CNSensitiveContentAnalysisManager *)self isSensitiveContentAnalysisEnabled];
  }

  return isEntitledForSensitiveContentUI;
}

- (BOOL)shouldShowUIForPosterWithSensitiveContent:(BOOL)content forContact:(id)contact
{
  if (!content || ([contact overrideSensitiveContent] & 1) != 0)
  {
    return 0;
  }

  if (![(CNSensitiveContentAnalysisManager *)self isEntitledForSensitiveContentUI])
  {
    return 1;
  }

  return [(CNSensitiveContentAnalysisManager *)self isSensitiveContentAnalysisEnabled];
}

- (CNSensitiveContentAnalysisManager)initWithEntitlementVerifier:(id)verifier
{
  v10.receiver = self;
  v10.super_class = CNSensitiveContentAnalysisManager;
  v3 = [(CNSensitiveContentAnalysisManager *)&v10 init];
  if (v3)
  {
    v4 = objc_alloc_init(CNSensitiveContentUIEntitlementVerifier);
    entitlementVerifier = v3->_entitlementVerifier;
    v3->_entitlementVerifier = v4;

    v6 = objc_alloc_init(MEMORY[0x1E697B678]);
    sensitivityAnalyzer = v3->_sensitivityAnalyzer;
    v3->_sensitivityAnalyzer = v6;

    v8 = v3;
  }

  return v3;
}

+ (id)defaultManager
{
  v2 = [self alloc];
  v3 = objc_alloc_init(CNSensitiveContentUIEntitlementVerifier);
  v4 = [v2 initWithEntitlementVerifier:v3];

  return v4;
}

@end