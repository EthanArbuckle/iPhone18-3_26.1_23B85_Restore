sqlite3 **DBIOOpenDatabaseFromURL(void *a1, void *a2)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    if ([v3 isFileURL])
    {
      v6 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
      if (!v6)
      {
        goto LABEL_24;
      }

      goto LABEL_7;
    }

LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  *a2 = 0;
  if (([v3 isFileURL] & 1) == 0)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [v4 absoluteString];
    v14 = [v12 stringWithFormat:@"URL is not a file URL: %@", v13];

    v15 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41[0] = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    *a2 = [v15 errorWithDomain:@"com.apple.databaseIO.ErrorDomain" code:1 userInfo:v16];

    goto LABEL_23;
  }

  v5 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  if (!v5)
  {
    v17 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v39 = @"Failed to allocate memory for database structure.";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *a2 = [v17 errorWithDomain:@"com.apple.databaseIO.ErrorDomain" code:2 userInfo:v18];

    goto LABEL_23;
  }

  v6 = v5;
LABEL_7:
  *v6 = 0;
  v7 = [v4 path];
  v8 = [v7 fileSystemRepresentation];

  if (!v8)
  {
    if (a2)
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [v4 absoluteString];
      v21 = [v19 stringWithFormat:@"Could not get file system path from URL: %@", v20];

      v22 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v37 = v21;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *a2 = [v22 errorWithDomain:@"com.apple.databaseIO.ErrorDomain" code:1 userInfo:v23];
    }

    goto LABEL_22;
  }

  v9 = sqlite3_open_v2(v8, v6, 1, 0);
  if (v9)
  {
    if (a2)
    {
      v10 = v9;
      if (*v6)
      {
        v11 = sqlite3_errmsg(*v6);
      }

      else
      {
        v11 = sqlite3_errstr(v9);
      }

      v24 = v11;
      v25 = MEMORY[0x277CCACA8];
      v26 = [v4 path];
      v27 = v26;
      v28 = "Unknown SQLite error";
      if (v24)
      {
        v28 = v24;
      }

      v29 = [v25 stringWithFormat:@"Failed to open SQLite database at '%@': %s (code: %d)", v26, v28, v10];

      v30 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA450];
      v35 = v29;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *a2 = [v30 errorWithDomain:@"com.apple.databaseIO.ErrorDomain" code:2 userInfo:v31];
    }

    if (*v6)
    {
      sqlite3_close_v2(*v6);
    }

LABEL_22:
    free(v6);
    goto LABEL_23;
  }

LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t DBIOCloseDatabase(sqlite3 ***a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

  v5 = *v4;
  if (!*v4)
  {
LABEL_13:
    free(v4);
    *a1 = 0;
LABEL_14:
    result = 1;
    goto LABEL_15;
  }

  v6 = sqlite3_close_v2(*v4);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  if (a2)
  {
    v8 = sqlite3_errmsg(v5);
    v9 = MEMORY[0x277CCACA8];
    if (!v8)
    {
      v8 = sqlite3_errstr(v7);
    }

    v10 = [v9 stringWithFormat:@"Failed to close SQLite database: %s (SQLite error code: %d). If the error is SQLITE_BUSY, there are likely unfinalized statements or active backups.", v8, v7];
    v11 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a2 = [v11 errorWithDomain:@"com.apple.databaseIO.ErrorDomain" code:2 userInfo:v12];
  }

  if (v7 != 5)
  {
LABEL_12:
    **a1 = 0;
    v4 = *a1;
    goto LABEL_13;
  }

  result = 0;
LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DBIODatabaseValidatedWithoutError(sqlite3 **a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = DBIOFetchDatabaseResults(a1, @"pragma integrity_check", a2);
  v5 = [v4 objectForKey:@"integrity_check"];
  v6 = [v5 isEqualToString:@"ok"];

  if (a2 && (v6 & 1) == 0)
  {
    v7 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Database integrity test failed: %s", sqlite3_errmsg(*a1), v12];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a2 = [v7 errorWithDomain:@"com.apple.databaseIO.ErrorDomain" code:6 userInfo:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

void *DBIOFetchDatabaseResults(sqlite3 **a1, void *a2, void *a3)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  ppStmt = 0;
  if (sqlite3_prepare_v2(*a1, [v5 UTF8String], -1, &ppStmt, 0))
  {
    if (a3)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to prepare query statement: '%s'.", sqlite3_errmsg(*a1)];
      v7 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v33[0] = v6;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *a3 = [v7 errorWithDomain:@"com.apple.databaseIO.ErrorDomain" code:5 userInfo:v8];
LABEL_29:

      a3 = 0;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v26 = a3;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  if (sqlite3_step(ppStmt) == 100)
  {
    v9 = 0;
    while (sqlite3_column_count(ppStmt) < 1)
    {
LABEL_20:
      if (sqlite3_step(ppStmt) != 100)
      {
        goto LABEL_21;
      }
    }

    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (sqlite3_column_type(ppStmt, v10) == 1)
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(ppStmt, v10)}];
      }

      else if (sqlite3_column_type(ppStmt, v10) == 2)
      {
        v13 = MEMORY[0x277CCABB0];
        v14 = sqlite3_column_double(ppStmt, v10);
        *&v14 = v14;
        v12 = [v13 numberWithFloat:v14];
      }

      else
      {
        if (!sqlite3_column_text(ppStmt, v10))
        {

          v11 = &stru_285015AD0;
          goto LABEL_15;
        }

        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, v10)}];
      }

      v15 = v12;

      v11 = v15;
      if (!v15)
      {
        a3 = v26;
        if (v26)
        {
          v19 = MEMORY[0x277CCA9B8];
          v30 = *MEMORY[0x277CCA450];
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Database query [%@] did not return any results", v5];
          v31 = v8;
          v20 = MEMORY[0x277CBEAC0];
          v21 = &v31;
          v22 = &v30;
          goto LABEL_28;
        }

        goto LABEL_30;
      }

LABEL_15:
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_name(ppStmt, v10)}];
      v17 = [v6 objectForKeyedSubscript:v16];

      if (v17)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%d)", v16, v9];

        v9 = (v9 + 1);
        v16 = v18;
      }

      [v6 setObject:v11 forKey:v16];

      if (++v10 >= sqlite3_column_count(ppStmt))
      {

        goto LABEL_20;
      }
    }
  }

LABEL_21:
  sqlite3_finalize(ppStmt);
  if ([v6 count])
  {
    a3 = [v6 copy];
    goto LABEL_30;
  }

  a3 = v26;
  if (v26)
  {
    v19 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Database query did not return any results"];
    v29 = v8;
    v20 = MEMORY[0x277CBEAC0];
    v21 = &v29;
    v22 = &v28;
LABEL_28:
    v23 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
    *a3 = [v19 errorWithDomain:@"com.apple.databaseIO.ErrorDomain" code:5 userInfo:v23];

    goto LABEL_29;
  }

LABEL_30:

LABEL_31:
  v24 = *MEMORY[0x277D85DE8];

  return a3;
}

