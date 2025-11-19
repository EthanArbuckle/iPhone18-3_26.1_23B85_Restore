@interface StepByStepUIViewController_Create_Config
- (BOOL)validateAndSetValues;
- (void)addDiskPasswordSection;
- (void)setupInitialTableHeaderConfiguration;
- (void)setupTable;
- (void)switchTouchedInCellAtIndexPath:(id)a3 forSwitchIndex:(unint64_t)a4 isOn:(BOOL)a5;
- (void)touchInCellAtIndexPath:(id)a3;
- (void)updateSinglePasswordSwitchExplanation:(BOOL)a3;
- (void)updateTable;
- (void)updateTableForMultiplePasswords;
- (void)updateTableForSinglePassword;
- (void)validateAndUpdateNextButton;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation StepByStepUIViewController_Create_Config

- (void)viewWillAppear:(BOOL)a3
{
  v234 = a3;
  objc_msgSend_setUseSinglePassword_(self, a2, 1);
  objc_msgSend_setDelegate_(self, v4, self);
  v7 = objc_msgSend_inParamDict(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, @"kSBSKey_SelectorChoice");
  if ((objc_msgSend_integerValue(v9, v10, v11) - 101) > 1)
  {
    v231 = 0;
    v232 = 0;
    v18 = 0;
    v33 = 0;
    v26 = 0;
    NetworkPasswordForNetworkNamed = 0;
  }

  else
  {
    v14 = objc_msgSend_inParamDict(self, v12, v13);
    v16 = objc_msgSend_objectForKey_(v14, v15, @"kSBSKey_SourceBase");
    v18 = objc_msgSend_objectForKey_(v16, v17, @"name");
    v26 = sub_23EB6AE58(v16, v19, v20, v21, v22, v23, v24, v25);
    v232 = off_27E3830F0;
    v29 = objc_msgSend_sharedInstance(WiFiUtils, v27, v28);
    NetworkPasswordForNetworkNamed = objc_msgSend_getNetworkPasswordForNetworkNamed_(v29, v30, v26);
    v231 = v16;
    v33 = objc_msgSend_keychainPasswordForBaseStation_(AssistantCallbackController, v32, v16);
  }

  v34 = objc_msgSend_inParamDict(self, v12, v13);
  v36 = objc_msgSend_objectForKey_(v34, v35, @"kSBSKey_TargetBase");
  v44 = sub_23EB6A2C0(v36, v37, v38, v39, v40, v41, v42, v43);
  v47 = objc_msgSend_inParamDict(self, v45, v46);
  v49 = objc_msgSend_objectForKey_(v47, v48, @"kSBSKey_TargetBase");
  v57 = sub_23EB6A294(v49, v50, v51, v52, v53, v54, v55, v56);
  v59 = objc_msgSend_valueForKey_(self->super.super._inParamDict, v58, @"kSBSKey_TargetBaseFeatures");
  v60 = sub_23EB5E1E8(v59, 1297314927);
  objc_msgSend_setHasDisk_(self, v61, v60);
  objc_msgSend_setPersonalizedBaseName_(self, v62, v18);
  v65 = objc_msgSend_personalizedBaseName(self, v63, v64);
  if (!objc_msgSend_length(v65, v66, v67))
  {
    v70 = sub_23EB6D75C(v44, v57);
    objc_msgSend_setPersonalizedBaseName_(self, v71, v70);
  }

  v72 = objc_msgSend_personalizedBaseName(self, v68, v69);
  if (!objc_msgSend_length(v72, v73, v74))
  {
    v76 = sub_23EB6D7A8(v44, v57);
    objc_msgSend_setPersonalizedBaseName_(self, v77, v76);
  }

  if (!v26)
  {
    v26 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v75, @"kSBSKey_NetworkName");
    if (!v26)
    {
      v26 = sub_23EB6D820();
    }
  }

  v233 = v18;
  objc_msgSend_setWifiName_(self, v75, v26);
  if (!NetworkPasswordForNetworkNamed)
  {
    NetworkPasswordForNetworkNamed = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v78, @"kSBSKey_NetworkPassword");
  }

  if (NetworkPasswordForNetworkNamed)
  {
    objc_msgSend_setWifiPassword_(self, v78, NetworkPasswordForNetworkNamed);
  }

  else
  {
    objc_msgSend_setWifiPassword_(self, v78, &stru_285145FE8);
  }

  v81 = objc_msgSend_wifiPassword(self, v79, v80);
  objc_msgSend_setWifiPasswordVerify_(self, v82, v81);
  if (!v33)
  {
    v33 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v83, @"kSBSKey_BasePassword");
  }

  if (v33)
  {
    objc_msgSend_setBasePassword_(self, v83, v33);
  }

  else
  {
    objc_msgSend_setBasePassword_(self, v83, &stru_285145FE8);
  }

  v86 = objc_msgSend_basePassword(self, v84, v85);
  objc_msgSend_setBasePasswordVerify_(self, v87, v86);
  v90 = objc_msgSend_wifiPassword(self, v88, v89);
  v93 = objc_msgSend_basePassword(self, v91, v92);
  isEqualToString = objc_msgSend_isEqualToString_(v90, v94, v93);
  objc_msgSend_setUseSinglePassword_(self, v96, isEqualToString);
  if (objc_msgSend_hasDisk(self, v97, v98))
  {
    v101 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v99, @"kSBSKey_DiskSharing_Password");
    if (v101)
    {
      objc_msgSend_setDiskPassword_(self, v102, v101);
    }

    else
    {
      objc_msgSend_setDiskPassword_(self, v102, &stru_285145FE8);
    }

    v105 = objc_msgSend_diskPassword(self, v103, v104);
    objc_msgSend_setDiskPasswordVerify_(self, v106, v105);
    if ((objc_msgSend_useSinglePassword(self, v107, v108) & 1) != 0 || (v111 = objc_msgSend_diskPassword(self, v109, v110), !objc_msgSend_length(v111, v112, v113)))
    {
      objc_msgSend_setUseDifferentDiskPassword_(self, v109, 0);
    }

    else
    {
      v115 = objc_msgSend_diskPassword(self, v109, v114);
      v118 = objc_msgSend_basePassword(self, v116, v117);
      v120 = objc_msgSend_isEqualToString_(v115, v119, v118) ^ 1;
      objc_msgSend_setUseDifferentDiskPassword_(self, v121, v120);
    }
  }

  v122 = objc_msgSend_inParamDict(self, v99, v100);
  v124 = objc_msgSend_objectForKey_(v122, v123, @"kSBSKey_Mode");
  v127 = objc_msgSend_integerValue(v124, v125, v126);
  objc_msgSend_setSbsMode_(self, v128, v127);
  if (objc_msgSend_sbsMode(self, v129, v130) == 2)
  {
    objc_msgSend_setLeftNavigationButton_enable_hide_(self, v131, @"kCancel", 1, 0);
    if (!objc_msgSend_actionController(self, v133, v134))
    {
      v135 = objc_msgSend_tableManager(self, v131, v132);
      v138 = objc_msgSend_parentController(self, v136, v137);
      v140 = objc_msgSend_recommendationActionControllerWithTableManager_andAssistantUIViewController_(RecommendationActionController, v139, v135, v138);
      objc_msgSend_setActionController_(self, v141, v140);
    }
  }

  if (objc_msgSend_sbsMode(self, v131, v132) == 2)
  {
    v144 = objc_msgSend_wifiName(self, v142, v143);
    if (objc_msgSend_length(v144, v145, v146))
    {
      objc_msgSend_wifiName(self, v142, v143);
    }
  }

  v147 = objc_msgSend_inParamDict(self, v142, v143);
  v149 = objc_msgSend_objectForKey_(v147, v148, @"kSBSKey_SelectorChoice");
  if ((objc_msgSend_integerValue(v149, v150, v151) - 101) > 1)
  {
    ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v152, @"PrimarySetupRecommendation_Create%@");
  }

  else
  {
    v153 = sub_23EB6CD3C(@"TextualSentenceConcatenator", qword_27E383800);
    v154 = sub_23EB6CD3C(@"TurnOffNamedDeviceBeingReplaced", @"AirPortSettings");
    v157 = objc_msgSend_inParamDict(self, v155, v156);
    v159 = objc_msgSend_objectForKey_(v157, v158, @"kSBSKey_SourceBase");
    v161 = objc_msgSend_objectForKey_(v159, v160, @"name");
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v162, v154, @"%@", 0, v161);
    v166 = objc_msgSend_inParamDict(self, v164, v165);
    ProductLocalizedStringWithFormat_fromParamDict = objc_msgSend_getProductLocalizedStringWithFormat_fromParamDict_(StepByStepUtilities, v167, @"PrimarySetupRecommendation_Replace%@", v166);
    v170 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v169, ProductLocalizedStringWithFormat_fromParamDict, @"%@", 0, v161);
    ProductLocalizedStringWithFormat = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v171, v153, @"%@%@", 0, v170, valid);
  }

  sub_23EB5E054(self->super.justTextLabel, self->super.justTextContainerView, ProductLocalizedStringWithFormat);
  v175 = objc_msgSend_tableHeaderContainerView(self, v173, v174);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v176, v175);
  objc_msgSend_setupTable(self, v177, v178);
  objc_msgSend_updateTable(self, v179, v180);
  objc_msgSend_setupInitialTableHeaderConfiguration(self, v181, v182);
  v185 = objc_msgSend_parentController(self, v183, v184);
  v230 = objc_msgSend__assistantUIController(v185, v186, v187);
  v190 = objc_msgSend_topoView(self, v188, v189);
  v193 = objc_msgSend_layer(v190, v191, v192);
  v196 = objc_msgSend_topoLayout(self, v194, v195);
  v199 = objc_msgSend_topoView(self, v197, v198);
  v201 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v200, v44);
  v203 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v202, v57);
  v206 = objc_msgSend_inParamDict(self, v204, v205);
  v208 = objc_msgSend_objectForKey_(v206, v207, @"kSBSKey_TargetNetwork");
  v209 = sub_23EB6D0E0(v208, v44, 0);
  v218 = objc_msgSend_valueForKey_(v231, v210, @"syAP");
  if (v231)
  {
    v219 = MEMORY[0x277CCABB0];
    v220 = sub_23EB6A294(v231, v211, v212, v213, v214, v215, v216, v217);
    v222 = objc_msgSend_numberWithInteger_(v219, v221, v220);
  }

  else
  {
    v222 = 0;
  }

  v223 = objc_msgSend_modifyTopoUIInLayer_withLayout_andOwningView_targetProductID_targetDeviceKind_targetName_targetWiFiName_sourceProductID_sourceDeviceKind_sourceName_sourceWiFiName_connectionType_(v230, v211, v193, v196, v199, v201, v203, v209, 0, v218, v222, v233, 0, v232);
  objc_msgSend_setTopoLayout_(self, v224, v223);
  objc_msgSend_validateAndUpdateNextButton(self, v225, v226);
  objc_msgSend_setValue_forKey_(self->super.super._outResultsDict, v227, &stru_285145FE8, @"kSBSKey_BasePassword");
  objc_msgSend_setValue_forKey_(self->super.super._outResultsDict, v228, &stru_285145FE8, @"kSBSKey_NetworkPassword");
  objc_msgSend_setValue_forKey_(self->super.super._outResultsDict, v229, &stru_285145FE8, @"kSBSKey_DiskSharing_Password");
  v235.receiver = self;
  v235.super_class = StepByStepUIViewController_Create_Config;
  [(StepByStepUIViewController *)&v235 viewWillAppear:v234];
}

