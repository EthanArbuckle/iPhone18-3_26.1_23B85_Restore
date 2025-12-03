@interface ATXHomeScreenPage
- (ATXHomeScreenPage)init;
- (ATXHomeScreenPage)initWithCoder:(id)coder;
- (BOOL)_containsWidgetWithExtensionBundleId:(id)id;
- (BOOL)isEqual:(id)equal;
- (NSArray)leafAppIcons;
- (NSArray)leafIcons;
- (id)_leafIconsFromExistingData;
- (id)description;
- (id)dictionaryRepresentationForIntrospection;
- (id)initFromDictionaryRepresentation:(id)representation;
- (id)nonFolderAppsOnPage;
- (unint64_t)numberOfLeafIconSpots;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAppsConsideringFolders:(BOOL)folders block:(id)block;
- (void)setPanels:(id)panels;
- (void)setStacks:(id)stacks;
@end

@implementation ATXHomeScreenPage

- (ATXHomeScreenPage)init
{
  v8.receiver = self;
  v8.super_class = ATXHomeScreenPage;
  v2 = [(ATXHomeScreenPage *)&v8 init];
  v3 = v2;
  if (v2)
  {
    appLocations = v2->_appLocations;
    v5 = MEMORY[0x1E695E0F8];
    v2->_appLocations = MEMORY[0x1E695E0F8];

    webClipLocations = v3->_webClipLocations;
    v3->_webClipLocations = v5;
  }

  return v3;
}

- (id)_leafIconsFromExistingData
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = v3;
  v5 = MEMORY[0x1E695E0F8];
  if (self->_webClipLocations)
  {
    webClipLocations = self->_webClipLocations;
  }

  else
  {
    webClipLocations = MEMORY[0x1E695E0F8];
  }

  [v3 addEntriesFromDictionary:webClipLocations];
  if (self->_appLocations)
  {
    appLocations = self->_appLocations;
  }

  else
  {
    appLocations = v5;
  }

  [v4 addEntriesFromDictionary:appLocations];
  v26 = v4;
  v8 = [v4 keysSortedByValueUsingComparator:&__block_literal_global_300];
  v29 = objc_opt_new();
  v27 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        v14 = [(NSDictionary *)self->_webClipLocations objectForKeyedSubscript:v13];
        v15 = [(NSDictionary *)self->_appLocations objectForKeyedSubscript:v13];
        if ([v14 length] == 1)
        {
          v16 = [[ATXHomeScreenWebClip alloc] initWithUUID:v13 name:0 url:0];
          goto LABEL_14;
        }

        if ([v14 length] == 2)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "indexAtPosition:", 0)}];
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "indexAtPosition:", 1)}];
          v19 = [v27 objectForKeyedSubscript:v17];
          if (!v19)
          {
            v20 = [ATXHomeScreenFolder alloc];
            v19 = [(ATXHomeScreenFolder *)v20 initWithFolderPages:MEMORY[0x1E695E0F0] name:0];
            [v27 setObject:v19 forKeyedSubscript:v17];
            [v29 addObject:v19];
          }

          v21 = [[ATXHomeScreenWebClip alloc] initWithUUID:v13 name:0 url:0];
          goto LABEL_19;
        }

        if ([v15 length] == 1)
        {
          v16 = [[ATXHomeScreenApp alloc] initWithBundleId:v13];
LABEL_14:
          v17 = v16;
          [v29 addObject:v16];
LABEL_20:

          goto LABEL_21;
        }

        if ([v15 length] == 2)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "indexAtPosition:", 0)}];
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "indexAtPosition:", 1)}];
          v19 = [v27 objectForKeyedSubscript:v17];
          if (!v19)
          {
            v23 = [ATXHomeScreenFolder alloc];
            v19 = [(ATXHomeScreenFolder *)v23 initWithFolderPages:MEMORY[0x1E695E0F0] name:0];
            [v27 setObject:v19 forKeyedSubscript:v17];
            [v29 addObject:v19];
          }

          v21 = [[ATXHomeScreenApp alloc] initWithBundleId:v13];
LABEL_19:
          v22 = v21;
          -[ATXHomeScreenFolder addIcon:folderPageIndex:](v19, "addIcon:folderPageIndex:", v21, [v18 integerValue]);

          goto LABEL_20;
        }

LABEL_21:

        ++v12;
      }

      while (v10 != v12);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      v10 = v24;
    }

    while (v24);
  }

  return v29;
}

