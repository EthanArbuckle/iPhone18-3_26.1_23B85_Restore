@interface StepByStepUIViewController_DevicePicker
- (StepByStepUIViewController_DevicePicker)initWithNibName:(id)name bundle:(id)bundle;
- (id)pickerContent;
- (void)loadView;
- (void)setupPickerTable;
- (void)touchInCellAtIndexPath:(id)path;
- (void)updateSelections;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_DevicePicker

- (StepByStepUIViewController_DevicePicker)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = StepByStepUIViewController_DevicePicker;
  result = [(AssistantSubUIViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->showFullList = 1;
  }

  return result;
}

- (void)loadView
{
  v36.receiver = self;
  v36.super_class = StepByStepUIViewController_DevicePicker;
  [(StepByStepUIViewController *)&v36 loadView];
  objc_msgSend_setDelegate_(self, v3, self);
  v6 = objc_msgSend_inParamDict(self, v4, v5);
  self->_sourceBase = objc_msgSend_objectForKey_(v6, v7, @"kSBSKey_SourceBase");
  v10 = objc_msgSend_inParamDict(self, v8, v9);
  self->_sourceNetwork = objc_msgSend_objectForKey_(v10, v11, @"kSBSKey_SourceNetwork");
  v14 = objc_msgSend_inParamDict(self, v12, v13);
  self->_targetBase = objc_msgSend_objectForKey_(v14, v15, @"kSBSKey_TargetBase");
  objc_msgSend_setupDevices(self, v16, v17);
  if (!self->_selectedDevice)
  {
    v20 = objc_msgSend_sortedDevices(self, v18, v19);
    if (objc_msgSend_count(v20, v21, v22))
    {
      v25 = objc_msgSend_sortedDevices(self, v23, v24);
      v27 = objc_msgSend_objectAtIndex_(v25, v26, 0);
      self->_selectedDevice = v27;
      if (!v27)
      {
        return;
      }
    }

    else if (!self->_selectedDevice)
    {
      return;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_prepareParams(self, v28, v29);
  }

  v30 = objc_msgSend_inParamDict(self, v28, v29);
  v32 = objc_msgSend_objectForKey_(v30, v31, @"kSBSKey_Mode");
  if (objc_msgSend_integerValue(v32, v33, v34) == 2)
  {
    objc_msgSend_setLeftNavigationButton_enable_hide_(self, v35, @"kCancel", 1, 0);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = objc_msgSend_inParamDict(self, a2, appear);
  v7 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_Mode");
  if (objc_msgSend_integerValue(v7, v8, v9) == 2)
  {
    objc_msgSend_setLeftNavigationButton_enable_hide_(self, v10, @"kCancel", 1, 0);
    if (objc_msgSend_showMoreOptions(self, v11, v12))
    {
      if (!objc_msgSend_actionController(self, v10, v13))
      {
        v15 = objc_msgSend_tableManager(self, v10, v14);
        v18 = objc_msgSend_parentController(self, v16, v17);
        v20 = objc_msgSend_recommendationActionControllerWithTableManager_andAssistantUIViewController_(RecommendationActionController, v19, v15, v18);
        objc_msgSend_setActionController_(self, v21, v20);
      }
    }
  }

  if (objc_msgSend_conformsToProtocol_(self, v10, &unk_285171958))
  {
    objc_msgSend_setupPickerTable(self, v22, v23);
    objc_msgSend_setupHeaderAndFooter(self, v24, v25);
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_updateNavigationButtons(self, v22, v23);
    }
  }

  objc_msgSend_updateSelections(self, v22, v23);
  v26.receiver = self;
  v26.super_class = StepByStepUIViewController_DevicePicker;
  [(StepByStepUIViewController *)&v26 viewWillAppear:appearCopy];
}

- (void)touchInCellAtIndexPath:(id)path
{
  v5 = objc_msgSend_section(path, a2, path);
  v8 = objc_msgSend_tableManager(self, v6, v7);
  if (v5 == objc_msgSend_indexOfSectionWithIdentifier_(v8, v9, qword_27E383200))
  {
    if (objc_opt_respondsToSelector())
    {
      v50 = 0;
      v14 = objc_msgSend_tableManager(self, v12, v13);
      if (objc_msgSend_tagOfCellAtIndexPath_tag_(v14, v15, path, &v50))
      {
        if (v50 != 1400203111)
        {
          if (v50 == 1333028978)
          {
            self->showFullList = 1;
            v18 = objc_msgSend_tableManager(self, v16, v17);
            objc_msgSend_deleteSectionWithIdentifier_animated_(v18, v19, qword_27E383200, 1);
            objc_msgSend_setupPickerTable(self, v20, v21);
          }

          else
          {
            v32 = objc_msgSend_row(path, v16, v17);
            if (objc_msgSend_sortedDevices(self, v33, v34))
            {
              v37 = objc_msgSend_sortedDevices(self, v35, v36);
              if (v32 < objc_msgSend_count(v37, v38, v39))
              {
                v42 = objc_msgSend_sortedDevices(self, v40, v41);
                v45 = objc_msgSend_row(path, v43, v44);
                v47 = objc_msgSend_objectAtIndex_(v42, v46, v45);
                self->_selectedDevice = v47;
                if (v47)
                {
                  objc_msgSend_updateSelections(self, v48, v49);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v22 = objc_msgSend_tableManager(self, v10, v11);
    if (v5 == objc_msgSend_indexOfSectionWithIdentifier_(v22, v23, @"ActionTableSection"))
    {
      actionController = self->actionController;
      if (actionController)
      {
        isPrimaryRecommendation = objc_msgSend_isPrimaryRecommendation(actionController, v24, v25);
        if (isPrimaryRecommendation)
        {
          objc_msgSend_setupPickerTable(self, v27, v28);
        }

        else
        {
          v30 = objc_msgSend_tableManager(self, v27, v28);
          objc_msgSend_deleteSectionWithIdentifier_(v30, v31, qword_27E383200);
        }

        if (objc_opt_respondsToSelector())
        {

          MEMORY[0x2821F9670](self, sel_primaryActionSelected_, isPrimaryRecommendation);
        }
      }
    }
  }
}

- (void)setupPickerTable
{
  if (self->actionController)
  {
    v4 = objc_msgSend_tableManager(self, a2, v2);
    v7 = objc_msgSend_sectionIdentifier(self->actionController, v5, v6);
    if (objc_msgSend_indexOfSectionWithIdentifier_(v4, v8, v7) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = objc_msgSend_tableManager(self, v9, v10);
      actionController = self->actionController;
      v15 = sub_23EC13460(self, v13, v14) != 1;
      SectionInfoWithLongStrings = objc_msgSend_getSectionInfoWithLongStrings_(actionController, v16, v15);
      objc_msgSend_addSectionInfo_(v11, v18, SectionInfoWithLongStrings);
    }

    else
    {
      objc_msgSend_selectPrimaryRecommendation(self->actionController, v9, v10);
    }
  }

  v19 = objc_msgSend_tableManager(self, a2, v2);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v19, v20, qword_27E383200) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!self->actionController || (v23 = objc_msgSend_sortedDevices(self, v21, v22), objc_msgSend_count(v23, v24, v25) >= 2))
    {
      v26 = objc_msgSend_sortedDevices(self, v21, v22);
      if (objc_msgSend_count(v26, v27, v28))
      {
        v51 = objc_msgSend_deviceTableLabel(self, v29, v30);
        v33 = objc_msgSend_sortedDevices(self, v31, v32);
        v35 = objc_msgSend_indexOfObject_(v33, v34, self->_selectedDevice);
        v50 = objc_msgSend_tableManager(self, v36, v37);
        v38 = MEMORY[0x277CBEB38];
        v41 = objc_msgSend_pickerContent(self, v39, v40);
        v42 = qword_27E383200;
        v44 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v43, 1);
        v46 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v45, v35);
        v49 = objc_msgSend_dictionaryWithObjectsAndKeys_(v38, v47, v41, @"sectionRows", v42, @"identifier", v44, @"sectionIsMenu", v51, @"header", v46, @"selectedMenuItemTag", 0);

        objc_msgSend_insertSectionInfo_atIndex_withRowAnimation_(v50, v48, v49, 0, 100);
      }
    }
  }
}

- (void)updateSelections
{
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_selectedDeviceUpdated(self, v3, v4);
  }

  v6 = objc_msgSend_objectForKey_(self->_selectedDevice, v3, @"BSSID");
  selectedDevice = self->_selectedDevice;
  if (v6)
  {
    self->_sourceNetwork = selectedDevice;
    objc_msgSend_objectForKey_(selectedDevice, v5, @"SSID_STR");
    if (self->_showSingleBaseTopo)
    {
      v9 = 0;
    }

    else
    {
      v9 = self->_selectedDevice;
    }

    self->_sourceBase = v9;
    v30 = self->_selectedDevice;
    if (v30)
    {
      objc_msgSend_setObject_forKey_(self->super.super._outResultsDict, v8, v30, @"kSBSKey_SourceNetwork");
    }

    v80 = 0;
    v81 = 0;
  }

  else
  {
    self->_sourceBase = selectedDevice;
    objc_msgSend_objectForKey_(selectedDevice, v5, @"raNm");
    v16 = self->_selectedDevice;
    if (v16)
    {
      objc_msgSend_setObject_forKey_(self->super.super._outResultsDict, v10, v16, @"kSBSKey_SourceBase");
    }

    v17 = MEMORY[0x277CCABB0];
    v18 = sub_23EB6A2C0(self->_sourceBase, v10, v16, v11, v12, v13, v14, v15);
    v81 = objc_msgSend_numberWithInteger_(v17, v19, v18);
    v20 = MEMORY[0x277CCABB0];
    v28 = sub_23EB6A294(self->_sourceBase, v21, v22, v23, v24, v25, v26, v27);
    v80 = objc_msgSend_numberWithInteger_(v20, v29, v28);
  }

  v31 = MEMORY[0x277CCABB0];
  v32 = objc_msgSend_inParamDict(self, v8, v30);
  ProductIDFromParamDict = objc_msgSend_getProductIDFromParamDict_(StepByStepUtilities, v33, v32);
  v36 = objc_msgSend_numberWithInteger_(v31, v35, ProductIDFromParamDict);
  v37 = MEMORY[0x277CCABB0];
  v40 = objc_msgSend_inParamDict(self, v38, v39);
  DeviceKindFromParamDict = objc_msgSend_getDeviceKindFromParamDict_(StepByStepUtilities, v41, v40);
  v44 = objc_msgSend_numberWithInteger_(v37, v43, DeviceKindFromParamDict);
  v47 = objc_msgSend_parentController(self, v45, v46);
  v50 = objc_msgSend__assistantUIController(v47, v48, v49);
  v53 = objc_msgSend_topoView(self, v51, v52);
  v56 = objc_msgSend_layer(v53, v54, v55);
  v59 = objc_msgSend_topoLayout(self, v57, v58);
  v62 = objc_msgSend_topoView(self, v60, v61);
  v65 = objc_msgSend_inParamDict(self, v63, v64);
  v67 = objc_msgSend_objectForKey_(v65, v66, @"kSBSKey_TargetNetwork");
  v70 = objc_msgSend_integerValue(v36, v68, v69);
  v71 = sub_23EB6D0E0(v67, v70, 0);
  v73 = objc_msgSend_objectForKey_(self->_sourceBase, v72, @"name");
  v76 = objc_msgSend_connectionMedium(self, v74, v75);
  v79 = objc_msgSend_modifyTopoUIInLayer_withLayout_andOwningView_targetProductID_targetDeviceKind_targetName_targetWiFiName_sourceProductID_sourceDeviceKind_sourceName_sourceWiFiName_connectionType_(v50, v77, v56, v59, v62, v36, v44, v71, 0, v81, v80, v73, 0, v76);

  objc_msgSend_setTopoLayout_(self, v78, v79);
}

- (id)pickerContent
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  if (self->showFullList)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = objc_msgSend_sortedDevices(self, v4, v5, 0);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v38, v42, 16);
    if (v9)
    {
      v12 = v9;
      v13 = 0;
      v14 = *v39;
      do
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v17 = *(*(&v38 + 1) + 8 * v15);
          v18 = objc_msgSend_tableManager(self, v10, v11);
          v20 = objc_msgSend_nameForNetworkOrDevice_(StepByStepUtilities, v19, v17);
          v13 = v16 + 1;
          RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v18, v21, 0, v20, 0, v16);
          objc_msgSend_addObject_(v6, v23, RowStyleBasicWithImage_text1_text2_withTag);
          ++v15;
          ++v16;
        }

        while (v12 != v15);
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v38, v42, 16);
      }

      while (v12);
    }
  }

  else
  {
    v24 = objc_msgSend_tableManager(self, v4, v5);
    v26 = objc_msgSend_nameForNetworkOrDevice_(StepByStepUtilities, v25, self->_selectedDevice);
    v28 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v24, v27, 0, v26, 0, 1400203111);
    objc_msgSend_addObject_(v6, v29, v28);
    v32 = objc_msgSend_tableManager(self, v30, v31);
    v33 = sub_23EB6CD3C(@"ShowOtherNetworksEllipsis", qword_27E383800);
    v35 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v32, v34, 0, v33, 0, 1333028978);
    objc_msgSend_addObject_(v6, v36, v35);
  }

  return v6;
}

@end