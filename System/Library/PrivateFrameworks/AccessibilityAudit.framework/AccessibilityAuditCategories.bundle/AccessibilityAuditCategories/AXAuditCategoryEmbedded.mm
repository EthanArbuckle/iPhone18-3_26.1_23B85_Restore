@interface AXAuditCategoryEmbedded
+ (CGRect)_appRelativeRectForRect:(CGRect)rect contextId:(unsigned int)id;
+ (int64_t)axDeviceOrientationForInterfaceOrientation:(int)orientation;
- ($5A02F7D70E7A678ABCAACDC101C00631)windowContextInformation;
- (CGRect)frameForElement:(id)element;
- (CGRect)orientedFrameForElement:(id)element;
- (CGRect)orientedFrameForRect:(CGRect)rect;
- (CGRect)orientedScreenBounds;
- (id)_topLevelAppElement;
- (id)elementDescriptionForElement:(id)element;
- (id)iOSFrontmostAppForTargetPid;
- (int)interfaceOrientation;
- (void)testOnAllVisibleElements:(id)elements;
@end

@implementation AXAuditCategoryEmbedded

- (void)testOnAllVisibleElements:(id)elements
{
  elementsCopy = elements;
  iOSFrontmostAppForTargetPid = [(AXAuditCategoryEmbedded *)self iOSFrontmostAppForTargetPid];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  visibleElements = [iOSFrontmostAppForTargetPid visibleElements];
  v7 = [visibleElements countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(visibleElements);
        }

        elementsCopy[2](elementsCopy, *(*(&v11 + 1) + 8 * v10));
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [visibleElements countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)iOSFrontmostAppForTargetPid
{
  if ([(AXAuditCategoryEmbedded *)self targetPid])
  {
    AXAuditCurrentApplications();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v15 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = AXAuditPidForElement();
        if ([(AXAuditCategoryEmbedded *)self targetPid]== v9)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v10 = v8;

      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:
    }
  }

  v10 = iOSFrontmostApp();
LABEL_13:

  return v10;
}

- (CGRect)frameForElement:(id)element
{
  [element frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)orientedFrameForElement:(id)element
{
  [element frame];

  [(AXAuditCategoryEmbedded *)self orientedFrameForRect:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)orientedFrameForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v7 = [objc_opt_class() axDeviceOrientationForInterfaceOrientation:{-[AXAuditCategoryEmbedded interfaceOrientation](self, "interfaceOrientation")}];
  v8.n128_f64[0] = x;
  v9.n128_f64[0] = y;
  v10.n128_f64[0] = width;
  v11.n128_f64[0] = height;

  _AX_CGRectToOrientation(v7, v8, v9, v10, v11);
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)elementDescriptionForElement:(id)element
{
  elementRef = [element elementRef];
  pid = 0;
  if (AXUIElementGetPid(elementRef, &pid) || !AuditDoesAllowDeveloperAttributes())
  {
    goto LABEL_7;
  }

  cf = 0;
  v4 = AXUIElementCopyAttributeValue(elementRef, (&loc_13B4 + 1), &cf);
  v5 = 0;
  if (v4 == kAXErrorSuccess)
  {
    if (cf)
    {
      v6 = CFGetTypeID(cf);
      TypeID = CFStringGetTypeID();
      v5 = cf;
      if (v6 != TypeID)
      {
        CFRelease(cf);
LABEL_7:
        v5 = 0;
      }
    }
  }

  return v5;
}

- (id)_topLevelAppElement
{
  iOSFrontmostAppForTargetPid = [(AXAuditCategoryEmbedded *)self iOSFrontmostAppForTargetPid];
  uiElement = [iOSFrontmostAppForTargetPid uiElement];

  return uiElement;
}

- (int)interfaceOrientation
{
  _topLevelAppElement = [(AXAuditCategoryEmbedded *)self _topLevelAppElement];
  v3 = [_topLevelAppElement uiElementsWithAttribute:2017];
  lastObject = [v3 lastObject];

  v5 = [lastObject numberWithAXAttribute:3035];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    v7 = +[AXUIElement uiSystemWideApplication];
    v8 = [v7 uiElementsWithAttribute:1001];
    lastObject2 = [v8 lastObject];

    v10 = [lastObject2 numberWithAXAttribute:1503];
    intValue = [v10 intValue];

    if (intValue <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = intValue;
    }

    unsignedIntegerValue = [objc_opt_class() axInterfaceOrientationForDeviceOrientation:v12];
  }

  return unsignedIntegerValue;
}