id DBIOFetchDatabaseResultsExt(sqlite3 **a1, id a2, void *a3)
{
  v32[1] = *MEMORY[0x277D85DE8];
  ppStmt = 0;
  v6 = a2;
  if (sqlite3_prepare_v2(*a1, [a2 UTF8String], -1, &ppStmt, 0))
  {
    if (a3)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to prepare query statement: '%s'.", sqlite3_errmsg(*a1)];
      v8 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA450];
      v32[0] = v7;
      v9 = MEMORY[0x277CBEAC0];
      v10 = v32;
      v11 = &v31;
LABEL_23:
      v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
      [v8 errorWithDomain:@"com.apple.databaseIO.ErrorDomain" code:5 userInfo:v12];
      *a3 = v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (sqlite3_step(ppStmt) != 100)
  {
    if (a3)
    {
      v8 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Database query did not return any results"];
      v30 = v7;
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v30;
      v11 = &v29;
      goto LABEL_23;
    }

LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:sqlite3_column_count(ppStmt)];
  v12 = [MEMORY[0x277CBEB18] array];
  do
  {
    if (sqlite3_column_count(ppStmt) < 1)
    {
      goto LABEL_18;
    }

    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v14;
      if (sqlite3_column_type(ppStmt, v13) == 1)
      {
        v16 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(ppStmt, v13)}];
LABEL_14:
        v14 = v16;
        goto LABEL_15;
      }

      if (sqlite3_column_type(ppStmt, v13) == 2)
      {
        v17 = MEMORY[0x277CCABB0];
        v18 = sqlite3_column_double(ppStmt, v13);
        *&v18 = v18;
        v16 = [v17 numberWithFloat:v18];
        goto LABEL_14;
      }

      if (sqlite3_column_text(ppStmt, v13))
      {
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(ppStmt, v13)}];
        goto LABEL_14;
      }

      v14 = &stru_285015AD0;
LABEL_15:

      [v7 addObject:v14];
      ++v13;
    }

    while (v13 < sqlite3_column_count(ppStmt));

LABEL_18:
    v19 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
    [v12 addObject:v19];

    [v7 removeAllObjects];
  }

  while (sqlite3_step(ppStmt) == 100);
  sqlite3_finalize(ppStmt);
  if ([v12 count])
  {
    v20 = [v12 copy];
  }

  else
  {
    if (a3)
    {
      v23 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Database query did not return any results"];
      v28 = v24;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      *a3 = [v23 errorWithDomain:@"com.apple.databaseIO.ErrorDomain" code:5 userInfo:v25];
    }

    v20 = 0;
  }

LABEL_24:

LABEL_26:
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void *AbsorptionTable::get(AbsorptionTable *this)
{
  {
    AbsorptionTable::AbsorptionTable(&AbsorptionTable::get(void)::instance);
    __cxa_atexit(AbsorptionTable::~AbsorptionTable, &AbsorptionTable::get(void)::instance, &dword_23DDB5000);
  }

  return &AbsorptionTable::get(void)::instance;
}

uint64_t *materialCachedTable<AMAbsorption>::getMaterial(void *a1, void *a2, uint64_t *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v12 = [[AMAbsorption alloc] initWithMaterialName:v5];
  v6 = std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::find<AMAbsorption * {__strong}>(a1, &v12);
  if (v6)
  {
    a3 = v6[2];
  }

  else if (a3)
  {
    v7 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Material %@ is not found in %@", v5, a1[5]];
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a3 = [v7 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:2 userInfo:v9];

    a3 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return a3;
}

void *ScatteringTable::get(ScatteringTable *this)
{
  {
    ScatteringTable::ScatteringTable(&ScatteringTable::get(void)::instance);
    __cxa_atexit(ScatteringTable::~ScatteringTable, &ScatteringTable::get(void)::instance, &dword_23DDB5000);
  }

  return &ScatteringTable::get(void)::instance;
}

uint64_t *materialCachedTable<AMScattering>::getMaterial(void *a1, void *a2, uint64_t *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v12 = [[AMScattering alloc] initWithMaterialName:v5];
  v6 = std::__hash_table<AMScattering * {__strong},material_hash<AMScattering * {__strong}>,material_equal_to<AMScattering * {__strong}>,std::allocator<AMScattering * {__strong}>>::find<AMScattering * {__strong}>(a1, &v12);
  if (v6)
  {
    a3 = v6[2];
  }

  else if (a3)
  {
    v7 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Material %@ is not found in %@", v5, a1[5]];
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a3 = [v7 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:2 userInfo:v9];

    a3 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return a3;
}

void *SoundReductionTable::get(SoundReductionTable *this)
{
  {
    SoundReductionTable::SoundReductionTable(&SoundReductionTable::get(void)::instance);
    __cxa_atexit(SoundReductionTable::~SoundReductionTable, &SoundReductionTable::get(void)::instance, &dword_23DDB5000);
  }

  return &SoundReductionTable::get(void)::instance;
}

uint64_t *materialCachedTable<AMSoundReductionIndex>::getMaterial(void *a1, void *a2, uint64_t *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v12 = [[AMSoundReductionIndex alloc] initWithMaterialName:v5];
  v6 = std::__hash_table<AMSoundReductionIndex * {__strong},material_hash<AMSoundReductionIndex * {__strong}>,material_equal_to<AMSoundReductionIndex * {__strong}>,std::allocator<AMSoundReductionIndex * {__strong}>>::find<AMSoundReductionIndex * {__strong}>(a1, &v12);
  if (v6)
  {
    a3 = v6[2];
  }

  else if (a3)
  {
    v7 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Material %@ is not found in %@", v5, a1[5]];
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a3 = [v7 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:2 userInfo:v9];

    a3 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return a3;
}

void __assign_helper_atomic_property_(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<semantic_pair,materialsForPair>,void *> *>>(a1, *(a2 + 16), 0);
  }
}

void __assign_helper_atomic_property__45(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *> *>>(a1, *(a2 + 16), 0);
  }
}

void __assign_helper_atomic_property__47(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *> *>>(a1, *(a2 + 16), 0);
  }
}

