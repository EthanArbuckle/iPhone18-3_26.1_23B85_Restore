@interface ACUIDataclassActionPicker
- (ACDataclassAction)firstDestructiveAction;
- (ACUIDataclassActionPicker)initWithActions:(id)a3 affectingAccount:(id)a4;
- (BOOL)hasActionOfType:(int64_t)a3;
- (BOOL)hasDestructiveActions;
- (id)_stringForMessage:(id)a3 withAccountType:(id)a4 dataclassDescription:(id)a5;
- (id)actionOfType:(int64_t)a3;
- (id)descriptionForDataclassAction:(id)a3;
- (id)message;
- (id)showInViewController:(id)a3;
- (id)title;
- (int64_t)priorityIndex;
- (void)addAffectedDataclass:(id)a3;
@end

@implementation ACUIDataclassActionPicker

- (ACUIDataclassActionPicker)initWithActions:(id)a3 affectingAccount:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v4 = v13;
  v13 = 0;
  v10.receiver = v4;
  v10.super_class = ACUIDataclassActionPicker;
  v13 = [(ACUIDataclassActionPicker *)&v10 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    objc_storeStrong(&v13->_affectedAccount, v11);
    v5 = [location[0] sortedArrayUsingComparator:&__block_literal_global_1];
    actions = v13->_actions;
    v13->_actions = v5;
    MEMORY[0x277D82BD8](actions);
  }

  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
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

