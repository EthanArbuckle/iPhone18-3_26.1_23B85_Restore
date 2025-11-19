@interface NTKLeghornPOIFilter
+ (NTKLeghornPOIFilter)all;
+ (NTKLeghornPOIFilter)none;
+ (id)poiFilterFromDictionary:(id)a3;
- (BOOL)includesCategory:(unint64_t)a3 named:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryValue;
- (NSString)shortStringValue;
- (NSString)stringValue;
- (NTKLeghornPOIFilter)initWithCoder:(id)a3;
- (id)_objectForPropertyKey:(id)a3;
- (id)copyIncludingCategories:(unint64_t)a3;
- (id)copyWithExclusions:(id)a3 forCategory:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)excludedNamesForCategory:(unint64_t)a3;
- (id)initIncludingCategories:(unint64_t)a3;
- (unint64_t)hash;
- (void)_updateWithPropertyKey:(id)a3 value:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)excludeCategory:(unint64_t)a3 named:(id)a4;
- (void)includeCategory:(unint64_t)a3 named:(id)a4;
@end

@implementation NTKLeghornPOIFilter

- (id)initIncludingCategories:(unint64_t)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = NTKLeghornPOIFilter;
  v4 = [(NTKLeghornPOIFilter *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_includedCategories = v3 & 0x1FF;
    v6 = objc_opt_new();
    excludedMapsUserGuides = v5->_excludedMapsUserGuides;
    v5->_excludedMapsUserGuides = v6;
  }

  return v5;
}

+ (NTKLeghornPOIFilter)all
{
  v2 = [NTKLeghornPOIFilter alloc];
  inited = objc_msgSend_initIncludingCategories_(v2, v3, v4, 511);

  return inited;
}

+ (NTKLeghornPOIFilter)none
{
  v2 = [NTKLeghornPOIFilter alloc];
  inited = objc_msgSend_initIncludingCategories_(v2, v3, v4, 0);

  return inited;
}

- (id)copyWithExclusions:(id)a3 forCategory:(unint64_t)a4
{
  v4 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = objc_alloc_init(objc_opt_class());
  v8[1] = self->_includedCategories;
  if ((v4 & 2) != 0)
  {
    v10 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = self->_excludedMapsUserGuides;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, &v23, v27, 16);
    if (v14)
    {
      v17 = v14;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v11);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          if (objc_msgSend_containsObject_(v6, v15, v16, v20, v23))
          {
            objc_msgSend_addObject_(v10, v15, v16, v20);
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v15, v16, &v23, v27, 16);
      }

      while (v17);
    }
  }

  else
  {
    v10 = objc_msgSend_mutableCopy(self->_excludedMapsUserGuides, v7, v9);
  }

  v21 = v8[2];
  v8[2] = v10;

  return v8;
}

- (id)copyIncludingCategories:(unint64_t)a3
{
  v3 = a3;
  v6 = objc_alloc_init(objc_opt_class());
  v6[1] = v3 & LODWORD(self->_includedCategories) & 0x1FF;
  if ((v3 & 2) != 0)
  {
    v8 = objc_msgSend_mutableCopy(self->_excludedMapsUserGuides, v5, v7);
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (void)includeCategory:(unint64_t)a3 named:(id)a4
{
  v11 = a4;
  objc_msgSend_includeCategories_(self, v6, v7, a3);
  v10 = v11;
  if ((a3 & 2) != 0 && v11)
  {
    objc_msgSend_removeObject_(self->_excludedMapsUserGuides, v8, v9, v11);
    v10 = v11;
  }
}

- (void)excludeCategory:(unint64_t)a3 named:(id)a4
{
  v5 = a3;
  if ((a3 & 2) != 0 && a4)
  {
    objc_msgSend_addObject_(self->_excludedMapsUserGuides, a2, v4, a4);
    v5 &= ~2uLL;
  }

  objc_msgSend_excludeCategories_(self, a2, v4, v5, a4);
}

- (BOOL)includesCategory:(unint64_t)a3 named:(id)a4
{
  v6 = a4;
  v9 = v6;
  if ((a3 & ~self->_includedCategories) != 0)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    LOBYTE(v10) = 1;
    if ((a3 & 2) != 0 && v6)
    {
      v10 = objc_msgSend_containsObject_(self->_excludedMapsUserGuides, v7, v8, v6) ^ 1;
    }
  }

  return v10;
}

- (id)excludedNamesForCategory:(unint64_t)a3
{
  if ((a3 & 2) != 0)
  {
    v4 = objc_msgSend_copy(self->_excludedMapsUserGuides, a2, v3);
  }

  else
  {
    v4 = objc_msgSend_set(MEMORY[0x277CBEB98], a2, v3);
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToSet = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_includedCategories == v4->_includedCategories)
    {
      isEqualToSet = objc_msgSend_isEqualToSet_(self->_excludedMapsUserGuides, v5, v6, v4->_excludedMapsUserGuides);
    }

    else
    {
      isEqualToSet = 0;
    }
  }

  return isEqualToSet;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = NTKLeghornPOIFilter;
  v3 = [(NTKLeghornPOIFilter *)&v7 hash];
  return self->_includedCategories | __ROR8__(objc_msgSend_hash(self->_excludedMapsUserGuides, v4, v5) | __ROR8__(v3, 56), 56);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[1] = self->_includedCategories;
  v7 = objc_msgSend_mutableCopy(self->_excludedMapsUserGuides, v5, v6);
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (NSString)stringValue
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v6 = NTKLeghornWaypointCategoryString(self->_includedCategories, v4, v5);
  objc_msgSend_appendString_(v3, v7, v8, v6);
  if (objc_msgSend_count(self->_excludedMapsUserGuides, v9, v10))
  {
    objc_msgSend_appendString_(v3, v11, v12, @";exclude:");
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = self->_excludedMapsUserGuides;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, &v26, v30, 16);
    if (v16)
    {
      v19 = v16;
      v20 = 0;
      v21 = *v27;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v13);
          }

          v23 = *(*(&v26 + 1) + 8 * i);
          if (-v20 != i)
          {
            objc_msgSend_appendString_(v3, v17, v18, @",", v26);
          }

          objc_msgSend_appendString_(v3, v17, v18, v23, v26);
        }

        v20 += v19;
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v17, v18, &v26, v30, 16);
      }

      while (v19);
    }
  }

  v24 = objc_msgSend_copy(v3, v11, v12, v26);

  return v24;
}

