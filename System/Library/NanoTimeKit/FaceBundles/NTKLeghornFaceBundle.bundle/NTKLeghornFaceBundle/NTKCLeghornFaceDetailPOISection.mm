@interface NTKCLeghornFaceDetailPOISection
+ (NTKCLeghornFaceDetailPOISection)sectionWithType:(unint64_t)a3 delegate:(id)a4;
- (BOOL)selectedForFilter:(id)a3 atIndex:(unint64_t)a4;
- (NSArray)guides;
- (NSString)action;
- (NSString)name;
- (NSString)showAllString;
- (NTKCLeghornFaceDetailPOISection)initWithType:(unint64_t)a3 delegate:(id)a4;
- (NTKCLeghornFaceDetailPOISectionDelegate)delegate;
- (id)nameForDetailItem:(unint64_t)a3;
- (unint64_t)_selectionForFilter:(id)a3 forCategory:(unint64_t)a4;
- (unint64_t)_userGuideCategoryAtIndex:(unint64_t)a3 categoryName:(id *)a4 displayName:(id *)a5;
- (unint64_t)categoryForDetailItemAtIndex:(unint64_t)a3;
- (unint64_t)detailsCount;
- (unint64_t)selectionForFilter:(id)a3;
- (void)_loadGuides;
- (void)_setSelected:(BOOL)a3 forFilter:(id)a4 forCategory:(unint64_t)a5;
- (void)_setSelected:(BOOL)a3 forFilter:(id)a4 forCategory:(unint64_t)a5 named:(id)a6;
- (void)setSelected:(BOOL)a3 forFilter:(id)a4;
- (void)setSelected:(BOOL)a3 forFilter:(id)a4 atIndex:(unint64_t)a5;
@end

@implementation NTKCLeghornFaceDetailPOISection

+ (NTKCLeghornFaceDetailPOISection)sectionWithType:(unint64_t)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithType_delegate_(v6, v7, v8, a3, v5);

  return v9;
}

