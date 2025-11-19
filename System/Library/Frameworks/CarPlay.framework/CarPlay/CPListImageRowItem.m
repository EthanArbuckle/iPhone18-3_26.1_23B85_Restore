@interface CPListImageRowItem
+ (CGSize)maximumImageSize;
+ (void)_setMaximumImageSize:(CGSize)a3;
- (CPListImageRowItem)initWithCoder:(id)a3;
- (CPListImageRowItem)initWithText:(id)a3 elements:(id)a4 style:(unint64_t)a5;
- (CPListImageRowItem)initWithText:(id)a3 images:(id)a4 imageTitles:(id)a5;
- (CPListTemplate)listTemplate;
- (NSArray)gridImages;
- (NSArray)imageTitles;
- (id)_initWithText:(id)a3 elements:(id)a4 allowsMultipleLines:(BOOL)a5;
- (id)_populateElementsFromImages:(id)a3 andImageTitles:(id)a4;
- (void)_setNeedsUpdate;
- (void)encodeWithCoder:(id)a3;
- (void)setElements:(id)a3;
- (void)setEnabled:(BOOL)enabled;
- (void)setImageTitles:(id)a3;
- (void)setText:(NSString *)text;
- (void)updateImages:(NSArray *)gridImages;
@end

@implementation CPListImageRowItem

+ (void)_setMaximumImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v11 = *MEMORY[0x277D85DE8];
  v5 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349312;
    v8 = width;
    v9 = 2050;
    v10 = height;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_INFO, "CPListImageRowItem setting maxImageSize (%{public}f,%{public}f)", &v7, 0x16u);
  }

  _maximumImageSize_0_0 = *&width;
  _maximumImageSize_1_0 = *&height;
  v6 = *MEMORY[0x277D85DE8];
}

+ (CGSize)maximumImageSize
{
  v4 = *&_maximumImageSize_0_0;
  v5 = *&_maximumImageSize_1_0;
  if (*&_maximumImageSize_0_0 == *MEMORY[0x277CBF3A8] && *&_maximumImageSize_1_0 == *(MEMORY[0x277CBF3A8] + 8))
  {
    [CPListImageRowItemElement maximumImageSize:*&_maximumImageSize_0_0];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CPListImageRowItem)initWithText:(id)a3 images:(id)a4 imageTitles:(id)a5
{
  v8 = a3;
  v9 = [(CPListImageRowItem *)self _populateElementsFromImages:a4 andImageTitles:a5];
  v10 = [v9 copy];
  v11 = [(CPListImageRowItem *)self _initWithText:v8 elements:v10];

  return v11;
}

- (id)_initWithText:(id)a3 elements:(id)a4 allowsMultipleLines:(BOOL)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v33.receiver = self;
  v33.super_class = CPListImageRowItem;
  v11 = [(CPListImageRowItem *)&v33 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CCAD78] UUID];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_text, a3);
    v11->_enabled = 1;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        v18 = 0;
        do
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v29 + 1) + 8 * v18++) setRowItem:{v11, v29}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v16);
    }

    v19 = [v14 count];
    v20 = [v14 copy];
    v21 = v20;
    if (v19 > 0x18)
    {
      v23 = [(NSArray *)v20 subarrayWithRange:0, 24];
      elements = v11->_elements;
      v11->_elements = v23;
    }

    else
    {
      v22 = v11->_elements;
      v11->_elements = v20;
      v21 = v22;
    }

    v11->_style = 0;
    v25 = objc_opt_class();
    elementType = v11->_elementType;
    v11->_elementType = v25;

    v11->_allowsMultipleLines = a5;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v11;
}

- (CPListImageRowItem)initWithText:(id)a3 elements:(id)a4 style:(unint64_t)a5
{
  result = [(CPListImageRowItem *)self _initWithText:a3 elements:a4];
  if (result)
  {
    result->_style = a5;
  }

  return result;
}

