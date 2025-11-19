@interface _MPLazySectionedCollectionStorage
- (id).cxx_construct;
- (id)_stateDumpObject;
@end

@implementation _MPLazySectionedCollectionStorage

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 9) = 0;
  *(self + 8) = 0;
  *(self + 7) = self + 64;
  *(self + 13) = 0;
  *(self + 12) = 0;
  *(self + 11) = self + 96;
  return self;
}

- (id)_stateDumpObject
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_cachedNumberOfSections];
  begin = self->_cachedNumberOfItemsInSections.__begin_;
  end = self->_cachedNumberOfItemsInSections.__end_;
  if (end != begin)
  {
    v6 = 0;
    do
    {
      v7 = begin[v6];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zu: %ld", v6, v7];
        [v3 addObject:v8];

        begin = self->_cachedNumberOfItemsInSections.__begin_;
        end = self->_cachedNumberOfItemsInSections.__end_;
      }

      ++v6;
    }

    while (v6 < end - begin);
  }

  v14[0] = @"_obj";
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  v15[0] = v9;
  v14[1] = @"hasValidCachedNumberOfSections";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasValidCachedNumberOfSections];
  v15[1] = v10;
  v14[2] = @"cachedNumberOfSections";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_cachedNumberOfSections];
  v14[3] = @"cachedNumberOfItemsInSections";
  v15[2] = v11;
  v15[3] = v3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

  return v12;
}

@end