- (NTKCLeghornFaceDetailPOISection)initWithType:(unint64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = NTKCLeghornFaceDetailPOISection;
  v7 = [(NTKCLeghornFaceDetailPOISection *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    objc_storeWeak(&v7->_delegate, v6);
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

- (unint64_t)_userGuideCategoryAtIndex:(unint64_t)a3 categoryName:(id *)a4 displayName:(id *)a5
{
  v10 = objc_msgSend_guides(self, a2, v5);
  v13 = objc_msgSend_count(v10, v11, v12);

  if (v13 <= a3)
  {
    if (v13 == a3)
    {
      if (a5)
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
      if (!a4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v22 = 0;
      v24 = 0;
      v23 = 0;
      if (!a4)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    v25 = v22;
    *a4 = v22;
    goto LABEL_14;
  }

  if (!(a4 | a5))
  {
    v22 = 0;
    v24 = 0;
    v23 = 2;
    goto LABEL_16;
  }

  v16 = objc_msgSend_guides(self, v14, v15);
  v19 = objc_msgSend_objectAtIndexedSubscript_(v16, v17, v18, a3);
  v22 = objc_msgSend_title(v19, v20, v21);

  v23 = 2;
  v24 = v22;
  if (a4)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (a5)
  {
    v26 = v24;
    *a5 = v24;
  }

LABEL_16:

  return v23;
}

- (unint64_t)categoryForDetailItemAtIndex:(unint64_t)a3
{
  type = self->_type;
  if (type == 5)
  {
    if (a3 <= 2)
    {
      return qword_23BEED868[a3];
    }
  }

  else if (type == 1)
  {
    return objc_msgSend__userGuideCategoryAtIndex_categoryName_displayName_(self, a2, v3, a3, 0, 0);
  }

  return 0;
}

- (id)nameForDetailItem:(unint64_t)a3
{
  type = self->_type;
  if (type != 5)
  {
    if (type == 1)
    {
      v9 = 0;
      objc_msgSend__userGuideCategoryAtIndex_categoryName_displayName_(self, a2, v3, a3, 0, &v9);
      v5 = v9;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a3 > 2)
  {
    goto LABEL_9;
  }

  v6 = qword_23BEED868[a3];
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

- (unint64_t)selectionForFilter:(id)a3
{
  v5 = a3;
  type = self->_type;
  if (type > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend__selectionForFilter_forCategory_(self, v4, v6, v5, qword_23BEED880[type]);
  }

  return v8;
}

- (BOOL)selectedForFilter:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v9 = v6;
  type = self->_type;
  if (type == 5)
  {
    if (a4 > 2)
    {
      v16 = objc_msgSend_includesCategory_(v6, v7, v8, 0);
    }

    else
    {
      v16 = objc_msgSend_includesCategory_(v6, v7, v8, qword_23BEED868[a4]);
    }

    v15 = v16;
  }

  else if (type == 1)
  {
    v18 = 0;
    v11 = objc_msgSend__userGuideCategoryAtIndex_categoryName_displayName_(self, v7, v8, a4, &v18, 0);
    v12 = v18;
    v15 = objc_msgSend_includesCategory_named_(v9, v13, v14, v11, v12);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)_selectionForFilter:(id)a3 forCategory:(unint64_t)a4
{
  v5 = a3;
  if (objc_msgSend_includesAllOfCategories_(v5, v6, v7, a4))
  {
    v10 = objc_msgSend_excludedNamesForCategory_(v5, v8, v9, a4);

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
    v15 = objc_msgSend_includesAnyOfCategories_(v5, v8, v9, a4);

    return v15;
  }
}

- (void)setSelected:(BOOL)a3 forFilter:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9 = v6;
  type = self->_type;
  if (type <= 5)
  {
    v11 = v6;
    v6 = objc_msgSend__setSelected_forFilter_forCategory_(self, v6, v7.n128_f64[0], v4, v6, qword_23BEED8B0[type]);
    v9 = v11;
  }

  MEMORY[0x2821F96F8](v6, v9, v7, v8);
}

- (void)setSelected:(BOOL)a3 forFilter:(id)a4 atIndex:(unint64_t)a5
{
  v6 = a3;
  v9 = a4;
  type = self->_type;
  if (type == 5)
  {
    if (a5 > 2)
    {
      objc_msgSend__setSelected_forFilter_forCategory_named_(self, v8, v10, v6, v9, 0, 0);
    }

    else
    {
      objc_msgSend__setSelected_forFilter_forCategory_named_(self, v8, v10, v6, v9, qword_23BEED868[a5], 0);
    }
  }

  else if (type == 1)
  {
    v16 = 0;
    v12 = objc_msgSend__userGuideCategoryAtIndex_categoryName_displayName_(self, v8, v10, a5, &v16, 0);
    v13 = v16;
    objc_msgSend__setSelected_forFilter_forCategory_named_(self, v14, v15, v6, v9, v12, v13);
  }
}

- (void)_setSelected:(BOOL)a3 forFilter:(id)a4 forCategory:(unint64_t)a5
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_excludedNamesForCategory_(v7, v8, v9, a5);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_23BEDBDC8;
  v19 = &unk_278BA1610;
  v20 = v7;
  v21 = a5;
  v11 = v7;
  objc_msgSend_enumerateObjectsUsingBlock_(v10, v12, v13, &v16);
  if (v6)
  {
    objc_msgSend_includeCategories_(v11, v14, v15, a5, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    objc_msgSend_excludeCategories_(v11, v14, v15, a5, v16, v17, v18, v19, v20, v21);
  }
}

- (void)_setSelected:(BOOL)a3 forFilter:(id)a4 forCategory:(unint64_t)a5 named:(id)a6
{
  v8 = a3;
  v33 = a4;
  v11 = a6;
  if (v8)
  {
    if ((objc_msgSend_includesCategory_(v33, v10, v12, a5) & 1) == 0)
    {
      objc_msgSend_includeCategories_(v33, v13, v14, a5);
      if (objc_msgSend_detailsCount(self, v15, v16))
      {
        v17 = 0;
        do
        {
          v18 = objc_msgSend_nameForDetailItem_(self, v13, v14, v17);
          objc_msgSend_excludeCategory_named_(v33, v19, v20, a5, v18);

          ++v17;
        }

        while (objc_msgSend_detailsCount(self, v21, v22) > v17);
      }
    }

    objc_msgSend_includeCategory_named_(v33, v13, v14, a5, v11);
  }

  else
  {
    objc_msgSend_excludeCategory_named_(v33, v10, v12, a5, v11);
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
        v30 |= objc_msgSend_selectedForFilter_atIndex_(self, v27, v28, v33, v29++);
      }

      while (objc_msgSend_detailsCount(self, v31, v32) > v29);
      if ((v30 & 1) == 0)
      {
LABEL_12:
        objc_msgSend_excludeCategories_(v33, v27, v28, a5);
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