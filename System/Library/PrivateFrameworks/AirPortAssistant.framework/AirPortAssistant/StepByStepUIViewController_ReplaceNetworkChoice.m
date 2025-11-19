@interface StepByStepUIViewController_ReplaceNetworkChoice
- (void)setupDevices;
- (void)setupHeaderAndFooter;
@end

@implementation StepByStepUIViewController_ReplaceNetworkChoice

- (void)setupHeaderAndFooter
{
  justTextLabel = self->super.super.justTextLabel;
  v5 = objc_msgSend_justTextContainerView(self, a2, v2);
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v6, @"StepByStepStatus_ReplaceNetworkChoice%@");
  sub_23EB5E054(justTextLabel, v5, ProductLocalizedStringWithFormat);
  v10 = objc_msgSend_tableHeaderContainerView(self, v8, v9);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v11, v10);
  v14 = objc_msgSend_parentController(self, v12, v13);
  v17 = objc_msgSend_tableHeaderContainerView(self, v15, v16);
  v18 = MEMORY[0x277CBEA60];
  v21 = objc_msgSend_justTextContainerView(self, v19, v20);
  v24 = objc_msgSend_topoView(self, v22, v23);
  v26 = objc_msgSend_arrayWithObjects_(v18, v25, v21, v24, 0);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v14, v27, v17, v26, 1);
  v30 = objc_msgSend_tableHeaderContainerView(self, v28, v29);
  v33 = objc_msgSend_tableView(self, v31, v32);

  objc_msgSend_setTableHeaderView_(v33, v34, v30);
}

- (void)setupDevices
{
  v4 = MEMORY[0x277CBEB18];
  v5 = objc_msgSend_inParamDict(self, a2, v2);
  v7 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_NetworkScanRecordList");
  v9 = objc_msgSend_arrayWithArray_(v4, v8, v7);
  if (v9)
  {
    v11 = objc_msgSend_sortedArrayUsingSelector_(v9, v10, sel_ssidLocalizedCaseInsensitiveCompare_);
    objc_msgSend_setSortedDevices_(self, v12, v11);
    self->super._selectedDevice = self->super._sourceNetwork;
    v13 = off_27E3830F0;

    MEMORY[0x2821F9670](self, sel_setConnectionMedium_, v13);
  }
}

@end