- (BOOL)validateAndSetValues
{
  v4 = objc_msgSend_tableManager(self, a2, v2);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v4, v5, @"WiFiName") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 1;
  }

  else
  {
    v9 = objc_msgSend_tableManager(self, v6, v7);
    ValueForFirstItemOfType_inCellWithTag = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v9, v10, @"editTextView", 1464225389);
    objc_msgSend_setWifiName_(self, v12, ValueForFirstItemOfType_inCellWithTag);
    v15 = objc_msgSend_wifiName(self, v13, v14);
    v18 = objc_msgSend_UTF8String(v15, v16, v17);
    v8 = sub_23EB6BB98(v18) != 0;
  }

  v19 = objc_msgSend_tableManager(self, v6, v7);
  v21 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v19, v20, @"editTextView", 1937329773);
  objc_msgSend_setPersonalizedBaseName_(self, v22, v21);
  if (objc_msgSend_personalizedBaseName(self, v23, v24))
  {
    v27 = objc_msgSend_personalizedBaseName(self, v25, v26);
    v30 = objc_msgSend_UTF8String(v27, v28, v29);
    v8 &= sub_23EB6BC14(v30) != 0;
  }

  v31 = objc_msgSend_tableManager(self, v25, v26);
  v33 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v31, v32, @"editTextView", 1464225889);
  objc_msgSend_setWifiPassword_(self, v34, v33);
  v37 = objc_msgSend_tableManager(self, v35, v36);
  v39 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v37, v38, @"editTextView", 1464225878);
  objc_msgSend_setWifiPasswordVerify_(self, v40, v39);
  v43 = objc_msgSend_tableManager(self, v41, v42);
  v46 = objc_msgSend_wifiPassword(self, v44, v45);
  v49 = objc_msgSend_wifiPasswordVerify(self, v47, v48);
  v51 = objc_msgSend_verifyStr1_forTag1_matchesStr2_forTag2_(v43, v50, v46, 1464225889, v49, 1464225878);
  v54 = objc_msgSend_wifiPassword(self, v52, v53);
  v57 = objc_msgSend_UTF8String(v54, v55, v56);
  if (!v57)
  {
    return 0;
  }

  v58 = v57;
  v59 = sub_23EB6BBDC(v57);
  v60 = v59 != 0;
  if (objc_msgSend_useSinglePassword(self, v61, v62))
  {
    if (sub_23EB6BC58(v58))
    {
      v65 = v59 == 0;
    }

    else
    {
      v65 = 1;
    }

    v60 = !v65;
  }

  v66 = v60 & v51 & v8;
  if ((objc_msgSend_useSinglePassword(self, v63, v64) & 1) == 0)
  {
    v69 = objc_msgSend_tableManager(self, v67, v68);
    v71 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v69, v70, @"editTextView", 1113673825);
    objc_msgSend_setBasePassword_(self, v72, v71);
    v75 = objc_msgSend_tableManager(self, v73, v74);
    v77 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v75, v76, @"editTextView", 1113673814);
    objc_msgSend_setBasePasswordVerify_(self, v78, v77);
    v81 = objc_msgSend_tableManager(self, v79, v80);
    v84 = objc_msgSend_basePassword(self, v82, v83);
    v87 = objc_msgSend_basePasswordVerify(self, v85, v86);
    LOBYTE(v81) = objc_msgSend_verifyStr1_forTag1_matchesStr2_forTag2_(v81, v88, v84, 1113673825, v87, 1113673814);
    v91 = objc_msgSend_basePassword(self, v89, v90);
    v94 = objc_msgSend_UTF8String(v91, v92, v93);
    v66 &= (sub_23EB6BC58(v94) != 0) & v81;
    if (objc_msgSend_hasDisk(self, v95, v96))
    {
      if (objc_msgSend_useDifferentDiskPassword(self, v97, v98))
      {
        v101 = objc_msgSend_tableManager(self, v99, v100);
        v103 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v101, v102, @"editTextView", 1147752545);
        objc_msgSend_setDiskPassword_(self, v104, v103);
        v107 = objc_msgSend_tableManager(self, v105, v106);
        v109 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v107, v108, @"editTextView", 1147752534);
        objc_msgSend_setDiskPasswordVerify_(self, v110, v109);
        v113 = objc_msgSend_tableManager(self, v111, v112);
        v116 = objc_msgSend_diskPassword(self, v114, v115);
        v119 = objc_msgSend_diskPasswordVerify(self, v117, v118);
        LOBYTE(v113) = objc_msgSend_verifyStr1_forTag1_matchesStr2_forTag2_(v113, v120, v116, 1147752545, v119, 1147752534);
        v123 = objc_msgSend_diskPassword(self, v121, v122);
        v126 = objc_msgSend_UTF8String(v123, v124, v125);
        return (sub_23EB6BCE0(v126) != 0) & v113 & v66;
      }
    }
  }

  return v66;
}