void materialCachedTable<AMAbsorption>::readTable(void *a1, void *a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM [%@]", a1[5]];
  v5 = DBIOFetchDatabaseResultsExt(_dbPtr, v4, a2);
  if (v5)
  {
    std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::clear(a1);
    std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__rehash<true>(a1, [v5 count]);
    for (i = 0; i < [v5 count]; ++i)
    {
      v7 = [v5 objectAtIndexedSubscript:i];
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:a1[6]];
      v9 = [[AMAbsorption alloc] initWithValues:v8 error:a2];
      std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::__emplace_unique_key_args<AMAbsorption * {__strong},AMAbsorption * const {__strong}&>(a1, &v9);
    }
  }
}

void materialCachedTable<AMScattering>::readTable(void *a1, void *a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM [%@]", a1[5]];
  v5 = DBIOFetchDatabaseResultsExt(_dbPtr, v4, a2);
  if (v5)
  {
    std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::clear(a1);
    std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__rehash<true>(a1, [v5 count]);
    for (i = 0; i < [v5 count]; ++i)
    {
      v7 = [v5 objectAtIndexedSubscript:i];
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:a1[6]];
      v9 = [[AMScattering alloc] initWithValues:v8 error:a2];
      std::__hash_table<AMScattering * {__strong},material_hash<AMScattering * {__strong}>,material_equal_to<AMScattering * {__strong}>,std::allocator<AMScattering * {__strong}>>::__emplace_unique_key_args<AMScattering * {__strong},AMScattering * const {__strong}&>(a1, &v9);
    }
  }
}

void materialCachedTable<AMSoundReductionIndex>::readTable(void *a1, void *a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM [%@]", a1[5]];
  v5 = DBIOFetchDatabaseResultsExt(_dbPtr, v4, a2);
  if (v5)
  {
    std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::clear(a1);
    std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__rehash<true>(a1, [v5 count]);
    for (i = 0; i < [v5 count]; ++i)
    {
      v7 = [v5 objectAtIndexedSubscript:i];
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:a1[6]];
      v9 = [[AMSoundReductionIndex alloc] initWithValues:v8 error:a2];
      std::__hash_table<AMSoundReductionIndex * {__strong},material_hash<AMSoundReductionIndex * {__strong}>,material_equal_to<AMSoundReductionIndex * {__strong}>,std::allocator<AMSoundReductionIndex * {__strong}>>::__emplace_unique_key_args<AMSoundReductionIndex * {__strong},AMSoundReductionIndex * const {__strong}&>(a1, &v9);
    }
  }
}

