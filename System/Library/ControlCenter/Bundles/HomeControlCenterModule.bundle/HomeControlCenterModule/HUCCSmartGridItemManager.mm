@interface HUCCSmartGridItemManager
- (HUCCMosaicLayoutDelegate)mosaicLayoutDelegate;
- (HUCCSmartGridItemManager)initWithMosaicLayoutDelegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildItemProvidersWithoutHome;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_itemsToHideInSet:(id)set;
- (id)_mosaicKeyForItem:(id)item;
- (id)mosaicDetailsForDisplayedItemAtIndexPath:(id)path;
- (id)mosaicDetailsForItem:(id)item;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items;
- (void)loadDefaultProviderItem;
- (void)setChosenLayoutType:(unint64_t)type;
@end

@implementation HUCCSmartGridItemManager

- (HUCCSmartGridItemManager)initWithMosaicLayoutDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = HUCCSmartGridItemManager;
  v5 = [(HFItemManager *)&v8 initWithDelegate:0 sourceItem:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mosaicLayoutDelegate, delegateCopy);
    v6->_chosenLayoutType = 0;
    v6->_layoutWasChanged = 0;
  }

  return v6;
}

- (void)loadDefaultProviderItem
{
  objc_msgSend_resetItemProvidersAndModules(self, a2, v2);

  MEMORY[0x2A1C70FE8](self, sel_sortDisplayedItemsInSection_, 0);
}

- (id)_itemsToHideInSet:(id)set
{
  v3 = MEMORY[0x29EDB8E20];
  v10.receiver = self;
  v10.super_class = HUCCSmartGridItemManager;
  v4 = [(HFItemManager *)&v10 _itemsToHideInSet:set];
  v6 = objc_msgSend_setWithSet_(v3, v5, v4);

  v8 = objc_msgSend_na_filter_(v6, v7, &unk_2A23EA608);

  return v8;
}

