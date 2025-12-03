@interface NanoCompassBaseRichView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)_applyFilters:(id)filters toViews:(id)views;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NanoCompassBaseRichView

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v7 = objc_msgSend_filterProvider(self, a2, v3, v4);
  v25 = objc_msgSend_filtersForView_style_fraction_(v7, v8, self, 2, fraction);

  v12 = objc_msgSend_monochromeAccentViews(self, v9, v10, v11);
  objc_msgSend__applyFilters_toViews_(self, v13, v25, v12);

  v17 = objc_msgSend_filterProvider(self, v14, v15, v16);
  v19 = objc_msgSend_filtersForView_style_fraction_(v17, v18, self, 0, fraction);

  v23 = objc_msgSend_monochromeOtherViews(self, v20, v21, v22);
  objc_msgSend__applyFilters_toViews_(self, v24, v19, v23);
}

- (void)updateMonochromeColor
{
  v5 = objc_msgSend_filterProvider(self, a2, v2, v3);
  v23 = objc_msgSend_filtersForView_style_(v5, v6, self, 2);

  v10 = objc_msgSend_monochromeAccentViews(self, v7, v8, v9);
  objc_msgSend__applyFilters_toViews_(self, v11, v23, v10);

  v15 = objc_msgSend_filterProvider(self, v12, v13, v14);
  v17 = objc_msgSend_filtersForView_style_(v15, v16, self, 0);

  v21 = objc_msgSend_monochromeOtherViews(self, v18, v19, v20);
  objc_msgSend__applyFilters_toViews_(self, v22, v17, v21);
}

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = NanoCompassBaseRichView;
  v6 = [(NanoCompassBaseRichView *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    v11 = objc_msgSend_initWithUUIDString_(v8, v9, @"FE1BCD7B-63A2-4EB3-9EF5-D6A9E506101E", v10);
    v14 = objc_msgSend_supportsCapability_(deviceCopy, v12, v11, v13);

    v7->_supportsGossamer = v14;
  }

  return v7;
}

- (void)_applyFilters:(id)filters toViews:(id)views
{
  filtersCopy = filters;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_23BD3AC64;
  v9[3] = &unk_278B942B8;
  v10 = filtersCopy;
  v6 = filtersCopy;
  objc_msgSend_enumerateObjectsUsingBlock_(views, v7, v9, v8);
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end