- (void)updateTableForSinglePassword
{
  v4 = objc_msgSend_tableManager(self, a2, v2);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v4, v5, @"WiFiPassword", 0);
  v8 = objc_msgSend_tableManager(self, v6, v7);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v8, v9, @"BasePassword", 0);
  v12 = objc_msgSend_tableManager(self, v10, v11);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v12, v13, @"DiskPassword", 0);
  v16 = objc_msgSend_tableManager(self, v14, v15);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v16, v17, @"DiskPasswordSwitch", 0);
  actionController = self->actionController;
  if (actionController && !objc_msgSend_isPrimaryRecommendation(actionController, v18, v19))
  {
    v67 = objc_msgSend_tableManager(self, v18, v19);

    objc_msgSend_deleteSectionWithIdentifier_animated_(v67, v68, @"SinglePassword", 0);
  }

  else
  {
    v21 = objc_msgSend_tableManager(self, v18, v19);
    if (objc_msgSend_indexOfSectionWithIdentifier_(v21, v22, @"SinglePassword") == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = objc_msgSend_array(MEMORY[0x277CBEB18], v23, v24);
      v28 = objc_msgSend_tableManager(self, v26, v27);
      v29 = sub_23EB6CD3C(@"PasswordLabel", qword_27E383800);
      v32 = objc_msgSend_wifiPassword(self, v30, v31);
      v33 = sub_23EB6CD3C(@"CreatePasswordPlaceholder", qword_27E383800);
      isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v28, v34, 0, v29, v32, v33, 1, 1, 1464225889);
      v39 = sub_23EB5E230(1651716432, v36);
      if (v39)
      {
        objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v37, v39, @"nsFormatter");
      }

      v40 = objc_msgSend_tableManager(self, v37, v38);
      objc_msgSend_setNewRow_verifierAccessoryType_(v40, v41, isSecure_keyboardType_withTag, 0);
      objc_msgSend_addObject_(v25, v42, isSecure_keyboardType_withTag);
      v45 = objc_msgSend_tableManager(self, v43, v44);
      v46 = sub_23EB6CD3C(@"VerifyLabel", qword_27E383800);
      v49 = objc_msgSend_wifiPasswordVerify(self, v47, v48);
      v50 = sub_23EB6CD3C(@"VerifyPlaceholder", qword_27E383800);
      v52 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v45, v51, 0, v46, v49, v50, 1, 1, 1464225878);
      v55 = v52;
      if (v39)
      {
        objc_msgSend_setObject_forKey_(v52, v53, v39, @"nsFormatter");
      }

      v56 = objc_msgSend_tableManager(self, v53, v54);
      objc_msgSend_setNewRow_verifierAccessoryType_(v56, v57, v55, 0);
      objc_msgSend_addObject_(v25, v58, v55);
      v61 = objc_msgSend_tableManager(self, v59, v60);
      v62 = MEMORY[0x277CBEB38];
      v63 = sub_23EB6CD3C(@"WiFiPasswordRequirement", qword_27E383800);
      v66 = objc_msgSend_dictionaryWithObjectsAndKeys_(v62, v64, v25, @"sectionRows", v63, @"footer", @"SinglePassword", @"identifier", 0);

      objc_msgSend_addSectionInfo_animated_(v61, v65, v66, 0);
    }
  }
}

