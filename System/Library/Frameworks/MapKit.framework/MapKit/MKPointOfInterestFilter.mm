@interface MKPointOfInterestFilter
+ (MKPointOfInterestFilter)filterExcludingAllCategories;
+ (MKPointOfInterestFilter)filterIncludingAllCategories;
- (BOOL)_excludesAllCategories;
- (BOOL)_includesAllCategories;
- (BOOL)_isAllCategories;
- (BOOL)_isInclusive;
- (BOOL)excludesCategory:(MKPointOfInterestCategory)category;
- (BOOL)includesCategory:(MKPointOfInterestCategory)category;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPointOfInterestFilter:(id)filter;
- (MKPointOfInterestFilter)initExcludingCategories:(NSArray *)categories;
- (MKPointOfInterestFilter)initIncludingCategories:(NSArray *)categories;
- (MKPointOfInterestFilter)initWithCoder:(id)coder;
- (id)_geoPOICategoryFilter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initIncludingCategories:(id)categories excludingCategories:(id)excludingCategories;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKPointOfInterestFilter

- (BOOL)_isAllCategories
{
  if ([(MKPointOfInterestFilter *)self _includesAllCategories])
  {
    return 1;
  }

  return [(MKPointOfInterestFilter *)self _excludesAllCategories];
}

- (BOOL)_isInclusive
{
  if ([(MKPointOfInterestFilter *)self _includesAllCategories])
  {
    return 1;
  }

  if ([(MKPointOfInterestFilter *)self _excludesAllCategories])
  {
    return 0;
  }

  return self->_includedCategories != 0;
}

- (id)description
{
  if ([(MKPointOfInterestFilter *)self _includesAllCategories])
  {
    v3 = @"Include: All";
  }

  else if ([(MKPointOfInterestFilter *)self _excludesAllCategories])
  {
    v3 = @"Exclude: All";
  }

  else
  {
    if (self->_includedCategories)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Include: %@", self->_includedCategories];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Exclude: %@", self->_excludedCategories];
    }
    v3 = ;
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"%@: %p %@", v6, self, v3];

  return v7;
}

- (BOOL)_excludesAllCategories
{
  if (self->_excludedCategories)
  {
    LOBYTE(includedCategories) = 0;
  }

  else
  {
    includedCategories = self->_includedCategories;
    if (includedCategories)
    {
      LOBYTE(includedCategories) = [(NSSet *)includedCategories count:v2]== 0;
    }
  }

  return includedCategories;
}

- (BOOL)_includesAllCategories
{
  if (self->_includedCategories)
  {
    LOBYTE(excludedCategories) = 0;
  }

  else
  {
    excludedCategories = self->_excludedCategories;
    if (excludedCategories)
    {
      LOBYTE(excludedCategories) = [(NSSet *)excludedCategories count:v2]== 0;
    }
  }

  return excludedCategories;
}

- (id)_geoPOICategoryFilter
{
  v3 = GEOPOICategoriesForPointOfInterestCategories(self->_includedCategories);
  v4 = GEOPOICategoriesForPointOfInterestCategories(self->_excludedCategories);
  v5 = [objc_alloc(MEMORY[0x1E69A2328]) initWithCategoriesToInclude:v3 categoriesToExclude:v4];

  return v5;
}

- (BOOL)excludesCategory:(MKPointOfInterestCategory)category
{
  v4 = category;
  excludedCategories = self->_excludedCategories;
  if (excludedCategories)
  {
    LOBYTE(v6) = [(NSSet *)excludedCategories containsObject:v4];
  }

  else
  {
    includedCategories = self->_includedCategories;
    if (includedCategories)
    {
      v6 = ![(NSSet *)includedCategories containsObject:v4];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (BOOL)includesCategory:(MKPointOfInterestCategory)category
{
  v4 = category;
  includedCategories = self->_includedCategories;
  if (includedCategories)
  {
    LOBYTE(v6) = [(NSSet *)includedCategories containsObject:v4];
  }

  else
  {
    excludedCategories = self->_excludedCategories;
    if (excludedCategories)
    {
      v6 = ![(NSSet *)excludedCategories containsObject:v4];
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (BOOL)isEqualToPointOfInterestFilter:(id)filter
{
  filterCopy = filter;
  if (filterCopy && ((includedCategories = self->_includedCategories, !(includedCategories | filterCopy[1])) || [(NSSet *)includedCategories isEqualToSet:?]))
  {
    excludedCategories = self->_excludedCategories;
    if (excludedCategories | filterCopy[2])
    {
      v7 = [(NSSet *)excludedCategories isEqualToSet:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MKPointOfInterestFilter *)self isEqualToPointOfInterestFilter:equalCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->_includedCategories);
    objc_storeStrong(v5 + 2, self->_excludedCategories);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  includedCategories = self->_includedCategories;
  v7 = coderCopy;
  if (includedCategories)
  {
    [coderCopy encodeObject:includedCategories forKey:@"MKPointOfInterestFilterInclusions"];
    coderCopy = v7;
  }

  excludedCategories = self->_excludedCategories;
  if (excludedCategories)
  {
    [v7 encodeObject:excludedCategories forKey:@"MKPointOfInterestFilterExclusions"];
    coderCopy = v7;
  }
}

- (MKPointOfInterestFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MKPointOfInterestFilter;
  v5 = [(MKPointOfInterestFilter *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MKPointOfInterestFilterInclusions"];
    includedCategories = v5->_includedCategories;
    v5->_includedCategories = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MKPointOfInterestFilterExclusions"];
    excludedCategories = v5->_excludedCategories;
    v5->_excludedCategories = v11;
  }

  return v5;
}

- (id)initIncludingCategories:(id)categories excludingCategories:(id)excludingCategories
{
  categoriesCopy = categories;
  excludingCategoriesCopy = excludingCategories;
  v14.receiver = self;
  v14.super_class = MKPointOfInterestFilter;
  v8 = [(MKPointOfInterestFilter *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithArray:categoriesCopy];
    includedCategories = v8->_includedCategories;
    v8->_includedCategories = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithArray:excludingCategoriesCopy];
    excludedCategories = v8->_excludedCategories;
    v8->_excludedCategories = v11;
  }

  return v8;
}

- (MKPointOfInterestFilter)initExcludingCategories:(NSArray *)categories
{
  v4 = categories;
  v9.receiver = self;
  v9.super_class = MKPointOfInterestFilter;
  v5 = [(MKPointOfInterestFilter *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:v4];
    excludedCategories = v5->_excludedCategories;
    v5->_excludedCategories = v6;
  }

  return v5;
}

- (MKPointOfInterestFilter)initIncludingCategories:(NSArray *)categories
{
  v4 = categories;
  v9.receiver = self;
  v9.super_class = MKPointOfInterestFilter;
  v5 = [(MKPointOfInterestFilter *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:v4];
    includedCategories = v5->_includedCategories;
    v5->_includedCategories = v6;
  }

  return v5;
}

+ (MKPointOfInterestFilter)filterExcludingAllCategories
{
  v2 = [objc_alloc(objc_opt_class()) initIncludingCategories:MEMORY[0x1E695E0F0]];

  return v2;
}

+ (MKPointOfInterestFilter)filterIncludingAllCategories
{
  v2 = [objc_alloc(objc_opt_class()) initExcludingCategories:MEMORY[0x1E695E0F0]];

  return v2;
}

@end