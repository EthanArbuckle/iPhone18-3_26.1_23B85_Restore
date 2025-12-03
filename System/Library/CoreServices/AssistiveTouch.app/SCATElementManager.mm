@interface SCATElementManager
- (BOOL)isAppleTVRemoteElementManager;
- (BOOL)isElementNavElementManager;
- (BOOL)isGestureDrawingElementManager;
- (BOOL)isGestureProviderElementManager;
- (BOOL)isMenuElementManager;
- (BOOL)isPointPickerElementManager;
- (NSString)identifier;
- (id)allAuxiliaryElementManagers;
- (id)auxiliaryElementAfter:(id)after;
- (id)auxiliaryElementBefore:(id)before;
- (id)auxiliaryElementManagersForRole:(int64_t)role;
- (id)enabledAuxiliaryElementManagersForRoles:(int64_t)roles;
- (id)firstAuxiliaryElementWithRole:(int64_t)role;
- (id)lastAuxiliaryElementWithRole:(int64_t)role;
- (id)nextAuxiliaryElementManagerFrom:(id)from role:(int64_t)role excludeDisabled:(BOOL)disabled;
- (id)previousAuxiliaryElementManagerTo:(id)to role:(int64_t)role excludeDisabled:(BOOL)disabled;
- (id)siblingOfElement:(id)element inDirection:(int64_t)direction didWrap:(BOOL *)wrap options:(int *)options;
- (int64_t)auxiliaryElementCountWithRole:(int64_t)role;
- (int64_t)roleForElement:(id)element;
- (unsigned)currentDisplayID;
- (void)appendAuxiliaryElementManager:(id)manager withRole:(int64_t)role;
- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext;
- (void)driver:(id)driver willFocusOnContext:(id)context;
- (void)driver:(id)driver willUnfocusFromContext:(id)context;
- (void)hideIfNeeded:(BOOL)needed;
- (void)orientationDidChange:(id)change;
- (void)presentWithDisplayContext:(id)context animated:(BOOL)animated;
- (void)redisplayIfNeeded:(BOOL)needed;
- (void)removeAuxiliaryElementManagerForAllRoles:(id)roles;
- (void)scannerWillMakeManagerActive:(id)active;
- (void)scannerWillMakeManagerActive:(id)active forDisplayID:(unsigned int)d;
- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager;
@end

@implementation SCATElementManager

- (BOOL)isElementNavElementManager
{
  identifier = [(SCATElementManager *)self identifier];
  v3 = [identifier isEqualToString:off_100217388[0]];

  return v3;
}

- (BOOL)isMenuElementManager
{
  identifier = [(SCATElementManager *)self identifier];
  v3 = [identifier isEqualToString:off_100217390[0]];

  return v3;
}

- (BOOL)isAppleTVRemoteElementManager
{
  identifier = [(SCATElementManager *)self identifier];
  v3 = [identifier isEqualToString:off_1002173B0];

  return v3;
}

- (BOOL)isPointPickerElementManager
{
  identifier = [(SCATElementManager *)self identifier];
  v3 = [identifier isEqualToString:off_100217398[0]];

  return v3;
}

- (BOOL)isGestureProviderElementManager
{
  identifier = [(SCATElementManager *)self identifier];
  v3 = [identifier isEqualToString:off_1002173A0[0]];

  return v3;
}

- (BOOL)isGestureDrawingElementManager
{
  identifier = [(SCATElementManager *)self identifier];
  v3 = [identifier isEqualToString:off_1002173A8[0]];

  return v3;
}

- (id)siblingOfElement:(id)element inDirection:(int64_t)direction didWrap:(BOOL *)wrap options:(int *)options
{
  if (direction)
  {
    [(SCATElementManager *)self elementBefore:element didWrap:wrap options:options];
  }

  else
  {
    [(SCATElementManager *)self elementAfter:element didWrap:wrap options:options];
  }
  v6 = ;

  return v6;
}

