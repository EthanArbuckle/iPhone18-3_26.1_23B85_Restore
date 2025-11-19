@interface NTKCLeghornFaceDetailContentSectionController
- (BOOL)collectionChanged:(id)a3 withSelectedOptions:(id)a4;
- (NTKCLeghornFaceDetailContentSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7;
- (UIViewController)parentViewController;
- (id)_allSections;
- (id)_currentEditOption;
- (id)_currentFilter;
- (id)_sectionForRow:(int64_t)a3;
- (void)_createRows;
- (void)_filterUpdated;
- (void)_refreshRows;
- (void)didSelectRow:(int64_t)a3;
- (void)faceDidChange;
- (void)poiSectionDetailsLoaded:(BOOL)a3 forSection:(id)a4;
- (void)setSelectedOptions:(id)a3;
@end

@implementation NTKCLeghornFaceDetailContentSectionController

- (NTKCLeghornFaceDetailContentSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7
{
  v20.receiver = self;
  v20.super_class = NTKCLeghornFaceDetailContentSectionController;
  v7 = [(NTKCFaceDetailEditOptionSectionController *)&v20 _initWithTableViewController:a3 face:a4 inGallery:a5 editOptionCollection:a6 faceView:a7];
  v10 = v7;
  if (v7)
  {
    v11 = objc_msgSend__allSections(v7, v8, v9);
    sections = v10->_sections;
    v10->_sections = v11;

    v15 = objc_msgSend__currentFilter(v10, v13, v14);
    filter = v10->_filter;
    v10->_filter = v15;

    objc_msgSend__createRows(v10, v17, v18);
  }

  return v10;
}

- (id)_allSections
{
  v24[6] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sectionWithType_delegate_(NTKCLeghornFaceDetailPOISection, a2, v2, 0, self);
  v7 = objc_msgSend_sectionWithType_delegate_(NTKCLeghornFaceDetailPOISection, v5, v6, 1, self);
  v10 = objc_msgSend_sectionWithType_delegate_(NTKCLeghornFaceDetailPOISection, v8, v9, 2, self);
  v13 = objc_msgSend_sectionWithType_delegate_(NTKCLeghornFaceDetailPOISection, v11, v12, 3, self);
  v16 = objc_msgSend_sectionWithType_delegate_(NTKCLeghornFaceDetailPOISection, v14, v15, 4, self);
  v19 = objc_msgSend_sectionWithType_delegate_(NTKCLeghornFaceDetailPOISection, v17, v18, 5, self);
  v24[0] = v4;
  v24[1] = v7;
  v24[2] = v10;
  v24[3] = v13;
  v24[4] = v16;
  v24[5] = v19;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v20, v21, v24, 6);

  return v22;
}

- (void)_createRows
{
  v4 = objc_msgSend__currentFilter(self, a2, v2);
  v7 = objc_msgSend__newSectionHeader(self, v5, v6);
  objc_msgSend_setHeaderView_(self, v8, v9, v7);

  v12 = objc_msgSend_collection(self, v10, v11);
  v15 = objc_msgSend_localizedName(v12, v13, v14);
  v18 = objc_msgSend_headerView(self, v16, v17);
  objc_msgSend_setTitle_(v18, v19, v20, v15);

  v21 = MEMORY[0x277CBEB18];
  v24 = objc_msgSend_count(self->_sections, v22, v23);
  v27 = objc_msgSend_arrayWithCapacity_(v21, v25, v26, v24 + 1);
  sections = self->_sections;
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = sub_23BEE007C;
  v44 = &unk_278BA1BF0;
  v45 = v27;
  v46 = v4;
  v29 = v4;
  v30 = v27;
  objc_msgSend_enumerateObjectsUsingBlock_(sections, v31, v32, &v41);
  v33 = objc_alloc_init(MEMORY[0x277D2BF80]);
  v34 = NTKFoghornFaceLocalizedString(@"LEGHORN_POI_FILTER_FOOTER");
  objc_msgSend_setText_(v33, v35, v36, v34, v41, v42, v43, v44);

  objc_msgSend_addObject_(v30, v37, v38, v33);
  objc_msgSend_setRows_(self, v39, v40, v30);
}

- (void)_refreshRows
{
  v4 = MEMORY[0x277CBEB18];
  v5 = objc_msgSend_count(self->_sections, a2, v2);
  v43 = objc_msgSend_arrayWithCapacity_(v4, v6, v7, v5);
  if (objc_msgSend_count(self->_sections, v8, v9))
  {
    v12 = 0;
    do
    {
      v13 = objc_msgSend_rows(self, v10, v11);
      v16 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, v15, v12);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v16;
        v22 = objc_msgSend__currentFilter(self, v20, v21);
        objc_msgSend_setFilter_(v19, v23, v24, v22);
      }

      v25 = MEMORY[0x277CCAA70];
      v26 = objc_msgSend_section(self, v17, v18);
      v29 = objc_msgSend_indexPathForRow_inSection_(v25, v27, v28, v12, v26);
      objc_msgSend_setObject_atIndexedSubscript_(v43, v30, v31, v29, v12);

      ++v12;
    }

    while (objc_msgSend_count(self->_sections, v32, v33) > v12);
  }

  v34 = objc_msgSend_tableView(self, v10, v11);
  objc_msgSend_reloadRowsAtIndexPaths_withRowAnimation_(v34, v35, v36, v43, 5);

  WeakRetained = objc_loadWeakRetained(&self->_activePicker);
  if (WeakRetained)
  {
    v40 = objc_msgSend__currentFilter(self, v37, v39);
    objc_msgSend_setFilter_(WeakRetained, v41, v42, v40);
  }
}

