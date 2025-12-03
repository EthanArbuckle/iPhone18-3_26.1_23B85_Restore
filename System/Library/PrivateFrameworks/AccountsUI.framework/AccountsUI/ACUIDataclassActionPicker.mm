@interface ACUIDataclassActionPicker
- (ACDataclassAction)firstDestructiveAction;
- (ACUIDataclassActionPicker)initWithActions:(id)actions affectingAccount:(id)account;
- (BOOL)hasActionOfType:(int64_t)type;
- (BOOL)hasDestructiveActions;
- (id)_stringForMessage:(id)message withAccountType:(id)type dataclassDescription:(id)description;
- (id)actionOfType:(int64_t)type;
- (id)descriptionForDataclassAction:(id)action;
- (id)message;
- (id)showInViewController:(id)controller;
- (id)title;
- (int64_t)priorityIndex;
- (void)addAffectedDataclass:(id)dataclass;
@end

@implementation ACUIDataclassActionPicker

- (ACUIDataclassActionPicker)initWithActions:(id)actions affectingAccount:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, actions);
  v11 = 0;
  objc_storeStrong(&v11, account);
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = ACUIDataclassActionPicker;
  selfCopy = [(ACUIDataclassActionPicker *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_affectedAccount, v11);
    v5 = [location[0] sortedArrayUsingComparator:&__block_literal_global_1];
    actions = selfCopy->_actions;
    selfCopy->_actions = v5;
    MEMORY[0x277D82BD8](actions);
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

uint64_t __62__ACUIDataclassActionPicker_initWithActions_affectingAccount___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  v6 = MEMORY[0x277D82BE0](v8);
  if ([v7[0] type])
  {
    if ([v6 type])
    {
      if ([v7[0] isDestructive] || objc_msgSend(v6, "isDestructive") != 1)
      {
        v10 = [v7[0] isDestructive] == 1 && !objc_msgSend(v6, "isDestructive");
      }

      else
      {
        v10 = -1;
      }
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)addAffectedDataclass:(id)dataclass
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dataclass);
  if (!selfCopy->_affectedDataclasses)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    affectedDataclasses = selfCopy->_affectedDataclasses;
    selfCopy->_affectedDataclasses = v3;
    MEMORY[0x277D82BD8](affectedDataclasses);
  }

  if (location[0])
  {
    [(NSMutableArray *)selfCopy->_affectedDataclasses addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)hasDestructiveActions
{
  firstDestructiveAction = [(ACUIDataclassActionPicker *)self firstDestructiveAction];
  v4 = firstDestructiveAction != 0;
  MEMORY[0x277D82BD8](firstDestructiveAction);
  return v4;
}

- (ACDataclassAction)firstDestructiveAction
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v13 = a2;
  memset(__b, 0, sizeof(__b));
  obj = [(ACUIDataclassActionPicker *)selfCopy actions];
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v6);
      if ([v12 isDestructive] == 1)
      {
        break;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          goto LABEL_9;
        }
      }
    }

    v15 = MEMORY[0x277D82BE0](v12);
    v10 = 1;
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v10)
  {
    v15 = 0;
  }

  *MEMORY[0x277D85DE8];
  v2 = v15;

  return v2;
}

- (id)actionOfType:(int64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  typeCopy = type;
  memset(__b, 0, sizeof(__b));
  obj = [(ACUIDataclassActionPicker *)selfCopy actions];
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v19 count:16];
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

      v14 = *(__b[1] + 8 * v8);
      type = [v14 type];
      if (type == typeCopy)
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v9)
        {
          goto LABEL_9;
        }
      }
    }

    v18 = MEMORY[0x277D82BE0](v14);
    v12 = 1;
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v12)
  {
    v18 = 0;
  }

  *MEMORY[0x277D85DE8];
  v4 = v18;

  return v4;
}

- (BOOL)hasActionOfType:(int64_t)type
{
  v3 = [(ACUIDataclassActionPicker *)self actionOfType:type];
  v5 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  return v5;
}

