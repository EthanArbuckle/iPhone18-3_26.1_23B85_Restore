@interface SCATElementManager
- (BOOL)isAppleTVRemoteElementManager;
- (BOOL)isElementNavElementManager;
- (BOOL)isGestureDrawingElementManager;
- (BOOL)isGestureProviderElementManager;
- (BOOL)isMenuElementManager;
- (BOOL)isPointPickerElementManager;
- (NSString)identifier;
- (id)allAuxiliaryElementManagers;
- (id)auxiliaryElementAfter:(id)a3;
- (id)auxiliaryElementBefore:(id)a3;
- (id)auxiliaryElementManagersForRole:(int64_t)a3;
- (id)enabledAuxiliaryElementManagersForRoles:(int64_t)a3;
- (id)firstAuxiliaryElementWithRole:(int64_t)a3;
- (id)lastAuxiliaryElementWithRole:(int64_t)a3;
- (id)nextAuxiliaryElementManagerFrom:(id)a3 role:(int64_t)a4 excludeDisabled:(BOOL)a5;
- (id)previousAuxiliaryElementManagerTo:(id)a3 role:(int64_t)a4 excludeDisabled:(BOOL)a5;
- (id)siblingOfElement:(id)a3 inDirection:(int64_t)a4 didWrap:(BOOL *)a5 options:(int *)a6;
- (int64_t)auxiliaryElementCountWithRole:(int64_t)a3;
- (int64_t)roleForElement:(id)a3;
- (unsigned)currentDisplayID;
- (void)appendAuxiliaryElementManager:(id)a3 withRole:(int64_t)a4;
- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5;
- (void)driver:(id)a3 willFocusOnContext:(id)a4;
- (void)driver:(id)a3 willUnfocusFromContext:(id)a4;
- (void)hideIfNeeded:(BOOL)a3;
- (void)orientationDidChange:(id)a3;
- (void)presentWithDisplayContext:(id)a3 animated:(BOOL)a4;
- (void)redisplayIfNeeded:(BOOL)a3;
- (void)removeAuxiliaryElementManagerForAllRoles:(id)a3;
- (void)scannerWillMakeManagerActive:(id)a3;
- (void)scannerWillMakeManagerActive:(id)a3 forDisplayID:(unsigned int)a4;
- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4;
@end

@implementation SCATElementManager

- (BOOL)isElementNavElementManager
{
  v2 = [(SCATElementManager *)self identifier];
  v3 = [v2 isEqualToString:off_100217388[0]];

  return v3;
}

- (BOOL)isMenuElementManager
{
  v2 = [(SCATElementManager *)self identifier];
  v3 = [v2 isEqualToString:off_100217390[0]];

  return v3;
}

- (BOOL)isAppleTVRemoteElementManager
{
  v2 = [(SCATElementManager *)self identifier];
  v3 = [v2 isEqualToString:off_1002173B0];

  return v3;
}

- (BOOL)isPointPickerElementManager
{
  v2 = [(SCATElementManager *)self identifier];
  v3 = [v2 isEqualToString:off_100217398[0]];

  return v3;
}

- (BOOL)isGestureProviderElementManager
{
  v2 = [(SCATElementManager *)self identifier];
  v3 = [v2 isEqualToString:off_1002173A0[0]];

  return v3;
}

- (BOOL)isGestureDrawingElementManager
{
  v2 = [(SCATElementManager *)self identifier];
  v3 = [v2 isEqualToString:off_1002173A8[0]];

  return v3;
}

- (id)siblingOfElement:(id)a3 inDirection:(int64_t)a4 didWrap:(BOOL *)a5 options:(int *)a6
{
  if (a4)
  {
    [(SCATElementManager *)self elementBefore:a3 didWrap:a5 options:a6];
  }

  else
  {
    [(SCATElementManager *)self elementAfter:a3 didWrap:a5 options:a6];
  }
  v6 = ;

  return v6;
}

- (void)scannerWillMakeManagerActive:(id)a3
{
  v8 = a3;
  v4 = [(SCATElementManager *)self currentDisplayContext];

  if (!v4)
  {
    v5 = [v8 scatUIContextForDisplayID:{-[SCATElementManager currentDisplayID](self, "currentDisplayID")}];
    [(SCATElementManager *)self setCurrentDisplayContext:v5];
  }

  v6 = [(SCATElementManager *)self visualProvider];
  v7 = [(SCATElementManager *)self currentDisplayContext];
  [v6 presentWithDisplayContext:v7 animated:0];
}

