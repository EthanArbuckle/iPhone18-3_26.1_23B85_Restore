@interface APUIAppIconGridLayoutProvider
- (APUIAppIconGridLayoutProvider)initWithLargeIconsEnabled:(BOOL)enabled;
- (id)layoutForIconLocation:(id)location;
@end

@implementation APUIAppIconGridLayoutProvider

- (APUIAppIconGridLayoutProvider)initWithLargeIconsEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = APUIAppIconGridLayoutProvider;
  result = [(APUIAppIconGridLayoutProvider *)&v5 init];
  if (result)
  {
    result->_largeIconsEnabled = enabled;
  }

  return result;
}

- (id)layoutForIconLocation:(id)location
{
  locationCopy = location;
  if ([(APUIAppIconGridLayoutProvider *)self isLargeIconsEnabled])
  {
    v5 = 24;
  }

  else
  {
    v5 = 0;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v6 = getSBHDefaultIconListLayoutProviderClass_softClass;
  v37 = getSBHDefaultIconListLayoutProviderClass_softClass;
  if (!getSBHDefaultIconListLayoutProviderClass_softClass)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getSBHDefaultIconListLayoutProviderClass_block_invoke;
    v32 = &unk_278C90BC0;
    v33 = &v34;
    __getSBHDefaultIconListLayoutProviderClass_block_invoke(&v29);
    v6 = v35[3];
  }

  v7 = v6;
  _Block_object_dispose(&v34, 8);
  v8 = [[v6 alloc] initWithLayoutOptions:v5];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v9 = getSBIconLocationRootSymbolLoc_ptr;
  v37 = getSBIconLocationRootSymbolLoc_ptr;
  if (!getSBIconLocationRootSymbolLoc_ptr)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getSBIconLocationRootSymbolLoc_block_invoke;
    v32 = &unk_278C90BC0;
    v33 = &v34;
    v10 = SpringBoardHomeLibrary();
    v11 = dlsym(v10, "SBIconLocationRoot");
    *(v33[1] + 24) = v11;
    getSBIconLocationRootSymbolLoc_ptr = *(v33[1] + 24);
    v9 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v9)
  {
    v28 = [APUIAppIconGridLayoutProvider layoutForIconLocation:];
    _Block_object_dispose(&v34, 8);
    _Unwind_Resume(v28);
  }

  v12 = [v8 makeLayoutForIconLocation:*v9];
  layoutConfiguration = [v12 layoutConfiguration];
  [layoutConfiguration setNumberOfPortraitColumns:4];

  layoutConfiguration2 = [v12 layoutConfiguration];
  [layoutConfiguration2 setNumberOfLandscapeColumns:4];

  layoutConfiguration3 = [v12 layoutConfiguration];
  [layoutConfiguration3 setNumberOfPortraitRows:2];

  layoutConfiguration4 = [v12 layoutConfiguration];
  [layoutConfiguration4 setNumberOfLandscapeRows:2];

  layoutConfiguration5 = [v12 layoutConfiguration];
  [layoutConfiguration5 portraitLayoutInsets];
  v19 = v18;
  v21 = v20;

  if (self->_mode == 1)
  {
    v21 = 12.0;
    v19 = 12.0;
    v22 = 12.0;
  }

  else
  {
    v22 = 0.0;
  }

  layoutConfiguration6 = [v12 layoutConfiguration];
  [layoutConfiguration6 setPortraitLayoutInsets:{v22, v19, v22, v21}];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    layoutConfiguration7 = [v12 layoutConfiguration];
    [layoutConfiguration7 setLandscapeLayoutInsets:{12.0, 12.0, 12.0, 12.0}];
  }

  return v12;
}

- (uint64_t)layoutForIconLocation:.cold.1()
{
  dlerror();
  abort_report_np();
  return __getSBHDefaultIconListLayoutProviderClass_block_invoke_cold_1();
}

@end