@interface AMDMegadomeTest
+ (id)testAPI;
+ (id)testMegadome:(id)megadome;
+ (void)testSingleView:(id)view summary:(id)summary;
@end

@implementation AMDMegadomeTest

+ (id)testMegadome:(id)megadome
{
  v18[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, megadome);
  v9 = [location[0] objectForKey:TEST_API];
  MEMORY[0x277D82BD8](v9);
  if (v9)
  {
    testAPI = [selfCopy testAPI];
    v13 = 1;
  }

  else
  {
    v12 = 0;
    v8 = [location[0] objectForKey:TEST_JS_HANDLER];
    MEMORY[0x277D82BD8](v8);
    if (v8)
    {
      v7 = [location[0] objectForKey:TEST_JS_HANDLER];
      obj = v12;
      v6 = [AMDMegadomeIntegration handleJSRequest:"handleJSRequest:error:" error:?];
      objc_storeStrong(&v12, obj);
      v11 = v6;
      MEMORY[0x277D82BD8](v7);
      if (v12)
      {
        v17 = @"error";
        localizedDescription = [v12 localizedDescription];
        v18[0] = localizedDescription;
        testAPI = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        MEMORY[0x277D82BD8](localizedDescription);
      }

      else
      {
        testAPI = MEMORY[0x277D82BE0](v11);
      }

      v13 = 1;
      objc_storeStrong(&v11, 0);
    }

    else
    {
      testAPI = MEMORY[0x277D82BE0](&unk_2852BBB50);
      v13 = 1;
    }

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = testAPI;

  return v3;
}

+ (id)testAPI
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  NSLog(&cfstr_InMegadomeApiT.isa);
  [selfCopy testSingleView:0x2852A7488 summary:v4[0]];
  [selfCopy testSingleView:0x2852A74C8 summary:v4[0]];
  NSLog(&cfstr_DoneMegadomeAp.isa);
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

+ (void)testSingleView:(id)view summary:(id)summary
{
  v67[3] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v65 = 0;
  objc_storeStrong(&v65, summary);
  NSLog(&cfstr_ListingView.isa, location[0]);
  v64 = 0;
  v63 = 0;
  v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v61 = 0;
  clientService = [getGDViewServiceClass_0() clientService];
  v59 = 0;
  if ([location[0] isEqualToString:0x2852A74C8])
  {
    v58 = v64;
    v33 = [clientService firstPartyShortTermTopicViewWithError:&v58];
    objc_storeStrong(&v64, v58);
    v4 = v59;
    v59 = v33;
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    if (([location[0] isEqualToString:0x2852A7488] & 1) == 0)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad view: %@", location[0]];
      v7 = v63;
      v63 = v6;
      MEMORY[0x277D82BD8](v7);
      NSLog(&stru_2852A8188.isa, v63);
      [v62 setObject:v63 forKey:@"error"];
      v56 = 1;
      goto LABEL_19;
    }

    v57 = v64;
    v32 = [clientService firstPartyLongTermTopicViewWithError:&v57];
    objc_storeStrong(&v64, v57);
    v5 = v59;
    v59 = v32;
    MEMORY[0x277D82BD8](v5);
  }

  if (v64)
  {
    v30 = MEMORY[0x277CCACA8];
    v31 = location[0];
    localizedDescription = [v64 localizedDescription];
    v8 = [v30 stringWithFormat:@"Error obtaining viewProtocol for %@: %@", v31, localizedDescription];
    v9 = v63;
    v63 = v8;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](localizedDescription);
    NSLog(&stru_2852A8188.isa, v63);
    [v62 setObject:v63 forKey:@"error"];
    v56 = 1;
  }

  else
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x20000000;
    v54 = 32;
    v55 = 0;
    v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = v59;
    v44 = MEMORY[0x277D85DD0];
    v45 = -1073741824;
    v46 = 0;
    v47 = __42__AMDMegadomeTest_testSingleView_summary___block_invoke;
    v48 = &unk_278CB6208;
    v49[0] = MEMORY[0x277D82BE0](v50);
    v49[1] = &v51;
    [v28 enumerateTopicsWithBlock:&v44];
    [v62 setObject:v50 forKey:@"iteratedData"];
    v27 = v62;
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v52 + 6)];
    [v27 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v26);
    NSLog(&cfstr_FoundUEntriesI.isa, *(v52 + 6), location[0]);
    v25 = location[0];
    databaseFilePath = [v59 databaseFilePath];
    NSLog(&cfstr_DbPathForView.isa, v25, databaseFilePath);
    MEMORY[0x277D82BD8](databaseFilePath);
    v43 = 0;
    ppDb = 0;
    databaseFilePath2 = [v59 databaseFilePath];
    v10 = databaseFilePath2;
    v43 = sqlite3_open_v2([databaseFilePath2 UTF8String], &ppDb, 65538, 0);
    MEMORY[0x277D82BD8](databaseFilePath2);
    if (v43)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"MEGADOME DB loading failed: %d", v43];
      v12 = v63;
      v63 = v11;
      MEMORY[0x277D82BD8](v12);
      NSLog(&stru_2852A8188.isa, v63);
      [v62 setObject:v63 forKey:@"SQLData"];
      v56 = 1;
    }

    else
    {
      NSLog(&cfstr_LoadedDb.isa);
      ppStmt = 0;
      v40 = MEMORY[0x277D82BE0](@"SELECT topicId, score, most_recent_documentId FROM topics ORDER BY score DESC");
      db = ppDb;
      v13 = v40;
      v43 = sqlite3_prepare_v2(db, [v40 UTF8String], -1, &ppStmt, 0);
      if (!v43 && ppStmt)
      {
        v39 = 0;
        v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
        while (sqlite3_step(ppStmt) == 100)
        {
          v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 0)}];
          v36 = sqlite3_column_double(ppStmt, 1);
          v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, 2)}];
          NSLog(&cfstr_TopicIdScoreFD.isa, v37, *&v36, v35);
          v21 = v38;
          v67[0] = v37;
          v20 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
          v67[1] = v20;
          v67[2] = v35;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];
          [v21 addObject:?];
          MEMORY[0x277D82BD8](v19);
          MEMORY[0x277D82BD8](v20);
          ++v39;
          objc_storeStrong(&v35, 0);
          objc_storeStrong(&v37, 0);
        }

        [v62 setObject:v38 forKey:@"sqlData"];
        v18 = v62;
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v39];
        [v18 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v17);
        NSLog(&cfstr_FoundUEntriesI_0.isa, *(v52 + 6), location[0]);
        objc_storeStrong(&v38, 0);
        v56 = 0;
      }

      else
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"MEGADOME Query prep failed: %d", v43];
        v15 = v63;
        v63 = v14;
        MEMORY[0x277D82BD8](v15);
        NSLog(&stru_2852A8188.isa, v63);
        [v62 setObject:v63 forKey:@"sqlData"];
        v56 = 1;
      }

      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(v49, 0);
    objc_storeStrong(&v50, 0);
    _Block_object_dispose(&v51, 8);
  }