- (void)scannerWillMakeManagerActive:(id)a3 forDisplayID:(unsigned int)a4
{
  v5 = [a3 scatUIContextForDisplayID:*&a4];
  [(SCATElementManager *)self setCurrentDisplayContext:v5];

  v7 = [(SCATElementManager *)self visualProvider];
  v6 = [(SCATElementManager *)self currentDisplayContext];
  [v7 presentWithDisplayContext:v6 animated:0];
}

- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4
{
  [(SCATElementManager *)self setCurrentDisplayContext:0, a4];
  v5 = [(SCATElementManager *)self visualProvider];
  [v5 dismiss:0];
}

- (void)hideIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATElementManager *)self visualProvider];
  v6 = [v5 isDisplayed];

  if (v6)
  {
    v7 = [(SCATElementManager *)self visualProvider];
    [v7 dismiss:v3];
  }
}

- (void)redisplayIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATElementManager *)self currentDisplayContext];

  if (!v5)
  {
    v6 = [(SCATElementManager *)self currentDisplayID];
    v7 = +[SCATScannerManager sharedManager];
    v8 = [v7 scatUIContextForDisplayID:v6];
    [(SCATElementManager *)self setCurrentDisplayContext:v8];
  }

  v9 = [(SCATElementManager *)self visualProvider];
  v10 = [v9 isDisplayed];

  v12 = [(SCATElementManager *)self visualProvider];
  v11 = [(SCATElementManager *)self currentDisplayContext];
  if (v10)
  {
    [v12 didUpdateWithDisplayContext:v11 animated:v3];
  }

  else
  {
    [v12 presentWithDisplayContext:v11 animated:v3];
  }
}

- (void)presentWithDisplayContext:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  [(SCATElementManager *)self setCurrentDisplayContext:v5];
  v6 = [(SCATElementManager *)self visualProvider];
  [v6 didUpdateWithDisplayContext:v5 animated:1];
}

- (unsigned)currentDisplayID
{
  v3 = [(SCATElementManager *)self currentDisplayContext];

  if (!v3)
  {
    return 1;
  }

  currentDisplayContext = self->_currentDisplayContext;

  return [(UIView *)currentDisplayContext _accessibilityDisplayId];
}

- (void)orientationDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SCATElementManager *)self currentDisplayID];
  v7 = [(SCATElementManager *)self visualProvider];
  v6 = [v4 scatUIContextForDisplayID:v5];

  [v7 orientationDidChange:v6];
}

- (void)driver:(id)a3 willFocusOnContext:(id)a4
{
  v19 = a4;
  v6 = a3;
  v7 = [(SCATElementManager *)self visualProvider];
  v8 = [v19 element];
  [v7 updateCustomFocusingViewStateForViewsWithElement:v8];

  v9 = [v19 element];
  v10 = [v9 scatAuxiliaryElementManager];
  v11 = [(SCATElementManager *)self currentAuxiliaryElementManager];

  if (v10 != v11)
  {
    v12 = [(SCATElementManager *)self currentAuxiliaryElementManager];
    [v12 willResignCurrentAuxiliaryElementManager];

    v13 = [v19 element];
    v14 = [v13 scatAuxiliaryElementManager];
    [v14 willBecomeCurrentAuxiliaryElementManager];

    v15 = [v19 element];
    v16 = [v15 scatAuxiliaryElementManager];
    [(SCATElementManager *)self setCurrentAuxiliaryElementManager:v16];
  }

  v17 = [v19 element];
  v18 = [v17 scatAuxiliaryElementManager];
  [v18 driver:v6 willFocusOnContext:v19];
}

- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = [v8 element];
  v10 = [v11 scatAuxiliaryElementManager];
  [v10 driver:v9 didFocusOnContext:v8 oldContext:v7];
}

- (void)driver:(id)a3 willUnfocusFromContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = [v5 element];
  v7 = [v8 scatAuxiliaryElementManager];
  [v7 driver:v6 willUnfocusFromContext:v5];
}

- (void)appendAuxiliaryElementManager:(id)a3 withRole:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v19 = v6;
    if ([v6 role])
    {
      _AXAssert();
    }

    v7 = [(SCATElementManager *)self auxiliaryElementManagers];

    if (!v7)
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
      if ((v13 & a4) != 0)
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
    v16 = [(SCATElementManager *)self auxiliaryElementManagers];
    v17 = [v16 objectForKeyedSubscript:v15];

    if (!v17)
    {
      v17 = +[NSMutableArray array];
      v18 = [(SCATElementManager *)self auxiliaryElementManagers];
      [v18 setObject:v17 forKeyedSubscript:v15];
    }

    [v17 addObject:v19];

    v6 = v19;
  }
}

