@interface COSInflectionSelector
- (BOOL)canShareInflectionWithApps;
- (COSInflectionSelector)initWithInternationalController:(id)a3;
- (id)currentInflection;
- (void)setInflection:(id)a3;
@end

@implementation COSInflectionSelector

- (COSInflectionSelector)initWithInternationalController:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = COSInflectionSelector;
  v6 = [(COSInflectionSelector *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internationalController, a3);
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
  v3 = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  v4 = [v3 synchronize];

  v5 = [(COSInflectionSelector *)self gizmoPublicMorphologyDomain];
  v6 = [v5 synchronize];

  v7 = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  v8 = [v7 objectForKey:@"AppleUserMorphology"];

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
  v3 = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  v4 = [v3 synchronize];

  v5 = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  v6 = [v5 objectForKey:@"AppleUserMorphologyAllowThirdPartyAccess"];

  if (_NSIsNSNumber())
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setInflection:(id)a3
{
  v4 = a3;
  v5 = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  v6 = [v4 externalRepresentationDictionary];
  [v5 setObject:v6 forKey:@"AppleUserMorphology"];

  v7 = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  v8 = [v7 synchronize];

  v9 = [(COSInflectionSelector *)self syncManager];
  v10 = [(COSInflectionSelector *)self gizmoProtectedMorphologyDomain];
  v11 = [v10 domain];
  v25 = @"AppleUserMorphology";
  v12 = [NSArray arrayWithObjects:&v25 count:1];
  v13 = [NSSet setWithArray:v12];
  [v9 synchronizeNanoDomain:v11 keys:v13];

  LODWORD(v10) = [(COSInflectionSelector *)self canShareInflectionWithApps];
  v14 = [(COSInflectionSelector *)self gizmoPublicMorphologyDomain];
  v15 = v14;
  if (v10)
  {
    v16 = [v4 externalRepresentationDictionary];
    [v15 setObject:v16 forKey:@"AppleUserMorphology"];
  }

  else
  {
    [v14 setObject:0 forKey:@"AppleUserMorphology"];
  }

  v17 = [(COSInflectionSelector *)self gizmoPublicMorphologyDomain];
  v18 = [v17 synchronize];

  v19 = [(COSInflectionSelector *)self syncManager];
  v20 = [(COSInflectionSelector *)self gizmoPublicMorphologyDomain];
  v21 = [v20 domain];
  v24 = @"AppleUserMorphology";
  v22 = [NSArray arrayWithObjects:&v24 count:1];
  v23 = [NSSet setWithArray:v22];
  [v19 synchronizeNanoDomain:v21 keys:v23];
}

@end