void materialCachedTable<AMAbsorption>::applyAbsFilter(uint64_t a1, void *a2)
{
  v19 = a2;
  for (i = *(a1 + 16); i; i = *i)
  {
    v4 = [v19 count];
    v5 = [i[2] absorptionUserData];
    v6 = [v5 count];

    if (v4 <= v6)
    {
      v7 = objc_alloc(MEMORY[0x277CBEB18]);
      v8 = [i[2] absorptionUserData];
      v9 = [v7 initWithArray:v8];

      for (j = 0; [v19 count] > j; ++j)
      {
        v11 = MEMORY[0x277CCABB0];
        v12 = [v9 objectAtIndexedSubscript:j];
        [v12 doubleValue];
        v14 = v13;
        v15 = [v19 objectAtIndexedSubscript:j];
        [v15 doubleValue];
        v17 = v14 * v16;
        if (v17 < 0.0)
        {
          v17 = 0.0;
        }

        if (v17 > 1.0)
        {
          v17 = 1.0;
        }

        v18 = [v11 numberWithDouble:v17];
        [v9 setObject:v18 atIndexedSubscript:j];
      }

      [i[2] setAbsorptionUserData:v9];
    }
  }
}

id materialCachedTable<AMAbsorption>::materialNames(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  for (i = *(a1 + 16); i; i = *i)
  {
    v4 = [i[2] materialName];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

id materialCachedTable<AMScattering>::materialNames(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  for (i = *(a1 + 16); i; i = *i)
  {
    v4 = [i[2] materialName];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

id materialCachedTable<AMSoundReductionIndex>::materialNames(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  for (i = *(a1 + 16); i; i = *i)
  {
    v4 = [i[2] materialName];
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

void AbsorptionTable::~AbsorptionTable(id *this)
{

  std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::~__hash_table(this);
}

void AbsorptionTable::AbsorptionTable(AbsorptionTable *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 5) = @"acoustic absorption";
  *(this + 6) = 0;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"materialName", @"materialDescription", @"frequencyBands", @"absorptionUserData", @"absorptionReferenceData", @"uncertaintyReferenceData", @"numDataPointsReferenceData", @"totalNumDataSetsReferenceData", 0}];
  v3 = *(this + 6);
  *(this + 6) = v2;
}

uint64_t materialCachedTable<AMAbsorption>::~materialCachedTable(uint64_t a1)
{

  return std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::~__hash_table(a1);
}

uint64_t std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void ScatteringTable::~ScatteringTable(id *this)
{

  std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::~__hash_table(this);
}

void ScatteringTable::ScatteringTable(ScatteringTable *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 5) = @"acoustic scattering";
  *(this + 6) = 0;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"materialName", @"materialDescription", @"frequencyBands", @"scatteringUserData", @"scatteringReferenceData", @"uncertaintyReferenceData", @"numDataPointsReferenceData", @"totalNumDataSetsReferenceData", 0}];
  v3 = *(this + 6);
  *(this + 6) = v2;
}

void SoundReductionTable::~SoundReductionTable(id *this)
{

  std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::~__hash_table(this);
}

void SoundReductionTable::SoundReductionTable(SoundReductionTable *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 5) = @"acoustic sound reduction index";
  *(this + 6) = 0;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"materialName", @"materialDescription", @"frequencyBands", @"soundReductionIndexUserData", @"soundReductionIndexReferenceData", @"uncertaintyReferenceData", @"numDataPointsReferenceData", @"averageSoundReductionIndex", @"totalNumDataSetsReferenceData", @"materialDepth", @"uncertaintyMaterialDepth", 0}];
  v3 = *(this + 6);
  *(this + 6) = v2;
}