- (void)updateTableForMultiplePasswords
{
  v4 = objc_msgSend_tableManager(self, a2, v2);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v4, v5, @"WiFiPassword", 0);
  v8 = objc_msgSend_tableManager(self, v6, v7);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v8, v9, @"BasePassword", 0);
  v12 = objc_msgSend_tableManager(self, v10, v11);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v12, v13, @"BasePassword", 0);
  v16 = objc_msgSend_tableManager(self, v14, v15);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v16, v17, @"SinglePassword", 0);
  v20 = objc_msgSend_tableManager(self, v18, v19);
  objc_msgSend_deleteSectionWithIdentifier_animated_(v20, v21, @"DiskPasswordSwitch", 0);
  if ((objc_msgSend_useDifferentDiskPassword(self, v22, v23) & 1) == 0)
  {
    v26 = objc_msgSend_tableManager(self, v24, v25);
    objc_msgSend_deleteSectionWithIdentifier_animated_(v26, v27, @"DiskPassword", 0);
  }

  actionController = self->actionController;
  if (!actionController || objc_msgSend_isPrimaryRecommendation(actionController, v24, v25))
  {
    v29 = objc_msgSend_tableManager(self, v24, v25);
    if (objc_msgSend_indexOfSectionWithIdentifier_(v29, v30, @"WiFiPassword") == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = objc_msgSend_array(MEMORY[0x277CBEB18], v31, v32);
      v36 = objc_msgSend_tableManager(self, v34, v35);
      v37 = sub_23EB6CD3C(@"PasswordLabel", qword_27E383800);
      v40 = objc_msgSend_wifiPassword(self, v38, v39);
      v41 = sub_23EB6CD3C(@"CreatePasswordPlaceholder", qword_27E383800);
      isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v36, v42, 0, v37, v40, v41, 1, 1, 1464225889);
      v47 = sub_23EB5E230(1651725131, v44);
      if (v47)
      {
        objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v45, v47, @"nsFormatter");
      }

      v48 = objc_msgSend_tableManager(self, v45, v46);
      objc_msgSend_setNewRow_verifierAccessoryType_(v48, v49, isSecure_keyboardType_withTag, 0);
      objc_msgSend_addObject_(v33, v50, isSecure_keyboardType_withTag);
      v53 = objc_msgSend_tableManager(self, v51, v52);
      v54 = sub_23EB6CD3C(@"VerifyLabel", qword_27E383800);
      v57 = objc_msgSend_wifiPasswordVerify(self, v55, v56);
      v58 = sub_23EB6CD3C(@"VerifyPlaceholder", qword_27E383800);
      v60 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v53, v59, 0, v54, v57, v58, 1, 1, 1464225878);
      v63 = v60;
      if (v47)
      {
        objc_msgSend_setObject_forKey_(v60, v61, v47, @"nsFormatter");
      }

      v64 = objc_msgSend_tableManager(self, v61, v62);
      objc_msgSend_setNewRow_verifierAccessoryType_(v64, v65, v63, 0);
      objc_msgSend_addObject_(v33, v66, v63);
      v69 = objc_msgSend_tableManager(self, v67, v68);
      v70 = MEMORY[0x277CBEB38];
      v71 = sub_23EB6CD3C(@"WiFiPasswordSectionTitle", qword_27E383800);
      v72 = sub_23EB6CD3C(@"WiFiPasswordRequirement", qword_27E383800);
      v74 = objc_msgSend_dictionaryWithObjectsAndKeys_(v70, v73, v33, @"sectionRows", v71, @"header", v72, @"footer", @"WiFiPassword", @"identifier", 0);
      objc_msgSend_addSectionInfo_animated_(v69, v75, v74, 0);
    }

    v76 = objc_msgSend_tableManager(self, v31, v32);
    if (objc_msgSend_indexOfSectionWithIdentifier_(v76, v77, @"BasePassword") == 0x7FFFFFFFFFFFFFFFLL)
    {
      v80 = objc_msgSend_array(MEMORY[0x277CBEB18], v78, v79);
      v83 = objc_msgSend_tableManager(self, v81, v82);
      v84 = sub_23EB6CD3C(@"PasswordLabel", qword_27E383800);
      v87 = objc_msgSend_basePassword(self, v85, v86);
      v88 = sub_23EB6CD3C(@"CreatePasswordPlaceholder", qword_27E383800);
      v90 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v83, v89, 0, v84, v87, v88, 1, 1, 1113673825);
      v94 = sub_23EB5E230(1651721296, v91);
      if (v94)
      {
        objc_msgSend_setObject_forKey_(v90, v92, v94, @"nsFormatter");
      }

      v95 = objc_msgSend_tableManager(self, v92, v93);
      objc_msgSend_setNewRow_verifierAccessoryType_(v95, v96, v90, 0);
      objc_msgSend_addObject_(v80, v97, v90);
      v100 = objc_msgSend_tableManager(self, v98, v99);
      v101 = sub_23EB6CD3C(@"VerifyLabel", qword_27E383800);
      v104 = objc_msgSend_basePasswordVerify(self, v102, v103);
      v105 = sub_23EB6CD3C(@"VerifyPlaceholder", qword_27E383800);
      v107 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v100, v106, 0, v101, v104, v105, 1, 1, 1113673814);
      v110 = v107;
      if (v94)
      {
        objc_msgSend_setObject_forKey_(v107, v108, v94, @"nsFormatter");
      }

      v111 = objc_msgSend_tableManager(self, v108, v109);
      objc_msgSend_setNewRow_verifierAccessoryType_(v111, v112, v110, 0);
      objc_msgSend_addObject_(v80, v113, v110);
      v116 = objc_msgSend_tableManager(self, v114, v115);
      v117 = MEMORY[0x277CBEB38];
      v118 = sub_23EB6CD3C(@"AdminPasswordSectionTitle", qword_27E383800);
      v120 = objc_msgSend_dictionaryWithObjectsAndKeys_(v117, v119, v80, @"sectionRows", v118, @"header", @"BasePassword", @"identifier", 0);
      objc_msgSend_addSectionInfo_animated_(v116, v121, v120, 0);
    }

    if (objc_msgSend_hasDisk(self, v78, v79))
    {
      v124 = objc_msgSend_tableManager(self, v122, v123);
      if (objc_msgSend_indexOfSectionWithIdentifier_(v124, v125, @"DiskPasswordSwitch") == 0x7FFFFFFFFFFFFFFFLL)
      {
        v128 = objc_msgSend_array(MEMORY[0x277CBEB18], v126, v127);
        v129 = sub_23EB6CD3C(@"StepByStepChoice_Create_Config.UsingDifferentDiskPasswordLabel", qword_27E383800);
        v132 = objc_msgSend_tableManager(self, v130, v131);
        v135 = objc_msgSend_useDifferentDiskPassword(self, v133, v134);
        v137 = objc_msgSend_createRowStyleBasicOnOffWithImage_labelText_isOn_withTag_(v132, v136, 0, v129, v135, 1146114935);
        objc_msgSend_addObject_(v128, v138, v137);
        v141 = objc_msgSend_tableManager(self, v139, v140);
        v144 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v142, v128, @"sectionRows", @"DiskPasswordSwitch", @"identifier", 0);

        objc_msgSend_addSectionInfo_animated_(v141, v143, v144, 0);
      }
    }
  }
}

