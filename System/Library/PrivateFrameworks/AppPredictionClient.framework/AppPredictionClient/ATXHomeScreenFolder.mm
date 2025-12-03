@interface ATXHomeScreenFolder
- (ATXHomeScreenFolder)initWithCoder:(id)coder;
- (ATXHomeScreenFolder)initWithFolderPages:(id)pages name:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXHomeScreenFolder:(id)folder;
- (NSArray)folderPages;
- (id)dictionaryRepresentationForIntrospection;
- (void)addIcon:(id)icon folderPageIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateApps:(id)apps;
@end

@implementation ATXHomeScreenFolder

- (NSArray)folderPages
{
  v2 = [(NSMutableArray *)self->_folderPages copy];

  return v2;
}

- (ATXHomeScreenFolder)initWithFolderPages:(id)pages name:(id)name
{
  pagesCopy = pages;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = ATXHomeScreenFolder;
  v8 = [(ATXHomeScreenFolder *)&v14 init];
  if (v8)
  {
    v9 = [pagesCopy mutableCopy];
    folderPages = v8->_folderPages;
    v8->_folderPages = v9;

    v11 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(ATXHomeScreenFolder *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  folderPages = [(ATXHomeScreenFolder *)self folderPages];
  [coderCopy encodeObject:folderPages forKey:@"folderPages"];
}

- (ATXHomeScreenFolder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = ATXHomeScreenFolder;
  v5 = [(ATXHomeScreenFolder *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"folderPages"];
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_opt_new();
    }

    folderPages = v5->_folderPages;
    v5->_folderPages = v15;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenFolder *)self isEqualToATXHomeScreenFolder:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenFolder:(id)folder
{
  v4 = self->_folderPages;
  v5 = v4;
  if (v4 == *(folder + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSMutableArray *)v4 isEqual:?];
  }

  return v6;
}

- (void)addIcon:(id)icon folderPageIndex:(unint64_t)index
{
  iconCopy = icon;
  if ([(NSMutableArray *)self->_folderPages count]<= index)
  {
    v6 = index - [(NSMutableArray *)self->_folderPages count]+ 1;
    if (v6 >= 1)
    {
      v7 = MEMORY[0x1E695E0F0];
      do
      {
        v8 = [[ATXHomeScreenFolderPage alloc] initWithContents:v7];
        [(NSMutableArray *)self->_folderPages addObject:v8];

        --v6;
      }

      while (v6);
    }
  }

  v9 = [(NSMutableArray *)self->_folderPages objectAtIndexedSubscript:index];
  [v9 addIcon:iconCopy];
}

- (void)enumerateApps:(id)apps
{
  appsCopy = apps;
  folderPages = self->_folderPages;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__ATXHomeScreenFolder_enumerateApps___block_invoke;
  v7[3] = &unk_1E80C6780;
  v8 = appsCopy;
  v6 = appsCopy;
  [(NSMutableArray *)folderPages enumerateObjectsUsingBlock:v7];
}

void __37__ATXHomeScreenFolder_enumerateApps___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contents];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__ATXHomeScreenFolder_enumerateApps___block_invoke_2;
  v4[3] = &unk_1E80C6758;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __37__ATXHomeScreenFolder_enumerateApps___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)dictionaryRepresentationForIntrospection
{
  v12[2] = *MEMORY[0x1E69E9840];
  p_folderPages = &self->_folderPages;
  folderPages = self->_folderPages;
  v3 = p_folderPages[1];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"<nil>";
  }

  v11[0] = @"name";
  v11[1] = @"folderPages";
  v12[0] = v5;
  v6 = [(NSMutableArray *)folderPages _pas_mappedArrayWithTransform:&__block_literal_global_214];
  v7 = v6;
  v8 = MEMORY[0x1E695E0F0];
  if (v6)
  {
    v8 = v6;
  }

  v12[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end