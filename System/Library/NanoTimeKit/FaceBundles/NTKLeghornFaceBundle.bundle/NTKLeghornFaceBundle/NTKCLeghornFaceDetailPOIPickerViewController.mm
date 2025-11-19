@interface NTKCLeghornFaceDetailPOIPickerViewController
- (NTKCLeghornFaceDetailPOIPickerDelegate)delegate;
- (NTKCLeghornFaceDetailPOIPickerViewController)initWithPOISection:(id)a3 filter:(id)a4 delegate:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_filterChanged;
- (void)_setupCells;
- (void)setFilter:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation NTKCLeghornFaceDetailPOIPickerViewController

- (NTKCLeghornFaceDetailPOIPickerViewController)initWithPOISection:(id)a3 filter:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30.receiver = self;
  v30.super_class = NTKCLeghornFaceDetailPOIPickerViewController;
  v12 = [(NTKCLeghornFaceDetailPOIPickerViewController *)&v30 initWithStyle:2];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_section, a3);
    objc_storeStrong(&v13->_filter, a4);
    objc_storeWeak(&v13->_delegate, v11);
    v14 = MEMORY[0x277CBEB18];
    v17 = objc_msgSend_detailsCount(v9, v15, v16);
    v20 = objc_msgSend_arrayWithCapacity_(v14, v18, v19, v17);
    categoryCells = v13->_categoryCells;
    v13->_categoryCells = v20;

    objc_msgSend__setupCells(v13, v22, v23);
    v26 = objc_msgSend_name(v13->_section, v24, v25);
    objc_msgSend_setTitle_(v13, v27, v28, v26);
  }

  return v13;
}

- (void)_setupCells
{
  v3 = [NTKCLeghornFaceDetailEditOptionCell alloc];
  v6 = objc_msgSend_initWithSection_category_name_all_filter_(v3, v4, v5, self->_section, 0, 0, 1, self->_filter);
  showAllCell = self->_showAllCell;
  self->_showAllCell = v6;

  if (objc_msgSend_detailsCount(self->_section, v8, v9))
  {
    v12 = 0;
    do
    {
      v13 = objc_msgSend_categoryForDetailItemAtIndex_(self->_section, v10, v11, v12);
      v16 = objc_msgSend_nameForDetailItem_(self->_section, v14, v15, v12);
      categoryCells = self->_categoryCells;
      v18 = [NTKCLeghornFaceDetailEditOptionCell alloc];
      v21 = objc_msgSend_initWithSection_category_name_all_filter_(v18, v19, v20, self->_section, v13, v16, 0, self->_filter);
      objc_msgSend_addObject_(categoryCells, v22, v23, v21);

      ++v12;
    }

    while (objc_msgSend_detailsCount(self->_section, v24, v25) > v12);
  }
}

- (void)setFilter:(id)a3
{
  objc_storeStrong(&self->_filter, a3);
  v5 = a3;
  objc_msgSend_setFilter_(self->_showAllCell, v6, v7, self->_filter);
  categoryCells = self->_categoryCells;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23BEBAF2C;
  v10[3] = &unk_278BA0EC0;
  v10[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(categoryCells, v9, COERCE_DOUBLE(3221225472), v10);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!a4)
  {
    return 1;
  }

  if (a4 == 1)
  {
    return objc_msgSend_detailsCount(self->_section, a2, v4, a3);
  }

  return 0;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v8 = objc_msgSend_section(v5, v6, v7);
  if (v8 == 1)
  {
    v12 = objc_msgSend_row(v5, v9, v10);
    if ((v12 & 0x8000000000000000) == 0)
    {
      v15 = v12;
      if (v12 < objc_msgSend_count(self->_categoryCells, v13, v14))
      {
        v11 = objc_msgSend_objectAtIndexedSubscript_(self->_categoryCells, v16, v17, v15);
        goto LABEL_8;
      }
    }
  }

  else if (!v8 && !objc_msgSend_row(v5, v9, v10))
  {
    v11 = self->_showAllCell;
LABEL_8:
    v18 = v11;
    goto LABEL_10;
  }

  v18 = 0;
LABEL_10:

  return v18;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v28 = a4;
  objc_msgSend_deselectRowAtIndexPath_animated_(a3, v6, v7, v28, 1);
  v10 = objc_msgSend_section(v28, v8, v9);
  if (v10 != 1)
  {
    if (v10)
    {
      goto LABEL_9;
    }

    p_filter = &self->_filter;
    v14 = objc_msgSend_selectionForFilter_(self->_section, v11, v12, self->_filter);
    if (v14 <= 2)
    {
      objc_msgSend_setSelected_forFilter_(self->_section, v15, v16, (3u >> (v14 & 7)) & 1, *p_filter);
    }

    goto LABEL_8;
  }

  v17 = objc_msgSend_row(v28, v11, v12);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v20 = v17;
    if (v17 < objc_msgSend_detailsCount(self->_section, v18, v19))
    {
      p_filter = &self->_filter;
      v23 = objc_msgSend_selectedForFilter_atIndex_(self->_section, v21, v22, self->_filter, v20);
      objc_msgSend_setSelected_forFilter_atIndex_(self->_section, v24, v25, v23 ^ 1u, self->_filter, v20);
LABEL_8:
      objc_msgSend_setFilter_(self, v15, v16, *p_filter);
      objc_msgSend__filterChanged(self, v26, v27);
    }
  }

LABEL_9:
}

- (void)_filterChanged
{
  v6 = objc_msgSend_delegate(self, a2, v2);
  objc_msgSend_poiFilterViewControllerDidChangeFilter_(v6, v4, v5, self);
}

- (NTKCLeghornFaceDetailPOIPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end