@interface ACUIIdentityPickerViewController
- (BOOL)_allowIdentitySelection;
- (BOOL)_isPropertyEnabled;
- (__SecIdentity)_identityToAutoselectWithEnabled:(BOOL)a3;
- (__SecIdentity)_selectedIdentity;
- (id)_identitySpecifiers;
- (id)_specifiersForIdentities:(id)a3;
- (id)_valueForSwitchSpecifier:(id)a3;
- (id)specifiers;
- (void)_finishedFetchingIdentities:(id)a3;
- (void)_setPropertyEnabled:(BOOL)a3 identity:(__SecIdentity *)a4;
- (void)_setValue:(id)a3 forSwitchSpecifier:(id)a4;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation ACUIIdentityPickerViewController

- (void)viewDidLoad
{
  v48 = self;
  v47 = a2;
  v46 = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) target];
  v45 = MEMORY[0x277D82BE0](&unk_285035A60);
  v28 = 0;
  if (v46)
  {
    v28 = [v46 conformsToProtocol:v45];
  }

  if ((v28 & 1) == 0)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    v26 = NSStringFromProtocol(v45);
    [v27 handleFailureInMethod:v47 object:v48 file:@"ACUIIdentityPickerViewController.m" lineNumber:126 description:{@"target must conform to %@", v26}];
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
  }

  objc_storeWeak(&v48->_delegate, v46);
  v44 = [*(&v48->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) propertyForKey:*MEMORY[0x277D3FFF0]];
  isKindOfClass = 0;
  if (v44)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if ((isKindOfClass & 1) == 0)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:v47 object:v48 file:@"ACUIIdentityPickerViewController.m" lineNumber:130 description:{@"%@ must be an NSString", v44}];
    MEMORY[0x277D82BD8](v24);
  }

  v2 = [v44 copy];
  property = v48->_property;
  v48->_property = v2;
  MEMORY[0x277D82BD8](property);
  v43 = 0;
  WeakRetained = objc_loadWeakRetained(&v48->_delegate);
  v23 = objc_opt_respondsToSelector();
  MEMORY[0x277D82BD8](WeakRetained);
  if (v23)
  {
    v21 = objc_loadWeakRetained(&v48->_delegate);
    v43 = [v21 configurationOptionsForIdentityPickerController:v48];
    MEMORY[0x277D82BD8](v21);
  }

  else
  {
    v19 = objc_loadWeakRetained(&v48->_delegate);
    v20 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v19);
    if (v20)
    {
      v17 = objc_loadWeakRetained(&v48->_delegate);
      v18 = [v17 allowEditingForIdentityPickerController:v48];
      MEMORY[0x277D82BD8](v17);
      v42 = v18;
      v4 = 3;
      if ((v18 & 1) == 0)
      {
        v4 = 0;
      }

      v43 = v4;
    }
  }

  v48->_userInteractiveSwitch = (v43 & 1) != 0;
  v48->_userInteractiveIdentityList = (v43 & 2) != 0;
  v48->_allowIdentitySelectionForDisabledSwitch = (v43 & 4) != 0;
  v13 = objc_loadWeakRetained(&v48->_delegate);
  v12 = [v13 emailAddressesForIdentityPickerController:v48];
  v5 = [v12 copy];
  emailAddresses = v48->_emailAddresses;
  v48->_emailAddresses = v5;
  MEMORY[0x277D82BD8](emailAddresses);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v16 = [(ACUIIdentityPickerViewController *)v48 table];
  v14 = objc_opt_class();
  v15 = +[(PSTableCell *)ACUIIdentityPickerCell];
  [v16 registerClass:v14 forCellReuseIdentifier:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v41.receiver = v48;
  v41.super_class = ACUIIdentityPickerViewController;
  [(ACUIIdentityPickerViewController *)&v41 viewDidLoad];
  if (v48->_userInteractiveIdentityList || v48->_userInteractiveSwitch)
  {
    queue = dispatch_get_global_queue(0, 0);
    v35 = MEMORY[0x277D85DD0];
    v36 = -1073741824;
    v37 = 0;
    v38 = __47__ACUIIdentityPickerViewController_viewDidLoad__block_invoke;
    v39 = &unk_278BFA730;
    v40 = MEMORY[0x277D82BE0](v48);
    dispatch_async(queue, &v35);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v40, 0);
  }

  else
  {
    v34 = [(ACUIIdentityPickerViewController *)v48 _selectedIdentity];
    if ([(ACUIIdentityPickerViewController *)v48 _isPropertyEnabled])
    {
      v10 = v48;
      v31 = 0;
      if (v34)
      {
        v32 = [MEMORY[0x277CBEA60] arrayWithObject:v34];
        v31 = 1;
        v9 = v32;
      }

      else
      {
        v9 = 0;
      }

      [(ACUIIdentityPickerViewController *)v10 _finishedFetchingIdentities:v9];
      if (v31)
      {
        MEMORY[0x277D82BD8](v32);
      }
    }

    else
    {
      v30 = [(ACUIIdentityPickerViewController *)v48 specifierForID:@"CertificatesGroup"];
      v29 = 0;
      if (v30)
      {
        [(ACUIIdentityPickerViewController *)v48 getGroup:&v29 row:0 ofSpecifier:v30];
        v7 = v48;
        v8 = [(ACUIIdentityPickerViewController *)v48 specifiersInGroup:v29];
        [ACUIIdentityPickerViewController removeContiguousSpecifiers:v7 animated:"removeContiguousSpecifiers:animated:"];
        MEMORY[0x277D82BD8](v8);
        [(ACUIIdentityPickerViewController *)v48 removeSpecifier:v30];
      }

      objc_storeStrong(&v30, 0);
    }
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
}

