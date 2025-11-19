@interface CPPointOfInterestTemplate
- (CPPointOfInterestTemplate)initWithCoder:(id)a3;
- (CPPointOfInterestTemplate)initWithTitle:(NSString *)title pointsOfInterest:(NSArray *)pointsOfInterest selectedIndex:(NSUInteger)selectedIndex;
- (NSArray)pointsOfInterest;
- (NSString)title;
- (id)_pointOfInterestWithIdentifier:(id)a3;
- (id)pointOfInterestDelegate;
- (void)encodeWithCoder:(id)a3;
- (void)handleActionForControlIdentifier:(id)a3;
- (void)handleDidSelectPointOfInterestWithIdentifier:(id)a3;
- (void)handleMapRegionDidChange:(id *)a3;
- (void)performUpdate;
- (void)setPointsOfInterest:(NSArray *)pointsOfInterest selectedIndex:(NSUInteger)selectedIndex;
- (void)setPointsOfInterest:(id)a3;
- (void)setSelectedIndex:(NSUInteger)selectedIndex;
- (void)setTitle:(NSString *)title;
@end

@implementation CPPointOfInterestTemplate

- (CPPointOfInterestTemplate)initWithTitle:(NSString *)title pointsOfInterest:(NSArray *)pointsOfInterest selectedIndex:(NSUInteger)selectedIndex
{
  v8 = title;
  v9 = pointsOfInterest;
  v18.receiver = self;
  v18.super_class = CPPointOfInterestTemplate;
  v10 = [(CPTemplate *)&v18 init];
  if (v10)
  {
    v11 = [CPPointsOfInterestEntity alloc];
    v12 = v9;
    if ([(NSArray *)v12 count]> 0xC)
    {
      v13 = [(NSArray *)v12 subarrayWithRange:0, 12];
    }

    else
    {
      v13 = v12;
    }

    v14 = v13;

    v15 = [(CPPointsOfInterestEntity *)v11 initWithTitle:v8 pointsOfInterest:v14];
    poiEntity = v10->_poiEntity;
    v10->_poiEntity = v15;

    v10->_selectedIndex = selectedIndex;
  }

  return v10;
}

- (CPPointOfInterestTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CPPointOfInterestTemplate;
  v5 = [(CPTemplate *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPEntity"];
    poiEntity = v5->_poiEntity;
    v5->_poiEntity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PointOfInterestTemplateSelectedIndex"];
    v5->_selectedIndex = [v8 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CPPointOfInterestTemplate;
  v4 = a3;
  [(CPTemplate *)&v7 encodeWithCoder:v4];
  v5 = [(CPPointOfInterestTemplate *)self poiEntity:v7.receiver];
  [v4 encodeObject:v5 forKey:@"CPEntity"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CPPointOfInterestTemplate selectedIndex](self, "selectedIndex")}];
  [v4 encodeObject:v6 forKey:@"PointOfInterestTemplateSelectedIndex"];
}

- (void)setTitle:(NSString *)title
{
  v8 = title;
  v4 = [(CPPointOfInterestTemplate *)self poiEntity];
  v5 = [v4 title];
  v6 = [v5 isEqualToString:v8];

  if ((v6 & 1) == 0)
  {
    v7 = [(CPPointOfInterestTemplate *)self poiEntity];
    [v7 setTitle:v8];

    [(CPTemplate *)self setNeedsUpdate];
  }
}

- (NSString)title
{
  v2 = [(CPPointOfInterestTemplate *)self poiEntity];
  v3 = [v2 title];

  return v3;
}

- (void)setPointsOfInterest:(NSArray *)pointsOfInterest selectedIndex:(NSUInteger)selectedIndex
{
  v10 = pointsOfInterest;
  if ([(NSArray *)v10 count]> 0xC)
  {
    v6 = [(NSArray *)v10 subarrayWithRange:0, 12];
  }

  else
  {
    v6 = v10;
  }

  v7 = v6;

  if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL && [(NSArray *)v7 count]<= selectedIndex)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:{@"Selected index %ld is beyond array bounds [0..%ld]", selectedIndex, -[NSArray count](v7, "count")}];
  }

  if ([(CPPointOfInterestTemplate *)self selectedIndex]!= selectedIndex || ([(CPPointOfInterestTemplate *)self pointsOfInterest], v8 = objc_claimAutoreleasedReturnValue(), v9 = BSEqualArrays(), v8, (v9 & 1) == 0))
  {
    [(CPPointOfInterestTemplate *)self setPointsOfInterest:v7];
    [(CPPointOfInterestTemplate *)self setSelectedIndex:selectedIndex];
    [(CPTemplate *)self setNeedsUpdate];
  }
}

