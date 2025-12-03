@interface NTKCLeghornFaceDetailPOISection
+ (NTKCLeghornFaceDetailPOISection)sectionWithType:(unint64_t)type delegate:(id)delegate;
- (BOOL)selectedForFilter:(id)filter atIndex:(unint64_t)index;
- (NSArray)guides;
- (NSString)action;
- (NSString)name;
- (NSString)showAllString;
- (NTKCLeghornFaceDetailPOISection)initWithType:(unint64_t)type delegate:(id)delegate;
- (NTKCLeghornFaceDetailPOISectionDelegate)delegate;
- (id)nameForDetailItem:(unint64_t)item;
- (unint64_t)_selectionForFilter:(id)filter forCategory:(unint64_t)category;
- (unint64_t)_userGuideCategoryAtIndex:(unint64_t)index categoryName:(id *)name displayName:(id *)displayName;
- (unint64_t)categoryForDetailItemAtIndex:(unint64_t)index;
- (unint64_t)detailsCount;
- (unint64_t)selectionForFilter:(id)filter;
- (void)_loadGuides;
- (void)_setSelected:(BOOL)selected forFilter:(id)filter forCategory:(unint64_t)category;
- (void)_setSelected:(BOOL)selected forFilter:(id)filter forCategory:(unint64_t)category named:(id)named;
- (void)setSelected:(BOOL)selected forFilter:(id)filter;
- (void)setSelected:(BOOL)selected forFilter:(id)filter atIndex:(unint64_t)index;
@end

@implementation NTKCLeghornFaceDetailPOISection

+ (NTKCLeghornFaceDetailPOISection)sectionWithType:(unint64_t)type delegate:(id)delegate
{
  delegateCopy = delegate;
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithType_delegate_(v6, v7, v8, type, delegateCopy);

  return v9;
}

- (NTKCLeghornFaceDetailPOISection)initWithType:(unint64_t)type delegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = NTKCLeghornFaceDetailPOISection;
  v7 = [(NTKCLeghornFaceDetailPOISection *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    if (v8->_type == 1)
    {
      objc_msgSend__loadGuides(v8, v9, v10);
    }
  }

  return v8;
}

- (NSString)name
{
  type = self->_type;
  if (type > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = NTKFoghornFaceLocalizedString(off_278BA1680[type]);
  }

  return v4;
}

