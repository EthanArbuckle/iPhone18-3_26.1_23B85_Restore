@interface StepByStepUIViewController_ExtendWirelessNetworkChoice
- (BOOL)canBeExtendedWithDWDS;
- (void)addBrowsedRecords:(id)records toDestList:(id)list;
- (void)selectedDeviceUpdated;
- (void)setupDevices;
- (void)setupHeaderAndFooter;
- (void)stepByStepUpdateProgress:(id)progress forState:(int)state;
- (void)touchInCellAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_ExtendWirelessNetworkChoice

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7 = objc_msgSend_objectForKey_(self->super.super.super._outResultsDict, a2, @"kSBSKey_SelectorChoice");
  if (!v7)
  {
    v8 = objc_msgSend_inParamDict(self, v5, v6);
    v7 = objc_msgSend_objectForKey_(v8, v9, @"kSBSKey_SelectorChoice");
    if (!v7)
    {
      v7 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, 211);
    }

    objc_msgSend_setObject_forKey_(self->super.super.super._outResultsDict, v10, v7, @"kSBSKey_SelectorChoice");
  }

  *(&self->super.showFullList + 3) = objc_msgSend_integerValue(v7, v5, v6);
  sourceNetwork = self->super._sourceNetwork;
  if (sourceNetwork)
  {
    objc_msgSend_setObject_forKey_(self->super.super.super._outResultsDict, v11, sourceNetwork, @"kSBSKey_SourceNetwork");
  }

  sourceBase = self->super._sourceBase;
  if (sourceBase)
  {
    objc_msgSend_setObject_forKey_(self->super.super.super._outResultsDict, v11, sourceBase, @"kSBSKey_SourceBase");
  }

  v14.receiver = self;
  v14.super_class = StepByStepUIViewController_ExtendWirelessNetworkChoice;
  [(StepByStepUIViewController_DevicePicker *)&v14 viewWillAppear:appearCopy];
}

- (void)setupHeaderAndFooter
{
  v4 = MEMORY[0x277CBEA60];
  v5 = objc_msgSend_justTextContainerView(self, a2, v2);
  v8 = objc_msgSend_topoView(self, v6, v7);
  v10 = objc_msgSend_arrayWithObjects_(v4, v9, v5, v8, 0);
  v13 = objc_msgSend_parentController(self, v11, v12);
  v16 = objc_msgSend_tableHeaderContainerView(self, v14, v15);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v13, v17, v16, v10, 1);
  v20 = objc_msgSend_tableHeaderContainerView(self, v18, v19);
  v23 = objc_msgSend_tableView(self, v21, v22);

  objc_msgSend_setTableHeaderView_(v23, v24, v20);
}

- (void)selectedDeviceUpdated
{
  canBeExtendedWithDWDS = objc_msgSend_canBeExtendedWithDWDS(self, a2, v2);
  if (canBeExtendedWithDWDS)
  {
    v6 = @"StepByStepStatus_ExtendWireless%@";
  }

  else
  {
    v6 = @"PrimarySetupRecommendation_Join.Specific%@";
  }

  if (canBeExtendedWithDWDS)
  {
    v7 = 211;
  }

  else
  {
    v7 = 212;
  }

  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v5, v6);
  outResultsDict = self->super.super.super._outResultsDict;
  v11 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v10, v7);
  objc_msgSend_setObject_forKey_(outResultsDict, v12, v11, @"kSBSKey_SelectorChoice");
  v14 = objc_msgSend_nameForNetworkOrDevice_(StepByStepUtilities, v13, self->super._selectedDevice);
  justTextLabel = self->super.super.justTextLabel;
  justTextContainerView = self->super.super.justTextContainerView;
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v17, ProductLocalizedStringWithFormat, @"%@", 0, v14);
  sub_23EB5E054(justTextLabel, justTextContainerView, valid);
  v21 = objc_msgSend_tableHeaderContainerView(self, v19, v20);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v22, v21);
  v25 = objc_msgSend_tableHeaderContainerView(self, v23, v24);
  v28 = objc_msgSend_tableView(self, v26, v27);

  objc_msgSend_setTableHeaderView_(v28, v29, v25);
}