- (void)removeAuxiliaryElementManagerForAllRoles:(id)a3
{
  v4 = a3;
  v5 = [(SCATElementManager *)self auxiliaryElementManagers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EC888;
  v7[3] = &unk_1001D7768;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)allAuxiliaryElementManagers
{
  v3 = +[NSMutableArray array];
  v4 = [(SCATElementManager *)self auxiliaryElementManagers];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EC960;
  v7[3] = &unk_1001D7768;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (id)auxiliaryElementManagersForRole:(int64_t)a3
{
  if (a3 == 3)
  {
    v4 = [(SCATElementManager *)self allAuxiliaryElementManagers];
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
      if ((v10 & a3) != 0)
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

    v11 = [(SCATElementManager *)self auxiliaryElementManagers];
    v12 = [NSNumber numberWithInteger:__b[0]];
    v4 = [v11 objectForKeyedSubscript:v12];
  }

  return v4;
}

- (id)enabledAuxiliaryElementManagersForRoles:(int64_t)a3
{
  memset_pattern16(__b, &unk_1001BD540, 0x10uLL);
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (1 << v5);
    if ((v9 & a3) != 0)
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

- (id)nextAuxiliaryElementManagerFrom:(id)a3 role:(int64_t)a4 excludeDisabled:(BOOL)a5
{
  v8 = a3;
  if (!v8)
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
    if ((v13 & a4) != 0)
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
    if (a5)
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

  else if (a5)
  {
    goto LABEL_8;
  }

  v16 = [(SCATElementManager *)self auxiliaryElementManagers];
  v17 = [NSNumber numberWithInteger:__b[0]];
  v14 = [v16 objectForKeyedSubscript:v17];

  if (!v14)
  {
LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

LABEL_13:
  v18 = [v14 indexOfObject:v8];
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

- (id)previousAuxiliaryElementManagerTo:(id)a3 role:(int64_t)a4 excludeDisabled:(BOOL)a5
{
  v8 = a3;
  if (!v8)
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
    if ((v13 & a4) != 0)
    {
      __b[v9++] = v13;
    }

    v11 = 0;
    v10 = 1;
  }

  while ((v12 & 1) != 0);
  if (v9 > 0)
  {
    if (a5)
    {
      goto LABEL_8;
    }

LABEL_14:
    v17 = [(SCATElementManager *)self auxiliaryElementManagers];
    v18 = [NSNumber numberWithInteger:__b[0]];
    v14 = [v17 objectForKeyedSubscript:v18];

    if (v14)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  _AXAssert();
  if (!a5)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = [(SCATElementManager *)self enabledAuxiliaryElementManagersForRoles:__b[0]];
  if (v14)
  {
LABEL_9:
    v15 = [v14 indexOfObject:v8];
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

- (id)firstAuxiliaryElementWithRole:(int64_t)a3
{
  memset_pattern16(__b, &unk_1001BD540, 0x10uLL);
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (1 << v5);
    if ((v9 & a3) != 0)
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

- (id)lastAuxiliaryElementWithRole:(int64_t)a3
{
  memset_pattern16(__b, &unk_1001BD540, 0x10uLL);
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (1 << v5);
    if ((v9 & a3) != 0)
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
  v11 = [v10 reverseObjectEnumerator];

  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) lastElementWithOptions:0];
        if (v16)
        {
          v17 = v16;
          goto LABEL_17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (id)auxiliaryElementBefore:(id)a3
{
  v4 = a3;
  v5 = [v4 scatAuxiliaryElementManager];
  v6 = v5;
  if (v5)
  {
    v12 = 0;
    v7 = [v5 elementBefore:v4 didWrap:&v12 options:0];
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

- (id)auxiliaryElementAfter:(id)a3
{
  v4 = a3;
  v5 = [v4 scatAuxiliaryElementManager];
  v6 = v5;
  if (v5)
  {
    v12 = 0;
    v7 = [v5 elementAfter:v4 didWrap:&v12 options:0];
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

- (int64_t)auxiliaryElementCountWithRole:(int64_t)a3
{
  memset_pattern16(__b, &unk_1001BD540, 0x10uLL);
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (1 << v5);
    if ((v9 & a3) != 0)
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

- (int64_t)roleForElement:(id)a3
{
  v3 = [a3 parentGroup];
  v4 = [v3 scatIsMemberOfGroup];

  if (v4)
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