uint64_t __47__ATXHomeScreenPage__leafIconsFromExistingData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 indexAtPosition:0];
  v7 = [v5 indexAtPosition:0];
  if (v6 >= v7)
  {
    if (v7 >= v6)
    {
      if ([v4 length] > 1 || objc_msgSend(v5, "length") >= 2)
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "indexAtPosition:", 1)}];
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "indexAtPosition:", 1)}];
        v8 = [v9 compare:v10];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (NSArray)leafIcons
{
  leafIcons = self->_leafIcons;
  if (leafIcons)
  {
    _leafIconsFromExistingData = leafIcons;
  }

  else if ([(NSDictionary *)self->_webClipLocations count]|| (_leafIconsFromExistingData = [(NSDictionary *)self->_appLocations count]) != 0)
  {
    _leafIconsFromExistingData = [(ATXHomeScreenPage *)self _leafIconsFromExistingData];
  }

  return _leafIconsFromExistingData;
}

- (unint64_t)numberOfLeafIconSpots
{
  v19 = *MEMORY[0x1E69E9840];
  maxPortraitRows = [(ATXHomeScreenPage *)self maxPortraitRows];
  if (maxPortraitRows)
  {
    v4 = maxPortraitRows;
  }

  else
  {
    v4 = 6;
  }

  maxPortraitColumns = [(ATXHomeScreenPage *)self maxPortraitColumns];
  v6 = 4;
  if (maxPortraitColumns)
  {
    v6 = maxPortraitColumns;
  }

  v14 = 0u;
  v15 = 0u;
  v7 = v6 * v4;
  v16 = 0u;
  v17 = 0u;
  stacks = [(ATXHomeScreenPage *)self stacks];
  v9 = [stacks countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(stacks);
        }

        v7 -= [*(*(&v14 + 1) + 8 * i) numberOfLeafIconSpots];
      }

      v10 = [stacks countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v7;
}

