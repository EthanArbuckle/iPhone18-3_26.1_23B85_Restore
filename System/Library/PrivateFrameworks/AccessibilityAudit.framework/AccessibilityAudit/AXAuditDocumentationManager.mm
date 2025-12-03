@interface AXAuditDocumentationManager
+ (id)_appleDocViewerURLForWebDocURL:(id)l;
+ (id)_docTypeCatalystDictionary;
+ (id)_docTypeDictionary;
+ (id)_getOriginaliOSTitle:(id)title;
+ (id)_macOSToiOSTitleDictionary;
+ (id)appleDocURLForType:(int64_t)type;
+ (id)appleDocViewerURLs;
+ (id)sharedManager;
+ (id)webDocURLForType:(int64_t)type;
+ (id)webpageURLs;
+ (int64_t)getAXDocumentationType:(id)type isCatalyst:(BOOL)catalyst;
@end

@implementation AXAuditDocumentationManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__AXAuditDocumentationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_5 != -1)
  {
    dispatch_once(&sharedManager_onceToken_5, block);
  }

  v2 = sharedManager_instance_5;

  return v2;
}

uint64_t __44__AXAuditDocumentationManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_instance_5 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)webpageURLs
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AXAuditDocumentationManager_webpageURLs__block_invoke;
  block[3] = &unk_278BE2CD0;
  v6 = @"https://developer.apple.com";
  if (webpageURLs_once != -1)
  {
    dispatch_once(&webpageURLs_once, block);
  }

  v2 = webpageURLs_returnValue;
  v3 = webpageURLs_returnValue;

  return v2;
}

