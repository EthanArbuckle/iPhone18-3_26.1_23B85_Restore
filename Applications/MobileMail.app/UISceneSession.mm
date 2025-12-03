@interface UISceneSession
- (BOOL)mf_isMain;
- (MFActiveDraft)mf_activeDraft;
- (id)mf_debugDescription;
- (id)mf_objectForSessionInfoKey:(id)key;
- (void)mf_setActiveDraft:(id)draft;
- (void)mf_setIsMain:(BOOL)main;
- (void)mf_setObject:(id)object forSessionInfoKey:(id)key;
@end

@implementation UISceneSession

- (MFActiveDraft)mf_activeDraft
{
  v3 = [(UISceneSession *)self mf_objectForSessionInfoKey:@"ActiveDraftIdentifier"];
  v4 = [(UISceneSession *)self mf_objectForSessionInfoKey:@"ActiveDraftOriginalMessageIdentifier"];
  v5 = [EMObjectID objectIDFromSerializedRepresentation:v4];

  v6 = [[MFActiveDraft alloc] initWithIdentifier:v3 andOriginalMessageIdentifier:v5];

  return v6;
}

- (void)mf_setActiveDraft:(id)draft
{
  draftCopy = draft;
  identifier = [draftCopy identifier];
  [(UISceneSession *)self mf_setObject:identifier forSessionInfoKey:@"ActiveDraftIdentifier"];

  originalMessageIdentifier = [draftCopy originalMessageIdentifier];
  serializedRepresentation = [originalMessageIdentifier serializedRepresentation];
  [(UISceneSession *)self mf_setObject:serializedRepresentation forSessionInfoKey:@"ActiveDraftOriginalMessageIdentifier"];
}

- (BOOL)mf_isMain
{
  v2 = [(UISceneSession *)self mf_objectForSessionInfoKey:@"IsMainMailScene"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)mf_setIsMain:(BOOL)main
{
  v4 = [NSNumber numberWithBool:main];
  [UISceneSession mf_setObject:"mf_setObject:forSessionInfoKey:" forSessionInfoKey:?];
}

- (void)mf_setObject:(id)object forSessionInfoKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  userInfo = [(UISceneSession *)self userInfo];
  v8 = userInfo;
  v9 = &__NSDictionary0__struct;
  if (userInfo)
  {
    v9 = userInfo;
  }

  v10 = v9;

  v11 = [v10 mutableCopy];
  [v11 setObject:objectCopy forKeyedSubscript:keyCopy];
  [(UISceneSession *)self setUserInfo:v11];
}

- (id)mf_objectForSessionInfoKey:(id)key
{
  keyCopy = key;
  userInfo = [(UISceneSession *)self userInfo];
  v6 = [userInfo objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)mf_debugDescription
{
  v3 = objc_alloc_init(NSMutableString);
  configuration = [(UISceneSession *)self configuration];
  name = [configuration name];
  persistentIdentifier = [(UISceneSession *)self persistentIdentifier];
  [v3 appendFormat:@"\t%@ (ID: %@)\n", name, persistentIdentifier];

  mf_activeDraft = [(UISceneSession *)self mf_activeDraft];
  ef_publicDescription = [mf_activeDraft ef_publicDescription];
  [v3 appendFormat:@"\t - Active Draft: %@\n", ef_publicDescription];

  scene = [(UISceneSession *)self scene];
  v10 = @"YES";
  if (!scene)
  {
    v10 = @"NO";
  }

  [v3 appendFormat:@"\t - Attached: %@\n", v10];
  if (scene)
  {
    activationState = [scene activationState];
    if (activationState > 2)
    {
      v12 = @"Unattached";
    }

    else
    {
      v12 = *(&off_100656AB8 + activationState);
    }

    [v3 appendFormat:@"\t - Activation State: %@\n", v12];
    title = [scene title];
    [v3 appendFormat:@"\t - Title: %@\n", title];

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v3 appendFormat:@"\t - Scene Instance: <%@: %p>\n", v15, scene];

    delegate = [scene delegate];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v3 appendFormat:@"\t - Scene Delegate: <%@: %p>\n", v18, delegate];
  }

  return v3;
}

@end