uint64_t std::unordered_map<semantic_pair,materialsForPair>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__emplace_unique_key_args<semantic_pair,std::pair<semantic_pair const,materialsForPair> const&>(a1, i + 2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__emplace_unique_key_args<semantic_pair,std::pair<semantic_pair const,materialsForPair> const&>(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[2];
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_22:
    v10 = a2[2];
    std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__construct_node_hash<std::pair<semantic_pair const,materialsForPair> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    result = *result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  if (result[2] != *a2 || result[3] != a2[1])
  {
    goto LABEL_21;
  }

  return result;
}

void sub_23DDBA90C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<semantic_pair,materialsForPair>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23DDBA9B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<semantic_pair,materialsForPair>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

id std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<semantic_pair,materialsForPair>,void *>>>::construct[abi:ne200100]<std::pair<semantic_pair const,materialsForPair>,std::pair<semantic_pair const,materialsForPair> const&,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v5;
  *(a2 + 24) = *(a3 + 3);
  *(a2 + 32) = *(a3 + 4);
  result = *(a3 + 5);
  *(a2 + 40) = result;
  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<semantic_pair,materialsForPair>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<semantic_pair,materialsForPair>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v11 = *(v4 + 1);
        v8[4] = v4[4];
        *(v8 + 1) = v11;
        objc_storeStrong(v8 + 5, v4[5]);
        objc_storeStrong(v8 + 6, v4[6]);
        objc_storeStrong(v8 + 7, v4[7]);
        v10 = *v8;
        v12 = v8[4];
        v8[1] = v12;
        inserted = std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__node_insert_multi_prepare(a1, v12, v8 + 2);
        std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__node_insert_multi_perform(a1, v8, inserted);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__emplace_multi<std::pair<semantic_pair const,materialsForPair> const&>();
  }
}