- (int64_t)priorityIndex
{
  v3 = 10 * [(ACUIDataclassActionPicker *)self hasDestructiveActions];
  actions = [(ACUIDataclassActionPicker *)self actions];
  v5 = v3 - [(NSArray *)actions count];
  MEMORY[0x277D82BD8](actions);
  return v5;
}

- (id)showInViewController:(id)controller
{
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = [(ACUIDataclassActionPicker *)selfCopy actions];
  v14 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v42 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v36 = *(__b[1] + 8 * v11);
      v8 = v37;
      v7 = [(ACUIDataclassActionPicker *)selfCopy descriptionForDataclassAction:v36];
      [v8 addObject:?];
      MEMORY[0x277D82BD8](v7);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v42 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v34 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 838860800;
  v30 = 48;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = 0;
  v3 = MEMORY[0x277D85CD0];
  queue = MEMORY[0x277D85CD0];
  v18 = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __50__ACUIDataclassActionPicker_showInViewController___block_invoke;
  v22 = &unk_278BFA548;
  v26[1] = &v27;
  v23 = MEMORY[0x277D82BE0](selfCopy);
  v24 = MEMORY[0x277D82BE0](v34);
  v25 = MEMORY[0x277D82BE0](location[0]);
  v26[0] = MEMORY[0x277D82BE0](v37);
  dispatch_async(queue, &v18);
  MEMORY[0x277D82BD8](queue);
  oslog = _ACUILogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_4_0(v41, "[ACUIDataclassActionPicker showInViewController:]", 117);
    _os_log_debug_impl(&dword_23DC86000, oslog, type, "%s (%d) ACUIDataclassActionPicker waiting on semaphore until confirmation view completes.", v41, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
  v15 = _ACUILogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_3_8_32_4_0_8_66(v40, "[ACUIDataclassActionPicker showInViewController:]", 120, v28[5]);
    _os_log_debug_impl(&dword_23DC86000, v15, OS_LOG_TYPE_DEBUG, "%s (%d) ACUIDataclassActionPicker completed with action %{public}@", v40, 0x1Cu);
  }

  objc_storeStrong(&v15, 0);
  v5 = MEMORY[0x277D82BE0](v28[5]);
  objc_storeStrong(v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(&v27, 8);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

void __50__ACUIDataclassActionPicker_showInViewController___block_invoke(uint64_t a1)
{
  v13[2] = a1;
  v13[1] = a1;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __50__ACUIDataclassActionPicker_showInViewController___block_invoke_2;
  v10 = &unk_278BFA520;
  v12[1] = *(a1 + 64);
  v11 = MEMORY[0x277D82BE0](*(a1 + 32));
  v12[0] = MEMORY[0x277D82BE0](*(a1 + 40));
  v13[0] = MEMORY[0x23EEFC830]();
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v6 = [*(a1 + 32) title];
  v5 = [*(a1 + 32) message];
  v1 = [*(a1 + 32) hasDestructiveActions];
  [v4 showConfirmationWithButtons:v3 title:v6 message:v5 destructive:v1 completion:v13[0]];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(v13, 0);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
}

intptr_t __50__ACUIDataclassActionPicker_showInViewController___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v10 = a2;
  oslog[1] = a1;
  oslog[0] = _ACUILogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    __os_log_helper_16_2_3_8_32_4_0_8_66(v12, "[ACUIDataclassActionPicker showInViewController:]_block_invoke_2", 105, v7);
    _os_log_debug_impl(&dword_23DC86000, oslog[0], OS_LOG_TYPE_DEBUG, "%s (%d) Confirmation view reports completion with %{public}@", v12, 0x1Cu);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(oslog, 0);
  v6 = [*(a1 + 32) actions];
  v2 = [v6 objectAtIndexedSubscript:v10];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v6);
  result = dispatch_semaphore_signal(*(a1 + 40));
  *MEMORY[0x277D85DE8];
  return result;
}