void __42__AXAuditDocumentationManager_webpageURLs__block_invoke(uint64_t a1)
{
  v52[46] = *MEMORY[0x277D85DE8];
  v51[0] = &unk_284FC3E50;
  v50 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitylabel()"];
  v52[0] = v50;
  v51[1] = &unk_284FC3E68;
  v49 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitytitle()"];
  v52[1] = v49;
  v51[2] = &unk_284FC3E80;
  v48 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityvalue()"];
  v52[2] = v48;
  v51[3] = &unk_284FC3E98;
  v47 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityroledescription()"];
  v52[3] = v47;
  v51[4] = &unk_284FC3EB0;
  v46 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitychildren()"];
  v52[4] = v46;
  v51[5] = &unk_284FC3EC8;
  v45 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitychildreninnavigationorder()"];
  v52[5] = v45;
  v51[6] = &unk_284FC3EE0;
  v44 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityextrasmenubar()"];
  v52[6] = v44;
  v51[7] = &unk_284FC3EF8;
  v43 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilitylayoutarea/accessibilityfocuseduielement"];
  v52[7] = v43;
  v51[8] = &unk_284FC3F10;
  v42 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityfocusedwindow()"];
  v52[8] = v42;
  v51[9] = &unk_284FC3F28;
  v41 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/isaccessibilityfrontmost()"];
  v52[9] = v41;
  v51[10] = &unk_284FC3F40;
  v40 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibility/attribute/1530325-topleveluielement"];
  v52[10] = v40;
  v51[11] = &unk_284FC3F58;
  v39 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/isaccessibilityhidden()"];
  v52[11] = v39;
  v51[12] = &unk_284FC3F70;
  v38 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitymainwindow()"];
  v52[12] = v38;
  v51[13] = &unk_284FC3F88;
  v37 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitymenubar()"];
  v52[13] = v37;
  v51[14] = &unk_284FC3FA0;
  v36 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityrole()"];
  v52[14] = v36;
  v51[15] = &unk_284FC3FB8;
  v35 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitywindows()"];
  v52[15] = v35;
  v51[16] = &unk_284FC3FD0;
  v34 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1411337-classname"];
  v52[16] = v34;
  v51[17] = &unk_284FC3FE8;
  v33 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityperformshowmenu()"];
  v52[17] = v33;
  v51[18] = &unk_284FC4000;
  v32 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityperformpress()"];
  v52[18] = v32;
  v51[19] = &unk_284FC4018;
  v31 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilitypositionattribute"];
  v52[19] = v31;
  v51[20] = &unk_284FC4030;
  v30 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilitysizeattribute"];
  v52[20] = v30;
  v51[21] = &unk_284FC4048;
  v29 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityparent()"];
  v52[21] = v29;
  v51[22] = &unk_284FC4060;
  v28 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityhelp()"];
  v52[22] = v28;
  v51[23] = &unk_284FC4078;
  v27 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityframe()"];
  v52[23] = v27;
  v51[24] = &unk_284FC4090;
  v26 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/isaccessibilityfocused()"];
  v52[24] = v26;
  v51[25] = &unk_284FC40A8;
  v25 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/isaccessibilityenabled()"];
  v52[25] = v25;
  v51[26] = &unk_284FC40C0;
  v24 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityactivationpoint()"];
  v52[26] = v24;
  v51[27] = &unk_284FC40D8;
  v23 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitywindow()"];
  v52[27] = v23;
  v51[28] = &unk_284FC40F0;
  v22 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilityurl()"];
  v52[28] = v22;
  v51[29] = &unk_284FC4108;
  v21 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitytopleveluielement()"];
  v52[29] = v21;
  v51[30] = &unk_284FC4120;
  v20 = [*(a1 + 32) stringByAppendingString:@"/documentation/appkit/nsaccessibilityprotocol/accessibilitysubrole()"];
  v52[30] = v20;
  v51[31] = &unk_284FC4138;
  v19 = [*(a1 + 32) stringByAppendingString:@"/documentation/uikit/uiaccessibilityelement/1619577-accessibilitylabel"];
  v52[31] = v19;
  v51[32] = &unk_284FC4150;
  v18 = [*(a1 + 32) stringByAppendingString:@"/documentation/uikit/uiaccessibilityelement/1619583-accessibilityvalue"];
  v52[32] = v18;
  v51[33] = &unk_284FC4168;
  v17 = [*(a1 + 32) stringByAppendingString:@"/documentation/uikit/uiaccessibilityelement/1619584-accessibilitytraits"];
  v52[33] = v17;
  v51[34] = &unk_284FC4180;
  v16 = [*(a1 + 32) stringByAppendingString:@"/documentation/uikit/uiaccessibilityidentification"];
  v52[34] = v16;
  v51[35] = &unk_284FC4198;
  v15 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/uiaccessibilityaction"];
  v52[35] = v15;
  v51[36] = &unk_284FC41B0;
  v2 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615093-accessibilityhint"];
  v52[36] = v2;
  v51[37] = &unk_284FC41C8;
  v3 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/3197989-accessibilityuserinputlabels"];
  v52[37] = v3;
  v51[38] = &unk_284FC41E0;
  v4 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615165-accessibilityactivate"];
  v52[38] = v4;
  v51[39] = &unk_284FC41F8;
  v5 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615076-accessibilityincrement"];
  v52[39] = v5;
  v51[40] = &unk_284FC4210;
  v6 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615169-accessibilitydecrement"];
  v52[40] = v6;
  v51[41] = &unk_284FC4228;
  v7 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615161-accessibilityscroll"];
  v52[41] = v7;
  v51[42] = &unk_284FC4240;
  v8 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615202-accessibilitytraits"];
  v52[42] = v8;
  v51[43] = &unk_284FC4258;
  v9 = [*(a1 + 32) stringByAppendingString:@"/documentation/uikit/uiaccessibility/uiaccessibilitycontainertype"];
  v52[43] = v9;
  v51[44] = &unk_284FC4270;
  v10 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615181-accessibilitylabel"];
  v52[44] = v10;
  v51[45] = &unk_284FC4288;
  v11 = [*(a1 + 32) stringByAppendingString:@"/documentation/objectivec/nsobject/1615117-accessibilityvalue"];
  v52[45] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:46];
  v13 = webpageURLs_returnValue;
  webpageURLs_returnValue = v12;

  v14 = *MEMORY[0x277D85DE8];
}

+ (id)appleDocViewerURLs
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__AXAuditDocumentationManager_appleDocViewerURLs__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (appleDocViewerURLs_once != -1)
  {
    dispatch_once(&appleDocViewerURLs_once, block);
  }

  return 0;
}