LABEL_19:
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&clientService, 0);
  if (!v56)
  {
    v56 = 0;
  }

  v16 = v56;
  [v65 setObject:v62 forKey:location[0]];
  if (v61)
  {
    objc_exception_rethrow();
  }

  v56 = v16;
  if (v16)
  {
    if (v16 == 2)
    {
      __break(1u);
      JUMPOUT(0x240D4A458);
    }
  }

  else
  {
    v56 = 0;
  }

  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __42__AMDMegadomeTest_testSingleView_summary___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v17 = a1;
  v6 = a3;
  v23[3] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  v18 = location;
  v19 = 0;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = v6;
  v20 = v17;
  v9 = [location[0] topicIdentifier];
  [location[0] topicScore];
  v7 = v3;
  v8 = [location[0] mostRecentDocumentId];
  NSLog(&cfstr_TopicIdScoreFD.isa, v9, v7, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v12 = v17[4];
  v16 = [location[0] topicIdentifier];
  v11 = v23;
  v23[0] = v16;
  v10 = MEMORY[0x277CCABB0];
  [location[0] topicScore];
  v15 = [v10 numberWithDouble:?];
  v23[1] = v15;
  v14 = [location[0] mostRecentDocumentId];
  v23[2] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  [v12 addObject:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v4 = v18;
  v5 = v19;
  ++*(*(v17[5] + 8) + 24);
  objc_storeStrong(v4, v5);
  *MEMORY[0x277D85DE8];
}

@end