- (id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  affectedDataclasses = [(ACUIDataclassActionPicker *)self affectedDataclasses];
  v24 = [(NSArray *)affectedDataclasses count];
  MEMORY[0x277D82BD8](affectedDataclasses);
  if (v24 == 1)
  {
    affectedDataclasses2 = [(ACUIDataclassActionPicker *)selfCopy affectedDataclasses];
    lastObject = [(NSArray *)affectedDataclasses2 lastObject];
    MEMORY[0x277D82BD8](affectedDataclasses2);
    v25 = [ACUILocalization localizedTitleForDataclass:lastObject];
    if ([(ACUIDataclassActionPicker *)selfCopy hasActionOfType:4]|| [(ACUIDataclassActionPicker *)selfCopy hasActionOfType:5]|| [(ACUIDataclassActionPicker *)selfCopy hasActionOfType:6])
    {
      v19 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v21 localizedStringForKey:@"ENABLE_OTA_WITH_EXISTING_DATA_WARNING_FORMAT_TITLE" value:&stru_2850054A0 table:@"Localizable"];
      v2 = [v19 stringWithFormat:v25];
      v3 = location[0];
      location[0] = v2;
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
    }

    else if ([(ACUIDataclassActionPicker *)selfCopy hasActionOfType:3]|| [(ACUIDataclassActionPicker *)selfCopy hasActionOfType:2])
    {
      if (-[ACUIDataclassActionPicker hasActionOfType:](selfCopy, "hasActionOfType:", 3) && ([lastObject isEqualToString:*MEMORY[0x277CB91D8]] & 1) != 0)
      {
        objc_storeStrong(location, 0);
      }

      else
      {
        v16 = MEMORY[0x277CCACA8];
        v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v18 localizedStringForKey:@"DISABLE_DATACLASS_TITLE" value:&stru_2850054A0 table:@"Localizable"];
        v4 = [v16 stringWithFormat:v25];
        v5 = location[0];
        location[0] = v4;
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](v18);
      }
    }

    else if (-[ACUIDataclassActionPicker hasActionOfType:](selfCopy, "hasActionOfType:", 8) && ([lastObject isEqualToString:*MEMORY[0x277CB91D8]] & 1) != 0)
    {
      v13 = MEMORY[0x277CCACA8];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v15 localizedStringForKey:@"CLOUD_DRIVE_LOSE_NON_UPLOADED_DATA_TITLE" value:&stru_2850054A0 table:@"Localizable"];
      v6 = [v13 stringWithFormat:?];
      v7 = location[0];
      location[0] = v6;
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
    }

    objc_storeStrong(&v25, 0);
    objc_storeStrong(&lastObject, 0);
  }

  else
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v12 localizedStringForKey:@"DELETE_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
    v9 = location[0];
    location[0] = v8;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v12);
  }

  v11 = MEMORY[0x277D82BE0](location[0]);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)message
{
  selfCopy = self;
  v91[1] = a2;
  v91[0] = 0;
  affectedDataclasses = [(ACUIDataclassActionPicker *)self affectedDataclasses];
  affectedAccount = [(ACUIDataclassActionPicker *)selfCopy affectedAccount];
  v90 = [ACUILocalization localizedTextForDataclasses:affectedDataclasses usedAtBeginningOfSentence:0 forAccount:?];
  MEMORY[0x277D82BD8](affectedAccount);
  MEMORY[0x277D82BD8](affectedDataclasses);
  affectedAccount2 = [(ACUIDataclassActionPicker *)selfCopy affectedAccount];
  accountType = [(ACAccount *)affectedAccount2 accountType];
  accountTypeDescription = [(ACAccountType *)accountType accountTypeDescription];
  MEMORY[0x277D82BD8](accountType);
  MEMORY[0x277D82BD8](affectedAccount2);
  if (![v90 length])
  {
    v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = [v82 localizedStringForKey:@"DATA" value:&stru_2850054A0 table:@"Localizable"];
    v3 = v90;
    v90 = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v82);
  }

  affectedDataclasses2 = [(ACUIDataclassActionPicker *)selfCopy affectedDataclasses];
  v81 = [(NSArray *)affectedDataclasses2 count];
  MEMORY[0x277D82BD8](affectedDataclasses2);
  if (v81 == 1)
  {
    v88 = [(ACUIDataclassActionPicker *)selfCopy actionOfType:8];
    if (v88)
    {
      affectedDataclasses3 = [(ACUIDataclassActionPicker *)selfCopy affectedDataclasses];
      firstObject = [(NSArray *)affectedDataclasses3 firstObject];
      v79 = [firstObject isEqualToString:*MEMORY[0x277CB91D8]];
      MEMORY[0x277D82BD8](firstObject);
      MEMORY[0x277D82BD8](affectedDataclasses3);
      if (v79)
      {
        v74 = MEMORY[0x277CCACA8];
        v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v75 = [v76 localizedStringForKey:@"CLOUD_DRIVE_LOSE_NON_UPLOADED_DATA_MESSAGE" value:&stru_2850054A0 table:@"Localizable"];
        v4 = [v74 stringWithFormat:?];
        v5 = v91[0];
        v91[0] = v4;
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v75);
        MEMORY[0x277D82BD8](v76);
      }

      else
      {
        location = [v88 affectedContainers];
        v73 = [location count];
        if (v73)
        {
          switch(v73)
          {
            case 1:
              v66 = MEMORY[0x277CCACA8];
              v69 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v68 = [v69 localizedStringForKey:@"LOSE_NON_UPLOADED_DATA_IN_ONE_APP_WARNING" value:&stru_2850054A0 table:@"Localizable"];
              v67 = [location objectAtIndexedSubscript:0];
              v8 = [v66 stringWithFormat:v68, v90, accountTypeDescription, v67];
              v9 = v91[0];
              v91[0] = v8;
              MEMORY[0x277D82BD8](v9);
              MEMORY[0x277D82BD8](v67);
              MEMORY[0x277D82BD8](v68);
              MEMORY[0x277D82BD8](v69);
              break;
            case 2:
              v61 = MEMORY[0x277CCACA8];
              v65 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v64 = [v65 localizedStringForKey:@"LOSE_NON_UPLOADED_DATA_IN_TWO_APPS_WARNING" value:&stru_2850054A0 table:@"Localizable"];
              v63 = [location objectAtIndexedSubscript:0];
              v62 = [location objectAtIndexedSubscript:1];
              v10 = [v61 stringWithFormat:v64, v90, accountTypeDescription, v63, v62];
              v11 = v91[0];
              v91[0] = v10;
              MEMORY[0x277D82BD8](v11);
              MEMORY[0x277D82BD8](v62);
              MEMORY[0x277D82BD8](v63);
              MEMORY[0x277D82BD8](v64);
              MEMORY[0x277D82BD8](v65);
              break;
            case 3:
              v55 = MEMORY[0x277CCACA8];
              v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v59 = [v60 localizedStringForKey:@"LOSE_NON_UPLOADED_DATA_IN_THREE_APPS_WARNING" value:&stru_2850054A0 table:@"Localizable"];
              v58 = [location objectAtIndexedSubscript:0];
              v57 = [location objectAtIndexedSubscript:1];
              v56 = [location objectAtIndexedSubscript:2];
              v12 = [v55 stringWithFormat:v59, v90, accountTypeDescription, v58, v57, v56];
              v13 = v91[0];
              v91[0] = v12;
              MEMORY[0x277D82BD8](v13);
              MEMORY[0x277D82BD8](v56);
              MEMORY[0x277D82BD8](v57);
              MEMORY[0x277D82BD8](v58);
              MEMORY[0x277D82BD8](v59);
              MEMORY[0x277D82BD8](v60);
              break;
            default:
              v48 = MEMORY[0x277CCACA8];
              v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v53 = [v54 localizedStringForKey:@"LOSE_NON_UPLOADED_DATA_IN_MORE_THAN_THREE_APPS_WARNING" value:&stru_2850054A0 table:@"Localizable"];
              v52 = [location objectAtIndexedSubscript:0];
              v51 = [location objectAtIndexedSubscript:1];
              v50 = [location objectAtIndexedSubscript:2];
              v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(location, "count") - 3}];
              v14 = [v48 stringWithFormat:v53, v90, accountTypeDescription, v52, v51, v50, v49];
              v15 = v91[0];
              v91[0] = v14;
              MEMORY[0x277D82BD8](v15);
              MEMORY[0x277D82BD8](v49);
              MEMORY[0x277D82BD8](v50);
              MEMORY[0x277D82BD8](v51);
              MEMORY[0x277D82BD8](v52);
              MEMORY[0x277D82BD8](v53);
              MEMORY[0x277D82BD8](v54);
              break;
          }
        }

        else
        {
          v70 = MEMORY[0x277CCACA8];
          v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v71 = [v72 localizedStringForKey:@"LOSE_NON_UPLOADED_DATA_WARNING" value:&stru_2850054A0 table:@"Localizable"];
          v6 = [v70 stringWithFormat:v90, accountTypeDescription];
          v7 = v91[0];
          v91[0] = v6;
          MEMORY[0x277D82BD8](v7);
          MEMORY[0x277D82BD8](v71);
          MEMORY[0x277D82BD8](v72);
        }

        objc_storeStrong(&location, 0);
      }
    }

    else if ([(ACUIDataclassActionPicker *)selfCopy hasActionOfType:4]|| [(ACUIDataclassActionPicker *)selfCopy hasActionOfType:5]|| [(ACUIDataclassActionPicker *)selfCopy hasActionOfType:6])
    {
      v45 = MEMORY[0x277CCACA8];
      v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v46 = [v47 localizedStringForKey:@"ENABLE_OTA_WITH_EXISTING_DATA_WARNING_FORMAT" value:&stru_2850054A0 table:@"Localizable"];
      v16 = [v45 stringWithFormat:v90];
      v17 = v91[0];
      v91[0] = v16;
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v47);
    }

    else if ([(ACUIDataclassActionPicker *)selfCopy hasActionOfType:3]&& [(ACUIDataclassActionPicker *)selfCopy hasActionOfType:2])
    {
      v18 = [(ACUIDataclassActionPicker *)selfCopy _stringForMessage:@"DISABLE_OTA_WITH_MERGE_OPTION_WARNING" withAccountType:accountTypeDescription dataclassDescription:v90];
      v19 = v91[0];
      v91[0] = v18;
      MEMORY[0x277D82BD8](v19);
    }

    else if ([(ACUIDataclassActionPicker *)selfCopy hasActionOfType:3])
    {
      affectedDataclasses4 = [(ACUIDataclassActionPicker *)selfCopy affectedDataclasses];
      firstObject2 = [(NSArray *)affectedDataclasses4 firstObject];
      v44 = [firstObject2 isEqualToString:*MEMORY[0x277CB91C0]];
      MEMORY[0x277D82BD8](firstObject2);
      MEMORY[0x277D82BD8](affectedDataclasses4);
      if (v44)
      {
        v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = [v41 localizedStringForKey:@"SIRI_DELETE_EXISTING_DATA_WARNING" value:&stru_2850054A0 table:@"Localizable"];
        v21 = v91[0];
        v91[0] = v20;
        MEMORY[0x277D82BD8](v21);
        MEMORY[0x277D82BD8](v41);
      }

      else
      {
        affectedDataclasses5 = [(ACUIDataclassActionPicker *)selfCopy affectedDataclasses];
        firstObject3 = [(NSArray *)affectedDataclasses5 firstObject];
        v40 = [firstObject3 isEqualToString:*MEMORY[0x277CB91D8]];
        MEMORY[0x277D82BD8](firstObject3);
        MEMORY[0x277D82BD8](affectedDataclasses5);
        if (v40)
        {
          v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v22 = [v37 localizedStringForKey:@"DISABLE_ICLOUD_DRIVE_WARNING" value:&stru_2850054A0 table:@"Localizable"];
          v23 = v91[0];
          v91[0] = v22;
          MEMORY[0x277D82BD8](v23);
          MEMORY[0x277D82BD8](v37);
        }

        else
        {
          v24 = [(ACUIDataclassActionPicker *)selfCopy _stringForMessage:@"DELETE_EXISTING_DATA_WARNING" withAccountType:accountTypeDescription dataclassDescription:v90];
          v25 = v91[0];
          v91[0] = v24;
          MEMORY[0x277D82BD8](v25);
        }
      }
    }

    objc_storeStrong(&v88, 0);
  }

  else if ([(ACUIDataclassActionPicker *)selfCopy hasActionOfType:2])
  {
    v26 = [(ACUIDataclassActionPicker *)selfCopy _stringForMessage:@"DELETE_ACCOUNT_MERGE_WARNING" withAccountType:accountTypeDescription dataclassDescription:v90];
    v27 = v91[0];
    v91[0] = v26;
    MEMORY[0x277D82BD8](v27);
  }

  else
  {
    v34 = MEMORY[0x277CCACA8];
    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v36 localizedStringForKey:@"DELETE_ACCOUNT_WARNING_FORMAT" value:&stru_2850054A0 table:@"Localizable"];
    v28 = [v34 stringWithFormat:v90];
    v29 = v91[0];
    v91[0] = v28;
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
  }

  if (!v91[0])
  {
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"What would you like to do with %@?", v90];
    v31 = v91[0];
    v91[0] = v30;
    MEMORY[0x277D82BD8](v31);
  }

  v33 = MEMORY[0x277D82BE0](v91[0]);
  objc_storeStrong(&accountTypeDescription, 0);
  objc_storeStrong(&v90, 0);
  objc_storeStrong(v91, 0);

  return v33;
}

