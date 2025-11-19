@interface RAPWorkflowLayoutManager
- (BOOL)_isCorrectionCategory:(id)a3;
- (BOOL)_isHomeCorrectionsCategory:(id)a3;
- (BOOL)_isOtherCategory:(id)a3;
- (BOOL)_isPersonalizedMapsCategory:(id)a3;
- (BOOL)_isSchoolCorrectionsCategory:(id)a3;
- (BOOL)_isWorkCorrectionsCategory:(id)a3;
- (BOOL)_shouldIncludeServerControlledField:(id)a3;
- (NSArray)addPlaceLayoutItems;
- (NSArray)correctionLayoutItems;
- (NSArray)otherLayoutItems;
- (RAPWorkflowLayoutManager)initWithSupportedCategories:(id)a3;
- (id)_categoryForName:(int)a3;
- (id)_mergeOriginalItems:(id)a3 withServerOverrideItems:(id)a4 withServerDisabledItemTypes:(id)a5;
- (id)addIncidentLayoutItems;
- (void)_initSubcategories;
- (void)mergeWithServerConfig:(id)a3;
@end

@implementation RAPWorkflowLayoutManager

- (NSArray)otherLayoutItems
{
  v2 = [(NSMutableArray *)self->_otherLayoutItems copy];

  return v2;
}

- (id)addIncidentLayoutItems
{
  v2 = [(NSArray *)self->_incidentLayoutItems copy];

  return v2;
}

- (NSArray)addPlaceLayoutItems
{
  v2 = [(NSMutableArray *)self->_addPlaceLayoutItems copy];

  return v2;
}

- (NSArray)correctionLayoutItems
{
  v2 = [(NSMutableArray *)self->_correctionLayoutItems copy];

  return v2;
}

- (id)_categoryForName:(int)a3
{
  v4 = &off_1016E6AA0;
  if (a3 > 3)
  {
    if (a3 < 7)
    {
LABEL_3:
      v4 = &off_1016E69B0;
      goto LABEL_18;
    }

    switch(a3)
    {
      case 7:
        v5 = 16;
        break;
      case 8:
        v5 = 24;
        break;
      case 9:
        goto LABEL_18;
      default:
        goto LABEL_3;
    }

    v4 = [NSNumber numberWithInteger:*(&self->super.super.isa + v5)];
    goto LABEL_18;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = &off_1016E69E0;
    }

    else
    {
      v4 = &off_1016E69F8;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_3;
    }

    v4 = &off_1016E69C8;
  }

LABEL_18:

  return v4;
}

- (BOOL)_isOtherCategory:(id)a3
{
  v3 = a3;
  v4 = [NSSet setWithArray:&off_1016ECA10];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (BOOL)_isSchoolCorrectionsCategory:(id)a3
{
  v3 = a3;
  v4 = [NSSet setWithArray:&off_1016EC9F8];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (BOOL)_isWorkCorrectionsCategory:(id)a3
{
  v3 = a3;
  v4 = [NSSet setWithArray:&off_1016EC9E0];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (BOOL)_isHomeCorrectionsCategory:(id)a3
{
  v3 = a3;
  v4 = [NSSet setWithArray:&off_1016EC9C8];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (BOOL)_isPersonalizedMapsCategory:(id)a3
{
  v4 = a3;
  if ([(RAPWorkflowLayoutManager *)self _isHomeCorrectionsCategory:v4]|| [(RAPWorkflowLayoutManager *)self _isWorkCorrectionsCategory:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(RAPWorkflowLayoutManager *)self _isSchoolCorrectionsCategory:v4];
  }

  return v5;
}

- (BOOL)_isCorrectionCategory:(id)a3
{
  v3 = a3;
  v4 = [NSSet setWithArray:&off_1016EC9B0];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)_mergeOriginalItems:(id)a3 withServerOverrideItems:(id)a4 withServerDisabledItemTypes:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(NSMutableDictionary);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v41 + 1) + 8 * i);
        v17 = [v16 fieldType];
        [v10 setObject:v16 forKey:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v13);
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100737B28;
  v39[3] = &unk_101627D50;
  v33 = v9;
  v40 = v33;
  v18 = [NSPredicate predicateWithBlock:v39];
  v34 = v7;
  v19 = [v7 filteredArrayUsingPredicate:v18];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v35 + 1) + 8 * j);
        v26 = [v25 fieldType];
        v27 = [v10 objectForKey:v26];

        if (v27)
        {
          v28 = [v27 displayText];
          v29 = [v28 length];

          if (v29)
          {
            v30 = [v27 displayText];
            [v25 setDisplayText:v30];
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v22);
  }

  v31 = [v20 mutableCopy];

  return v31;
}