- (CPListImageRowItem)initWithCoder:(id)a3
{
  v33[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = CPListImageRowItem;
  v5 = [(CPListImageRowItem *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowItemTextKey"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPListImageRowIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_enabled = [v4 decodeBoolForKey:@"kCPListImageRowItemEnabledKey"];
    v10 = MEMORY[0x277CBEB98];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v33[2] = objc_opt_class();
    v33[3] = objc_opt_class();
    v33[4] = objc_opt_class();
    v33[5] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:6];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"kCPListImageRowItemImageElementsKey"];
    elements = v5->_elements;
    v5->_elements = v13;

    v5->_style = [v4 decodeIntegerForKey:@"kCPListImageRowItemStyleKey"];
    v5->_allowsMultipleLines = [v4 decodeBoolForKey:@"kCPListImageRowItemAllowMultipleLinesKey"];
    if (![(NSArray *)v5->_elements count])
    {
      v15 = CarPlayFrameworkGeneralLogging();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [CPListImageRowItem initWithCoder:v15];
      }

      v16 = MEMORY[0x277CBEB98];
      v32[0] = objc_opt_class();
      v32[1] = objc_opt_class();
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
      v18 = [v16 setWithArray:v17];
      v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kCPListImageRowItemGridImagesKey"];

      v20 = [v19 na_map:&__block_literal_global_17];
      v21 = MEMORY[0x277CBEB98];
      v31[0] = objc_opt_class();
      v31[1] = objc_opt_class();
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
      v23 = [v21 setWithArray:v22];
      v24 = [v4 decodeObjectOfClasses:v23 forKey:@"kCPListImageRowItemImageTitlesKey"];

      v25 = [(CPListImageRowItem *)v5 _populateElementsFromImages:v20 andImageTitles:v24];
      v26 = CarPlayFrameworkGeneralLogging();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [(CPListImageRowItem *)v25 initWithCoder:v26];
      }

      v27 = v5->_elements;
      v5->_elements = v25;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CPListImageRowItem *)self text];
  [v7 encodeObject:v4 forKey:@"kCPListImageRowItemTextKey"];

  v5 = [(CPListImageRowItem *)self identifier];
  [v7 encodeObject:v5 forKey:@"kCPListImageRowIdentifierKey"];

  [v7 encodeBool:-[CPListImageRowItem isEnabled](self forKey:{"isEnabled"), @"kCPListImageRowItemEnabledKey"}];
  v6 = [(CPListImageRowItem *)self elements];
  [v7 encodeObject:v6 forKey:@"kCPListImageRowItemImageElementsKey"];

  [v7 encodeInteger:-[CPListImageRowItem style](self forKey:{"style"), @"kCPListImageRowItemStyleKey"}];
  [v7 encodeBool:-[CPListImageRowItem allowsMultipleLines](self forKey:{"allowsMultipleLines"), @"kCPListImageRowItemAllowMultipleLinesKey"}];
}

- (NSArray)gridImages
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CPListImageRowItem *)self elements];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) image];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSArray)imageTitles
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(CPListImageRowItem *)self elements];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())) && ([v9 title], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v11 = v10;
          [v3 addObject:v10];
        }

        else
        {
          [v3 addObject:&stru_2849E5A88];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(CPListImageRowItem *)self _setNeedsUpdate];
  }
}

- (void)_setNeedsUpdate
{
  v3 = [(CPListImageRowItem *)self listTemplate];
  [v3 _setItemNeedsUpdate:self];
}

- (void)setElements:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    if ([v4 count] >= 0x19)
    {
      v5 = [v4 subarrayWithRange:{0, 24}];

      v4 = v5;
    }

    v6 = [v4 firstObject];
    v7 = objc_opt_class();

    v8 = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = v4;
    v9 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v4);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if ([v13 isMemberOfClass:{v7, v21}])
          {
            [v8 addObject:v13];
          }
        }

        v10 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v14 = [v8 copy];
    elements = self->_elements;
    self->_elements = v14;

    v16 = [v8 firstObject];
    v17 = objc_opt_class();
    elementType = self->_elementType;
    self->_elementType = v17;

    [(CPListImageRowItem *)self _setNeedsUpdate];
  }

  else
  {
    v19 = self->_elements;
    self->_elements = MEMORY[0x277CBEBF8];

    [(CPListImageRowItem *)self _setNeedsUpdate];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setText:(NSString *)text
{
  v5 = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    objc_storeStrong(&self->_text, text);
    [(CPListImageRowItem *)self _setNeedsUpdate];
  }
}