- (NSString)shortStringValue
{
  v3 = objc_opt_new();
  v6 = NTKLeghornWaypointCategoryShortString(self->_includedCategories, v4, v5);
  objc_msgSend_appendString_(v3, v7, v8, v6);
  if (objc_msgSend_count(self->_excludedMapsUserGuides, v9, v10))
  {
    objc_msgSend_appendString_(v3, v11, v12, @"Xg");
  }

  v13 = objc_msgSend_copy(v3, v11, v12);

  return v13;
}

- (id)_objectForPropertyKey:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_isEqualToString_(v4, v5, v6, @"include"))
  {
    v9 = NTKLeghornWaypointCategoryString(self->_includedCategories, v7, v8);
  }

  else if (objc_msgSend_isEqualToString_(v4, v7, v8, @"exclude") && objc_msgSend_count(self->_excludedMapsUserGuides, v10, v11))
  {
    v14 = NTKLeghornWaypointCategoryString(2, v12, v13);
    v24 = v14;
    v17 = objc_msgSend_allObjects(self->_excludedMapsUserGuides, v15, v16);
    v20 = objc_msgSend_copy(v17, v18, v19);
    v25[0] = v20;
    v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v22, v25, &v24, 1);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateWithPropertyKey:(id)a3 value:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_isEqualToString_(v6, v8, v9, @"include"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_includedCategories = NTKLeghornWaypointCategoryFromString(v7, v12, v13);
    }
  }

  else if (objc_msgSend_isEqualToString_(v6, v10, v11, @"exclude"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v7;
      v17 = NTKLeghornWaypointCategoryString(2, v15, v16);
      v20 = objc_msgSend_objectForKeyedSubscript_(v14, v18, v19, v17);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v17;
        v21 = v20;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, 0.0, &v31, v35, 16);
        if (v23)
        {
          v24 = v23;
          v25 = *v32;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v32 != v25)
              {
                objc_enumerationMutation(v21);
              }

              v27 = *(*(&v31 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_msgSend_addObject_(self->_excludedMapsUserGuides, v28, v29, v27);
              }
            }

            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v28, v29, &v31, v35, 16);
          }

          while (v24);
        }

        v17 = v30;
      }
    }
  }
}

- (NSDictionary)dictionaryValue
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23[0] = @"include";
  v23[1] = @"exclude";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, 0.0, v23, 2, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, v7, &v19, v24, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v16 = objc_msgSend__objectForPropertyKey_(self, v9, v10, v14);
        if (v16)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v3, v15, v17, v16, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v9, v10, &v19, v24, 16);
    }

    while (v11);
  }

  return v3;
}

+ (id)poiFilterFromDictionary:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [NTKLeghornPOIFilter alloc];
  inited = objc_msgSend_initIncludingCategories_(v4, v5, v6, 0);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27[0] = @"include";
  v27[1] = @"exclude";
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, 0.0, v27, 2, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, v11, &v23, v28, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        v19 = objc_msgSend_objectForKeyedSubscript_(v3, v13, v14, v18);
        objc_msgSend__updateWithPropertyKey_value_(inited, v20, v21, v18, v19);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v13, v14, &v23, v28, 16);
    }

    while (v15);
  }

  return inited;
}

- (void)encodeWithCoder:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23[0] = @"include";
  v23[1] = @"exclude";
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, 0.0, v23, 2, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, &v19, v24, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v17 = objc_msgSend__objectForPropertyKey_(self, v10, v11, v15);
        if (v17)
        {
          objc_msgSend_encodeObject_forKey_(v4, v16, v18, v17, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v10, v11, &v19, v24, 16);
    }

    while (v12);
  }
}

- (NTKLeghornPOIFilter)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = NTKLeghornPOIFilter;
  v6 = [(NTKLeghornPOIFilter *)&v25 init];
  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v26[0] = @"include";
    v26[1] = @"exclude";
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, 0.0, v26, 2, 0);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, &v21, v27, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v7);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = objc_msgSend_decodeObjectForKey_(v4, v11, v12, v16);
          objc_msgSend__updateWithPropertyKey_value_(v6, v18, v19, v16, v17);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v11, v12, &v21, v27, 16);
      }

      while (v13);
    }
  }

  return v6;
}

@end