- (void)addAffectedDataclass:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!v6->_affectedDataclasses)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    affectedDataclasses = v6->_affectedDataclasses;
    v6->_affectedDataclasses = v3;
    MEMORY[0x277D82BD8](affectedDataclasses);
  }

  if (location[0])
  {
    [(NSMutableArray *)v6->_affectedDataclasses addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)hasDestructiveActions
{
  v2 = [(ACUIDataclassActionPicker *)self firstDestructiveAction];
  v4 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
  return v4;
}

- (ACDataclassAction)firstDestructiveAction
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = self;
  v13 = a2;
  memset(__b, 0, sizeof(__b));
  obj = [(ACUIDataclassActionPicker *)v14 actions];
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

- (id)actionOfType:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v15 = a3;
  memset(__b, 0, sizeof(__b));
  obj = [(ACUIDataclassActionPicker *)v17 actions];
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
      v3 = [v14 type];
      if (v3 == v15)
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

- (BOOL)hasActionOfType:(int64_t)a3
{
  v3 = [(ACUIDataclassActionPicker *)self actionOfType:a3];
  v5 = v3 != 0;
  MEMORY[0x277D82BD8](v3);
  return v5;
}

- (int64_t)priorityIndex
{
  v3 = 10 * [(ACUIDataclassActionPicker *)self hasDestructiveActions];
  v4 = [(ACUIDataclassActionPicker *)self actions];
  v5 = v3 - [(NSArray *)v4 count];
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (id)showInViewController:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = [(ACUIDataclassActionPicker *)v39 actions];
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
      v7 = [(ACUIDataclassActionPicker *)v39 descriptionForDataclassAction:v36];
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
  v23 = MEMORY[0x277D82BE0](v39);
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
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  v23 = [(ACUIDataclassActionPicker *)self affectedDataclasses];
  v24 = [(NSArray *)v23 count];
  MEMORY[0x277D82BD8](v23);
  if (v24 == 1)
  {
    v22 = [(ACUIDataclassActionPicker *)v28 affectedDataclasses];
    v26 = [(NSArray *)v22 lastObject];
    MEMORY[0x277D82BD8](v22);
    v25 = [ACUILocalization localizedTitleForDataclass:v26];
    if ([(ACUIDataclassActionPicker *)v28 hasActionOfType:4]|| [(ACUIDataclassActionPicker *)v28 hasActionOfType:5]|| [(ACUIDataclassActionPicker *)v28 hasActionOfType:6])
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

    else if ([(ACUIDataclassActionPicker *)v28 hasActionOfType:3]|| [(ACUIDataclassActionPicker *)v28 hasActionOfType:2])
    {
      if (-[ACUIDataclassActionPicker hasActionOfType:](v28, "hasActionOfType:", 3) && ([v26 isEqualToString:*MEMORY[0x277CB91D8]] & 1) != 0)
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

    else if (-[ACUIDataclassActionPicker hasActionOfType:](v28, "hasActionOfType:", 8) && ([v26 isEqualToString:*MEMORY[0x277CB91D8]] & 1) != 0)
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
    objc_storeStrong(&v26, 0);
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
  v92 = self;
  v91[1] = a2;
  v91[0] = 0;
  v84 = [(ACUIDataclassActionPicker *)self affectedDataclasses];
  v83 = [(ACUIDataclassActionPicker *)v92 affectedAccount];
  v90 = [ACUILocalization localizedTextForDataclasses:v84 usedAtBeginningOfSentence:0 forAccount:?];
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  v86 = [(ACUIDataclassActionPicker *)v92 affectedAccount];
  v85 = [(ACAccount *)v86 accountType];
  v89 = [(ACAccountType *)v85 accountTypeDescription];
  MEMORY[0x277D82BD8](v85);
  MEMORY[0x277D82BD8](v86);
  if (![v90 length])
  {
    v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = [v82 localizedStringForKey:@"DATA" value:&stru_2850054A0 table:@"Localizable"];
    v3 = v90;
    v90 = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v82);
  }

  v80 = [(ACUIDataclassActionPicker *)v92 affectedDataclasses];
  v81 = [(NSArray *)v80 count];
  MEMORY[0x277D82BD8](v80);
  if (v81 == 1)
  {
    v88 = [(ACUIDataclassActionPicker *)v92 actionOfType:8];
    if (v88)
    {
      v78 = [(ACUIDataclassActionPicker *)v92 affectedDataclasses];
      v77 = [(NSArray *)v78 firstObject];
      v79 = [v77 isEqualToString:*MEMORY[0x277CB91D8]];
      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v78);
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
              v8 = [v66 stringWithFormat:v68, v90, v89, v67];
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
              v10 = [v61 stringWithFormat:v64, v90, v89, v63, v62];
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
              v12 = [v55 stringWithFormat:v59, v90, v89, v58, v57, v56];
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
              v14 = [v48 stringWithFormat:v53, v90, v89, v52, v51, v50, v49];
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
          v6 = [v70 stringWithFormat:v90, v89];
          v7 = v91[0];
          v91[0] = v6;
          MEMORY[0x277D82BD8](v7);
          MEMORY[0x277D82BD8](v71);
          MEMORY[0x277D82BD8](v72);
        }

        objc_storeStrong(&location, 0);
      }
    }

    else if ([(ACUIDataclassActionPicker *)v92 hasActionOfType:4]|| [(ACUIDataclassActionPicker *)v92 hasActionOfType:5]|| [(ACUIDataclassActionPicker *)v92 hasActionOfType:6])
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

    else if ([(ACUIDataclassActionPicker *)v92 hasActionOfType:3]&& [(ACUIDataclassActionPicker *)v92 hasActionOfType:2])
    {
      v18 = [(ACUIDataclassActionPicker *)v92 _stringForMessage:@"DISABLE_OTA_WITH_MERGE_OPTION_WARNING" withAccountType:v89 dataclassDescription:v90];
      v19 = v91[0];
      v91[0] = v18;
      MEMORY[0x277D82BD8](v19);
    }

    else if ([(ACUIDataclassActionPicker *)v92 hasActionOfType:3])
    {
      v43 = [(ACUIDataclassActionPicker *)v92 affectedDataclasses];
      v42 = [(NSArray *)v43 firstObject];
      v44 = [v42 isEqualToString:*MEMORY[0x277CB91C0]];
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v43);
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
        v39 = [(ACUIDataclassActionPicker *)v92 affectedDataclasses];
        v38 = [(NSArray *)v39 firstObject];
        v40 = [v38 isEqualToString:*MEMORY[0x277CB91D8]];
        MEMORY[0x277D82BD8](v38);
        MEMORY[0x277D82BD8](v39);
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
          v24 = [(ACUIDataclassActionPicker *)v92 _stringForMessage:@"DELETE_EXISTING_DATA_WARNING" withAccountType:v89 dataclassDescription:v90];
          v25 = v91[0];
          v91[0] = v24;
          MEMORY[0x277D82BD8](v25);
        }
      }
    }

    objc_storeStrong(&v88, 0);
  }

  else if ([(ACUIDataclassActionPicker *)v92 hasActionOfType:2])
  {
    v26 = [(ACUIDataclassActionPicker *)v92 _stringForMessage:@"DELETE_ACCOUNT_MERGE_WARNING" withAccountType:v89 dataclassDescription:v90];
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
  objc_storeStrong(&v89, 0);
  objc_storeStrong(&v90, 0);
  objc_storeStrong(v91, 0);

  return v33;
}