+ (int64_t)axDeviceOrientationForInterfaceOrientation:(int)orientation
{
  v3 = (orientation - 1);
  if (v3 < 4)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (CGRect)orientedScreenBounds
{
  AXDeviceGetMainScreenBounds();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(AXAuditCategoryEmbedded *)self interfaceOrientation]- 3 <= 1)
  {
    AXDeviceGetMainScreenBounds();
    v8 = v11;
    AXDeviceGetMainScreenBounds();
    v10 = v12;
  }

  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- ($5A02F7D70E7A678ABCAACDC101C00631)windowContextInformation
{
  _topLevelAppElement = [(AXAuditCategoryEmbedded *)self _topLevelAppElement];
  v3 = [_topLevelAppElement arrayWithAXAttribute:3052];
  v39 = +[NSMutableArray array];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v3;
  v8 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = @"contextId";
    v11 = *v45;
    v12 = &AXAuditCurrentApplications_ptr;
    do
    {
      v13 = 0;
      v40 = v9;
      do
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v44 + 1) + 8 * v13);
        v15 = [v14 objectForKeyedSubscript:v10];
        v16 = [v14 objectForKeyedSubscript:@"isKeyboardWindow"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v14 objectForKeyedSubscript:@"isKeyboardWindow"];
          bOOLValue = [v17 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        v19 = [v14 objectForKeyedSubscript:@"isMainWindow"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v12;
          v21 = v11;
          v22 = v10;
          v23 = [v14 objectForKeyedSubscript:@"isKeyboardWindow"];
          bOOLValue2 = [v23 BOOLValue];

          if (bOOLValue & 1 | ((bOOLValue2 & 1) == 0))
          {
            v10 = v22;
            v11 = v21;
          }

          else
          {
            v25 = [v14 objectForKeyedSubscript:@"frame"];

            valuePtr = 0u;
            v43 = 0u;
            AXValueGetValue(v25, kAXValueTypeCGRect, &valuePtr);
            if (v15)
            {
              [v39 addObject:v15];
            }

            v26 = objc_opt_class();
            unsignedIntValue = [v15 unsignedIntValue];
            [v26 _appRelativeRectForRect:unsignedIntValue contextId:{valuePtr, v43}];
            v29 = v28;
            v31 = v30;
            v33 = v32;
            v35 = v34;
            v49.origin.x = x;
            v49.origin.y = y;
            v49.size.width = width;
            v49.size.height = height;
            v10 = v22;
            if (!CGRectIsEmpty(v49))
            {
              v50.origin.x = x;
              v50.origin.y = y;
              v50.size.width = width;
              v50.size.height = height;
              v52.origin.x = v29;
              v52.origin.y = v31;
              v52.size.width = v33;
              v52.size.height = v35;
              v51 = CGRectUnion(v50, v52);
              v29 = v51.origin.x;
              v31 = v51.origin.y;
              v33 = v51.size.width;
              v35 = v51.size.height;
            }

            v11 = v21;
            height = v35;
            width = v33;
            y = v31;
            x = v29;
          }

          v12 = v20;
          v9 = v40;
        }

        else
        {
        }

        v13 = v13 + 1;
      }

      while (v9 != v13);
      v9 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v9);
  }

  retstr->var0 = v39;
  retstr->var1.origin.x = x;
  retstr->var1.origin.y = y;
  retstr->var1.size.width = width;
  retstr->var1.size.height = height;

  return result;
}

+ (CGRect)_appRelativeRectForRect:(CGRect)rect contextId:(unsigned int)id
{
  v4 = *&id;
  valuePtr = rect;
  v5 = AXValueCreate(kAXValueTypeCGRect, &valuePtr);
  v6 = +[AXUIElement uiSystemWideApplication];
  v7 = [NSNumber numberWithUnsignedInt:v4];
  v8 = [v6 objectWithAXAttribute:91505 parameter:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", v5, v7, 0)}];

  if (v5)
  {
    CFRelease(v5);
  }

  if (v8)
  {
    AXValueGetValue(v8, kAXValueTypeCGRect, &valuePtr);
  }

  width = valuePtr.size.width;
  height = valuePtr.size.height;
  x = valuePtr.origin.x;
  y = valuePtr.origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end