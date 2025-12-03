@interface AXElement(AXFocusEngine)
- (double)elementLabelContainerSize;
- (id)applicationForHostFocusSystem;
- (id)elementForRemoteFocusSystem;
- (id)elementName;
- (id)remoteSceneID;
- (uint64_t)applicationIsExtension;
- (uint64_t)hasNativeFocusElements;
- (uint64_t)hasRemoteFocusSystem;
- (uint64_t)moveFocusWithHeading:()AXFocusEngine byGroup:;
- (uint64_t)moveFocusWithHeading:()AXFocusEngine withQueryString:;
- (void)didFocus;
- (void)focusOnRemoteSceneID;
@end

@implementation AXElement(AXFocusEngine)

- (id)elementName
{
  v23 = *MEMORY[0x277D85DE8];
  typeaheadQueryString = [self typeaheadQueryString];
  v3 = [typeaheadQueryString length];

  if (v3)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    userInputLabels = [self userInputLabels];
    v5 = [userInputLabels countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(userInputLabels);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          lowercaseString = [v9 lowercaseString];
          typeaheadQueryString2 = [self typeaheadQueryString];
          lowercaseString2 = [typeaheadQueryString2 lowercaseString];
          v13 = [lowercaseString containsString:lowercaseString2];

          if (v13)
          {
            firstObject = v9;
            goto LABEL_13;
          }
        }

        v6 = [userInputLabels countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  userInputLabels = [self userInputLabels];
  firstObject = [userInputLabels firstObject];
LABEL_13:
  v15 = firstObject;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (double)elementLabelContainerSize
{
  result = *MEMORY[0x277CBF3A8];
  v1 = *(MEMORY[0x277CBF3A8] + 8);
  return result;
}

- (uint64_t)hasRemoteFocusSystem
{
  uiElement = [self uiElement];
  v2 = [uiElement BOOLWithAXAttribute:12008];

  return v2;
}

- (uint64_t)applicationIsExtension
{
  uiElement = [self uiElement];
  v2 = [uiElement BOOLWithAXAttribute:3047];

  return v2;
}

- (id)elementForRemoteFocusSystem
{
  if ([self hasRemoteFocusSystem])
  {
    remoteSceneID = [self remoteSceneID];
    uiElement = [self uiElement];
    v4 = [uiElement numberWithAXAttribute:12009];
    [v4 intValue];

    AppElementWithPid = _AXUIElementCreateAppElementWithPid();
    v6 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:AppElementWithPid];
    if (AppElementWithPid)
    {
      CFRelease(AppElementWithPid);
    }

    v7 = [v6 elementForAttribute:95256 parameter:remoteSceneID];
    v8 = [v6 focusContainersForCurrentSceneIdentifier:0];
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__AXElement_AXFocusEngine__elementForRemoteFocusSystem__block_invoke;
    v15[3] = &unk_278BE58F8;
    v10 = v9;
    v16 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:v15];
    if ([v10 count] == 1)
    {
      firstObject = [v10 firstObject];

      v7 = firstObject;
    }

    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v6;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)applicationForHostFocusSystem
{
  uiElement = [self uiElement];
  v2 = [uiElement numberWithAXAttribute:12010];
  intValue = [v2 intValue];

  if (intValue < 1)
  {
    v5 = 0;
  }

  else
  {
    AppElementWithPid = _AXUIElementCreateAppElementWithPid();
    v5 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:AppElementWithPid];
    if (AppElementWithPid)
    {
      CFRelease(AppElementWithPid);
    }
  }

  return v5;
}

- (id)remoteSceneID
{
  if ([self hasRemoteFocusSystem])
  {
    uiElement = [self uiElement];
    v3 = [uiElement objectWithAXAttribute:12014];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)focusOnRemoteSceneID
{
  remoteSceneID = [self remoteSceneID];
  if (remoteSceneID)
  {
    v5 = remoteSceneID;
    elementForRemoteFocusSystem = [self elementForRemoteFocusSystem];
    application = [elementForRemoteFocusSystem application];
    [application performAction:5310 withValue:v5];

    remoteSceneID = v5;
  }
}

- (void)didFocus
{
  uiElement = [self uiElement];
  [uiElement performAXAction:5307];
}

- (uint64_t)moveFocusWithHeading:()AXFocusEngine byGroup:
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v12[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [self performAction:5300 withValue:v8];

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (uint64_t)moveFocusWithHeading:()AXFocusEngine withQueryString:
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInteger:a3];
  v13[0] = v8;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v10 = [self performAction:5304 withValue:v9];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (uint64_t)hasNativeFocusElements
{
  uiElement = [self uiElement];
  v2 = [uiElement BOOLWithAXAttribute:3048];

  return v2;
}

@end