- (ATXHomeScreenPage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = ATXHomeScreenPage;
  v5 = [(ATXHomeScreenPage *)&v38 init];
  if (v5)
  {
    -[ATXHomeScreenPage setSuggestedPageType:](v5, "setSuggestedPageType:", [coderCopy decodeIntegerForKey:@"suggestedPageType"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    [(ATXHomeScreenPage *)v5 setUniqueIdentifier:v6];

    -[ATXHomeScreenPage setPageIndex:](v5, "setPageIndex:", [coderCopy decodeIntegerForKey:@"pageIndex"]);
    -[ATXHomeScreenPage setHidden:](v5, "setHidden:", [coderCopy decodeBoolForKey:@"hidden"]);
    -[ATXHomeScreenPage setMaxPortraitRows:](v5, "setMaxPortraitRows:", [coderCopy decodeIntegerForKey:@"portraitRows"]);
    -[ATXHomeScreenPage setMaxPortraitColumns:](v5, "setMaxPortraitColumns:", [coderCopy decodeIntegerForKey:@"portraitColumns"]);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"stacks"];
    [(ATXHomeScreenPage *)v5 setStacks:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"panels"];
    [(ATXHomeScreenPage *)v5 setPanels:v14];

    v15 = allowedLeafIconClasses();
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"leafIcons"];
    [(ATXHomeScreenPage *)v5 setLeafIcons:v16];

    v17 = objc_autoreleasePoolPush();
    v18 = objc_alloc(MEMORY[0x1E695DFD8]);
    v19 = objc_opt_class();
    v20 = [v18 initWithObjects:{v19, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v17);
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"associatedModeUUIDs"];
    [(ATXHomeScreenPage *)v5 setAssociatedModeUUIDs:v21];

    v22 = objc_autoreleasePoolPush();
    v23 = objc_alloc(MEMORY[0x1E695DFD8]);
    v24 = objc_opt_class();
    v25 = [v23 initWithObjects:{v24, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v22);
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"candidateApps"];
    [(ATXHomeScreenPage *)v5 setCandidateApps:v26];

    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"appLocations"];
    [(ATXHomeScreenPage *)v5 setAppLocations:v31];

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"webClipLocations"];
    [(ATXHomeScreenPage *)v5 setWebClipLocations:v36];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ATXHomeScreenPage pageIndex](self forKey:{"pageIndex"), @"pageIndex"}];
  [coderCopy encodeBool:-[ATXHomeScreenPage isHidden](self forKey:{"isHidden"), @"hidden"}];
  [coderCopy encodeInteger:-[ATXHomeScreenPage maxPortraitRows](self forKey:{"maxPortraitRows"), @"portraitRows"}];
  [coderCopy encodeInteger:-[ATXHomeScreenPage maxPortraitColumns](self forKey:{"maxPortraitColumns"), @"portraitColumns"}];
  stacks = [(ATXHomeScreenPage *)self stacks];
  [coderCopy encodeObject:stacks forKey:@"stacks"];

  panels = [(ATXHomeScreenPage *)self panels];
  [coderCopy encodeObject:panels forKey:@"panels"];

  [coderCopy encodeObject:self->_leafIcons forKey:@"leafIcons"];
  appLocations = [(ATXHomeScreenPage *)self appLocations];
  [coderCopy encodeObject:appLocations forKey:@"appLocations"];

  webClipLocations = [(ATXHomeScreenPage *)self webClipLocations];
  [coderCopy encodeObject:webClipLocations forKey:@"webClipLocations"];

  [coderCopy encodeInteger:self->_suggestedPageType forKey:@"suggestedPageType"];
  [coderCopy encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:self->_associatedModeUUIDs forKey:@"associatedModeUUIDs"];
  [coderCopy encodeObject:self->_candidateApps forKey:@"candidateApps"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(ATXHomeScreenPage *)v5 pageIndex]!= self->_pageIndex || self->_hidden != [(ATXHomeScreenPage *)v5 isHidden])
      {
        goto LABEL_25;
      }

      v6 = self->_stacks;
      v7 = v6;
      if (v6 == v5->_stacks)
      {
      }

      else
      {
        v8 = [(NSArray *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v10 = self->_panels;
      v11 = v10;
      if (v10 == v5->_panels)
      {
      }

      else
      {
        v12 = [(NSArray *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v13 = self->_appLocations;
      v14 = v13;
      if (v13 == v5->_appLocations)
      {
      }

      else
      {
        v15 = [(NSDictionary *)v13 isEqual:?];

        if ((v15 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v16 = self->_webClipLocations;
      v17 = v16;
      if (v16 == v5->_webClipLocations)
      {
      }

      else
      {
        v18 = [(NSDictionary *)v16 isEqual:?];

        if ((v18 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v19 = self->_leafIcons;
      v20 = v19;
      if (v19 == v5->_leafIcons)
      {
      }

      else
      {
        v21 = [(NSArray *)v19 isEqual:?];

        if ((v21 & 1) == 0)
        {
LABEL_25:
          v9 = 0;
LABEL_26:

          goto LABEL_27;
        }
      }

      v23 = self->_associatedModeUUIDs;
      v24 = v23;
      if (v23 == v5->_associatedModeUUIDs)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSSet *)v23 isEqual:?];
      }

      goto LABEL_26;
    }

    v9 = 0;
  }

LABEL_27:

  return v9;
}

- (void)setPanels:(id)panels
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_panels != panels)
  {
    v4 = [panels copy];
    panels = self->_panels;
    self->_panels = v4;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_panels;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setPage:{self, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setStacks:(id)stacks
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_stacks != stacks)
  {
    v4 = [stacks copy];
    stacks = self->_stacks;
    self->_stacks = v4;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_stacks;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setPage:{self, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (NSArray)leafAppIcons
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__ATXHomeScreenPage_leafAppIcons__block_invoke;
  v6[3] = &unk_1E80C67E8;
  v4 = v3;
  v7 = v4;
  [(ATXHomeScreenPage *)self enumerateApps:v6];

  return v4;
}

- (void)enumerateAppsConsideringFolders:(BOOL)folders block:(id)block
{
  foldersCopy = folders;
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  leafIcons = [(ATXHomeScreenPage *)self leafIcons];
  v8 = [leafIcons countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(leafIcons);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          blockCopy[2](blockCopy, v12);
        }

        else if (foldersCopy)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 enumerateApps:blockCopy];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [leafIcons countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"Page index: %lu; ", self->_pageIndex];
  [v3 appendFormat:@"Hidden: %d; ", self->_hidden];
  [v3 appendFormat:@"Unique identifier: %@; ", self->_uniqueIdentifier];
  [v3 appendFormat:@"Number of app locations (legacy): %lu; ", -[NSDictionary count](self->_appLocations, "count")];
  [v3 appendFormat:@"Number of web clip locations (legacy): %lu; ", -[NSDictionary count](self->_webClipLocations, "count")];
  [v3 appendFormat:@"Number of leaf icons: %lu; ", -[NSArray count](self->_leafIcons, "count")];
  [v3 appendFormat:@"Stacks: %@; ", self->_stacks];
  [v3 appendFormat:@"Panels: %@; ", self->_panels];
  if ([(NSSet *)self->_associatedModeUUIDs count])
  {
    allObjects = [(NSSet *)self->_associatedModeUUIDs allObjects];
    v5 = [allObjects componentsJoinedByString:{@", "}];
    [v3 appendFormat:@"Associated mode UUIDs: %@; ", v5];
  }

  if ([(NSArray *)self->_candidateApps count])
  {
    [v3 appendFormat:@"Candidate apps: %ld;", -[NSArray count](self->_candidateApps, "count")];
  }

  return v3;
}

- (id)dictionaryRepresentationForIntrospection
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_stacks;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dictionaryRepresentation = [*(*(&v33 + 1) + 8 * i) dictionaryRepresentation];
        [v4 addObject:dictionaryRepresentation];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  v11 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = self->_panels;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        dictionaryRepresentation2 = [*(*(&v29 + 1) + 8 * j) dictionaryRepresentation];
        [v11 addObject:dictionaryRepresentation2];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v14);
  }

  allObjects = [(NSSet *)self->_associatedModeUUIDs allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"associatedModeUUIDs"];

  [v3 setObject:self->_uniqueIdentifier forKeyedSubscript:@"uniqueIdentifier"];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_pageIndex];
  [v3 setObject:v19 forKeyedSubscript:@"pageIndex"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_hidden];
  [v3 setObject:v20 forKeyedSubscript:@"hidden"];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxPortraitRows];
  [v3 setObject:v21 forKeyedSubscript:@"portraitRows"];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxPortraitColumns];
  [v3 setObject:v22 forKeyedSubscript:@"portraitColumns"];

  [v3 setObject:v4 forKeyedSubscript:@"stacks"];
  [v3 setObject:v11 forKeyedSubscript:@"panels"];
  leafIcons = [(ATXHomeScreenPage *)self leafIcons];
  v24 = [leafIcons _pas_mappedArrayWithTransform:&__block_literal_global_339];
  [v3 setObject:v24 forKeyedSubscript:@"leafIcons"];

  candidateApps = [(ATXHomeScreenPage *)self candidateApps];
  v26 = [candidateApps _pas_mappedArrayWithTransform:&__block_literal_global_342];
  [v3 setObject:v26 forKeyedSubscript:@"candidateApps"];

  v27 = [v3 copy];

  return v27;
}