- (id)_buildItemProvidersWithoutHome
{
  v3 = objc_msgSend_array(MEMORY[0x29EDB8DE8], a2, v2);
  v4 = objc_alloc(MEMORY[0x29EDC5388]);
  v6 = objc_msgSend_initWithHome_(v4, v5, 0);
  v7 = objc_alloc(MEMORY[0x29EDC53E0]);
  v9 = objc_msgSend_setWithObjects_(MEMORY[0x29EDB8E50], v8, v6, 0);
  v11 = objc_msgSend_initWithItems_(v7, v10, v9);

  v14 = objc_msgSend_reloadItems(v11, v12, v13);
  objc_msgSend_addObject_(v3, v15, v11);

  return v3;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v56 = *MEMORY[0x29EDCA608];
  homeCopy = home;
  v7 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v5, v6);
  if (objc_msgSend_hf_shouldBlockCurrentUserFromHome(homeCopy, v8, v9))
  {
    v12 = objc_alloc(MEMORY[0x29EDC5388]);
    v14 = objc_msgSend_initWithHome_(v12, v13, homeCopy);
    v15 = objc_alloc(MEMORY[0x29EDC53E0]);
    v17 = objc_msgSend_setWithObjects_(MEMORY[0x29EDB8E50], v16, v14, 0);
    v19 = objc_msgSend_initWithItems_(v15, v18, v17);

    v22 = objc_msgSend_reloadItems(v19, v20, v21);
    objc_msgSend_addObject_(v7, v23, v19);
  }

  else
  {
    v24 = objc_msgSend_predictionsManager(self, v10, v11);
    if (!v24)
    {
      goto LABEL_5;
    }

    v27 = v24;
    v28 = objc_msgSend_predictionsManager(self, v25, v26);
    v31 = objc_msgSend_home(v28, v29, v30);
    isEqual = objc_msgSend_isEqual_(v31, v32, homeCopy);

    if ((isEqual & 1) == 0)
    {
LABEL_5:
      v34 = HFLogForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = homeCopy;
        _os_log_impl(&dword_29C992000, v34, OS_LOG_TYPE_DEFAULT, "Creating predictionsManager for home: %@", buf, 0xCu);
      }

      v35 = objc_alloc(MEMORY[0x29EDC53D0]);
      v38 = objc_msgSend_userActionPredictionController(homeCopy, v36, v37);
      v40 = objc_msgSend_initWithHome_predictionsController_delegate_predictionLimit_(v35, v39, homeCopy, v38, self, 6);
      objc_msgSend_setPredictionsManager_(self, v41, v40);
    }

    v42 = objc_alloc(MEMORY[0x29EDC53C8]);
    v45 = objc_msgSend_predictionsManager(self, v43, v44);
    v47 = objc_msgSend_initWithHome_predictionsManager_itemLimit_(v42, v46, homeCopy, v45, 6);
    objc_msgSend_setPredictionsItemProvider_(self, v48, v47);

    v14 = objc_msgSend_predictionsItemProvider(self, v49, v50);
    objc_msgSend_addObject_(v7, v51, v14);
  }

  v52 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v114 = *MEMORY[0x29EDCA608];
  itemsCopy = items;
  v7 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v5, v6);
  v10 = objc_msgSend_mosaicLayoutDelegate(self, v8, v9);

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x29EDC53B0]);
    v13 = objc_msgSend_initWithIdentifier_(v11, v12, @"HUCC START GRID MAIN SECTION");
    v16 = objc_msgSend_allObjects(itemsCopy, v14, v15);
    v111[0] = MEMORY[0x29EDCA5F8];
    v111[1] = 3221225472;
    v111[2] = sub_29C995170;
    v111[3] = &unk_29F33A820;
    v111[4] = self;
    v18 = objc_msgSend_sortedArrayUsingComparator_(v16, v17, v111);

    if (objc_msgSend_count(v18, v19, v20))
    {
      v97 = v13;
      v98 = itemsCopy;
      v99 = v7;
      v23 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v21, v22);
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v96 = v18;
      v24 = v18;
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v107, v113, 16);
      v27 = 0x29EDC5000uLL;
      if (v26)
      {
        v28 = v26;
        v29 = *v108;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v108 != v29)
            {
              objc_enumerationMutation(v24);
            }

            v31 = *(*(&v107 + 1) + 8 * i);
            v32 = objc_alloc(MEMORY[0x29EDC5490]);
            v34 = objc_msgSend_initWithBaseItem_(v32, v33, v31);
            objc_msgSend_addObject_(v23, v35, v34);
          }

          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v36, &v107, v113, 16);
        }

        while (v28);
      }

      v39 = objc_msgSend_mosaicLayoutDelegate(self, v37, v38);
      v42 = objc_msgSend_arranger(v39, v40, v41);

      v95 = v23;
      v44 = objc_msgSend_calculateOrderingForItems_(v42, v43, v23);
      v94 = v42;
      v47 = objc_msgSend_chosenLayoutType(v42, v45, v46);
      objc_msgSend_setChosenLayoutType_(self, v48, v47);
      v101 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v49, v50);
      v53 = objc_msgSend_dictionary(MEMORY[0x29EDB8E00], v51, v52);
      objc_msgSend_setMosaicLayoutDetails_(self, v54, v53);

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      obj = v44;
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v103, v112, 16);
      if (v56)
      {
        v57 = v56;
        v58 = 0;
        v102 = *v104;
        do
        {
          for (j = 0; j != v57; ++j)
          {
            if (*v104 != v102)
            {
              objc_enumerationMutation(obj);
            }

            v60 = *(*(&v103 + 1) + 8 * j);
            v61 = *(v27 + 1168);
            objc_opt_class();
            v62 = v60;
            if (objc_opt_isKindOfClass())
            {
              v63 = v62;
            }

            else
            {
              v63 = 0;
            }

            v64 = v63;

            if (v64)
            {
              objc_opt_class();
              v67 = objc_msgSend_baseItem(v64, v65, v66);
              if (objc_opt_isKindOfClass())
              {
                v68 = v67;
              }

              else
              {
                v68 = 0;
              }

              v69 = v68;

              if (v69)
              {
                ++v58;
              }

              v72 = objc_msgSend_baseItem(v64, v70, v71);
              objc_msgSend_addObject_(v101, v73, v72);

              v76 = objc_msgSend_mosaicLayoutDetails(self, v74, v75);
              v79 = objc_msgSend_baseItem(v64, v77, v78);
              objc_msgSend__mosaicKeyForItem_(self, v80, v79);
              v81 = v27;
              v83 = v82 = self;
              objc_msgSend_setObject_forKey_(v76, v84, v64, v83);

              self = v82;
              v27 = v81;
            }
          }

          v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v85, &v103, v112, 16);
        }

        while (v57);
      }

      else
      {
        v58 = 0;
      }

      if (v58 != objc_msgSend_numberOfPlaceholderItems(self, v87, v88))
      {
        objc_msgSend_setNumberOfPlaceholderItems_(self, v89, v58);
        objc_msgSend_setNumberOfPlaceholdersWasChanged_(self, v90, 1);
      }

      v13 = v97;
      objc_msgSend_setItems_(v97, v89, v101);

      itemsCopy = v98;
      v7 = v99;
      v86 = v95;
      v18 = v96;
    }

    else
    {
      v86 = HFLogForCategory();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        sub_29C9AB710(self, v86);
      }
    }

    if (_os_feature_enabled_impl())
    {
      objc_msgSend_setItems_(v13, v91, v18);
    }

    objc_msgSend_addObject_(v7, v91, v13);
  }

  v92 = *MEMORY[0x29EDCA608];

  return v7;
}