void __47__ACUIIdentityPickerViewController_viewDidLoad__block_invoke(void *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  WeakRetained = objc_loadWeakRetained((a1[4] + 1456));
  v10[0] = [WeakRetained copyIdentitiesForIdentityPickerController:a1[4]];
  MEMORY[0x277D82BD8](WeakRetained);
  v9 = _SortIdentities(v10[0], *(a1[4] + 1480));
  v3 = MEMORY[0x277D85CD0];
  v1 = MEMORY[0x277D85CD0];
  queue = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__ACUIIdentityPickerViewController_viewDidLoad__block_invoke_2;
  v6[3] = &unk_278BFA6B0;
  v7 = MEMORY[0x277D82BE0](a1[4]);
  v8 = MEMORY[0x277D82BE0](v9);
  dispatch_async(queue, v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
}

- (id)specifiers
{
  v43 = self;
  v42[1] = a2;
  if (!*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    WeakRetained = objc_loadWeakRetained(&v43->_delegate);
    v37 = v42;
    v42[0] = [WeakRetained localizedSwitchNameForIdentityPickerController:v43];
    MEMORY[0x277D82BD8](WeakRetained);
    v22 = 0x277D3F000uLL;
    v38 = 0;
    v2 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v42[0] target:v43 set:sel__setValue_forSwitchSpecifier_ get:sel__valueForSwitchSpecifier_ detail:0 cell:? edit:?];
    v36 = &v41;
    v41 = v2;
    v15 = v2;
    v16 = [(ACUIIdentityPickerViewController *)v43 property];
    v33 = MEMORY[0x277D3FFF0];
    v3 = *MEMORY[0x277D3FFF0];
    [v15 setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v16);
    v21 = MEMORY[0x277D3FFB8];
    [v41 setProperty:@"Switch" forKey:*MEMORY[0x277D3FFB8]];
    v31 = MEMORY[0x277D3FF38];
    v4 = *MEMORY[0x277D3FF38];
    v32 = @"NO";
    [v41 setProperty:? forKey:?];
    v18 = *(v22 + 2776);
    v23 = 0x277CCA000uLL;
    v17 = MEMORY[0x277CCA8D8];
    v24 = 0x278BF9000uLL;
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = &stru_2850054A0;
    v27 = @"Localizable";
    v19 = [v20 localizedStringForKey:@"CERTIFICATES" value:? table:?];
    v5 = [v18 groupSpecifierWithName:?];
    v35 = &v40;
    v40 = v5;
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    [v40 setProperty:@"CertificatesGroup" forKey:*v21];
    v28 = *(v22 + 2776);
    v25 = *(v23 + 2264);
    v6 = *(v24 + 3456);
    v30 = [v25 bundleForClass:objc_opt_class()];
    v29 = [v30 localizedStringForKey:@"LOADING" value:v26 table:v27];
    v7 = [v28 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    v34 = &v39;
    v39 = v7;
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    [v39 setProperty:v32 forKey:*v31];
    [v39 setProperty:@"CertificatesLoading" forKey:*v33];
    v8 = objc_alloc(MEMORY[0x277CBEA60]);
    v9 = [v8 initWithObjects:{v41, v40, v39, 0}];
    v10 = (v43 + *MEMORY[0x277D3FC48]);
    v11 = *v10;
    *v10 = v9;
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(v34, v38);
    objc_storeStrong(v35, v38);
    objc_storeStrong(v36, v38);
    objc_storeStrong(v37, v38);
  }

  v12 = *(&v43->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);

  return v12;
}

- (void)_finishedFetchingIdentities:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v14->_identities, location[0]);
  v12 = [(ACUIIdentityPickerViewController *)v14 _specifiersForIdentities:location[0]];
  v11 = [(ACUIIdentityPickerViewController *)v14 _isPropertyEnabled];
  v10 = [(ACUIIdentityPickerViewController *)v14 _identityToAutoselectWithEnabled:v11];
  if (v14->_userInteractiveIdentityList && !v10)
  {
    v11 = 0;
    if (v14->_allowIdentitySelectionForDisabledSwitch)
    {
      v10 = [(ACUIIdentityPickerViewController *)v14 _selectedIdentity];
    }
  }

  [(ACUIIdentityPickerViewController *)v14 _setPropertyEnabled:v11 identity:v10];
  v9 = [(ACUIIdentityPickerViewController *)v14 specifierForID:@"Switch"];
  if (v14->_userInteractiveSwitch && [location[0] count])
  {
    [v9 setProperty:@"YES" forKey:*MEMORY[0x277D3FF38]];
  }

  v8 = 0;
  [(ACUIIdentityPickerViewController *)v14 beginUpdates];
  [(ACUIIdentityPickerViewController *)v14 reloadSpecifier:v9 animated:1];
  v4 = v14;
  v5 = [(ACUIIdentityPickerViewController *)v14 specifierForID:@"CertificatesGroup"];
  [ACUIIdentityPickerViewController getGroup:v4 row:"getGroup:row:ofSpecifier:" ofSpecifier:v3];
  MEMORY[0x277D82BD8](v5);
  v6 = v14;
  v7 = [(ACUIIdentityPickerViewController *)v14 specifiersInGroup:v8];
  [ACUIIdentityPickerViewController replaceContiguousSpecifiers:v6 withSpecifiers:"replaceContiguousSpecifiers:withSpecifiers:animated:" animated:?];
  MEMORY[0x277D82BD8](v7);
  [(ACUIIdentityPickerViewController *)v14 endUpdates];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)_specifiersForIdentities:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v39 = self;
  v38 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = MEMORY[0x277D3FAD8];
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v24 = [v25 localizedStringForKey:@"CERTIFICATES" value:&stru_2850054A0 table:@"Localizable"];
  v35 = [v23 groupSpecifierWithName:?];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  [v35 setProperty:@"CertificatesGroup" forKey:*MEMORY[0x277D3FFB8]];
  [v36 addObject:v35];
  if ([location count])
  {
    v34 = [(ACUIIdentityPickerViewController *)v39 _selectedIdentity];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](location);
    v22 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
    if (v22)
    {
      v18 = *__b[2];
      v19 = 0;
      v20 = v22;
      while (1)
      {
        v17 = v19;
        if (*__b[2] != v18)
        {
          objc_enumerationMutation(obj);
        }

        identityRef = *(__b[1] + 8 * v19);
        certificateRef = 0;
        v30 = SecIdentityCopyCertificate(identityRef, &certificateRef);
        if (v30)
        {
          v16 = NSStringFromSelector(v38);
          NSLog(&cfstr_Secidentitycop.isa, v16, v30);
          MEMORY[0x277D82BD8](v16);
        }

        else if (certificateRef)
        {
          v41 = SecCertificateCopySubjectSummary(certificateRef);
          v15 = v41;
          v3 = v41;
          v29 = v15;
          if (v29)
          {
            v28 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v29 target:v39 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
            v42[0] = @"Identity";
            v43[0] = identityRef;
            v42[1] = @"identitySelected";
            v14 = [MEMORY[0x277CCABB0] numberWithBool:{_SecIdentityEqual(v34, identityRef)}];
            v43[1] = v14;
            v42[2] = @"allowSelection";
            v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACUIIdentityPickerViewController _allowIdentitySelection](v39, "_allowIdentitySelection")}];
            v43[2] = v13;
            v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
            [v28 setUserInfo:?];
            MEMORY[0x277D82BD8](v12);
            MEMORY[0x277D82BD8](v13);
            MEMORY[0x277D82BD8](v14);
            [v28 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
            [v36 addObject:v28];
            objc_storeStrong(&v28, 0);
          }

          else
          {
            v40 = SecCertificateCopyProperties();
            v10 = v40;
            v4 = v40;
            v27 = v10;
            v11 = NSStringFromSelector(v38);
            NSLog(&cfstr_NoSummaryForCe.isa, v11, v27);
            MEMORY[0x277D82BD8](v11);
            objc_storeStrong(&v27, 0);
          }

          CFRelease(certificateRef);
          objc_storeStrong(&v29, 0);
        }

        ++v19;
        if (v17 + 1 >= v20)
        {
          v19 = 0;
          v20 = [obj countByEnumeratingWithState:__b objects:v44 count:16];
          if (!v20)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
  }

  else
  {
    v7 = MEMORY[0x277D3FAD8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"NO_IDENTITIES_EXPLANATION" value:&stru_2850054A0 table:@"Localizable"];
    v26 = [v7 preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    [v26 setProperty:@"NO" forKey:*MEMORY[0x277D3FF38]];
    [v36 addObject:v26];
    objc_storeStrong(&v26, 0);
  }

  v6 = MEMORY[0x277D82BE0](v36);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_identitySpecifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  v14[1] = a2;
  v14[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(&v15->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]));
  v11 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v8);
      v4 = [v13 userInfo];
      v5 = [v4 objectForKey:@"Identity"];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v4);
      if (v5)
      {
        [v14[0] addObject:v13];
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v3 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];

  return v3;
}

