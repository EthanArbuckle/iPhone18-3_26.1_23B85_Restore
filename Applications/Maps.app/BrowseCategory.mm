@interface BrowseCategory
- (BOOL)isEqual:(id)equal;
- (BrowseCategory)initWithCategory:(id)category;
- (NSString)name;
- (id)description;
- (unint64_t)hash;
- (void)imageWithScale:(double)scale isCarplay:(BOOL)carplay resultHandler:(id)handler;
@end

@implementation BrowseCategory

- (unint64_t)hash
{
  category = [(BrowseCategory *)self category];
  v3 = [category hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      category = [(BrowseCategory *)self category];
      category2 = [(BrowseCategory *)v5 category];

      v8 = [category isEqual:category2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  name = [(BrowseCategory *)self name];
  subCategories = [(BrowseCategory *)self subCategories];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ %p: name='%@' children=%d>", v3, self, name, [subCategories count]);

  return v6;
}

- (NSString)name
{
  displayString = [(GEOSearchCategory *)self->_category displayString];
  v3 = displayString;
  if (displayString)
  {
    v4 = displayString;
  }

  else
  {
    v4 = &stru_1016631F0;
  }

  v5 = v4;

  return &v4->isa;
}

- (void)imageWithScale:(double)scale isCarplay:(BOOL)carplay resultHandler:(id)handler
{
  carplayCopy = carplay;
  handlerCopy = handler;
  v9 = +[BrowseManager sharedManager];
  [v9 imageForCategory:self scale:carplayCopy isCarplay:handlerCopy resultHandler:scale];
}

- (BrowseCategory)initWithCategory:(id)category
{
  categoryCopy = category;
  v22.receiver = self;
  v22.super_class = BrowseCategory;
  v6 = [(BrowseCategory *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, category);
    v8 = [&__NSArray0__struct mutableCopy];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    subcategories = [(GEOSearchCategory *)v7->_category subcategories];
    v10 = [subcategories countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(subcategories);
          }

          v14 = [[BrowseCategory alloc] initWithCategory:*(*(&v18 + 1) + 8 * v13)];
          [v8 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [subcategories countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    v15 = [NSArray arrayWithArray:v8];
    subCategories = v7->_subCategories;
    v7->_subCategories = v15;
  }

  return v7;
}

@end