- (void)setChosenLayoutType:(unint64_t)type
{
  v18 = *MEMORY[0x29EDCA608];
  if (self->_chosenLayoutType != type)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      chosenLayoutType = self->_chosenLayoutType;
      v10 = 138413058;
      v11 = v7;
      v12 = 2080;
      v13 = "[HUCCSmartGridItemManager setChosenLayoutType:]";
      v14 = 2048;
      v15 = chosenLayoutType;
      v16 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_29C992000, v5, OS_LOG_TYPE_DEFAULT, "%@:%s prev chosenLayoutType = %lu. new chosenLayoutType = %lu", &v10, 0x2Au);
    }

    if (self->_chosenLayoutType)
    {
      self->_layoutWasChanged = 1;
    }

    self->_chosenLayoutType = type;
  }

  v9 = *MEMORY[0x29EDCA608];
}

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items
{
  v18.receiver = self;
  v18.super_class = HUCCSmartGridItemManager;
  [(HFItemManager *)&v18 _didFinishUpdateTransactionWithAffectedItems:items];
  if (objc_msgSend_layoutWasChanged(self, v4, v5))
  {
    objc_msgSend_setLayoutWasChanged_(self, v6, 0);
    v10 = objc_msgSend_mosaicLayoutDelegate(self, v8, v9);
    objc_msgSend_itemManagerDidChangeMosaicLayout_(v10, v11, self);

    objc_msgSend_setNumberOfPlaceholdersWasChanged_(self, v12, 0);
  }

  if (objc_msgSend_numberOfPlaceholdersWasChanged(self, v6, v7))
  {
    objc_msgSend_setNumberOfPlaceholdersWasChanged_(self, v13, 0);
    v16 = objc_msgSend_mosaicLayoutDelegate(self, v14, v15);
    objc_msgSend_itemManagerDidChangeNumberOfPlaceholderItems_(v16, v17, self);
  }
}

- (id)mosaicDetailsForDisplayedItemAtIndexPath:(id)path
{
  v4 = objc_msgSend_displayedItemAtIndexPath_(self, a2, path);
  v6 = objc_msgSend_mosaicDetailsForItem_(self, v5, v4);

  return v6;
}

- (id)mosaicDetailsForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v7 = objc_msgSend_mosaicLayoutDetails(self, v5, v6);
  v9 = objc_msgSend__mosaicKeyForItem_(self, v8, itemCopy);

  v11 = objc_msgSend_objectForKey_(v7, v10, v9);
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (id)_mosaicKeyForItem:(id)item
{
  itemCopy = item;
  if (objc_msgSend_conformsToProtocol_(itemCopy, v4, &unk_2A2421108))
  {
    v5 = itemCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v9 = v6;
  if (v6 && (objc_msgSend_homeKitObject(v6, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v13 = objc_msgSend_homeKitObject(v9, v11, v12);
    v16 = objc_msgSend_uniqueIdentifier(v13, v14, v15);
    v19 = objc_msgSend_UUIDString(v16, v17, v18);
  }

  else
  {
    v19 = @"DefaultKey";
  }

  return v19;
}

- (HUCCMosaicLayoutDelegate)mosaicLayoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mosaicLayoutDelegate);

  return WeakRetained;
}

@end