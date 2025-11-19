@interface BrowseCategory
- (BOOL)isEqual:(id)a3;
- (BrowseCategory)initWithCategory:(id)a3;
- (NSString)name;
- (id)description;
- (unint64_t)hash;
- (void)imageWithScale:(double)a3 isCarplay:(BOOL)a4 resultHandler:(id)a5;
@end

@implementation BrowseCategory

- (unint64_t)hash
{
  v2 = [(BrowseCategory *)self category];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(BrowseCategory *)self category];
      v7 = [(BrowseCategory *)v5 category];

      v8 = [v6 isEqual:v7];
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
  v4 = [(BrowseCategory *)self name];
  v5 = [(BrowseCategory *)self subCategories];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@ %p: name='%@' children=%d>", v3, self, v4, [v5 count]);

  return v6;
}

- (NSString)name
{
  v2 = [(GEOSearchCategory *)self->_category displayString];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1016631F0;
  }

  v5 = v4;

  return &v4->isa;
}

- (void)imageWithScale:(double)a3 isCarplay:(BOOL)a4 resultHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = +[BrowseManager sharedManager];
  [v9 imageForCategory:self scale:v5 isCarplay:v8 resultHandler:a3];
}

- (BrowseCategory)initWithCategory:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = BrowseCategory;
  v6 = [(BrowseCategory *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, a3);
    v8 = [&__NSArray0__struct mutableCopy];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [(GEOSearchCategory *)v7->_category subcategories];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [[BrowseCategory alloc] initWithCategory:*(*(&v18 + 1) + 8 * v13)];
          [v8 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
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