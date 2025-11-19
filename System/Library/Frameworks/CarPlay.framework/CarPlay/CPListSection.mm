@interface CPListSection
+ (id)allowedItemClasses;
- (CPListSection)initWithCoder:(id)a3;
- (CPListSection)initWithItems:(NSArray *)items header:(NSString *)header headerSubtitle:(NSString *)headerSubtitle headerImage:(UIImage *)headerImage headerButton:(CPButton *)headerButton sectionIndexTitle:(NSString *)sectionIndexTitle;
- (CPListSection)initWithItems:(NSArray *)items header:(NSString *)header sectionIndexTitle:(NSString *)sectionIndexTitle;
- (CPListTemplate)listTemplate;
- (NSUInteger)indexOfItem:(id)item;
- (id)itemAtIndex:(NSUInteger)index;
- (int64_t)numberOfItems;
- (void)_commonInitWithItems:(id)a3 header:(id)a4 headerSubtitle:(id)a5 headerImage:(id)a6 headerButton:(id)a7 sectionIndexTitle:(id)a8;
- (void)encodeWithCoder:(id)a3;
- (void)replaceItemAtIndex:(unint64_t)a3 withItem:(id)a4;
- (void)replaceItems:(id)a3;
- (void)setHeaderImage:(UIImage *)headerImage;
@end

@implementation CPListSection

- (CPListSection)initWithItems:(NSArray *)items header:(NSString *)header sectionIndexTitle:(NSString *)sectionIndexTitle
{
  v8 = items;
  v9 = header;
  v10 = sectionIndexTitle;
  v13.receiver = self;
  v13.super_class = CPListSection;
  v11 = [(CPListSection *)&v13 init];
  if (v11)
  {
    v11->_sectionHeaderStyle = [(NSString *)v9 length]!= 0;
    [(CPListSection *)v11 _commonInitWithItems:v8 header:v9 headerSubtitle:0 headerImage:0 headerButton:0 sectionIndexTitle:v10];
  }

  return v11;
}

- (CPListSection)initWithItems:(NSArray *)items header:(NSString *)header headerSubtitle:(NSString *)headerSubtitle headerImage:(UIImage *)headerImage headerButton:(CPButton *)headerButton sectionIndexTitle:(NSString *)sectionIndexTitle
{
  v14 = items;
  v15 = header;
  v16 = headerSubtitle;
  v17 = headerImage;
  v18 = headerButton;
  v19 = sectionIndexTitle;
  v23.receiver = self;
  v23.super_class = CPListSection;
  v20 = [(CPListSection *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_sectionHeaderStyle = 2;
    [(CPListSection *)v20 _commonInitWithItems:v14 header:v15 headerSubtitle:v16 headerImage:v17 headerButton:v18 sectionIndexTitle:v19];
  }

  return v21;
}

- (void)_commonInitWithItems:(id)a3 header:(id)a4 headerSubtitle:(id)a5 headerImage:(id)a6 headerButton:(id)a7 sectionIndexTitle:(id)a8
{
  v16 = a3;
  v17 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v20 = a8;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __103__CPListSection__commonInitWithItems_header_headerSubtitle_headerImage_headerButton_sectionIndexTitle___block_invoke;
  v24[3] = &unk_278A10F28;
  v24[4] = self;
  v24[5] = a2;
  [v16 enumerateObjectsUsingBlock:v24];
  v18 = [MEMORY[0x277CCAD78] UUID];
  identifier = self->_identifier;
  self->_identifier = v18;

  objc_storeStrong(&self->_items, a3);
  objc_storeStrong(&self->_header, a4);
  objc_storeStrong(&self->_sectionIndexTitle, a8);
  objc_storeStrong(&self->_headerImage, a6);
  objc_storeStrong(&self->_headerSubtitle, a5);
  objc_storeStrong(&self->_headerButton, a7);
  if (![(NSString *)self->_headerSubtitle length]&& !self->_headerImage && !self->_headerButton)
  {
    self->_sectionHeaderStyle = [v17 length] != 0;
  }
}

void __103__CPListSection__commonInitWithItems_header_headerSubtitle_headerImage_headerButton_sectionIndexTitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() allowedItemClasses];
  v6 = *(a1 + 40);
  v10 = v3;
  if (([v5 containsObject:object_getClass(v10)] & 1) == 0)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = NSStringFromSelector(v6);
    [v7 raise:v8 format:{@"Unsupported object %@ passed to %@. Allowed classes: %@", v10, v9, v5, 0}];
  }
}

- (int64_t)numberOfItems
{
  v2 = [(CPListSection *)self items];
  v3 = [v2 count];

  return v3;
}

- (id)itemAtIndex:(NSUInteger)index
{
  v4 = [(CPListSection *)self items];
  v5 = [v4 objectAtIndexedSubscript:index];

  return v5;
}

