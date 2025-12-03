@interface AXElementGroup
- (BOOL)isHandUI;
- (BOOL)isVisible;
- (BOOL)scatCanScrollInAtLeastOneDirection;
- (BOOL)scatIndicatesOwnFocus;
- (BOOL)scatIsAuxiliaryElement;
- (BOOL)scatIsMemberOfGroup;
- (BOOL)scatIsOnScreen;
- (BOOL)scatIsValid;
- (BOOL)scatShouldActivateDirectly;
- (CGPoint)scatCenterPoint;
- (CGPoint)scatScreenPointForOperations;
- (CGRect)scatTextCursorFrame;
- (id)elemLog;
- (id)scatSpeakableDescription:(BOOL)description;
- (id)scatValue;
- (id)scrollableElement;
- (unint64_t)scatScanningBehaviorTraits;
- (unsigned)scatDisplayId;
- (void)prepareElementsForScanning:(id)scanning;
- (void)scatScrollToVisible;
@end

@implementation AXElementGroup

- (id)elemLog
{
  v3 = [NSMutableString stringWithString:@"{ "];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v5 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isGroup])
        {
          [v9 elemLog];
        }

        else
        {
          [v9 scatSpeakableDescription];
        }
        v10 = ;
        if (![(__CFString *)v10 length])
        {

          v10 = @"[no label]";
        }

        [v3 appendFormat:@"%@ ", v10];
      }

      v6 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"}"];

  return v3;
}

- (CGPoint)scatCenterPoint
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)scatScreenPointForOperations
{
  [(AXElementGroup *)self scatFrame];
  sub_1000427AC(v2, v3, v4, v5);

  AX_CGRectGetCenter();
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGRect)scatTextCursorFrame
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (unint64_t)scatScanningBehaviorTraits
{
  result = [(AXElementGroup *)self userDefinedScanningBehaviorTraits];
  if ((result & 0x10) != 0)
  {
    firstLeafDescendant = [(AXElementGroup *)self firstLeafDescendant];
    scanningBehaviorTraits = [firstLeafDescendant scanningBehaviorTraits];

    return scanningBehaviorTraits;
  }

  return result;
}

- (BOOL)scatIsMemberOfGroup
{
  parentGroup = [(AXElementGroup *)self parentGroup];
  v3 = parentGroup != 0;

  return v3;
}

- (BOOL)scatIsAuxiliaryElement
{
  scatAuxiliaryElementManager = [(AXElementGroup *)self scatAuxiliaryElementManager];
  v3 = scatAuxiliaryElementManager != 0;

  return v3;
}

- (BOOL)scatShouldActivateDirectly
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 switchControlShouldAlwaysActivateKeyboardKeys] && objc_msgSend(v3, "switchControlTapBehavior") != 2 && (-[AXElementGroup keyboardContainer](self, "keyboardContainer"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    scatShouldActivateDirectly = 1;
  }

  else if ([(AXElementGroup *)self count])
  {
    v6 = [(AXElementGroup *)self objectAtIndex:0];
    scatShouldActivateDirectly = [v6 scatShouldActivateDirectly];
  }

  else
  {
    scatShouldActivateDirectly = 0;
  }

  return scatShouldActivateDirectly;
}

- (BOOL)scatIndicatesOwnFocus
{
  v3 = [(AXElementGroup *)self count];
  if (v3)
  {
    v4 = [(AXElementGroup *)self objectAtIndex:0];
    scatIndicatesOwnFocus = [v4 scatIndicatesOwnFocus];

    LOBYTE(v3) = scatIndicatesOwnFocus;
  }

  return v3;
}

- (id)scrollableElement
{
  if ([(AXElementGroup *)self count])
  {
    v3 = [(AXElementGroup *)self objectAtIndex:0];
    scrollableElement = [v3 scrollableElement];
  }

  else
  {
    scrollableElement = 0;
  }

  return scrollableElement;
}