- (void)mergeWithServerConfig:(id)a3
{
  v4 = [a3 layoutFields];
  v5 = objc_alloc_init(NSMutableArray);
  v33 = objc_alloc_init(NSMutableArray);
  v31 = objc_alloc_init(NSMutableArray);
  v32 = objc_alloc_init(NSMutableSet);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        if ([(RAPWorkflowLayoutManager *)self _shouldIncludeServerControlledField:v11])
        {
          v12 = objc_alloc_init(RAPLayoutItem);
          v13 = [v11 name];
          v14 = -[RAPWorkflowLayoutManager _categoryForName:](self, "_categoryForName:", [v13 workflowFieldName]);
          [(RAPLayoutItem *)v12 setFieldType:v14];

          v15 = [v11 displayText];

          if (v15)
          {
            v16 = [v11 displayText];
            [(RAPLayoutItem *)v12 setDisplayText:v16];
          }

          v17 = [(RAPLayoutItem *)v12 fieldType];
          v18 = [(RAPWorkflowLayoutManager *)self _isCorrectionCategory:v17];

          v19 = v5;
          if (v18 & 1) != 0 || ([(RAPLayoutItem *)v12 fieldType], v20 = objc_claimAutoreleasedReturnValue(), v21 = [(RAPWorkflowLayoutManager *)self _isPersonalizedMapsCategory:v20], v20, v19 = v33, (v21) || ([(RAPLayoutItem *)v12 fieldType], v22 = objc_claimAutoreleasedReturnValue(), v23 = [(RAPWorkflowLayoutManager *)self _isOtherCategory:v22], v22, v19 = v31, v23))
          {
            [v19 addObject:v12];
          }
        }

        else
        {
          if ([v11 enabled])
          {
            continue;
          }

          v12 = [v11 name];
          v24 = [(RAPWorkflowLayoutManager *)self _categoryForName:[(RAPLayoutItem *)v12 workflowFieldName]];
          [v32 addObject:v24];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  v25 = [(RAPWorkflowLayoutManager *)self _mergeOriginalItems:self->_correctionLayoutItems withServerOverrideItems:v5 withServerDisabledItemTypes:v32];
  correctionLayoutItems = self->_correctionLayoutItems;
  self->_correctionLayoutItems = v25;

  v27 = [(RAPWorkflowLayoutManager *)self _mergeOriginalItems:self->_addPlaceLayoutItems withServerOverrideItems:v33 withServerDisabledItemTypes:v32];
  addPlaceLayoutItems = self->_addPlaceLayoutItems;
  self->_addPlaceLayoutItems = v27;

  v29 = [(RAPWorkflowLayoutManager *)self _mergeOriginalItems:self->_otherLayoutItems withServerOverrideItems:v31 withServerDisabledItemTypes:v32];
  otherLayoutItems = self->_otherLayoutItems;
  self->_otherLayoutItems = v29;
}

- (BOOL)_shouldIncludeServerControlledField:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v4 enabled];
  v7 = [v4 name];

  v8 = -[RAPWorkflowLayoutManager _categoryForName:](self, "_categoryForName:", [v7 workflowFieldName]);
  v9 = [v8 isEqual:&off_1016E69B0];

  if (v5 == 1)
  {
    return v6 & (v9 ^ 1);
  }

  else
  {
    return 0;
  }
}

- (void)_initSubcategories
{
  p_clientHomeCategory = &self->_clientHomeCategory;
  self->_clientHomeCategory = 0;
  p_clientWorkCategory = &self->_clientWorkCategory;
  self->_clientWorkCategory = 0;
  p_clientSchoolCategory = &self->_clientSchoolCategory;
  self->_clientSchoolCategory = 0;
  v3 = objc_alloc_init(NSMutableArray);
  correctionLayoutItems = self->_correctionLayoutItems;
  self->_correctionLayoutItems = v3;

  v5 = objc_alloc_init(NSMutableArray);
  addPlaceLayoutItems = self->_addPlaceLayoutItems;
  self->_addPlaceLayoutItems = v5;

  v7 = objc_alloc_init(NSMutableArray);
  incidentLayoutItems = self->_incidentLayoutItems;
  self->_incidentLayoutItems = v7;

  v9 = objc_alloc_init(NSMutableArray);
  otherLayoutItems = self->_otherLayoutItems;
  self->_otherLayoutItems = v9;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = self->_initialCategories;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = objc_alloc_init(RAPLayoutItem);
        [(RAPLayoutItem *)v17 setFieldType:v16];
        v18 = [(RAPWorkflowLayoutManager *)self _isCorrectionCategory:v16];
        p_correctionLayoutItems = &self->_correctionLayoutItems;
        if ((v18 & 1) == 0)
        {
          if ([(RAPWorkflowLayoutManager *)self _isPersonalizedMapsCategory:v16])
          {
            if ([(RAPWorkflowLayoutManager *)self _isHomeCorrectionsCategory:v16]&& (v20 = p_clientHomeCategory, !*p_clientHomeCategory) || (v20 = p_clientWorkCategory, [(RAPWorkflowLayoutManager *)self _isWorkCorrectionsCategory:v16]) || (v21 = [(RAPWorkflowLayoutManager *)self _isSchoolCorrectionsCategory:v16], v20 = p_clientSchoolCategory, p_correctionLayoutItems = &self->_addPlaceLayoutItems, v21))
            {
              *v20 = [v16 integerValue];
              p_correctionLayoutItems = &self->_addPlaceLayoutItems;
            }
          }

          else
          {
            v22 = [(RAPWorkflowLayoutManager *)self _isOtherCategory:v16];
            p_correctionLayoutItems = &self->_otherLayoutItems;
            if (!v22)
            {
              goto LABEL_15;
            }
          }
        }

        [(NSMutableArray *)*p_correctionLayoutItems addObject:v17];
LABEL_15:
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }
}

- (RAPWorkflowLayoutManager)initWithSupportedCategories:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RAPWorkflowLayoutManager;
  v5 = [(RAPWorkflowLayoutManager *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    initialCategories = v5->_initialCategories;
    v5->_initialCategories = v6;

    [(RAPWorkflowLayoutManager *)v5 _initSubcategories];
  }

  return v5;
}

@end