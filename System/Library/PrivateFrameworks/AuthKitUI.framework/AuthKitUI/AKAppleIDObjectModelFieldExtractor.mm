@interface AKAppleIDObjectModelFieldExtractor
- (AKAppleIDObjectModelFieldExtractor)initWithObjectModel:(id)model;
- (id)_valueForFieldWithID:(id)d inObjectModel:(id)model;
- (id)_valueForTextFieldFromPage:(id)page rowID:(id)d;
- (id)valueForFieldWithID:(id)d;
@end

@implementation AKAppleIDObjectModelFieldExtractor

- (AKAppleIDObjectModelFieldExtractor)initWithObjectModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v3 = selfCopy;
  selfCopy = 0;
  v6 = [(AKAppleIDObjectModelFieldExtractor *)v3 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_objectModel, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)valueForFieldWithID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v9 = 0;
  if (location[0])
  {
    v3 = [(AKAppleIDObjectModelFieldExtractor *)selfCopy _valueForFieldWithID:location[0] inObjectModel:selfCopy->_objectModel];
    v4 = v9;
    v9 = v3;
    *&v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    if (!v9)
    {
      serverInfo = [(RUIObjectModel *)selfCopy->_objectModel serverInfo];
      v9 = [serverInfo objectForKeyedSubscript:location[0]];
      MEMORY[0x277D82BD8](0);
      MEMORY[0x277D82BD8](serverInfo);
    }
  }

  v7 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)_valueForFieldWithID:(id)d inObjectModel:(id)model
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v26 = 0;
  objc_storeStrong(&v26, model);
  v25 = _AKLogSystem();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v30, location[0]);
    _os_log_impl(&dword_222379000, v25, v24, "Extracting value for row: %@", v30, 0xCu);
  }

  objc_storeStrong(&v25, 0);
  v23 = 0;
  displayedPages = [v26 displayedPages];
  lastObject = [displayedPages lastObject];
  if ([lastObject hasTableView] == 1)
  {
    v4 = [(AKAppleIDObjectModelFieldExtractor *)selfCopy _valueForTextFieldFromPage:lastObject rowID:location[0]];
    v5 = v23;
    v23 = v4;
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    passcodeViewOM = [lastObject passcodeViewOM];
    if (passcodeViewOM)
    {
      v20 = _AKLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        attributes = [passcodeViewOM attributes];
        v16 = [attributes objectForKeyedSubscript:@"id"];
        __os_log_helper_16_2_1_8_64(v29, v16);
        _os_log_debug_impl(&dword_222379000, v20, OS_LOG_TYPE_DEBUG, "Passcode view with ID %@ found", v29, 0xCu);
        MEMORY[0x277D82BD8](v16);
        MEMORY[0x277D82BD8](attributes);
      }

      objc_storeStrong(&v20, 0);
      attributes2 = [passcodeViewOM attributes];
      v13 = [attributes2 objectForKeyedSubscript:@"id"];
      v15 = [v13 isEqual:location[0]];
      MEMORY[0x277D82BD8](v13);
      *&v6 = MEMORY[0x277D82BD8](attributes2).n128_u64[0];
      if (v15)
      {
        passcodeField = [passcodeViewOM passcodeField];
        stringValue = [passcodeField stringValue];
        v7 = [stringValue copy];
        v8 = v23;
        v23 = v7;
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](stringValue);
        MEMORY[0x277D82BD8](passcodeField);
      }
    }

    objc_storeStrong(&passcodeViewOM, 0);
  }

  v10 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&lastObject, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_valueForTextFieldFromPage:(id)page rowID:(id)d
{
  v41 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, page);
  v36 = 0;
  objc_storeStrong(&v36, d);
  v35 = 0;
  tableViewOM = [location[0] tableViewOM];
  memset(__b, 0, sizeof(__b));
  sections = [tableViewOM sections];
  v26 = [sections countByEnumeratingWithState:__b objects:v40 count:16];
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
        objc_enumerationMutation(sections);
      }

      v33 = *(__b[1] + 8 * v22);
      memset(v30, 0, sizeof(v30));
      rows = [v33 rows];
      v19 = [rows countByEnumeratingWithState:v30 objects:v39 count:16];
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
            objc_enumerationMutation(rows);
          }

          v31 = *(v30[1] + 8 * v16);
          attributes = [v31 attributes];
          v11 = [attributes objectForKeyedSubscript:@"id"];
          v13 = [v11 isEqual:v36];
          MEMORY[0x277D82BD8](v11);
          *&v4 = MEMORY[0x277D82BD8](attributes).n128_u64[0];
          if (v13)
          {
            objc_storeStrong(&v35, v31);
          }

          ++v16;
          if (v14 + 1 >= v17)
          {
            v16 = 0;
            v17 = [rows countByEnumeratingWithState:v30 objects:v39 count:{16, v4}];
            if (!v17)
            {
              break;
            }
          }
        }
      }

      *&v5 = MEMORY[0x277D82BD8](rows).n128_u64[0];
      ++v22;
      if (v20 + 1 >= v23)
      {
        v22 = 0;
        v23 = [sections countByEnumeratingWithState:__b objects:v40 count:{16, v5}];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  *&v6 = MEMORY[0x277D82BD8](sections).n128_u64[0];
  v29 = 0;
  if (v35)
  {
    control = [v35 control];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      text = [control text];
      v8 = v29;
      v29 = text;
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

    objc_storeStrong(&control, 0);
  }

  v10 = MEMORY[0x277D82BE0](v29);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&tableViewOM, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v10;
}

@end