- (void)scannerWillMakeManagerActive:(id)active
{
  activeCopy = active;
  currentDisplayContext = [(SCATElementManager *)self currentDisplayContext];

  if (!currentDisplayContext)
  {
    v5 = [activeCopy scatUIContextForDisplayID:{-[SCATElementManager currentDisplayID](self, "currentDisplayID")}];
    [(SCATElementManager *)self setCurrentDisplayContext:v5];
  }

  visualProvider = [(SCATElementManager *)self visualProvider];
  currentDisplayContext2 = [(SCATElementManager *)self currentDisplayContext];
  [visualProvider presentWithDisplayContext:currentDisplayContext2 animated:0];
}

- (void)scannerWillMakeManagerActive:(id)active forDisplayID:(unsigned int)d
{
  v5 = [active scatUIContextForDisplayID:*&d];
  [(SCATElementManager *)self setCurrentDisplayContext:v5];

  visualProvider = [(SCATElementManager *)self visualProvider];
  currentDisplayContext = [(SCATElementManager *)self currentDisplayContext];
  [visualProvider presentWithDisplayContext:currentDisplayContext animated:0];
}

- (void)scannerWillMakeManagerInactive:(id)inactive activeElementManager:(id)manager
{
  [(SCATElementManager *)self setCurrentDisplayContext:0, manager];
  visualProvider = [(SCATElementManager *)self visualProvider];
  [visualProvider dismiss:0];
}

- (void)hideIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  visualProvider = [(SCATElementManager *)self visualProvider];
  isDisplayed = [visualProvider isDisplayed];

  if (isDisplayed)
  {
    visualProvider2 = [(SCATElementManager *)self visualProvider];
    [visualProvider2 dismiss:neededCopy];
  }
}

- (void)redisplayIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  currentDisplayContext = [(SCATElementManager *)self currentDisplayContext];

  if (!currentDisplayContext)
  {
    currentDisplayID = [(SCATElementManager *)self currentDisplayID];
    v7 = +[SCATScannerManager sharedManager];
    v8 = [v7 scatUIContextForDisplayID:currentDisplayID];
    [(SCATElementManager *)self setCurrentDisplayContext:v8];
  }

  visualProvider = [(SCATElementManager *)self visualProvider];
  isDisplayed = [visualProvider isDisplayed];

  visualProvider2 = [(SCATElementManager *)self visualProvider];
  currentDisplayContext2 = [(SCATElementManager *)self currentDisplayContext];
  if (isDisplayed)
  {
    [visualProvider2 didUpdateWithDisplayContext:currentDisplayContext2 animated:neededCopy];
  }

  else
  {
    [visualProvider2 presentWithDisplayContext:currentDisplayContext2 animated:neededCopy];
  }
}

- (void)presentWithDisplayContext:(id)context animated:(BOOL)animated
{
  contextCopy = context;
  [(SCATElementManager *)self setCurrentDisplayContext:contextCopy];
  visualProvider = [(SCATElementManager *)self visualProvider];
  [visualProvider didUpdateWithDisplayContext:contextCopy animated:1];
}

- (unsigned)currentDisplayID
{
  currentDisplayContext = [(SCATElementManager *)self currentDisplayContext];

  if (!currentDisplayContext)
  {
    return 1;
  }

  currentDisplayContext = self->_currentDisplayContext;

  return [(UIView *)currentDisplayContext _accessibilityDisplayId];
}

- (void)orientationDidChange:(id)change
{
  changeCopy = change;
  currentDisplayID = [(SCATElementManager *)self currentDisplayID];
  visualProvider = [(SCATElementManager *)self visualProvider];
  v6 = [changeCopy scatUIContextForDisplayID:currentDisplayID];

  [visualProvider orientationDidChange:v6];
}

