@interface PUPickerItemIdentifiersFilter
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidFilter;
- (PUPickerItemIdentifiersFilter)initWithCoder:(id)a3;
- (PUPickerItemIdentifiersFilter)initWithItemIdentifiers:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)generatedAssetPredicate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUPickerItemIdentifiersFilter

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PUPickerItemIdentifiersFilter *)self itemIdentifiers];
  [v4 encodeObject:v5 forKey:@"PUPickerItemIdentifiersFilterDictionaryAssetIdentifiersKey"];
}

- (PUPickerItemIdentifiersFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PUPickerItemIdentifiersFilter;
  v5 = [(PUPickerItemIdentifiersFilter *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PUPickerItemIdentifiersFilterDictionaryAssetIdentifiersKey"];
    itemIdentifiers = v5->_itemIdentifiers;
    v5->_itemIdentifiers = v6;
  }

  if ([(PUPickerItemIdentifiersFilter *)v5 isValidFilter])
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PUPickerItemIdentifiersFilter alloc];
  v5 = [(PUPickerItemIdentifiersFilter *)self itemIdentifiers];
  v6 = [(PUPickerItemIdentifiersFilter *)v4 initWithItemIdentifiers:v5];

  return v6;
}

- (id)generatedAssetPredicate
{
  v2 = MEMORY[0x1E6978958];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(PUPickerItemIdentifiersFilter *)self itemIdentifiers];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 uuidsFromLocalIdentifiers:v5];

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", v6];

  return v7;
}

- (BOOL)isValidFilter
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [(PUPickerItemIdentifiersFilter *)self itemIdentifiers];
  v3 = [v2 count];
  if (!v3)
  {
    v4 = PLPickerGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = [v2 count];
      _os_log_impl(&dword_1D2128000, v4, OS_LOG_TYPE_ERROR, "PUPickerItemIdentifiersFilter: invalid asset identifier count: %ld", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3 != 0;
}

- (unint64_t)hash
{
  v2 = [(PUPickerItemIdentifiersFilter *)self itemIdentifiers];
  v3 = [v2 hash];

  return v3 + 211;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
LABEL_11:

    return v9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v5 = v4;
  v6 = objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = [(PUPickerItemIdentifiersFilter *)self itemIdentifiers];
      v8 = [(PUPickerItemIdentifiersFilter *)v5 itemIdentifiers];
      if (v7 == v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = [v7 isEqual:v8];
      }

      goto LABEL_11;
    }

    v11 = objc_opt_class();
    NSStringFromClass(v11);
    objc_claimAutoreleasedReturnValue();
    v12 = objc_opt_class();
    NSStringFromClass(v12);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
  }

  v13 = _PFAssertFailHandler();
  return [(PUPickerItemIdentifiersFilter *)v13 initWithItemIdentifiers:v14, v15];
}

- (PUPickerItemIdentifiersFilter)initWithItemIdentifiers:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PUPickerItemIdentifiersFilter;
  v5 = [(PUPickerItemIdentifiersFilter *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    itemIdentifiers = v5->_itemIdentifiers;
    v5->_itemIdentifiers = v6;
  }

  if ([(PUPickerItemIdentifiersFilter *)v5 isValidFilter])
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v9;
}

@end