- (void)touchInCellAtIndexPath:(id)a3
{
  if (self->actionController)
  {
    v5 = objc_msgSend_section(a3, a2, a3);
    v8 = objc_msgSend_tableManager(self, v6, v7);
    if (v5 == objc_msgSend_indexOfSectionWithIdentifier_(v8, v9, @"ActionTableSection"))
    {
      objc_msgSend_setupTable(self, v10, v11);
      objc_msgSend_updateTable(self, v12, v13);
      objc_msgSend_validateAndUpdateNextButton(self, v14, v15);
      v18 = objc_msgSend_tableManager(self, v16, v17);

      objc_msgSend_selectMenuCellAtIndexPath_(v18, v19, a3);
    }
  }
}

- (void)switchTouchedInCellAtIndexPath:(id)a3 forSwitchIndex:(unint64_t)a4 isOn:(BOOL)a5
{
  v5 = a5;
  v19 = 0;
  v8 = objc_msgSend_tableManager(self, a2, a3, a4);
  if (objc_msgSend_tagOfCellAtIndexPath_tag_(v8, v9, a3, &v19))
  {
    if (v19 == 1146114935)
    {
      objc_msgSend_setUseDifferentDiskPassword_(self, v10, v5);
    }

    else if (v19 == 1397773175)
    {
      objc_msgSend_setUseSinglePassword_(self, v10, v5);
      if (v5)
      {
        v12 = objc_msgSend_wifiPassword(self, v10, v11);
        v15 = objc_msgSend_UTF8String(v12, v13, v14);
        if (v15)
        {
          if (!sub_23EB6BC58(v15))
          {
            objc_msgSend_setWifiPassword_(self, v10, &stru_285145FE8);
            objc_msgSend_setWifiPasswordVerify_(self, v16, &stru_285145FE8);
          }
        }
      }
    }

    objc_msgSend_updateTable(self, v10, v11);
    objc_msgSend_validateAndUpdateNextButton(self, v17, v18);
  }
}