- (void)driver:(id)driver willFocusOnContext:(id)context
{
  contextCopy = context;
  driverCopy = driver;
  visualProvider = [(SCATElementManager *)self visualProvider];
  element = [contextCopy element];
  [visualProvider updateCustomFocusingViewStateForViewsWithElement:element];

  element2 = [contextCopy element];
  scatAuxiliaryElementManager = [element2 scatAuxiliaryElementManager];
  currentAuxiliaryElementManager = [(SCATElementManager *)self currentAuxiliaryElementManager];

  if (scatAuxiliaryElementManager != currentAuxiliaryElementManager)
  {
    currentAuxiliaryElementManager2 = [(SCATElementManager *)self currentAuxiliaryElementManager];
    [currentAuxiliaryElementManager2 willResignCurrentAuxiliaryElementManager];

    element3 = [contextCopy element];
    scatAuxiliaryElementManager2 = [element3 scatAuxiliaryElementManager];
    [scatAuxiliaryElementManager2 willBecomeCurrentAuxiliaryElementManager];

    element4 = [contextCopy element];
    scatAuxiliaryElementManager3 = [element4 scatAuxiliaryElementManager];
    [(SCATElementManager *)self setCurrentAuxiliaryElementManager:scatAuxiliaryElementManager3];
  }

  element5 = [contextCopy element];
  scatAuxiliaryElementManager4 = [element5 scatAuxiliaryElementManager];
  [scatAuxiliaryElementManager4 driver:driverCopy willFocusOnContext:contextCopy];
}

- (void)driver:(id)driver didFocusOnContext:(id)context oldContext:(id)oldContext
{
  oldContextCopy = oldContext;
  contextCopy = context;
  driverCopy = driver;
  element = [contextCopy element];
  scatAuxiliaryElementManager = [element scatAuxiliaryElementManager];
  [scatAuxiliaryElementManager driver:driverCopy didFocusOnContext:contextCopy oldContext:oldContextCopy];
}

- (void)driver:(id)driver willUnfocusFromContext:(id)context
{
  contextCopy = context;
  driverCopy = driver;
  element = [contextCopy element];
  scatAuxiliaryElementManager = [element scatAuxiliaryElementManager];
  [scatAuxiliaryElementManager driver:driverCopy willUnfocusFromContext:contextCopy];
}

- (void)appendAuxiliaryElementManager:(id)manager withRole:(int64_t)role
{
  managerCopy = manager;
  if (managerCopy)
  {
    v19 = managerCopy;
    if ([managerCopy role])
    {
      _AXAssert();
    }

    auxiliaryElementManagers = [(SCATElementManager *)self auxiliaryElementManagers];

    if (!auxiliaryElementManagers)
    {
      v8 = +[NSMutableDictionary dictionary];
      [(SCATElementManager *)self setAuxiliaryElementManagers:v8];
    }

    memset_pattern16(__b, &unk_1001BD540, 0x10uLL);
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v11;
      v13 = (1 << v9);
      if ((v13 & role) != 0)
      {
        __b[v10++] = v13;
      }

      v11 = 0;
      v9 = 1;
    }

    while ((v12 & 1) != 0);
    if (v10 <= 0)
    {
      _AXAssert();
    }

    v14 = __b[0];
    [v19 setRole:__b[0]];
    v15 = [NSNumber numberWithInteger:v14];
    auxiliaryElementManagers2 = [(SCATElementManager *)self auxiliaryElementManagers];
    v17 = [auxiliaryElementManagers2 objectForKeyedSubscript:v15];

    if (!v17)
    {
      v17 = +[NSMutableArray array];
      auxiliaryElementManagers3 = [(SCATElementManager *)self auxiliaryElementManagers];
      [auxiliaryElementManagers3 setObject:v17 forKeyedSubscript:v15];
    }

    [v17 addObject:v19];

    managerCopy = v19;
  }
}