- (id)_stringForMessage:(id)a3 withAccountType:(id)a4 dataclassDescription:(id)a5
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v28 = 0;
  v27 = [MEMORY[0x277CCAB68] string];
  [v27 appendString:location[0]];
  v19 = [(ACUIDataclassActionPicker *)v32 affectedAccount];
  v20 = [(ACAccount *)v19 accountType];
  v21 = [(ACAccountType *)v20 identifier];
  v25 = 0;
  v23 = 0;
  v22 = 0;
  if ([(NSString *)v21 isEqualToString:*MEMORY[0x277CB8BA0]])
  {
    v26 = [(ACUIDataclassActionPicker *)v32 affectedDataclasses];
    v25 = 1;
    v24 = [(NSArray *)v26 firstObject];
    v23 = 1;
    v22 = [v24 isEqualToString:*MEMORY[0x277CB91D8]];
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  if (v25)
  {
    MEMORY[0x277D82BD8](v26);
  }

  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v19);
  if ((v22 & 1) == 0 && v30)
  {
    [v27 appendString:@"_FORMAT"];
    v11 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v13 localizedStringForKey:v27 value:&stru_2850054A0 table:@"Localizable"];
    v7 = [v11 stringWithFormat:v30, v29];
    v8 = v28;
    v28 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    [v27 appendString:@"_NO_ACCOUNT_TYPE_FORMAT"];
    v14 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v16 localizedStringForKey:v27 value:&stru_2850054A0 table:@"Localizable"];
    v5 = [v14 stringWithFormat:v29];
    v6 = v28;
    v28 = v5;
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
  }

  v10 = MEMORY[0x277D82BE0](v28);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)descriptionForDataclassAction:(id)a3
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] type])
  {
    if ([location[0] type] == 3)
    {
      v18 = [(ACUIDataclassActionPicker *)v34 affectedDataclasses];
      v31 = 0;
      v29 = 0;
      v19 = 0;
      if ([(NSArray *)v18 count]== 1)
      {
        v32 = [(ACUIDataclassActionPicker *)v34 affectedDataclasses];
        v31 = 1;
        v30 = [(NSArray *)v32 firstObject];
        v29 = 1;
        v19 = [v30 isEqualToString:*MEMORY[0x277CB91C0]];
      }

      if (v29)
      {
        MEMORY[0x277D82BD8](v30);
      }

      if (v31)
      {
        MEMORY[0x277D82BD8](v32);
      }

      MEMORY[0x277D82BD8](v18);
      if (v19)
      {
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v35 = [v17 localizedStringForKey:@"SIRI_DELETE_EXISTING_DATA_ACTION_LABEL" value:&stru_2850054A0 table:@"Localizable"];
        MEMORY[0x277D82BD8](v17);
      }

      else
      {
        v15 = [(ACUIDataclassActionPicker *)v34 affectedDataclasses];
        v27 = 0;
        v25 = 0;
        v16 = 0;
        if ([(NSArray *)v15 count]== 1)
        {
          v28 = [(ACUIDataclassActionPicker *)v34 affectedDataclasses];
          v27 = 1;
          v26 = [(NSArray *)v28 firstObject];
          v25 = 1;
          v16 = [v26 isEqualToString:*MEMORY[0x277CB91D8]];
        }

        if (v25)
        {
          MEMORY[0x277D82BD8](v26);
        }

        if (v27)
        {
          MEMORY[0x277D82BD8](v28);
        }

        MEMORY[0x277D82BD8](v15);
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
      v7 = [(ACUIDataclassActionPicker *)v34 affectedDataclasses];
      v23 = 0;
      v21 = 0;
      v8 = 0;
      if ([(NSArray *)v7 count]== 1)
      {
        v24 = [(ACUIDataclassActionPicker *)v34 affectedDataclasses];
        v23 = 1;
        v22 = [(NSArray *)v24 firstObject];
        v21 = 1;
        v8 = [v22 isEqualToString:*MEMORY[0x277CB91D8]];
      }

      if (v21)
      {
        MEMORY[0x277D82BD8](v22);
      }

      if (v23)
      {
        MEMORY[0x277D82BD8](v24);
      }

      MEMORY[0x277D82BD8](v7);
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