- (id)_currentEditOption
{
  v3 = objc_msgSend_selectedOptions(self, a2, v2);
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v4, v5, &unk_284EB78B8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE73BC(v6, v8);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_currentFilter
{
  filter = self->_filter;
  if (!filter)
  {
    v5 = objc_msgSend__currentEditOption(self, a2, v2);
    v8 = objc_msgSend_poiFilter(v5, v6, v7);
    v11 = objc_msgSend_copy(v8, v9, v10);
    v12 = self->_filter;
    self->_filter = v11;

    filter = self->_filter;
  }

  return filter;
}

- (BOOL)collectionChanged:(id)a3 withSelectedOptions:(id)a4
{
  v6 = a4;
  objc_msgSend_setCollection_(self, v7, v8, a3);
  objc_msgSend_setSelectedOptions_(self, v9, v10, v6);

  return 1;
}

- (id)_sectionForRow:(int64_t)a3
{
  if (a3 < 0)
  {
    v9 = 0;
  }

  else
  {
    if (objc_msgSend_count(self->_sections, a2, v4) <= a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_msgSend_objectAtIndexedSubscript_(self->_sections, v7, v8, a3);
    }
  }

  return v9;
}

- (void)didSelectRow:(int64_t)a3
{
  v42 = objc_msgSend__sectionForRow_(self, a2, v3);
  if (objc_msgSend_detailsCount(v42, v6, v7))
  {
    v10 = [NTKCLeghornFaceDetailPOIPickerViewController alloc];
    v13 = objc_msgSend__currentFilter(self, v11, v12);
    v16 = objc_msgSend_initWithPOISection_filter_delegate_(v10, v14, v15, v42, v13, self);

    objc_storeWeak(&self->_activePicker, v16);
    v19 = objc_msgSend_tableViewController(self, v17, v18);
    v22 = objc_msgSend_navigationController(v19, v20, v21);

    if (v22)
    {
      v25 = objc_msgSend_navigationController(v19, v23, v24);
      objc_msgSend_pushViewController_animated_(v25, v26, v27, v16, 1);
    }
  }

  else
  {
    v28 = objc_msgSend_rows(self, v8, v9);
    v16 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, v30, a3);

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v16 = v16;
    v19 = objc_msgSend_filter(v16, v31, v32);
    v35 = objc_msgSend_selectionForFilter_(v42, v33, v34, v19) == 0;
    objc_msgSend_setSelected_forFilter_(v42, v36, v37, v35, v19);
    objc_msgSend_setFilter_(v16, v38, v39, v19);

    objc_msgSend__filterUpdated(self, v40, v41);
  }

LABEL_7:
}

- (void)faceDidChange
{
  v2.receiver = self;
  v2.super_class = NTKCLeghornFaceDetailContentSectionController;
  [(NTKCFaceDetailEditOptionSectionController *)&v2 faceDidChange];
}

- (void)_filterUpdated
{
  v18 = objc_msgSend__currentEditOption(self, a2, v2);
  v6 = objc_msgSend_copy(self->_filter, v4, v5);
  v9 = objc_msgSend_device(v18, v7, v8);
  v12 = objc_msgSend_optionWithPOIFilter_forDevice_(NTKLeghornPOIFilterEditOption, v10, v11, v6, v9);

  v15 = objc_msgSend_delegate(self, v13, v14);
  objc_msgSend_editOptionSection_didModifyEditOption_transiently_canceled_(v15, v16, v17, self, v12, 0, 0);
}

- (void)setSelectedOptions:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKCLeghornFaceDetailContentSectionController;
  [(NTKCFaceDetailEditOptionSectionController *)&v7 setSelectedOptions:a3];
  filter = self->_filter;
  self->_filter = 0;

  objc_msgSend__refreshRows(self, v5, v6);
}

- (void)poiSectionDetailsLoaded:(BOOL)a3 forSection:(id)a4
{
  v5 = a4;
  sections = self->_sections;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23BEE0894;
  v10[3] = &unk_278BA1BF0;
  v11 = v5;
  v12 = self;
  v7 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(sections, v8, v9, v10);
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end