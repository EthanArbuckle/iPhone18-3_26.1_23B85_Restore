@interface PUPickerCompoundFilter
- (BOOL)allowsAlbums;
- (BOOL)containsFilter:(id)filter;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidFilter;
- (PUPickerCompoundFilter)initWithCoder:(id)coder;
- (PUPickerCompoundFilter)initWithFilterType:(int64_t)type subfilters:(id)subfilters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)generatedAssetPredicate;
- (unint64_t)generatedPossibleAssetTypes;
- (unint64_t)generatedRequiredAssetTypes;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUPickerCompoundFilter

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[PUPickerCompoundFilter filterType](self, "filterType")}];
  [coderCopy encodeObject:v6 forKey:@"PUPickerCompoundFilterDictionaryFilterTypeKey"];

  subfilters = [(PUPickerCompoundFilter *)self subfilters];
  [coderCopy encodeObject:subfilters forKey:@"PUPickerCompoundFilterDictionarySubfiltersKey"];
}

- (PUPickerCompoundFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PUPickerCompoundFilter;
  v5 = [(PUPickerCompoundFilter *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PUPickerCompoundFilterDictionaryFilterTypeKey"];
    v5->_filterType = [v6 integerValue];

    v7 = PUPickerFilterAvailableClasses();
    v8 = [v7 setByAddingObject:objc_opt_class()];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"PUPickerCompoundFilterDictionarySubfiltersKey"];
    subfilters = v5->_subfilters;
    v5->_subfilters = v9;
  }

  if ([(PUPickerCompoundFilter *)v5 isValidFilter])
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  subfilters = [(PUPickerCompoundFilter *)self subfilters];
  v6 = [v4 initWithArray:subfilters copyItems:1];

  v7 = [[PUPickerCompoundFilter alloc] initWithFilterType:[(PUPickerCompoundFilter *)self filterType] subfilters:v6];
  return v7;
}

- (unint64_t)generatedRequiredAssetTypes
{
  v36 = *MEMORY[0x1E69E9840];
  filterType = [(PUPickerCompoundFilter *)self filterType];
  switch(filterType)
  {
    case 2:
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      subfilters = [(PUPickerCompoundFilter *)self subfilters];
      v14 = [subfilters countByEnumeratingWithState:&v21 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = *v22;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(subfilters);
            }

            v16 |= [*(*(&v21 + 1) + 8 * i) generatedPossibleAssetTypes];
          }

          v15 = [subfilters countByEnumeratingWithState:&v21 objects:v33 count:16];
        }

        while (v15);
        v7 = ~v16 & 0x1FFFELL;
        goto LABEL_31;
      }

LABEL_29:
      v7 = 131070;
LABEL_31:

      goto LABEL_32;
    case 1:
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      subfilters = [(PUPickerCompoundFilter *)self subfilters];
      v10 = [subfilters countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        v7 = 131070;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(subfilters);
            }

            v7 &= [*(*(&v25 + 1) + 8 * j) generatedRequiredAssetTypes];
          }

          v11 = [subfilters countByEnumeratingWithState:&v25 objects:v34 count:16];
        }

        while (v11);
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0:
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      subfilters = [(PUPickerCompoundFilter *)self subfilters];
      v5 = [subfilters countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        v8 = *v30;
        do
        {
          for (k = 0; k != v6; ++k)
          {
            if (*v30 != v8)
            {
              objc_enumerationMutation(subfilters);
            }

            v7 |= [*(*(&v29 + 1) + 8 * k) generatedRequiredAssetTypes];
          }

          v6 = [subfilters countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v6);
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_31;
  }

  v7 = 0;
LABEL_32:
  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

- (unint64_t)generatedPossibleAssetTypes
{
  v36 = *MEMORY[0x1E69E9840];
  filterType = [(PUPickerCompoundFilter *)self filterType];
  switch(filterType)
  {
    case 2:
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      subfilters = [(PUPickerCompoundFilter *)self subfilters];
      v14 = [subfilters countByEnumeratingWithState:&v21 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = *v22;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(subfilters);
            }

            v16 |= [*(*(&v21 + 1) + 8 * i) generatedRequiredAssetTypes];
          }

          v15 = [subfilters countByEnumeratingWithState:&v21 objects:v33 count:16];
        }

        while (v15);
        v7 = ~v16 & 0x1FFFELL;
        goto LABEL_31;
      }

LABEL_29:
      v7 = 131070;
LABEL_31:

      goto LABEL_32;
    case 1:
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      subfilters = [(PUPickerCompoundFilter *)self subfilters];
      v10 = [subfilters countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        v7 = 131070;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(subfilters);
            }

            v7 &= [*(*(&v25 + 1) + 8 * j) generatedPossibleAssetTypes];
          }

          v11 = [subfilters countByEnumeratingWithState:&v25 objects:v34 count:16];
        }

        while (v11);
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0:
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      subfilters = [(PUPickerCompoundFilter *)self subfilters];
      v5 = [subfilters countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        v8 = *v30;
        do
        {
          for (k = 0; k != v6; ++k)
          {
            if (*v30 != v8)
            {
              objc_enumerationMutation(subfilters);
            }

            v7 |= [*(*(&v29 + 1) + 8 * k) generatedPossibleAssetTypes];
          }

          v6 = [subfilters countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v6);
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_31;
  }

  v7 = 0;
LABEL_32:
  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)generatedAssetPredicate
{
  subfilters = [(PUPickerCompoundFilter *)self subfilters];
  v4 = PFMap();

  filterType = [(PUPickerCompoundFilter *)self filterType];
  switch(filterType)
  {
    case 2:
      v8 = MEMORY[0x1E696AB28];
      v9 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v4];
      v7 = [v8 notPredicateWithSubpredicate:v9];

      break;
    case 1:
      v6 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v4];
      goto LABEL_6;
    case 0:
      v6 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v4];
