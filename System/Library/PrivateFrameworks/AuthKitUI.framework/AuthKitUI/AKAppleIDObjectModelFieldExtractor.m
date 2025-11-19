@interface AKAppleIDObjectModelFieldExtractor
- (AKAppleIDObjectModelFieldExtractor)initWithObjectModel:(id)a3;
- (id)_valueForFieldWithID:(id)a3 inObjectModel:(id)a4;
- (id)_valueForTextFieldFromPage:(id)a3 rowID:(id)a4;
- (id)valueForFieldWithID:(id)a3;
@end

@implementation AKAppleIDObjectModelFieldExtractor

- (AKAppleIDObjectModelFieldExtractor)initWithObjectModel:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6 = [(AKAppleIDObjectModelFieldExtractor *)v3 init];
  v8 = v6;
  objc_storeStrong(&v8, v6);
  if (v6)
  {
    objc_storeStrong(&v8->_objectModel, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)valueForFieldWithID:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  if (location[0])
  {
    v3 = [(AKAppleIDObjectModelFieldExtractor *)v11 _valueForFieldWithID:location[0] inObjectModel:v11->_objectModel];
    v4 = v9;
    v9 = v3;
    *&v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    if (!v9)
    {
      v8 = [(RUIObjectModel *)v11->_objectModel serverInfo];
      v9 = [v8 objectForKeyedSubscript:location[0]];
      MEMORY[0x277D82BD8](0);
      MEMORY[0x277D82BD8](v8);
    }
  }

  v7 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)_valueForFieldWithID:(id)a3 inObjectModel:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = _AKLogSystem();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v30, location[0]);
    _os_log_impl(&dword_222379000, v25, v24, "Extracting value for row: %@", v30, 0xCu);
  }

  objc_storeStrong(&v25, 0);
  v23 = 0;
  v18 = [v26 displayedPages];
  v22 = [v18 lastObject];
  if ([v22 hasTableView] == 1)
  {
    v4 = [(AKAppleIDObjectModelFieldExtractor *)v28 _valueForTextFieldFromPage:v22 rowID:location[0]];
    v5 = v23;
    v23 = v4;
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v21 = [v22 passcodeViewOM];
    if (v21)
    {
      v20 = _AKLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v21 attributes];
        v16 = [v17 objectForKeyedSubscript:@"id"];
        __os_log_helper_16_2_1_8_64(v29, v16);
        _os_log_debug_impl(&dword_222379000, v20, OS_LOG_TYPE_DEBUG, "Passcode view with ID %@ found", v29, 0xCu);
        MEMORY[0x277D82BD8](v16);
        MEMORY[0x277D82BD8](v17);
      }

      objc_storeStrong(&v20, 0);
      v14 = [v21 attributes];
      v13 = [v14 objectForKeyedSubscript:@"id"];
      v15 = [v13 isEqual:location[0]];
      MEMORY[0x277D82BD8](v13);
      *&v6 = MEMORY[0x277D82BD8](v14).n128_u64[0];
      if (v15)
      {
        v12 = [v21 passcodeField];
        v11 = [v12 stringValue];
        v7 = [v11 copy];
        v8 = v23;
        v23 = v7;
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v12);
      }
    }

    objc_storeStrong(&v21, 0);
  }

  v10 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_valueForTextFieldFromPage:(id)a3 rowID:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35 = 0;
  v34 = [location[0] tableViewOM];
  memset(__b, 0, sizeof(__b));
  v25 = [v34 sections];
  v26 = [v25 countByEnumeratingWithState:__b objects:v40 count:16];
  if (v26)
  {
    v21 = *__b[2];
    v22 = 0;
    v23 = v26;
    while (1)
    {
      v20 = v22;
      if (*__b[2] != v21)
      {
        objc_enumerationMutation(v25);
      }

      v33 = *(__b[1] + 8 * v22);
      memset(v30, 0, sizeof(v30));
      v18 = [v33 rows];
      v19 = [v18 countByEnumeratingWithState:v30 objects:v39 count:16];
      if (v19)
      {
        v15 = *v30[2];
        v16 = 0;
        v17 = v19;
        while (1)
        {
          v14 = v16;
          if (*v30[2] != v15)
          {
            objc_enumerationMutation(v18);
          }

          v31 = *(v30[1] + 8 * v16);
          v12 = [v31 attributes];
          v11 = [v12 objectForKeyedSubscript:@"id"];
          v13 = [v11 isEqual:v36];
          MEMORY[0x277D82BD8](v11);
          *&v4 = MEMORY[0x277D82BD8](v12).n128_u64[0];
          if (v13)
          {
            objc_storeStrong(&v35, v31);
          }

          ++v16;
          if (v14 + 1 >= v17)
          {
            v16 = 0;
            v17 = [v18 countByEnumeratingWithState:v30 objects:v39 count:{16, v4}];
            if (!v17)
            {
              break;
            }
          }
        }
      }

      *&v5 = MEMORY[0x277D82BD8](v18).n128_u64[0];
      ++v22;
      if (v20 + 1 >= v23)
      {
        v22 = 0;
        v23 = [v25 countByEnumeratingWithState:__b objects:v40 count:{16, v5}];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  *&v6 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  v29 = 0;
  if (v35)
  {
    v28 = [v35 control];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v28 text];
      v8 = v29;
      v29 = v7;
      MEMORY[0x277D82BD8](v8);
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v38, v36);
        _os_log_error_impl(&dword_222379000, oslog, OS_LOG_TYPE_ERROR, "BuddyML contained row with ID %{public}@ but it did not contain a text field.", v38, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v28, 0);
  }

  v10 = MEMORY[0x277D82BE0](v29);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v10;
}

@end