- (id)initFromDictionaryRepresentation:(id)representation
{
  v47 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v44.receiver = self;
  v44.super_class = ATXHomeScreenPage;
  v5 = [(ATXHomeScreenPage *)&v44 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"pageIndex"];
    v5->_pageIndex = [v6 unsignedIntegerValue];

    v7 = [representationCopy objectForKeyedSubscript:@"hidden"];
    v5->_hidden = [v7 BOOLValue];

    v8 = [representationCopy objectForKeyedSubscript:@"portraitRows"];
    v5->_maxPortraitRows = [v8 unsignedIntegerValue];

    v9 = [representationCopy objectForKeyedSubscript:@"portraitColumns"];
    v5->_maxPortraitColumns = [v9 unsignedIntegerValue];

    v10 = [representationCopy objectForKeyedSubscript:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"associatedModeUUIDs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v12];
      associatedModeUUIDs = v5->_associatedModeUUIDs;
      v5->_associatedModeUUIDs = v13;
    }

    v15 = [representationCopy objectForKeyedSubscript:{@"stacks", v12}];
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      do
      {
        v21 = 0;
        do
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [[ATXHomeScreenStackConfig alloc] initFromDictionaryRepresentation:*(*(&v40 + 1) + 8 * v21)];
          if (v22)
          {
            [v16 addObject:v22];
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v19);
    }

    objc_storeStrong(&v5->_stacks, v16);
    v35 = representationCopy;
    v23 = [representationCopy objectForKeyedSubscript:@"panels"];
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v23, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v37;
      do
      {
        v29 = 0;
        do
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [[ATXHomeScreenStackConfig alloc] initFromDictionaryRepresentation:*(*(&v36 + 1) + 8 * v29)];
          if (v30)
          {
            [(NSArray *)v24 addObject:v30];
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v27);
    }

    panels = v5->_panels;
    v5->_panels = v24;

    v32 = v5;
    representationCopy = v35;
  }

  return v5;
}

- (BOOL)_containsWidgetWithExtensionBundleId:(id)id
{
  v31 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  stacks = [(ATXHomeScreenPage *)self stacks];
  v6 = [stacks countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v20 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(stacks);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        widgets = [v10 widgets];
        v12 = [widgets countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v22;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(widgets);
              }

              extensionBundleId = [*(*(&v21 + 1) + 8 * j) extensionBundleId];
              v17 = [extensionBundleId isEqualToString:idCopy];

              if (v17)
              {

                v18 = 1;
                goto LABEL_19;
              }
            }

            v13 = [widgets countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v8 = v20;
      }

      v7 = [stacks countByEnumeratingWithState:&v25 objects:v30 count:16];
      v18 = 0;
    }

    while (v7);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

- (id)nonFolderAppsOnPage
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__ATXHomeScreenPage_nonFolderAppsOnPage__block_invoke;
  v6[3] = &unk_1E80C67E8;
  v4 = v3;
  v7 = v4;
  [(ATXHomeScreenPage *)self enumerateAppsConsideringFolders:0 block:v6];

  return v4;
}

void __40__ATXHomeScreenPage_nonFolderAppsOnPage__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleId];
  [v2 addObject:v3];
}

@end