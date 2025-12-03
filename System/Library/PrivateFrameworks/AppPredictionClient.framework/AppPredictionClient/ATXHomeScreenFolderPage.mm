@interface ATXHomeScreenFolderPage
- (ATXHomeScreenFolderPage)initWithCoder:(id)coder;
- (ATXHomeScreenFolderPage)initWithContents:(id)contents;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXHomeScreenFolderPage:(id)page;
- (NSArray)contents;
- (id)dictionaryRepresentationForIntrospection;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHomeScreenFolderPage

- (NSArray)contents
{
  v2 = [(NSMutableArray *)self->_contents copy];

  return v2;
}

- (ATXHomeScreenFolderPage)initWithContents:(id)contents
{
  contentsCopy = contents;
  v9.receiver = self;
  v9.super_class = ATXHomeScreenFolderPage;
  v5 = [(ATXHomeScreenFolderPage *)&v9 init];
  if (v5)
  {
    v6 = [contentsCopy mutableCopy];
    contents = v5->_contents;
    v5->_contents = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contents = [(ATXHomeScreenFolderPage *)self contents];
  [coderCopy encodeObject:contents forKey:@"contents"];
}

- (ATXHomeScreenFolderPage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ATXHomeScreenFolderPage;
  v5 = [(ATXHomeScreenFolderPage *)&v13 init];
  if (v5)
  {
    v6 = allowedLeafIconClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"contents"];
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    contents = v5->_contents;
    v5->_contents = v10;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenFolderPage *)self isEqualToATXHomeScreenFolderPage:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenFolderPage:(id)page
{
  v4 = self->_contents;
  v5 = v4;
  if (v4 == *(page + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSMutableArray *)v4 isEqual:?];
  }

  return v6;
}

- (id)dictionaryRepresentationForIntrospection
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"contents";
  v2 = [(NSMutableArray *)self->_contents _pas_mappedArrayWithTransform:&__block_literal_global_105];
  v3 = v2;
  v4 = MEMORY[0x1E695E0F0];
  if (v2)
  {
    v4 = v2;
  }

  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

@end