- (void)updateSinglePasswordSwitchExplanation:(BOOL)a3
{
  v3 = a3;
  hasDisk = objc_msgSend_hasDisk(self, a2, a3);
  v7 = @"off";
  if (v3)
  {
    v7 = @"on";
  }

  if (hasDisk)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"SinglePasswordExplanationWithDisk.%@", v7);
  }

  else
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"SinglePasswordExplanation.%@", v7);
  }

  v9 = sub_23EB6CD3C(v8, qword_27E383800);
  v12 = objc_msgSend_tableManager(self, v10, v11);

  MEMORY[0x2821F9670](v12, sel_updateFooter_forSectionWithIdentifier_, v9);
}

- (void)setupInitialTableHeaderConfiguration
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

- (void)validateAndUpdateNextButton
{
  actionController = self->actionController;
  if (!actionController || objc_msgSend_isPrimaryRecommendation(actionController, a2, v2))
  {
    if (!objc_msgSend_validateAndSetValues(self, a2, v2))
    {
      v27 = 0;
      goto LABEL_10;
    }

    outResultsDict = self->super.super._outResultsDict;
    v7 = objc_msgSend_wifiName(self, a2, v5);
    objc_msgSend_setValue_forKey_(outResultsDict, v8, v7, @"kSBSKey_NetworkName");
    v9 = self->super.super._outResultsDict;
    v12 = objc_msgSend_personalizedBaseName(self, v10, v11);
    objc_msgSend_setValue_forKey_(v9, v13, v12, @"kSBSKey_BaseName");
    v14 = self->super.super._outResultsDict;
    v17 = objc_msgSend_wifiPassword(self, v15, v16);
    objc_msgSend_setValue_forKey_(v14, v18, v17, @"kSBSKey_NetworkPassword");
    v21 = objc_msgSend_useSinglePassword(self, v19, v20);
    v24 = self->super.super._outResultsDict;
    if (v21)
    {
      v25 = objc_msgSend_wifiPassword(self, v22, v23);
      objc_msgSend_setValue_forKey_(v24, v26, v25, @"kSBSKey_BasePassword");
    }

    else
    {
      v28 = objc_msgSend_basePassword(self, v22, v23);
      objc_msgSend_setValue_forKey_(v24, v29, v28, @"kSBSKey_BasePassword");
      if (objc_msgSend_useDifferentDiskPassword(self, v30, v31))
      {
        v33 = self->super.super._outResultsDict;
        v34 = objc_msgSend_diskPassword(self, a2, v32);
        objc_msgSend_setValue_forKey_(v33, v35, v34, @"kSBSKey_DiskSharing_Password");
      }
    }
  }

  v27 = 1;
LABEL_10:

  objc_msgSend_setRightNavigationButton_enable_hide_(self, a2, @"kNext", v27, 0);
}