- (void)updateImages:(NSArray *)gridImages
{
  v4 = gridImages;
  if ([(NSArray *)v4 count])
  {
    if ([(NSArray *)v4 count]>= 0x19)
    {
      v5 = [(NSArray *)v4 subarrayWithRange:0, 24];

      v4 = v5;
    }

    v6 = MEMORY[0x277CBEB18];
    v7 = [(CPListImageRowItem *)self elements];
    v8 = [v6 arrayWithArray:v7];

    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __35__CPListImageRowItem_updateImages___block_invoke;
    v16 = &unk_278A11800;
    v17 = self;
    v18 = v8;
    v9 = v8;
    [(NSArray *)v4 enumerateObjectsUsingBlock:&v13];
    v10 = [v9 copy];
    elements = self->_elements;
    self->_elements = v10;

    [(CPListImageRowItem *)self _setNeedsUpdate];
  }

  else
  {
    v12 = self->_elements;
    self->_elements = MEMORY[0x277CBEBF8];

    [(CPListImageRowItem *)self _setNeedsUpdate];
  }
}

void __35__CPListImageRowItem_updateImages___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) elements];
  v6 = [v5 count];

  v7 = *(a1 + 32);
  if (v6 <= a3)
  {
    v9 = objc_alloc_init(v7[7]);
    [v9 setImage:v10];
    [v9 setEnabled:1];
    [*(a1 + 40) addObject:v9];
  }

  else
  {
    v8 = [(Class *)v7 elements];
    v9 = [v8 objectAtIndexedSubscript:a3];

    if ([v9 isMemberOfClass:*(*(a1 + 32) + 56)])
    {
      [v9 setImage:v10];
    }
  }
}

- (void)setImageTitles:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __37__CPListImageRowItem_setImageTitles___block_invoke;
  v11 = &unk_278A11828;
  v12 = self;
  v13 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:&v8];

  v7 = [v6 copy];
  [(CPListImageRowItem *)self setElements:v7];

  [(CPListImageRowItem *)self _setNeedsUpdate];
}

void __37__CPListImageRowItem_setImageTitles___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (a3 > 0x17 || (v17 = v7, [*(a1 + 32) elements], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7 = v17, v9 <= a3))
  {
    *a4 = 1;
  }

  else
  {
    v10 = [*(a1 + 32) elements];
    v11 = [v10 objectAtIndexedSubscript:a3];

    v12 = off_278A0FE90;
    if ([v11 isMemberOfClass:objc_opt_class()] & 1) != 0 || (v12 = off_278A0FE68, (objc_msgSend(v11, "isMemberOfClass:", objc_opt_class())) || (v12 = off_278A0FE70, objc_msgSend(v11, "isMemberOfClass:", objc_opt_class())))
    {
      v13 = *v12;
      objc_opt_class();
      v14 = v11;
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      [v16 setTitle:v17];
    }

    [*(a1 + 40) addObject:v11];

    v7 = v17;
  }
}

- (id)_populateElementsFromImages:(id)a3 andImageTitles:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [v6 count];
  if (v8 | [v5 count])
  {
    v9 = 0;
    do
    {
      v10 = [CPListImageRowItemRowElement alloc];
      if ([v5 count] <= v9)
      {
        v11 = objc_opt_new();
      }

      else
      {
        v11 = [v5 objectAtIndex:v9];
      }

      v12 = v11;
      if ([v6 count] <= v9)
      {
        v14 = [(CPListImageRowItemRowElement *)v10 initWithImage:v12 title:0 subtitle:0];
      }

      else
      {
        v13 = [v6 objectAtIndex:v9];
        v14 = [(CPListImageRowItemRowElement *)v10 initWithImage:v12 title:v13 subtitle:0];
      }

      [v7 addObject:v14];
      ++v9;
      v15 = [v6 count];
      v16 = [v5 count];
      if (v15 <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }
    }

    while (v9 < v17);
  }

  v18 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  return v18;
}

- (CPListTemplate)listTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_listTemplate);

  return WeakRetained;
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_236ED4000, a2, OS_LOG_TYPE_DEBUG, "Setting elements: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end