- (BOOL)scatCanScrollInAtLeastOneDirection
{
  v3 = [(AXElementGroup *)self count];
  if (v3)
  {
    v4 = [(AXElementGroup *)self objectAtIndex:0];
    scatCanScrollInAtLeastOneDirection = [v4 scatCanScrollInAtLeastOneDirection];

    LOBYTE(v3) = scatCanScrollInAtLeastOneDirection;
  }

  return v3;
}

- (id)scatSpeakableDescription:(BOOL)description
{
  accessibilityLabel = [(AXElementGroup *)self accessibilityLabel];

  if (accessibilityLabel)
  {
    accessibilityLabel2 = [(AXElementGroup *)self accessibilityLabel];
LABEL_7:
    v7 = accessibilityLabel2;
    goto LABEL_8;
  }

  label = [(AXElementGroup *)self label];

  if (label)
  {
    accessibilityLabel2 = [(AXElementGroup *)self label];
    goto LABEL_7;
  }

  if ([(AXElementGroup *)self isKeyboardContainer])
  {
    accessibilityLabel2 = sub_100042B24(@"KEYBOARD");
    goto LABEL_7;
  }

  v9 = [(AXElementGroup *)self descendantsPassingTest:&stru_1001D71C0];
  v10 = sub_100042B24(@"GROUP_DESCRIPTION");
  firstObject = [v9 firstObject];
  scatSpeakableDescription = [firstObject scatSpeakableDescription];
  lastObject = [v9 lastObject];
  scatSpeakableDescription2 = [lastObject scatSpeakableDescription];
  v7 = [NSString stringWithFormat:v10, scatSpeakableDescription, scatSpeakableDescription2];

LABEL_8:

  return v7;
}

- (id)scatValue
{
  v4.receiver = self;
  v4.super_class = AXElementGroup;
  accessibilityValue = [(AXElementGroup *)&v4 accessibilityValue];

  return accessibilityValue;
}

- (BOOL)scatIsValid
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  selfCopy = self;
  v3 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(selfCopy);
        }

        if ([*(*(&v7 + 1) + 8 * i) scatIsValid])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)scatScrollToVisible
{
  [(AXElementGroup *)self enumerateObjectsUsingBlock:&stru_1001D7200];

  [(AXElementGroup *)self enumerateObjectsWithOptions:2 usingBlock:&stru_1001D7220];
}

- (BOOL)scatIsOnScreen
{
  [(AXElementGroup *)self frame];
  MinX = CGRectGetMinX(v13);
  [(AXElementGroup *)self frame];
  MaxX = CGRectGetMaxX(v14);
  [(AXElementGroup *)self frame];
  MinY = CGRectGetMinY(v15);
  [(AXElementGroup *)self frame];
  MaxY = CGRectGetMaxY(v16);
  [HNDHandManager screenFrame:]_0();
  v8 = v7;
  [HNDHandManager screenFrame:]_0();
  v9 = fmin(MinX, MinY);
  v10 = MaxX <= v8;
  if (MaxY > v11)
  {
    v10 = 0;
  }

  return v9 >= 0.0 && v10;
}

- (unsigned)scatDisplayId
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D0F88;
  v4[3] = &unk_1001D7248;
  v4[4] = &v5;
  [(AXElementGroup *)self enumerateObjectsUsingBlock:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isHandUI
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  selfCopy = self;
  v3 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(selfCopy);
        }

        if ([*(*(&v7 + 1) + 8 * i) isHandUI])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isVisible
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  selfCopy = self;
  v3 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(selfCopy);
        }

        if ([*(*(&v7 + 1) + 8 * i) isVisible])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(AXElementGroup *)selfCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)prepareElementsForScanning:(id)scanning
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D123C;
  v3[3] = &unk_1001D50E0;
  v3[4] = self;
  [scanning enumerateObjectsUsingBlock:v3];
}

@end