- (void)setupTable
{
  if (!self->actionController)
  {
    goto LABEL_6;
  }

  v4 = objc_msgSend_tableManager(self, a2, v2);
  v7 = objc_msgSend_sectionIdentifier(self->actionController, v5, v6);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v4, v8, v7) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = objc_msgSend_tableManager(self, a2, v2);
    actionController = self->actionController;
    v13 = sub_23EC13460(self, v11, v12) != 1;
    SectionInfoWithLongStrings = objc_msgSend_getSectionInfoWithLongStrings_(actionController, v14, v13);
    objc_msgSend_addSectionInfo_(v9, v16, SectionInfoWithLongStrings);
  }

  v17 = self->actionController;
  if (v17 && !objc_msgSend_isPrimaryRecommendation(v17, a2, v2))
  {
    v55 = objc_msgSend_tableManager(self, a2, v2);
    objc_msgSend_deleteSectionWithIdentifier_animated_(v55, v56, @"WiFiName", 0);
  }

  else
  {
LABEL_6:
    v18 = objc_msgSend_tableManager(self, a2, v2);
    if (objc_msgSend_indexOfSectionWithIdentifier_(v18, v19, @"WiFiName") == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = objc_msgSend_array(MEMORY[0x277CBEB18], v20, v21);
      v25 = objc_msgSend_tableManager(self, v23, v24);
      v26 = sub_23EB6CD3C(@"CustomWiFiName", qword_27E383800);
      v29 = objc_msgSend_wifiName(self, v27, v28);
      v30 = sub_23EB6CD3C(@"CustomWiFiNamePlaceholder", qword_27E383800);
      isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v25, v31, 0, v26, v29, v30, 0, 0, 1464225389);
      v34 = sub_23EB5E230(1651724878, v33);
      if (v34)
      {
        objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v35, v34, @"nsFormatter");
      }

      objc_msgSend_addObject_(v22, v35, isSecure_keyboardType_withTag);
      v38 = objc_msgSend_tableManager(self, v36, v37);
      v39 = sub_23EB6CD3C(@"CustomBaseName", qword_27E383800);
      v42 = objc_msgSend_personalizedBaseName(self, v40, v41);
      v43 = sub_23EB6CD3C(@"CustomBaseNamePlaceholder", qword_27E383800);
      v45 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v38, v44, 0, v39, v42, v43, 0, 0, 1937329773);
      v47 = sub_23EB5E230(1937329773, v46);
      if (v47)
      {
        objc_msgSend_setObject_forKey_(v45, v48, v47, @"nsFormatter");
      }

      objc_msgSend_addObject_(v22, v48, v45);
      v51 = objc_msgSend_tableManager(self, v49, v50);
      v53 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v52, v22, @"sectionRows", @"WiFiName", @"identifier", 0);
      objc_msgSend_addSectionInfo_(v51, v54, v53);
    }
  }

  v57 = self->actionController;
  v58 = objc_msgSend_tableManager(self, v20, v21);
  if (v57)
  {

    objc_msgSend_deleteSectionWithIdentifier_animated_(v58, v59, @"SinglePasswordSwitch", 0);
  }

  else if (objc_msgSend_indexOfSectionWithIdentifier_(v58, v59, @"SinglePasswordSwitch") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v62 = objc_msgSend_array(MEMORY[0x277CBEB18], v60, v61);
    v65 = objc_msgSend_tableManager(self, v63, v64);
    v66 = sub_23EB6CD3C(@"StepByStepChoice_Create_Config.UsingSinglePasswordLabel", qword_27E383800);
    v69 = objc_msgSend_useSinglePassword(self, v67, v68);
    v71 = objc_msgSend_createRowStyleBasicOnOffWithImage_labelText_isOn_withTag_(v65, v70, 0, v66, v69, 1397773175);
    objc_msgSend_addObject_(v62, v72, v71);
    v75 = objc_msgSend_tableManager(self, v73, v74);
    v78 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v76, v62, @"sectionRows", @"SinglePasswordSwitch", @"identifier", 0);

    objc_msgSend_addSectionInfo_(v75, v77, v78);
  }
}

