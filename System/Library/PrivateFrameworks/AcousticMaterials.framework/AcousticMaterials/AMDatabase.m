@interface AMDatabase
+ (BOOL)checkDatabaseReadAccess:(id *)a3;
+ (BOOL)openDatabase:(id *)a3;
+ (BOOL)openDatabaseWithAcousticParameterFilter:(unint64_t)a3 error:(id *)a4;
+ (id)acousticParameters:(id)a3 forMaterialName:(id)a4 error:(id *)a5;
+ (id)acousticParameters:(id)a3 forSemanticLabels:(id)a4 error:(id *)a5;
+ (id)labelsForSemanticType:(id)a3 error:(id *)a4;
+ (id)materialNamesForAcousticParameterType:(id)a3 error:(id *)a4;
@end

@implementation AMDatabase

+ (BOOL)openDatabase:(id *)a3
{
  if (_dbPtr)
  {
    DBIOCloseDatabase(&_dbPtr, a3);
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v6 = [v5 resourcePath];
  v7 = [v6 stringByAppendingPathComponent:@"AMDatabase.db"];

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
  v9 = DBIOOpenDatabaseFromURL(v8, a3);
  _dbPtr = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = DBIODatabaseValidatedWithoutError(v9, a3);
  if ((v10 & 1) == 0)
  {
    DBIOCloseDatabase(&_dbPtr, a3);
LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v11 = AbsorptionTable::get(v10);
  materialCachedTable<AMAbsorption>::readTable(v11, a3);
  v13 = ScatteringTable::get(v12);
  materialCachedTable<AMScattering>::readTable(v13, a3);
  v15 = SoundReductionTable::get(v14);
  materialCachedTable<AMSoundReductionIndex>::readTable(v15, a3);
  v16 = SemanticsTableCached;
  if (!SemanticsTableCached)
  {
    v17 = objc_alloc_init(SemanticsTable);
    v18 = SemanticsTableCached;
    SemanticsTableCached = v17;

    v16 = SemanticsTableCached;
  }

  [v16 readTable:a3];
  _parameterFilter = 0;
  *&v19 = 255;
  *(&v19 + 1) = 255;
  v22 = v19;
  v23 = 0xFFFFLL;
  _defaultMaterial = [SemanticsTableCached getMaterialsForPair:&v22];
  v20 = 1;
LABEL_10:

  return v20;
}

+ (BOOL)openDatabaseWithAcousticParameterFilter:(unint64_t)a3 error:(id *)a4
{
  v5 = [AMDatabase openDatabase:a4];
  v6 = v5;
  if (v5)
  {
    if (a3 - 1 <= 2)
    {
      v7 = *(&off_278BFE2D8 + a3 - 1);
      v8 = AbsorptionTable::get(v5);
      materialCachedTable<AMAbsorption>::applyAbsFilter(v8, v7);
    }

    _parameterFilter = a3;
  }

  return v6;
}

+ (BOOL)checkDatabaseReadAccess:(id *)a3
{
  if (_dbPtr)
  {
    return 1;
  }

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 objectForKey:@"com.apple.acousticmaterials.parameterfilter"];

  if (v4 && [v4 unsignedIntValue] <= 7)
  {
    v5 = [v4 unsignedIntValue];
  }

  else
  {
    v5 = 1;
  }

  _parameterFilter = v5;
  v6 = [AMDatabase openDatabaseWithAcousticParameterFilter:"openDatabaseWithAcousticParameterFilter:error:" error:?];

  return v6;
}

+ (id)materialNamesForAcousticParameterType:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([AMDatabase checkDatabaseReadAccess:a4])
  {
    v6 = [v5 isEqualToString:@"acoustic absorption"];
    if (v6)
    {
      v7 = AbsorptionTable::get(v6);
      v8 = materialCachedTable<AMAbsorption>::materialNames(v7);
      goto LABEL_8;
    }

    v9 = [v5 isEqualToString:@"acoustic scattering"];
    if (v9)
    {
      v10 = ScatteringTable::get(v9);
      v8 = materialCachedTable<AMScattering>::materialNames(v10);
      goto LABEL_8;
    }

    v11 = [v5 isEqualToString:@"acoustic sound reduction index"];
    if (v11)
    {
      v12 = SoundReductionTable::get(v11);
      v8 = materialCachedTable<AMSoundReductionIndex>::materialNames(v12);
LABEL_8:
      v13 = v8;
      if (!a4)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v13)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Materials for %@ don't exist in the database.", v5, *MEMORY[0x277CCA450]];
    v20[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a4 = [v14 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:8 userInfo:v16];
  }

LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)labelsForSemanticType:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([AMDatabase checkDatabaseReadAccess:a4])
  {
    v6 = [SemanticsTableCached labelsForSemanticType:v5 error:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)acousticParameters:(id)a3 forMaterialName:(id)a4 error:(id *)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (![AMDatabase checkDatabaseReadAccess:a5])
  {
    a5 = 0;
    goto LABEL_16;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [v7 isEqualToString:@"acoustic absorption"];
  if (v10)
  {
    v11 = AbsorptionTable::get(v10);
    v12 = materialCachedTable<AMAbsorption>::getMaterial(v11, v8, a5);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    a5 = 0;
    goto LABEL_15;
  }

  v13 = [v7 isEqualToString:@"acoustic scattering"];
  if (v13)
  {
    v14 = ScatteringTable::get(v13);
    v12 = materialCachedTable<AMScattering>::getMaterial(v14, v8, a5);
    if (v12)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v15 = [v7 isEqualToString:@"acoustic sound reduction index"];
  if (!v15)
  {
    if (!a5)
    {
      goto LABEL_15;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown acoustic parameter type [%@]", v7, *MEMORY[0x277CCA450]];
    v23[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *a5 = [v17 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:8 userInfo:v19];

    goto LABEL_14;
  }

  v16 = SoundReductionTable::get(v15);
  v12 = materialCachedTable<AMSoundReductionIndex>::getMaterial(v16, v8, a5);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_11:
  [v9 setObject:v12 forKey:v7];

  a5 = [v9 copy];
LABEL_15:

LABEL_16:
  v20 = *MEMORY[0x277D85DE8];

  return a5;
}

+ (id)acousticParameters:(id)a3 forSemanticLabels:(id)a4 error:(id *)a5
{
  v68[1] = *MEMORY[0x277D85DE8];
  v53 = a3;
  v54 = a4;
  if (!v53 || !v54 || ![v53 count] || !objc_msgSend(v54, "count"))
  {
    if (!a5)
    {
      goto LABEL_13;
    }

    v22 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"At least one query input (parameterTypes, semanticQuery) was empty."];
    v68[0] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    *a5 = [v22 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:8 userInfo:v24];

    goto LABEL_12;
  }

  if (![AMDatabase checkDatabaseReadAccess:a5])
  {
    goto LABEL_8;
  }

  v7 = [MEMORY[0x277CBEB98] setWithArray:v53];
  v8 = MEMORY[0x277CBEB98];
  v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"acoustic absorption", @"acoustic scattering", @"acoustic sound reduction index", 0}];
  v10 = [v8 setWithArray:v9];
  v11 = [v7 isSubsetOfSet:v10];

  if ((v11 & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_13;
    }

    v27 = MEMORY[0x277CCA9B8];
    v65 = *MEMORY[0x277CCA450];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"At least one requested acoustic parameter type not found in database."];
    v66 = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    *a5 = [v27 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:8 userInfo:v29];

    goto LABEL_12;
  }

  v12 = MEMORY[0x277CBEB98];
  v13 = [v54 allKeys];
  v14 = [v12 setWithArray:v13];
  v15 = MEMORY[0x277CBEB98];
  v16 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"visual material", @"ARMeshMaterial", @"object", @"ARMeshClassification", 0}];
  v17 = [v15 setWithArray:v16];
  v18 = [v14 isSubsetOfSet:v17];

  if ((v18 & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_13;
    }

    v50 = MEMORY[0x277CCA9B8];
    v63 = *MEMORY[0x277CCA450];
    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"At least one requested semantic type not found in database."];
    v64 = v51;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    *a5 = [v50 errorWithDomain:@"com.apple.acousticmaterials.ErrorDomain" code:8 userInfo:v52];