- (__SecIdentity)_identityToAutoselectWithEnabled:(BOOL)a3
{
  v4 = [(ACUIIdentityPickerViewController *)self _selectedIdentity];
  if (self->_userInteractiveIdentityList && a3 && !v4 && [(NSArray *)self->_identities count])
  {
    return [(NSArray *)self->_identities objectAtIndex:0];
  }

  return v4;
}

- (void)_setValue:(id)a3 forSwitchSpecifier:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = [location[0] BOOLValue];
  v17 = [(ACUIIdentityPickerViewController *)v21 _identityToAutoselectWithEnabled:v18 & 1];
  [(ACUIIdentityPickerViewController *)v21 _setPropertyEnabled:v18 & 1 identity:v17];
  v16 = [(ACUIIdentityPickerViewController *)v21 _allowIdentitySelection];
  memset(__b, 0, sizeof(__b));
  v11 = [(ACUIIdentityPickerViewController *)v21 _identitySpecifiers];
  v12 = [v11 countByEnumeratingWithState:__b objects:v22 count:16];
  if (v12)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v12;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(__b[1] + 8 * v8);
      v4 = [v15 userInfo];
      v13 = [v4 mutableCopy];
      MEMORY[0x277D82BD8](v4);
      v5 = [MEMORY[0x277CCABB0] numberWithBool:v16];
      [v13 setObject:? forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v5);
      [v15 setUserInfo:v13];
      objc_storeStrong(&v13, 0);
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [v11 countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v11);
  [(ACUIIdentityPickerViewController *)v21 reload];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_setPropertyEnabled:(BOOL)a3 identity:(__SecIdentity *)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained identityPickerController:self setPropertyEnabled:a3 withIdentity:a4];
  MEMORY[0x277D82BD8](WeakRetained);
}