- (NSString)showAllString
{
  type = self->_type;
  if (type == 1)
  {
    v4 = @"LEGHORN_POI_FILTER_SHOW_ALL_GUIDES";
LABEL_5:
    v5 = NTKFoghornFaceLocalizedString(v4);

    return v5;
  }

  if (type == 5)
  {
    v4 = @"LEGHORN_POI_FILTER_SHOW_ALL_SUGGESTIONS";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (NSString)action
{
  type = self->_type;
  if (type == 1)
  {
    v4 = @"LEGHORN_POI_FILTER_MAPS_GUIDES_MANAGE";
LABEL_5:
    v5 = NTKFoghornFaceLocalizedString(v4);

    return v5;
  }

  if (type == 5)
  {
    v4 = @"LEGHORN_POI_FILTER_MAPS_SUGGESTIONS_MANAGE";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (unint64_t)detailsCount
{
  type = self->_type;
  if (type == 5)
  {
    return 3;
  }

  if (type != 1)
  {
    return 0;
  }

  v4 = objc_msgSend_guides(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6) + 1;

  return v7;
}

- (unint64_t)_userGuideCategoryAtIndex:(unint64_t)index categoryName:(id *)name displayName:(id *)displayName
{
  v10 = objc_msgSend_guides(self, a2, v5);
  v13 = objc_msgSend_count(v10, v11, v12);

  if (v13 <= index)
  {
    if (v13 == index)
    {
      if (displayName)
      {
        v24 = NTKFoghornFaceLocalizedString(@"POI_FILTER_SECTION_MAPS_FAVORITES");
        v22 = 0;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v23 = 256;
      if (!name)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v22 = 0;
      v24 = 0;
      v23 = 0;
      if (!name)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    v25 = v22;
    *name = v22;
    goto LABEL_14;
  }

  if (!(name | displayName))
  {
    v22 = 0;
    v24 = 0;
    v23 = 2;
    goto LABEL_16;
  }

  v16 = objc_msgSend_guides(self, v14, v15);
  v19 = objc_msgSend_objectAtIndexedSubscript_(v16, v17, v18, index);
  v22 = objc_msgSend_title(v19, v20, v21);

  v23 = 2;
  v24 = v22;
  if (name)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (displayName)
  {
    v26 = v24;
    *displayName = v24;
  }

LABEL_16:

  return v23;
}

- (unint64_t)categoryForDetailItemAtIndex:(unint64_t)index
{
  type = self->_type;
  if (type == 5)
  {
    if (index <= 2)
    {
      return qword_23BEED868[index];
    }
  }

  else if (type == 1)
  {
    return objc_msgSend__userGuideCategoryAtIndex_categoryName_displayName_(self, a2, v3, index, 0, 0);
  }

  return 0;
}

- (id)nameForDetailItem:(unint64_t)item
{
  type = self->_type;
  if (type != 5)
  {
    if (type == 1)
    {
      v9 = 0;
      objc_msgSend__userGuideCategoryAtIndex_categoryName_displayName_(self, a2, v3, item, 0, &v9);
      v5 = v9;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (item > 2)
  {
    goto LABEL_9;
  }

  v6 = qword_23BEED868[item];
  if (v6 == 128)
  {
    v7 = @"POI_FILTER_ITEM_BEACHES";
    goto LABEL_15;
  }

  if (v6 == 64)
  {
    v7 = @"POI_FILTER_ITEM_TRAILHEADS";
    goto LABEL_15;
  }

  if (v6 != 32)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v7 = @"POI_FILTER_ITEM_PARKED_CAR";
LABEL_15:
  v5 = NTKFoghornFaceLocalizedString(v7);
LABEL_10:

  return v5;
}

- (unint64_t)selectionForFilter:(id)filter
{
  filterCopy = filter;
  type = self->_type;
  if (type > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend__selectionForFilter_forCategory_(self, v4, v6, filterCopy, qword_23BEED880[type]);
  }

  return v8;
}

- (BOOL)selectedForFilter:(id)filter atIndex:(unint64_t)index
{
  filterCopy = filter;
  v9 = filterCopy;
  type = self->_type;
  if (type == 5)
  {
    if (index > 2)
    {
      v16 = objc_msgSend_includesCategory_(filterCopy, v7, v8, 0);
    }

    else
    {
      v16 = objc_msgSend_includesCategory_(filterCopy, v7, v8, qword_23BEED868[index]);
    }

    v15 = v16;
  }

  else if (type == 1)
  {
    v18 = 0;
    v11 = objc_msgSend__userGuideCategoryAtIndex_categoryName_displayName_(self, v7, v8, index, &v18, 0);
    v12 = v18;
    v15 = objc_msgSend_includesCategory_named_(v9, v13, v14, v11, v12);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)_selectionForFilter:(id)filter forCategory:(unint64_t)category
{
  filterCopy = filter;
  if (objc_msgSend_includesAllOfCategories_(filterCopy, v6, v7, category))
  {
    v10 = objc_msgSend_excludedNamesForCategory_(filterCopy, v8, v9, category);

    v13 = objc_msgSend_count(v10, v11, v12);
    if (v13)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v15 = objc_msgSend_includesAnyOfCategories_(filterCopy, v8, v9, category);

    return v15;
  }
}

- (void)setSelected:(BOOL)selected forFilter:(id)filter
{
  selectedCopy = selected;
  filterCopy = filter;
  v9 = filterCopy;
  type = self->_type;
  if (type <= 5)
  {
    v11 = filterCopy;
    filterCopy = objc_msgSend__setSelected_forFilter_forCategory_(self, filterCopy, v7.n128_f64[0], selectedCopy, filterCopy, qword_23BEED8B0[type]);
    v9 = v11;
  }

  MEMORY[0x2821F96F8](filterCopy, v9, v7, v8);
}

- (void)setSelected:(BOOL)selected forFilter:(id)filter atIndex:(unint64_t)index
{
  selectedCopy = selected;
  filterCopy = filter;
  type = self->_type;
  if (type == 5)
  {
    if (index > 2)
    {
      objc_msgSend__setSelected_forFilter_forCategory_named_(self, v8, v10, selectedCopy, filterCopy, 0, 0);
    }

    else
    {
      objc_msgSend__setSelected_forFilter_forCategory_named_(self, v8, v10, selectedCopy, filterCopy, qword_23BEED868[index], 0);
    }
  }

  else if (type == 1)
  {
    v16 = 0;
    v12 = objc_msgSend__userGuideCategoryAtIndex_categoryName_displayName_(self, v8, v10, index, &v16, 0);
    v13 = v16;
    objc_msgSend__setSelected_forFilter_forCategory_named_(self, v14, v15, selectedCopy, filterCopy, v12, v13);
  }
}

- (void)_setSelected:(BOOL)selected forFilter:(id)filter forCategory:(unint64_t)category
{
  selectedCopy = selected;
  filterCopy = filter;
  v10 = objc_msgSend_excludedNamesForCategory_(filterCopy, v8, v9, category);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_23BEDBDC8;
  v19 = &unk_278BA1610;
  v20 = filterCopy;
  categoryCopy = category;
  v11 = filterCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(v10, v12, v13, &v16);
  if (selectedCopy)
  {
    objc_msgSend_includeCategories_(v11, v14, v15, category, v16, v17, v18, v19, v20, categoryCopy);
  }

  else
  {
    objc_msgSend_excludeCategories_(v11, v14, v15, category, v16, v17, v18, v19, v20, categoryCopy);
  }
}

- (void)_setSelected:(BOOL)selected forFilter:(id)filter forCategory:(unint64_t)category named:(id)named
{
  selectedCopy = selected;
  filterCopy = filter;
  namedCopy = named;
  if (selectedCopy)
  {
    if ((objc_msgSend_includesCategory_(filterCopy, v10, v12, category) & 1) == 0)
    {
      objc_msgSend_includeCategories_(filterCopy, v13, v14, category);
      if (objc_msgSend_detailsCount(self, v15, v16))
      {
        v17 = 0;
        do
        {
          v18 = objc_msgSend_nameForDetailItem_(self, v13, v14, v17);
          objc_msgSend_excludeCategory_named_(filterCopy, v19, v20, category, v18);

          ++v17;
        }

        while (objc_msgSend_detailsCount(self, v21, v22) > v17);
      }
    }

    objc_msgSend_includeCategory_named_(filterCopy, v13, v14, category, namedCopy);
  }

  else
  {
    objc_msgSend_excludeCategory_named_(filterCopy, v10, v12, category, namedCopy);
    if (objc_msgSend_detailsCount(self, v23, v24))
    {
      if (!objc_msgSend_detailsCount(self, v25, v26))
      {
        goto LABEL_12;
      }

      v29 = 0;
      v30 = 0;
      do
      {
        v30 |= objc_msgSend_selectedForFilter_atIndex_(self, v27, v28, filterCopy, v29++);
      }

      while (objc_msgSend_detailsCount(self, v31, v32) > v29);
      if ((v30 & 1) == 0)
      {
LABEL_12:
        objc_msgSend_excludeCategories_(filterCopy, v27, v28, category);
      }
    }
  }
}

- (NSArray)guides
{
  guides = self->_guides;
  if (!guides)
  {
    v4 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23BEB1000, v4, OS_LOG_TYPE_DEFAULT, "Leghorn POI guides is not ready!", v6, 2u);
    }

    guides = self->_guides;
  }

  return guides;
}

- (void)_loadGuides
{
  if (!self->_guides)
  {
    Current = CFAbsoluteTimeGetCurrent();
    self->_guidesLoading = Current;
    v5 = objc_msgSend_sharedWaypointsDataSource(NTKLeghornCircularDataSource, v4, Current);
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_23BEDC098;
    v8[3] = &unk_278BA1660;
    objc_copyWeak(&v9, &location);
    objc_msgSend_fetchUserGuidesWithCompletion_(v5, v6, v7, v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (NTKCLeghornFaceDetailPOISectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end