- (void)updateTable
{
  v4 = objc_msgSend_useSinglePassword(self, a2, v2);
  objc_msgSend_updateSinglePasswordSwitchExplanation_(self, v5, v4);
  if (objc_msgSend_useSinglePassword(self, v6, v7))
  {

    MEMORY[0x2821F9670](self, sel_updateTableForSinglePassword, v9);
  }

  else
  {
    objc_msgSend_updateTableForMultiplePasswords(self, v8, v9);
    if (objc_msgSend_useDifferentDiskPassword(self, v10, v11))
    {

      MEMORY[0x2821F9670](self, sel_addDiskPasswordSection, v13);
    }

    else
    {
      v14 = objc_msgSend_tableManager(self, v12, v13);

      objc_msgSend_deleteSectionWithIdentifier_(v14, v15, @"DiskPassword");
    }
  }
}

- (void)addDiskPasswordSection
{
  v4 = objc_msgSend_tableManager(self, a2, v2);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v4, v5, @"DiskPassword") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
    v11 = objc_msgSend_tableManager(self, v9, v10);
    v12 = sub_23EB6CD3C(@"PasswordLabel", qword_27E383800);
    v15 = objc_msgSend_diskPassword(self, v13, v14);
    v16 = sub_23EB6CD3C(@"CreatePasswordPlaceholder", qword_27E383800);
    isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v11, v17, 0, v12, v15, v16, 1, 1, 1147752545);
    v22 = sub_23EB5E230(1718842224, v19);
    if (v22)
    {
      objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v20, v22, @"nsFormatter");
    }

    v23 = objc_msgSend_tableManager(self, v20, v21);
    objc_msgSend_setNewRow_verifierAccessoryType_(v23, v24, isSecure_keyboardType_withTag, 0);
    objc_msgSend_addObject_(v8, v25, isSecure_keyboardType_withTag);
    v28 = objc_msgSend_tableManager(self, v26, v27);
    v29 = sub_23EB6CD3C(@"VerifyLabel", qword_27E383800);
    v32 = objc_msgSend_diskPasswordVerify(self, v30, v31);
    v33 = sub_23EB6CD3C(@"VerifyPlaceholder", qword_27E383800);
    v35 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v28, v34, 0, v29, v32, v33, 1, 1, 1147752534);
    v38 = v35;
    if (v22)
    {
      objc_msgSend_setObject_forKey_(v35, v36, v22, @"nsFormatter");
    }

    v39 = objc_msgSend_tableManager(self, v36, v37);
    objc_msgSend_setNewRow_verifierAccessoryType_(v39, v40, v38, 0);
    objc_msgSend_addObject_(v8, v41, v38);
    v44 = objc_msgSend_tableManager(self, v42, v43);
    v45 = MEMORY[0x277CBEB38];
    v46 = sub_23EB6CD3C(@"DiskPasswordSectionTitle", qword_27E383800);
    v49 = objc_msgSend_dictionaryWithObjectsAndKeys_(v45, v47, v8, @"sectionRows", v46, @"header", @"DiskPassword", @"identifier", 0);

    objc_msgSend_addSectionInfo_animated_(v44, v48, v49, 0);
  }
}

@end