- (void)setupDevices
{
  v4 = MEMORY[0x277CBEB18];
  v5 = objc_msgSend_inParamDict(self, a2, v2);
  v7 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_NetworkScanRecordList");
  v9 = objc_msgSend_arrayWithArray_(v4, v8, v7);
  if (v9)
  {
    v12 = v9;
    v13 = objc_msgSend_inParamDict(self, v10, v11);
    v15 = objc_msgSend_objectForKey_(v13, v14, @"kSBSKey_BrowseRecordList");
    objc_msgSend_addBrowsedRecords_toDestList_(self, v16, v15, v12);
    v18 = objc_msgSend_sortedArrayUsingSelector_(v12, v17, sel_ssidAndBaseNameLocalizedCaseInsensitiveCompare_);
    objc_msgSend_setSortedDevices_(self, v19, v18);
    sourceBase = self->super._sourceBase;
    self->super._selectedDevice = sourceBase;
    if (!sourceBase)
    {
      self->super._selectedDevice = self->super._sourceNetwork;
    }

    v21 = off_27E3830E8[0];

    MEMORY[0x2821F9670](self, sel_setConnectionMedium_, v21);
  }
}

- (void)touchInCellAtIndexPath:(id)path
{
  v5 = objc_msgSend_section(path, a2, path);
  v8 = objc_msgSend_tableManager(self, v6, v7);
  if (v5 == objc_msgSend_indexOfSectionWithIdentifier_(v8, v9, off_27E383208))
  {
    v12 = objc_msgSend_tableManager(self, v10, v11);
    v14 = objc_msgSend_tagOfSelectedRowInMenuSection_(v12, v13, v5);
    *(&self->super.showFullList + 3) = v14;
    outResultsDict = self->super.super.super._outResultsDict;
    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v16, v14);
    objc_msgSend_setObject_forKey_(outResultsDict, v18, v17, @"kSBSKey_SelectorChoice");

    objc_msgSend_selectedDeviceUpdated(self, v19, v20);
  }

  else
  {
    v21.receiver = self;
    v21.super_class = StepByStepUIViewController_ExtendWirelessNetworkChoice;
    [(StepByStepUIViewController_DevicePicker *)&v21 touchInCellAtIndexPath:path];
  }
}

- (void)stepByStepUpdateProgress:(id)progress forState:(int)state
{
  v4 = *&state;
  v7 = objc_msgSend_tableManager(self, a2, progress);
  v9 = objc_msgSend_indexOfSectionWithIdentifier_(v7, v8, off_27E383208);
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v9;
    v13 = objc_msgSend_tableManager(self, v10, v11);
    objc_msgSend_deleteSection_(v13, v14, v12);
  }

  v15.receiver = self;
  v15.super_class = StepByStepUIViewController_ExtendWirelessNetworkChoice;
  [(StepByStepUIViewController *)&v15 stepByStepUpdateProgress:progress forState:v4];
}

- (BOOL)canBeExtendedWithDWDS
{
  v4 = objc_msgSend_inParamDict(self, a2, v2);
  v6 = objc_msgSend_objectForKey_(v4, v5, @"kSBSKey_Mode");
  if (objc_msgSend_integerValue(v6, v7, v8) != 1)
  {
    return 0;
  }

  selectedDevice = self->super._selectedDevice;
  if (!selectedDevice)
  {
    return 0;
  }

  v11 = objc_msgSend_productIDForNetworkOrDevice_(StepByStepUtilities, v9, selectedDevice);
  v14 = objc_msgSend_integerValue(v11, v12, v13);
  result = 0;
  if (v14)
  {
    v16 = v14 == 3;
  }

  else
  {
    v16 = 1;
  }

  if (!v16 && v14 != 102)
  {
    return 1;
  }

  return result;
}

- (void)addBrowsedRecords:(id)records toDestList:(id)list
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, records);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  recordsCopy = records;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(records, v8, &v24, v28, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v25;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(recordsCopy);
      }

      v15 = *(*(&v24 + 1) + 8 * v14);
      v16 = objc_msgSend_objectForKey_(v15, v10, @"raMA");
      v18 = objc_msgSend_objectForKey_(v15, v17, @"raM2");
      if (!objc_msgSend_length(v16, v19, v20))
      {
        break;
      }

      if (sub_23EB6B8F0(v16, 0, list) != -1 || objc_msgSend_length(v18, v10, v21) && sub_23EB6B8F0(v18, 0, list) != -1)
      {
        objc_msgSend_addObject_(v6, v10, v15);
      }

      if (v12 == ++v14)
      {
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(recordsCopy, v10, &v24, v28, 16);
        v12 = v22;
        if (v22)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    if (objc_msgSend_count(v6, v10, v11))
    {
      objc_msgSend_addObjectsFromArray_(list, v23, v6);
    }
  }
}

@end