LABEL_12:
    a5 = 0;
    goto LABEL_13;
  }

LABEL_8:
  v61 = 255;
  v19 = [v54 objectForKey:@"visual material"];

  if (v19)
  {
    v20 = SemanticsTableCached;
    v21 = [v54 objectForKey:@"visual material"];
    [v20 getARMeshMaterialID:v21 ARMeshMaterialID:&v61];
  }

  else
  {
    v30 = [v54 objectForKey:@"ARMeshMaterial"];

    if (v30)
    {
      v31 = [v54 objectForKey:@"ARMeshMaterial"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v61 = [v31 longValue];
      }
    }
  }

  v60 = 255;
  v32 = [v54 objectForKey:@"object"];
  v33 = v32 == 0;

  if (!v33)
  {
    v34 = SemanticsTableCached;
    v35 = [v54 objectForKey:@"object"];
    [v34 getARMeshClassificationID:v35 ARMeshClassificationID:&v60];
LABEL_24:

    goto LABEL_25;
  }

  v48 = [v54 objectForKey:@"ARMeshClassification"];
  v49 = v48 == 0;

  if (!v49)
  {
    v35 = [v54 objectForKey:@"ARMeshClassification"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = [v35 longValue];
    }

    goto LABEL_24;
  }

LABEL_25:
  v59[0] = v61;
  v59[1] = v60;
  if (v61 >= v60)
  {
    v36 = v61 + v61 * v61 + v60;
  }

  else
  {
    v36 = v61 + v60 * v60;
  }

  v59[2] = v36;
  a5 = [SemanticsTableCached getMaterialsForPair:v59];
  if (a5)
  {
    v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v38 = v53;
    v39 = [v38 countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v39)
    {
      v40 = *v56;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v56 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v55 + 1) + 8 * i);
          v43 = [v42 isEqualToString:@"acoustic absorption"];
          v44 = a5;
          v45 = @"acoustic absorption";
          if ((v43 & 1) == 0)
          {
            v46 = [v42 isEqualToString:{@"acoustic scattering", @"acoustic absorption"}];
            v44 = a5 + 1;
            v45 = @"acoustic scattering";
            if ((v46 & 1) == 0)
            {
              v47 = [v42 isEqualToString:{@"acoustic sound reduction index", @"acoustic scattering"}];
              v44 = a5 + 2;
              v45 = @"acoustic sound reduction index";
              if (!v47)
              {
                continue;
              }
            }
          }

          [v37 setObject:*v44 forKey:v45];
        }

        v39 = [v38 countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v39);
    }

    a5 = [v37 copy];
  }

LABEL_13:

  v25 = *MEMORY[0x277D85DE8];

  return a5;
}

@end