void __49__AXAuditDocumentationManager_appleDocViewerURLs__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) webpageURLs];
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * v5);
        v7 = [*(a1 + 32) webpageURLs];
        v8 = [v7 objectForKey:v6];

        v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];
        if (v9)
        {
          v10 = [*(a1 + 32) _appleDocViewerURLForWebDocURL:v9];
          v11 = [v10 absoluteString];
          if (v11)
          {
            [0 setObject:v11 forKey:v6];
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)appleDocURLForType:(int64_t)type
{
  v3 = [objc_opt_class() webDocURLForType:type];
  if (v3)
  {
    v4 = [objc_opt_class() _appleDocViewerURLForWebDocURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_appleDocViewerURLForWebDocURL:(id)l
{
  if (l)
  {
    absoluteString = [l absoluteString];
    v4 = [absoluteString stringByReplacingOccurrencesOfString:@"/" withString:@"%252F"];

    v5 = [v4 stringByReplacingOccurrencesOfString:@"https:%252F%252Fdeveloper.apple.com" withString:@"x-xcode-documentation:/apple-built-in/doc%253A%252F%252Fcom.apple.documentation"];

    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)webDocURLForType:(int64_t)type
{
  webpageURLs = [self webpageURLs];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v6 = [webpageURLs objectForKey:v5];

  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];

  return v7;
}

+ (id)_getOriginaliOSTitle:(id)title
{
  titleCopy = title;
  _macOSToiOSTitleDictionary = [self _macOSToiOSTitleDictionary];
  v6 = [_macOSToiOSTitleDictionary objectForKeyedSubscript:titleCopy];

  if (v6)
  {
    v7 = [_macOSToiOSTitleDictionary objectForKeyedSubscript:titleCopy];
  }

  else
  {
    v7 = titleCopy;
  }

  v8 = v7;

  return v8;
}

+ (int64_t)getAXDocumentationType:(id)type isCatalyst:(BOOL)catalyst
{
  catalystCopy = catalyst;
  typeCopy = type;
  if (catalystCopy)
  {
    v7 = [objc_opt_class() _getOriginaliOSTitle:typeCopy];

    _docTypeCatalystDictionary = [self _docTypeCatalystDictionary];
    v9 = [_docTypeCatalystDictionary objectForKeyedSubscript:v7];
    typeCopy = v7;
  }

  else
  {
    _docTypeCatalystDictionary = [self _docTypeDictionary];
    v10 = [_docTypeCatalystDictionary objectForKeyedSubscript:typeCopy];

    if (!v10)
    {
      intValue = 0;
      goto LABEL_6;
    }

    v9 = [_docTypeCatalystDictionary objectForKeyedSubscript:typeCopy];
  }

  intValue = [v9 intValue];

LABEL_6:
  return intValue;
}

+ (id)_macOSToiOSTitleDictionary
{
  if (_macOSToiOSTitleDictionary_once != -1)
  {
    +[AXAuditDocumentationManager _macOSToiOSTitleDictionary];
  }

  v3 = _macOSToiOSTitleDictionary_macOSToiOSTitleDictionary;

  return v3;
}

void __57__AXAuditDocumentationManager__macOSToiOSTitleDictionary__block_invoke()
{
  v0 = _macOSToiOSTitleDictionary_macOSToiOSTitleDictionary;
  _macOSToiOSTitleDictionary_macOSToiOSTitleDictionary = &unk_284FC4348;
}

+ (id)_docTypeCatalystDictionary
{
  if (_docTypeCatalystDictionary_once != -1)
  {
    +[AXAuditDocumentationManager _docTypeCatalystDictionary];
  }

  v3 = _docTypeCatalystDictionary_docTypeCatalystDictionary;

  return v3;
}

void __57__AXAuditDocumentationManager__docTypeCatalystDictionary__block_invoke()
{
  v0 = _docTypeCatalystDictionary_docTypeCatalystDictionary;
  _docTypeCatalystDictionary_docTypeCatalystDictionary = &unk_284FC4370;
}

+ (id)_docTypeDictionary
{
  if (_docTypeDictionary_once != -1)
  {
    +[AXAuditDocumentationManager _docTypeDictionary];
  }

  v3 = _docTypeDictionary_docTypeDictionary;

  return v3;
}

void __49__AXAuditDocumentationManager__docTypeDictionary__block_invoke()
{
  v0 = _docTypeDictionary_docTypeDictionary;
  _docTypeDictionary_docTypeDictionary = &unk_284FC4398;
}

@end