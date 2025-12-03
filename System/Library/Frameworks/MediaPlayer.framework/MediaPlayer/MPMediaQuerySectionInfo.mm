@interface MPMediaQuerySectionInfo
- (MPMediaQuerySectionInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)count;
- (unint64_t)indexOfSectionForSectionIndexTitleAtIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
- (void)setSectionIndexTitles:(id)titles;
@end

@implementation MPMediaQuerySectionInfo

- (unint64_t)count
{
  lastObject = [(NSArray *)self->_sections lastObject];
  v3 = lastObject;
  if (lastObject)
  {
    range = [lastObject range];
    v6 = range + v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)indexOfSectionForSectionIndexTitleAtIndex:(unint64_t)index
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [(NSArray *)self->_sectionIndexTitles count]- 1;
  sections = self->_sections;
  if (v5 == index)
  {
    v7 = [(NSArray *)sections count]- 1;
    v11[3] = v7;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__MPMediaQuerySectionInfo_indexOfSectionForSectionIndexTitleAtIndex___block_invoke;
    v9[3] = &unk_1E7679EB8;
    v9[4] = &v10;
    v9[5] = index;
    [(NSArray *)sections enumerateObjectsUsingBlock:v9];
    v7 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

unint64_t __69__MPMediaQuerySectionInfo_indexOfSectionForSectionIndexTitleAtIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 sectionIndexTitleIndex];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = *(a1 + 40);
    if (result != v8)
    {
      if (result <= v8)
      {
        return result;
      }

      --a3;
    }

    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MPMediaQueryMutableSectionInfo);
  v5 = [(NSArray *)self->_sections mutableCopy];
  sections = v4->super._sections;
  v4->super._sections = v5;

  v7 = [(NSArray *)self->_sectionIndexTitles copy];
  sectionIndexTitles = v4->super._sectionIndexTitles;
  v4->super._sectionIndexTitles = v7;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    [coderCopy encodeObject:self->_sections forKey:@"MPSections"];
    [coderCopy encodeObject:self->_sectionIndexTitles forKey:@"MPSectionIndexTitles"];
  }
}

- (MPMediaQuerySectionInfo)initWithCoder:(id)coder
{
  v38 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"MPSections"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v26 = v8;
      sections = v8;
      v10 = [(NSArray *)sections countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v33;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(sections);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [(NSArray *)sections countByEnumeratingWithState:&v32 objects:v37 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:

        v14 = sections;
        sections = self->_sections;
        self->_sections = v14;
      }

      v8 = v26;
    }

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"MPSectionIndexTitles"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_25;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v27 = v8;
      v22 = *v29;
      v23 = 1;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          objc_opt_class();
          v23 &= objc_opt_isKindOfClass();
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v21);

      v8 = v27;
      if ((v23 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_sectionIndexTitles, v18);
LABEL_25:
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MPMediaQuerySectionInfo);
  v5 = [(NSArray *)self->_sections copy];
  sections = v4->_sections;
  v4->_sections = v5;

  v7 = [(NSArray *)self->_sectionIndexTitles copy];
  sectionIndexTitles = v4->_sectionIndexTitles;
  v4->_sectionIndexTitles = v7;

  return v4;
}

- (void)setSectionIndexTitles:(id)titles
{
  titlesCopy = titles;
  v4 = [titlesCopy copy];
  sectionIndexTitles = self->_sectionIndexTitles;
  self->_sectionIndexTitles = v4;

  lastObject = [(NSArray *)self->_sections lastObject];
  sectionIndexTitleIndex = [lastObject sectionIndexTitleIndex];
  if (sectionIndexTitleIndex == [titlesCopy count] - 1 && (objc_msgSend(lastObject, "range"), v8))
  {
    self->_hasUnknownSection = 1;
    v9 = [titlesCopy copy];
  }

  else
  {
    self->_hasUnknownSection = 0;
    v9 = [titlesCopy subarrayWithRange:{0, objc_msgSend(titlesCopy, "count") - 1}];
  }

  v10 = self->_sectionIndexTitles;
  self->_sectionIndexTitles = v9;
}

@end