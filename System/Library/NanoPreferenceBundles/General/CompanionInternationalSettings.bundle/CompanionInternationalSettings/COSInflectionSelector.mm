@interface COSInflectionSelector
- (BOOL)canShareInflectionWithApps;
- (COSInflectionSelector)initWithInternationalController:(id)controller;
- (id)currentInflection;
- (void)setInflection:(id)inflection;
@end

@implementation COSInflectionSelector

- (COSInflectionSelector)initWithInternationalController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = COSInflectionSelector;
  v6 = [(COSInflectionSelector *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internationalController, controller);
    v8 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.morphology.internal"];
    gizmoProtectedMorphologyDomain = v7->_gizmoProtectedMorphologyDomain;
    v7->_gizmoProtectedMorphologyDomain = v8;

    v10 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.morphology"];
    gizmoPublicMorphologyDomain = v7->_gizmoPublicMorphologyDomain;
    v7->_gizmoPublicMorphologyDomain = v10;

    v12 = objc_alloc_init(NPSManager);
    syncManager = v7->_syncManager;
    v7->_syncManager = v12;
  }

  return v7;
}

- (id)currentInflection
{
  gizmoProtectedMorphologyDomain = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  synchronize = [gizmoProtectedMorphologyDomain synchronize];

  gizmoPublicMorphologyDomain = [(COSInflectionSelector *)self gizmoPublicMorphologyDomain];
  synchronize2 = [gizmoPublicMorphologyDomain synchronize];

  gizmoProtectedMorphologyDomain2 = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  v8 = [gizmoProtectedMorphologyDomain2 objectForKey:@"AppleUserMorphology"];

  if (_NSIsNSDictionary())
  {
    v9 = v8;
    v12 = 0;
    v10 = [[_NSAttributedStringGrammarInflection alloc] initWithExternalRepresentationDictionary:v9 error:&v12];
  }

  else
  {
    v10 = objc_alloc_init(_NSAttributedStringGrammarInflection);
  }

  return v10;
}

- (BOOL)canShareInflectionWithApps
{
  gizmoProtectedMorphologyDomain = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  synchronize = [gizmoProtectedMorphologyDomain synchronize];

  gizmoProtectedMorphologyDomain2 = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  v6 = [gizmoProtectedMorphologyDomain2 objectForKey:@"AppleUserMorphologyAllowThirdPartyAccess"];

  if (_NSIsNSNumber())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setInflection:(id)inflection
{
  inflectionCopy = inflection;
  gizmoProtectedMorphologyDomain = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  externalRepresentationDictionary = [inflectionCopy externalRepresentationDictionary];
  [gizmoProtectedMorphologyDomain setObject:externalRepresentationDictionary forKey:@"AppleUserMorphology"];

  gizmoProtectedMorphologyDomain2 = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  synchronize = [gizmoProtectedMorphologyDomain2 synchronize];

  syncManager = [(COSInflectionSelector *)self syncManager];
  gizmoProtectedMorphologyDomain3 = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  domain = [gizmoProtectedMorphologyDomain3 domain];
  v25 = @"AppleUserMorphology";
  v12 = [NSArray arrayWithObjects:&v25 count:1];
  v13 = [NSSet setWithArray:v12];
  [syncManager synchronizeNanoDomain:domain keys:v13];

  LODWORD(gizmoProtectedMorphologyDomain3) = [(COSInflectionSelector *)self canShareInflectionWithApps];
  gizmoPublicMorphologyDomain = [(COSInflectionSelector *)self gizmoPublicMorphologyDomain];
  v15 = gizmoPublicMorphologyDomain;
  if (gizmoProtectedMorphologyDomain3)
  {
    externalRepresentationDictionary2 = [inflectionCopy externalRepresentationDictionary];
    [v15 setObject:externalRepresentationDictionary2 forKey:@"AppleUserMorphology"];
  }

  else
  {
    [gizmoPublicMorphologyDomain setObject:0 forKey:@"AppleUserMorphology"];
  }

  gizmoPublicMorphologyDomain2 = [(COSInflectionSelector *)self gizmoPublicMorphologyDomain];
  synchronize2 = [gizmoPublicMorphologyDomain2 synchronize];

  syncManager2 = [(COSInflectionSelector *)self syncManager];
  gizmoPublicMorphologyDomain3 = [(COSInflectionSelector *)self gizmoPublicMorphologyDomain];
  domain2 = [gizmoPublicMorphologyDomain3 domain];
  v24 = @"AppleUserMorphology";
  v22 = [NSArray arrayWithObjects:&v24 count:1];
  v23 = [NSSet setWithArray:v22];
  [syncManager2 synchronizeNanoDomain:domain2 keys:v23];
}

@end