- (NSUInteger)indexOfItem:(id)item
{
  v4 = item;
  if ([v4 conformsToProtocol:&unk_284A1A6E0])
  {
    v5 = [v4 identifier];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CPListSection *)self items];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __29__CPListSection_indexOfItem___block_invoke;
  v10[3] = &unk_278A10F50;
  v11 = v5;
  v7 = v5;
  v8 = [v6 indexOfObjectPassingTest:v10];

  return v8;
}

uint64_t __29__CPListSection_indexOfItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_284A1A6E0])
  {
    v4 = [v3 identifier];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) isEqual:v4];

  return v5;
}

- (void)replaceItemAtIndex:(unint64_t)a3 withItem:(id)a4
{
  v7 = a4;
  v8 = [objc_opt_class() allowedItemClasses];
  v17 = v7;
  if (([v8 containsObject:object_getClass(v17)] & 1) == 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE660];
    v11 = NSStringFromSelector(a2);
    [v9 raise:v10 format:{@"Unsupported object %@ passed to %@. Allowed classes: %@", v17, v11, v8, 0}];
  }

  v12 = MEMORY[0x277CBEB18];
  v13 = [(CPListSection *)self items];
  v14 = [v12 arrayWithArray:v13];

  [v14 replaceObjectAtIndex:a3 withObject:v17];
  v15 = [v14 copy];
  items = self->_items;
  self->_items = v15;
}

- (void)replaceItems:(id)a3
{
  v4 = [a3 copy];
  items = self->_items;
  self->_items = v4;

  MEMORY[0x2821F96F8]();
}

- (CPListSection)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CPListSection;
  v5 = [(CPListSection *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPSectionIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [objc_opt_class() allowedItemClasses];
    v12 = [v10 setByAddingObjectsFromSet:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"kCPSectionItemsKey"];
    items = v5->_items;
    v5->_items = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPSectionHeaderKey"];
    header = v5->_header;
    v5->_header = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPSectionIndexTitleKey"];
    sectionIndexTitle = v5->_sectionIndexTitle;
    v5->_sectionIndexTitle = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPSectionHeaderSubtitleKey"];
    headerSubtitle = v5->_headerSubtitle;
    v5->_headerSubtitle = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPSectionHeaderImageKey"];
    headerImage = v5->_headerImage;
    v5->_headerImage = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPSectionHeaderButtonKey"];
    headerButton = v5->_headerButton;
    v5->_headerButton = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPSectionHeaderStyleKey"];
    v5->_sectionHeaderStyle = [v25 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPListSection *)self identifier];
  [v4 encodeObject:v5 forKey:@"kCPSectionIdentifierKey"];

  v6 = [(CPListSection *)self items];
  [v4 encodeObject:v6 forKey:@"kCPSectionItemsKey"];

  v7 = [(CPListSection *)self header];
  [v4 encodeObject:v7 forKey:@"kCPSectionHeaderKey"];

  v8 = [(CPListSection *)self sectionIndexTitle];
  [v4 encodeObject:v8 forKey:@"kCPSectionIndexTitleKey"];

  v9 = [(CPListSection *)self headerSubtitle];
  [v4 encodeObject:v9 forKey:@"kCPSectionHeaderSubtitleKey"];

  v10 = [(CPListSection *)self headerImage];
  [v4 encodeObject:v10 forKey:@"kCPSectionHeaderImageKey"];

  v11 = [(CPListSection *)self headerButton];
  [v4 encodeObject:v11 forKey:@"kCPSectionHeaderButtonKey"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CPListSection sectionHeaderStyle](self, "sectionHeaderStyle")}];
  [v4 encodeObject:v12 forKey:@"kCPSectionHeaderStyleKey"];
}

- (void)setHeaderImage:(UIImage *)headerImage
{
  v5 = headerImage;
  v11 = v5;
  if (!self->_sectionHeaderStyle)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Setting a header image requires section header text to be set."];
    goto LABEL_15;
  }

  v6 = self->_headerImage;
  if (!v5 || v6)
  {
    if (v5 || !v6)
    {
      objc_storeStrong(&self->_headerImage, headerImage);
      goto LABEL_14;
    }

    self->_headerImage = 0;

    if ([(NSString *)self->_headerSubtitle length]|| self->_headerImage || self->_headerButton)
    {
      goto LABEL_14;
    }

    v7 = [(NSString *)self->_header length]!= 0;
  }

  else
  {
    objc_storeStrong(&self->_headerImage, headerImage);
    v7 = 2;
  }

  self->_sectionHeaderStyle = v7;
LABEL_14:
  WeakRetained = objc_loadWeakRetained(&self->_listTemplate);
  v9 = self->_headerImage;
  v10 = [(CPListSection *)self identifier];
  [WeakRetained updateHeaderImage:v9 forSectionIdentifier:v10];

LABEL_15:
}

+ (id)allowedItemClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (CPListTemplate)listTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_listTemplate);

  return WeakRetained;
}

@end