void sub_23DDBAC30(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    if (v19 == a2)
    {
      v21 = v16[2] == *a3 && v16[3] == a3[1];
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 != (v17 & 1);
    v24 = v17 & v23;
    v17 |= v23;
  }

  while (v24 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_23DDBB174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<semantic_pair,materialsForPair>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23DDBB220(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<semantic_pair,materialsForPair>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<NSString * {__strong},long long>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},long long> const&>(a1, i + 2);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::pair<NSString * const {__strong},long long> const&>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (([v11[2] isEqualToString:*a2] & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_23DDBB524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        objc_storeStrong(v8 + 2, v4[2]);
        v8[3] = v4[3];
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_multi<std::pair<NSString * const {__strong},long long> const&>();
  }
}

void sub_23DDBB658(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = [a2[2] hash];
  a2[1] = v5;
  inserted = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__node_insert_multi_prepare(a1, v5, v4);
  std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

void *std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 ? [v17[2] isEqualToString:*a3] : 0;
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_23DDBBB50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::find<AMAbsorption * {__strong}>(void *a1, void **a2)
{
  v4 = material_hash<AMAbsorption * {__strong}>::operator()(a1, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (material_equal_to<AMAbsorption * {__strong}>::operator()(a1, i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t material_hash<AMAbsorption * {__strong}>::operator()(uint64_t a1, void *a2)
{
  v2 = [a2 materialName];
  v3 = [v2 hash];

  return v3;
}

uint64_t material_equal_to<AMAbsorption * {__strong}>::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 materialName];
  v6 = [v4 materialName];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

void sub_23DDBBDAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<AMScattering * {__strong},material_hash<AMScattering * {__strong}>,material_equal_to<AMScattering * {__strong}>,std::allocator<AMScattering * {__strong}>>::find<AMScattering * {__strong}>(void *a1, void **a2)
{
  v4 = material_hash<AMScattering * {__strong}>::operator()(a1, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (material_equal_to<AMScattering * {__strong}>::operator()(a1, i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t material_hash<AMScattering * {__strong}>::operator()(uint64_t a1, void *a2)
{
  v2 = [a2 materialName];
  v3 = [v2 hash];

  return v3;
}

uint64_t material_equal_to<AMScattering * {__strong}>::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 materialName];
  v6 = [v4 materialName];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

void sub_23DDBBF94(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<AMSoundReductionIndex * {__strong},material_hash<AMSoundReductionIndex * {__strong}>,material_equal_to<AMSoundReductionIndex * {__strong}>,std::allocator<AMSoundReductionIndex * {__strong}>>::find<AMSoundReductionIndex * {__strong}>(void *a1, void **a2)
{
  v4 = material_hash<AMSoundReductionIndex * {__strong}>::operator()(a1, *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (material_equal_to<AMSoundReductionIndex * {__strong}>::operator()(a1, i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t material_hash<AMSoundReductionIndex * {__strong}>::operator()(uint64_t a1, void *a2)
{
  v2 = [a2 materialName];
  v3 = [v2 hash];

  return v3;
}

uint64_t material_equal_to<AMSoundReductionIndex * {__strong}>::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 materialName];
  v6 = [v4 materialName];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

void sub_23DDBC17C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (([v11[2] isEqualToString:*a2] & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_23DDBC418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__emplace_unique_key_args<semantic_pair,std::piecewise_construct_t const&,std::tuple<semantic_pair const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[2];
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if ([i[2] isEqualToString:*a2])
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void *std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::find<semantic_pair>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[2];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[2];
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == *a2 && result[3] == a2[1])
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **std::__hash_table<AMAbsorption * {__strong},material_hash<AMAbsorption * {__strong}>,material_equal_to<AMAbsorption * {__strong}>,std::allocator<AMAbsorption * {__strong}>>::__emplace_unique_key_args<AMAbsorption * {__strong},AMAbsorption * const {__strong}&>(void *a1, void **a2)
{
  v4 = material_hash<AMAbsorption * {__strong}>::operator()(a1, *a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((material_equal_to<AMAbsorption * {__strong}>::operator()(a1, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_23DDBCB10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<AMScattering * {__strong},material_hash<AMScattering * {__strong}>,material_equal_to<AMScattering * {__strong}>,std::allocator<AMScattering * {__strong}>>::__emplace_unique_key_args<AMScattering * {__strong},AMScattering * const {__strong}&>(void *a1, void **a2)
{
  v4 = material_hash<AMScattering * {__strong}>::operator()(a1, *a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((material_equal_to<AMScattering * {__strong}>::operator()(a1, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_23DDBCD94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<AMSoundReductionIndex * {__strong},material_hash<AMSoundReductionIndex * {__strong}>,material_equal_to<AMSoundReductionIndex * {__strong}>,std::allocator<AMSoundReductionIndex * {__strong}>>::__emplace_unique_key_args<AMSoundReductionIndex * {__strong},AMSoundReductionIndex * const {__strong}&>(void *a1, void **a2)
{
  v4 = material_hash<AMSoundReductionIndex * {__strong}>::operator()(a1, *a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((material_equal_to<AMSoundReductionIndex * {__strong}>::operator()(a1, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_23DDBD018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},long long>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL valueIsBetween(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = ([v6 compare:v5] == -1 || !objc_msgSend(v6, "compare:", v5)) && (objc_msgSend(v7, "compare:", v5) == 1 || !objc_msgSend(v7, "compare:", v5));

  return v8;
}

id decimalValuesFromCSV(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v13 = v1;
  v3 = [v1 componentsSeparatedByString:{@", "}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isEqualToString:@"NaN"])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          v9 = MEMORY[0x277CCABB0];
          [v8 doubleValue];
          [v9 numberWithDouble:?];
        }
        v10 = ;
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

id clampArrayValues(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        [v14 doubleValue];
        v16 = v15;
        [v6 doubleValue];
        v17 = v6;
        if (v16 >= v18)
        {
          [v14 doubleValue];
          v20 = v19;
          [v7 doubleValue];
          if (v20 <= v21)
          {
            v17 = v14;
          }

          else
          {
            v17 = v7;
          }
        }

        [v8 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v8;
}

id integerValuesFromCSV(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v12 = v1;
  v3 = [v1 componentsSeparatedByString:{@", "}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 isEqualToString:@"NaN"])
        {
          [MEMORY[0x277CBEB68] null];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "intValue")}];
        }
        v9 = ;
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}