- (id)_valueForSwitchSpecifier:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACUIIdentityPickerViewController _isPropertyEnabled](v6, "_isPropertyEnabled")}];
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)_isPropertyEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained isPropertyEnabledForIdentityPickerController:self];
  MEMORY[0x277D82BD8](WeakRetained);
  return v4;
}

- (__SecIdentity)_selectedIdentity
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained selectedIdentityForIdentityPickerController:self];
  MEMORY[0x277D82BD8](WeakRetained);
  return v4;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = [(ACUIIdentityPickerViewController *)v23 specifierAtIndex:[(ACUIIdentityPickerViewController *)v23 indexForIndexPath:v21]];
  v12 = [v20 userInfo];
  v13 = [v12 objectForKey:@"Identity"];
  MEMORY[0x277D82BD8](v12);
  v19 = v13;
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained(&v23->_delegate);
    v10 = [WeakRetained copyTrustForIdentityPickerController:v23 identity:v19];
    MEMORY[0x277D82BD8](WeakRetained);
    v18 = v10;
    if (v10)
    {
      v17 = [MEMORY[0x277CF9710] defaultTrustManager];
      v6 = v17;
      v5 = v18;
      v7 = [(NSArray *)v23->_emailAddresses objectAtIndex:0];
      v8 = [v6 actionForSMIMETrust:v5 sender:?];
      MEMORY[0x277D82BD8](v7);
      v16 = v8;
      v4 = objc_alloc(MEMORY[0x277CF96F8]);
      v15 = [v4 initWithTrust:v18 action:v8];
      [(ACUIIdentityPickerViewController *)v23 showController:v15 animate:1];
      CFRelease(v18);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v17, 0);
    }
  }

  else
  {
    v14.receiver = v23;
    v14.super_class = ACUIIdentityPickerViewController;
    [(ACUIIdentityPickerViewController *)&v14 tableView:location[0] accessoryButtonTappedForRowWithIndexPath:v21];
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = [(ACUIIdentityPickerViewController *)v33 specifierAtIndex:[(ACUIIdentityPickerViewController *)v33 indexForIndexPath:v31]];
  v18 = [v30 userInfo];
  v19 = [v18 objectForKey:@"Identity"];
  MEMORY[0x277D82BD8](v18);
  v29 = v19;
  v28 = [(ACUIIdentityPickerViewController *)v33 _selectedIdentity];
  if (v19)
  {
    if ([(ACUIIdentityPickerViewController *)v33 _allowIdentitySelection]&& !_SecIdentityEqual(v29, v28))
    {
      [(ACUIIdentityPickerViewController *)v33 _setPropertyEnabled:[(ACUIIdentityPickerViewController *)v33 _isPropertyEnabled] identity:v29];
      memset(__b, 0, sizeof(__b));
      v15 = [(ACUIIdentityPickerViewController *)v33 _identitySpecifiers];
      v16 = [v15 countByEnumeratingWithState:__b objects:v34 count:16];
      if (v16)
      {
        v12 = *__b[2];
        v13 = 0;
        v14 = v16;
        while (1)
        {
          v11 = v13;
          if (*__b[2] != v12)
          {
            objc_enumerationMutation(v15);
          }

          v27 = *(__b[1] + 8 * v13);
          v8 = v29;
          v9 = [v27 userInfo];
          v10 = _SecIdentityEqual(v8, [v9 objectForKey:@"Identity"]);
          MEMORY[0x277D82BD8](v9);
          v25 = v10;
          v22 = 0;
          if (v28)
          {
            v6 = v28;
            v23 = [v27 userInfo];
            v22 = 1;
            v7 = _SecIdentityEqual(v6, [v23 objectForKey:@"Identity"]);
          }

          else
          {
            v7 = 0;
          }

          if (v22)
          {
            MEMORY[0x277D82BD8](v23);
          }

          v24 = v7;
          if (v25 || v24)
          {
            v4 = [v27 userInfo];
            v21 = [v4 mutableCopy];
            MEMORY[0x277D82BD8](v4);
            v5 = [MEMORY[0x277CCABB0] numberWithBool:v25];
            [v21 setObject:? forKeyedSubscript:?];
            MEMORY[0x277D82BD8](v5);
            [v27 setUserInfo:v21];
            [(ACUIIdentityPickerViewController *)v33 reloadSpecifier:v27];
            objc_storeStrong(&v21, 0);
          }

          ++v13;
          if (v11 + 1 >= v14)
          {
            v13 = 0;
            v14 = [v15 countByEnumeratingWithState:__b objects:v34 count:16];
            if (!v14)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v15);
    }

    [location[0] selectRowAtIndexPath:0 animated:1 scrollPosition:0];
  }

  else
  {
    v20.receiver = v33;
    v20.super_class = ACUIIdentityPickerViewController;
    [(ACUIIdentityPickerViewController *)&v20 tableView:location[0] didSelectRowAtIndexPath:v31];
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)_allowIdentitySelection
{
  v4 = 0;
  if (self->_userInteractiveIdentityList)
  {
    v3 = 1;
    if (!self->_allowIdentitySelectionForDisabledSwitch)
    {
      return [(ACUIIdentityPickerViewController *)self _isPropertyEnabled];
    }

    return v3;
  }

  return v4;
}

@end