- (void)setSelectedIndex:(NSUInteger)selectedIndex
{
  if (self->_selectedIndex != selectedIndex)
  {
    self->_selectedIndex = selectedIndex;
    [(CPTemplate *)self setNeedsUpdate];
  }
}

- (void)setPointsOfInterest:(id)a3
{
  v4 = a3;
  v5 = [(CPPointOfInterestTemplate *)self entity];
  [v5 setPointsOfInterest:v4];

  [(CPTemplate *)self setNeedsUpdate];
}

- (NSArray)pointsOfInterest
{
  v2 = [(CPPointOfInterestTemplate *)self poiEntity];
  v3 = [v2 pointsOfInterest];

  return v3;
}

- (void)performUpdate
{
  v8.receiver = self;
  v8.super_class = CPPointOfInterestTemplate;
  [(CPTemplate *)&v8 performUpdate];
  objc_initWeak(&location, self);
  v3 = [(CPTemplate *)self templateProviderFuture];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__CPPointOfInterestTemplate_performUpdate__block_invoke;
  v5[3] = &unk_278A11790;
  objc_copyWeak(&v6, &location);
  v4 = [v3 addSuccessBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __42__CPPointOfInterestTemplate_performUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 updateEntityTemplate:WeakRetained withProxyDelegate:WeakRetained];
}

- (void)handleMapRegionDidChange:(id *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v12 = [(CPPointOfInterestTemplate *)self pointOfInterestDelegate];
  [v12 pointOfInterestTemplate:self didChangeMapRegion:{v10, v9, v8, v7}];
}

- (void)handleDidSelectPointOfInterestWithIdentifier:(id)a3
{
  v8 = a3;
  v4 = [(CPPointOfInterestTemplate *)self pointOfInterestDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CPPointOfInterestTemplate *)self _pointOfInterestWithIdentifier:v8];
    if (v6)
    {
      v7 = [(CPPointOfInterestTemplate *)self pointOfInterestDelegate];
      [v7 pointOfInterestTemplate:self didSelectPointOfInterest:v6];
    }
  }

  MEMORY[0x2821F9730]();
}

- (id)_pointOfInterestWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  v20 = 0;
  v5 = [(CPPointOfInterestTemplate *)self pointsOfInterest];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__CPPointOfInterestTemplate__pointOfInterestWithIdentifier___block_invoke;
  v12[3] = &unk_278A117B8;
  v6 = v4;
  v13 = v6;
  v14 = &v15;
  [v5 enumerateObjectsUsingBlock:v12];

  v7 = v16[5];
  if (!v7)
  {
    v8 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_236ED4000, v8, OS_LOG_TYPE_INFO, "Failed to identify a local point of interest for %@", buf, 0xCu);
    }

    v7 = v16[5];
  }

  v9 = v7;

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __60__CPPointOfInterestTemplate__pointOfInterestWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)handleActionForControlIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__CPPointOfInterestTemplate_handleActionForControlIdentifier___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __62__CPPointOfInterestTemplate_handleActionForControlIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) entity];
  v3 = [v2 objectForIdentifier:*(a1 + 40)];

  if (v3)
  {
    v4 = v3;
    v5 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138412802;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_INFO, "%@: Activated button: %@ for control identifier: %@", buf, 0x20u);
    }

    [v4 handlePrimaryAction];
  }

  else
  {
    v8 = *(a1 + 40);
    v10.receiver = *(a1 + 32);
    v10.super_class = CPPointOfInterestTemplate;
    objc_msgSendSuper2(&v10, sel_handleActionForControlIdentifier_, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)pointOfInterestDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pointOfInterestDelegate);

  return WeakRetained;
}

@end