- (id)_stringForMessage:(id)message withAccountType:(id)type dataclassDescription:(id)description
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v30 = 0;
  objc_storeStrong(&v30, type);
  v29 = 0;
  objc_storeStrong(&v29, description);
  v28 = 0;
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:location[0]];
  affectedAccount = [(ACUIDataclassActionPicker *)selfCopy affectedAccount];
  accountType = [(ACAccount *)affectedAccount accountType];
  identifier = [(ACAccountType *)accountType identifier];
  v25 = 0;
  v23 = 0;
  v22 = 0;
  if ([(NSString *)identifier isEqualToString:*MEMORY[0x277CB8BA0]])
  {
    affectedDataclasses = [(ACUIDataclassActionPicker *)selfCopy affectedDataclasses];
    v25 = 1;
    firstObject = [(NSArray *)affectedDataclasses firstObject];
    v23 = 1;
    v22 = [firstObject isEqualToString:*MEMORY[0x277CB91D8]];
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](firstObject);
  }

  if (v25)
  {
    MEMORY[0x277D82BD8](affectedDataclasses);
  }

  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](accountType);
  MEMORY[0x277D82BD8](affectedAccount);
  if ((v22 & 1) == 0 && v30)
  {
    [string appendString:@"_FORMAT"];
    v11 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v13 localizedStringForKey:string value:&stru_2850054A0 table:@"Localizable"];
    v7 = [v11 stringWithFormat:v30, v29];
    v8 = v28;
    v28 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    [string appendString:@"_NO_ACCOUNT_TYPE_FORMAT"];
    v14 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v16 localizedStringForKey:string value:&stru_2850054A0 table:@"Localizable"];
    v5 = [v14 stringWithFormat:v29];
    v6 = v28;
    v28 = v5;
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
  }

  v10 = MEMORY[0x277D82BE0](v28);
  objc_storeStrong(&string, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)descriptionForDataclassAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  if ([location[0] type])
  {
    if ([location[0] type] == 3)
    {
      affectedDataclasses = [(ACUIDataclassActionPicker *)selfCopy affectedDataclasses];
      v31 = 0;
      v29 = 0;
      v19 = 0;
      if ([(NSArray *)affectedDataclasses count]== 1)
      {
        affectedDataclasses2 = [(ACUIDataclassActionPicker *)selfCopy affectedDataclasses];
        v31 = 1;
        firstObject = [(NSArray *)affectedDataclasses2 firstObject];
        v29 = 1;
        v19 = [firstObject isEqualToString:*MEMORY[0x277CB91C0]];
      }

      if (v29)
      {
        MEMORY[0x277D82BD8](firstObject);
      }

      if (v31)
      {
        MEMORY[0x277D82BD8](affectedDataclasses2);
      }

      MEMORY[0x277D82BD8](affectedDataclasses);
      if (v19)
      {
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v35 = [v17 localizedStringForKey:@"SIRI_DELETE_EXISTING_DATA_ACTION_LABEL" value:&stru_2850054A0 table:@"Localizable"];
        MEMORY[0x277D82BD8](v17);
      }

      else
      {
        affectedDataclasses3 = [(ACUIDataclassActionPicker *)selfCopy affectedDataclasses];
        v27 = 0;
        v25 = 0;
        v16 = 0;
        if ([(NSArray *)affectedDataclasses3 count]== 1)
        {
          affectedDataclasses4 = [(ACUIDataclassActionPicker *)selfCopy affectedDataclasses];
          v27 = 1;
          firstObject2 = [(NSArray *)affectedDataclasses4 firstObject];
          v25 = 1;
          v16 = [firstObject2 isEqualToString:*MEMORY[0x277CB91D8]];
        }

        if (v25)
        {
          MEMORY[0x277D82BD8](firstObject2);
        }

        if (v27)
        {
          MEMORY[0x277D82BD8](affectedDataclasses4);
        }

        MEMORY[0x277D82BD8](affectedDataclasses3);
        if (v16)
        {
          v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v35 = [v14 localizedStringForKey:@"DELETE_ICLOUD_DRIVE_SYNC_DATA" value:&stru_2850054A0 table:@"Localizable"];
          MEMORY[0x277D82BD8](v14);
        }

        else
        {
          v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v35 = [v13 localizedStringForKey:@"DELETE_SYNC_DATA" value:&stru_2850054A0 table:@"Localizable"];
          MEMORY[0x277D82BD8](v13);
        }
      }
    }

    else if ([location[0] type] == 2)
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v12 localizedStringForKey:@"MERGE_SYNC_DATA" value:&stru_2850054A0 table:@"Localizable"];
      MEMORY[0x277D82BD8](v12);
    }

    else if ([location[0] type] == 4)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v11 localizedStringForKey:@"KEEP_LOCAL_DATA" value:&stru_2850054A0 table:@"Localizable"];
      MEMORY[0x277D82BD8](v11);
    }

    else if ([location[0] type] == 6)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v10 localizedStringForKey:@"DELETE_LOCAL_DATA" value:&stru_2850054A0 table:@"Localizable"];
      MEMORY[0x277D82BD8](v10);
    }

    else if ([location[0] type] == 5)
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v9 localizedStringForKey:@"MERGE_LOCAL_DATA" value:&stru_2850054A0 table:@"Localizable"];
      MEMORY[0x277D82BD8](v9);
    }

    else if ([location[0] type] == 8)
    {
      affectedDataclasses5 = [(ACUIDataclassActionPicker *)selfCopy affectedDataclasses];
      v23 = 0;
      v21 = 0;
      v8 = 0;
      if ([(NSArray *)affectedDataclasses5 count]== 1)
      {
        affectedDataclasses6 = [(ACUIDataclassActionPicker *)selfCopy affectedDataclasses];
        v23 = 1;
        firstObject3 = [(NSArray *)affectedDataclasses6 firstObject];
        v21 = 1;
        v8 = [firstObject3 isEqualToString:*MEMORY[0x277CB91D8]];
      }

      if (v21)
      {
        MEMORY[0x277D82BD8](firstObject3);
      }

      if (v23)
      {
        MEMORY[0x277D82BD8](affectedDataclasses6);
      }

      MEMORY[0x277D82BD8](affectedDataclasses5);
      if (v8)
      {
        v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v35 = [v6 localizedStringForKey:@"CLOUD_DRIVE_LOSE_NON_UPLOADED_DATA_DELETE_TITLE" value:&stru_2850054A0 table:@"Localizable"];
        MEMORY[0x277D82BD8](v6);
      }

      else
      {
        v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v35 = [v5 localizedStringForKey:@"LOSE_NON_UPLOADED_DATA" value:&stru_2850054A0 table:@"Localizable"];
        MEMORY[0x277D82BD8](v5);
      }
    }

    else
    {
      v35 = MEMORY[0x277D82BE0](@"Unknown Action");
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v20 localizedStringForKey:@"CANCEL" value:&stru_2850054A0 table:@"Localizable"];
    MEMORY[0x277D82BD8](v20);
  }

  objc_storeStrong(location, 0);
  v3 = v35;

  return v3;
}

@end