- (void)removeAuxiliaryElementManagerForAllRoles:(id)roles
{
  rolesCopy = roles;
  auxiliaryElementManagers = [(SCATElementManager *)self auxiliaryElementManagers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EC888;
  v7[3] = &unk_1001D7768;
  v8 = rolesCopy;
  v6 = rolesCopy;
  [auxiliaryElementManagers enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)allAuxiliaryElementManagers
{
  v3 = +[NSMutableArray array];
  auxiliaryElementManagers = [(SCATElementManager *)self auxiliaryElementManagers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EC960;
  v7[3] = &unk_1001D7768;
  v5 = v3;
  v8 = v5;
  [auxiliaryElementManagers enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (id)auxiliaryElementManagersForRole:(int64_t)role
{
  if (role == 3)
  {
    allAuxiliaryElementManagers = [(SCATElementManager *)self allAuxiliaryElementManagers];
  }

  else
  {
    memset_pattern16(__b, &unk_1001BD540, 0x10uLL);
    v6 = 0;
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = (1 << v6);
      if ((v10 & role) != 0)
      {
        __b[v7++] = v10;
      }

      v8 = 0;
      v6 = 1;
    }

    while ((v9 & 1) != 0);
    if (v7 <= 0)
    {
      _AXAssert();
    }

    auxiliaryElementManagers = [(SCATElementManager *)self auxiliaryElementManagers];
    v12 = [NSNumber numberWithInteger:__b[0]];
    allAuxiliaryElementManagers = [auxiliaryElementManagers objectForKeyedSubscript:v12];
  }

  return allAuxiliaryElementManagers;
}

- (id)enabledAuxiliaryElementManagersForRoles:(int64_t)roles
{
  memset_pattern16(__b, &unk_1001BD540, 0x10uLL);
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (1 << v5);
    if ((v9 & roles) != 0)
    {
      __b[v6++] = v9;
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  if (v6 < 1)
  {
    _AXAssert();
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = __b;
    do
    {
      v12 = *v11++;
      v13 = [(SCATElementManager *)self auxiliaryElementManagersForRole:v12];
      v14 = [v13 axFilterObjectsUsingBlock:&stru_1001D77A8];

      if ([v14 count])
      {
        if (!v10)
        {
          v10 = +[NSMutableArray array];
        }

        [v10 addObjectsFromArray:v14];
      }

      --v6;
    }

    while (v6);
  }

  return v10;
}

- (id)nextAuxiliaryElementManagerFrom:(id)from role:(int64_t)role excludeDisabled:(BOOL)disabled
{
  fromCopy = from;
  if (!fromCopy)
  {
    v15 = 0;
    goto LABEL_18;
  }

  memset_pattern16(__b, &unk_1001BD540, 0x10uLL);
  v9 = 0;
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = (1 << v10);
    if ((v13 & role) != 0)
    {
      __b[v9++] = v13;
    }

    v11 = 0;
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  if (v9 <= 0)
  {
    _AXAssert();
    if (disabled)
    {
LABEL_8:
      v14 = [(SCATElementManager *)self enabledAuxiliaryElementManagersForRoles:__b[0]];
      if (!v14)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  else if (disabled)
  {
    goto LABEL_8;
  }

  auxiliaryElementManagers = [(SCATElementManager *)self auxiliaryElementManagers];
  v17 = [NSNumber numberWithInteger:__b[0]];
  v14 = [auxiliaryElementManagers objectForKeyedSubscript:v17];

  if (!v14)
  {
LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

LABEL_13:
  v18 = [v14 indexOfObject:fromCopy];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  v19 = v18;
  if (v18 >= [v14 count] - 1)
  {
    goto LABEL_16;
  }

  v15 = [v14 objectAtIndexedSubscript:v19 + 1];
LABEL_17:

LABEL_18:

  return v15;
}

- (id)previousAuxiliaryElementManagerTo:(id)to role:(int64_t)role excludeDisabled:(BOOL)disabled
{
  toCopy = to;
  if (!toCopy)
  {
    v16 = 0;
    goto LABEL_17;
  }

  memset_pattern16(__b, &unk_1001BD540, 0x10uLL);
  v9 = 0;
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = (1 << v10);
    if ((v13 & role) != 0)
    {
      __b[v9++] = v13;
    }

    v11 = 0;
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  if (v9 > 0)
  {
    if (disabled)
    {
      goto LABEL_8;
    }

LABEL_14:
    auxiliaryElementManagers = [(SCATElementManager *)self auxiliaryElementManagers];
    v18 = [NSNumber numberWithInteger:__b[0]];
    v14 = [auxiliaryElementManagers objectForKeyedSubscript:v18];

    if (v14)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  _AXAssert();
  if (!disabled)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = [(SCATElementManager *)self enabledAuxiliaryElementManagersForRoles:__b[0]];
  if (v14)
  {
LABEL_9:
    v15 = [v14 indexOfObject:toCopy];
    v16 = 0;
    if (v15 && v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [v14 objectAtIndexedSubscript:v15 - 1];
    }

    goto LABEL_16;
  }

LABEL_15:
  v16 = 0;
LABEL_16:

LABEL_17:

  return v16;
}

- (id)firstAuxiliaryElementWithRole:(int64_t)role
{
  memset_pattern16(__b, &unk_1001BD540, 0x10uLL);
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (1 << v5);
    if ((v9 & role) != 0)
    {
      __b[v6++] = v9;
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  if (v6 <= 0)
  {
    _AXAssert();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(SCATElementManager *)self enabledAuxiliaryElementManagersForRoles:__b[0], 0];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * i) firstElementWithOptions:0];
        if (v15)
        {
          v16 = v15;
          goto LABEL_17;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_17:

  return v16;
}

- (id)lastAuxiliaryElementWithRole:(int64_t)role
{
  memset_pattern16(__b, &unk_1001BD540, 0x10uLL);
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (1 << v5);
    if ((v9 & role) != 0)
    {
      __b[v6++] = v9;
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  if (v6 <= 0)
  {
    _AXAssert();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(SCATElementManager *)self enabledAuxiliaryElementManagersForRoles:__b[0], 0];
  reverseObjectEnumerator = [v10 reverseObjectEnumerator];

  v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) lastElementWithOptions:0];
        if (v16)
        {
          v17 = v16;
          goto LABEL_17;
        }
      }

      v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_17:

  return v17;
}

- (id)auxiliaryElementBefore:(id)before
{
  beforeCopy = before;
  scatAuxiliaryElementManager = [beforeCopy scatAuxiliaryElementManager];
  v6 = scatAuxiliaryElementManager;
  if (scatAuxiliaryElementManager)
  {
    v12 = 0;
    v7 = [scatAuxiliaryElementManager elementBefore:beforeCopy didWrap:&v12 options:0];
    v8 = v7;
    if (v12 == 1)
    {
    }

    else if (v7)
    {
      goto LABEL_10;
    }
  }

  v9 = -[SCATElementManager previousAuxiliaryElementManagerTo:role:excludeDisabled:](self, "previousAuxiliaryElementManagerTo:role:excludeDisabled:", v6, [v6 role], 1);
  if (v9)
  {
    do
    {
      v10 = [v9 lastElementWithOptions:0];
    }

    while (!v10);
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (id)auxiliaryElementAfter:(id)after
{
  afterCopy = after;
  scatAuxiliaryElementManager = [afterCopy scatAuxiliaryElementManager];
  v6 = scatAuxiliaryElementManager;
  if (scatAuxiliaryElementManager)
  {
    v12 = 0;
    v7 = [scatAuxiliaryElementManager elementAfter:afterCopy didWrap:&v12 options:0];
    v8 = v7;
    if (v12 == 1)
    {
    }

    else if (v7)
    {
      goto LABEL_10;
    }
  }

  v9 = -[SCATElementManager nextAuxiliaryElementManagerFrom:role:excludeDisabled:](self, "nextAuxiliaryElementManagerFrom:role:excludeDisabled:", v6, [v6 role], 1);
  if (v9)
  {
    do
    {
      v10 = [v9 firstElementWithOptions:0];
    }

    while (!v10);
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (int64_t)auxiliaryElementCountWithRole:(int64_t)role
{
  memset_pattern16(__b, &unk_1001BD540, 0x10uLL);
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (1 << v5);
    if ((v9 & role) != 0)
    {
      __b[v6++] = v9;
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  if (v6 <= 0)
  {
    _AXAssert();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [(SCATElementManager *)self enabledAuxiliaryElementManagersForRoles:__b[0], 0];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v13 += [*(*(&v17 + 1) + 8 * i) numberOfElements];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)roleForElement:(id)element
{
  parentGroup = [element parentGroup];
  scatIsMemberOfGroup = [parentGroup scatIsMemberOfGroup];

  if (scatIsMemberOfGroup)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (NSString)identifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end