LABEL_6:
      v7 = v6;
      break;
    default:
      v7 = 0;
      break;
  }

  return v7;
}

- (BOOL)containsFilter:(id)filter
{
  v16 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  if ([(PUPickerCompoundFilter *)self isEqual:filterCopy])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subfilters = [(PUPickerCompoundFilter *)self subfilters];
    v5 = [subfilters countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(subfilters);
          }

          if ([*(*(&v11 + 1) + 8 * i) containsFilter:filterCopy])
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [subfilters countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)allowsAlbums
{
  filterType = [(PUPickerCompoundFilter *)self filterType];
  switch(filterType)
  {
    case 2:
      LOBYTE(v8) = 1;
      break;
    case 1:
      subfilters = [(PUPickerCompoundFilter *)self subfilters];
      v8 = PFExists() ^ 1;

      break;
    case 0:
      subfilters2 = [(PUPickerCompoundFilter *)self subfilters];
      v5 = PFExists();

      return v5;
    default:
      LOBYTE(v8) = 0;
      break;
  }

  return v8;
}

- (BOOL)isValidFilter
{
  v26 = *MEMORY[0x1E69E9840];
  filterType = [(PUPickerCompoundFilter *)self filterType];
  v4 = filterType < 3;
  if (filterType >= 3)
  {
    v5 = filterType;
    v6 = PLPickerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v25 = v5;
      _os_log_impl(&dword_1D2128000, v6, OS_LOG_TYPE_ERROR, "PUPickerCompoundFilter: invalid filter type: %ld", buf, 0xCu);
    }
  }

  subfilters = [(PUPickerCompoundFilter *)self subfilters];
  if (![subfilters count])
  {
    v8 = PLPickerGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [subfilters count];
      *buf = 134217984;
      v25 = v9;
      _os_log_impl(&dword_1D2128000, v8, OS_LOG_TYPE_ERROR, "PUPickerCompoundFilter: invalid subfilters count: %lu", buf, 0xCu);
    }

    v4 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = subfilters;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if (([v15 isValidFilter] & 1) == 0)
        {
          v16 = PLPickerGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v15;
            _os_log_impl(&dword_1D2128000, v16, OS_LOG_TYPE_ERROR, "PUPickerCompoundFilter: invalid subfilter: %@", buf, 0xCu);
          }

          v4 = 0;
          goto LABEL_21;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v17 = *MEMORY[0x1E69E9840];
  return v4;
}

- (unint64_t)hash
{
  filterType = [(PUPickerCompoundFilter *)self filterType];
  subfilters = [(PUPickerCompoundFilter *)self subfilters];
  v5 = [subfilters hash] + 193 * filterType;

  return v5 + 37249;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
LABEL_14:

    return v10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v5 = equalCopy;
  v6 = objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      filterType = [(PUPickerCompoundFilter *)self filterType];
      if (filterType == [(PUPickerCompoundFilter *)v5 filterType])
      {
        subfilters = [(PUPickerCompoundFilter *)self subfilters];
        subfilters2 = [(PUPickerCompoundFilter *)v5 subfilters];
        if (subfilters == subfilters2)
        {
          v10 = 1;
        }

        else
        {
          v10 = [subfilters isEqual:subfilters2];
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_14;
    }

    v12 = objc_opt_class();
    NSStringFromClass(v12);
    objc_claimAutoreleasedReturnValue();
    v13 = objc_opt_class();
    NSStringFromClass(v13);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    NSStringFromClass(v6);
    objc_claimAutoreleasedReturnValue();
  }

  v14 = _PFAssertFailHandler();
  return [(PUPickerCompoundFilter *)v14 initWithFilterType:v15 subfilters:v16, v17];
}

- (PUPickerCompoundFilter)initWithFilterType:(int64_t)type subfilters:(id)subfilters
{
  subfiltersCopy = subfilters;
  if (!subfiltersCopy)
  {
    _PFAssertFailHandler();
    goto LABEL_10;
  }

  v8 = subfiltersCopy;
  if (![subfiltersCopy count])
  {
LABEL_10:
    v14 = _PFAssertFailHandler();
    return +[(PUPickerCompoundFilter *)v14];
  }

  v16.receiver = self;
  v16.super_class = PUPickerCompoundFilter;
  v9 = [(PUPickerCompoundFilter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_filterType = type;
    objc_storeStrong(&v9->_subfilters, subfilters);
  }

  if ([(PUPickerCompoundFilter *)v10 isValidFilter])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v12;
}

@end