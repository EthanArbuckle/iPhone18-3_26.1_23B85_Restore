@interface AMDSQLiteColumnSpec
+ (char)getTypeEnumFor:(id)a3;
- (AMDSQLiteColumnSpec)initWithDict:(id)a3 withName:(id)a4 error:(id *)a5;
- (BOOL)isRequired;
- (id)getCreateStatementPart;
- (id)getSelectColumnExpression;
- (id)getSelectColumnName;
@end

@implementation AMDSQLiteColumnSpec

+ (char)getTypeEnumFor:(id)a3
{
  v10[5] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!getTypeEnumFor__sqlDataTypeMap)
  {
    v9[0] = AMD_SQLITE_DATA_TYPE_BLOB;
    v10[0] = &unk_2852BA530;
    v9[1] = AMD_SQLITE_DATA_TYPE_FLOAT;
    v10[1] = &unk_2852BA548;
    v9[2] = AMD_SQLITE_DATA_TYPE_INT;
    v10[2] = &unk_2852BA560;
    v9[3] = AMD_SQLITE_DATA_TYPE_INT64;
    v10[3] = &unk_2852BA578;
    v9[4] = AMD_SQLITE_DATA_TYPE_TEXT;
    v10[4] = &unk_2852BA590;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];
    v4 = getTypeEnumFor__sqlDataTypeMap;
    getTypeEnumFor__sqlDataTypeMap = v3;
    MEMORY[0x277D82BD8](v4);
  }

  v7 = [getTypeEnumFor__sqlDataTypeMap objectForKey:location[0]];
  if (v7)
  {
    v6 = [v7 unsignedIntValue];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v6;
}

- (id)getCreateStatementPart
{
  v16 = self;
  v15[1] = a2;
  v15[0] = MEMORY[0x277D82BE0](&stru_2852A6E28);
  v13 = 0;
  v12 = 0;
  if ([(AMDSQLiteColumnSpec *)v16 notNull])
  {
    v14 = [(AMDSQLiteColumnSpec *)v16 defaultValue];
    v13 = 1;
    v12 = v14 != 0;
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  if (v12)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [(AMDSQLiteColumnSpec *)v16 defaultValue];
    v2 = [v10 stringWithFormat:@" ON CONFLICT REPLACE DEFAULT '%@'", v11];
    v3 = v15[0];
    v15[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v11);
  }

  v6 = MEMORY[0x277CCACA8];
  v8 = [(AMDSQLiteColumnSpec *)v16 name];
  v7 = [(AMDSQLiteColumnSpec *)v16 typeString];
  if ([(AMDSQLiteColumnSpec *)v16 notNull])
  {
    v4 = @" NOT NULL";
  }

  else
  {
    v4 = &stru_2852A6E28;
  }

  v9 = [v6 stringWithFormat:@"%@ %@%@%@", v8, v7, v4, v15[0]];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(v15, 0);

  return v9;
}

- (id)getSelectColumnName
{
  v4 = [(AMDSQLiteColumnSpec *)self alias];
  v7 = 0;
  v5 = 0;
  if (v4)
  {
    v8 = [(AMDSQLiteColumnSpec *)self alias];
    v7 = 1;
    v2 = MEMORY[0x277D82BE0](v8);
  }

  else
  {
    v6 = [(AMDSQLiteColumnSpec *)self name];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](v6);
  }

  v10 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  MEMORY[0x277D82BD8](v4);

  return v10;
}

- (id)getSelectColumnExpression
{
  v10 = [(AMDSQLiteColumnSpec *)self derivationExpression];
  MEMORY[0x277D82BD8](v10);
  if (v10)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(AMDSQLiteColumnSpec *)self derivationExpression];
    v7 = [(AMDSQLiteColumnSpec *)self alias];
    v13 = 0;
    v11 = 0;
    if (v7)
    {
      v14 = [(AMDSQLiteColumnSpec *)self alias];
      v13 = 1;
      v4 = v14;
    }

    else
    {
      v12 = [(AMDSQLiteColumnSpec *)self name];
      v11 = 1;
      v4 = v12;
    }

    v24 = [v5 stringWithFormat:@"%@ AS %@", v6, v4];
    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v9 = [(AMDSQLiteColumnSpec *)self alias];
    v21 = 0;
    v19 = 0;
    v17 = 0;
    v15 = 0;
    if (v9)
    {
      v8 = MEMORY[0x277CCACA8];
      v22 = [(AMDSQLiteColumnSpec *)self name];
      v21 = 1;
      v20 = [(AMDSQLiteColumnSpec *)self alias];
      v19 = 1;
      v18 = [v8 stringWithFormat:@"%@ AS %@", v22, v20];
      v17 = 1;
      v2 = MEMORY[0x277D82BE0](v18);
    }

    else
    {
      v16 = [(AMDSQLiteColumnSpec *)self name];
      v15 = 1;
      v2 = MEMORY[0x277D82BE0](v16);
    }

    v24 = v2;
    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    if (v17)
    {
      MEMORY[0x277D82BD8](v18);
    }

    if (v19)
    {
      MEMORY[0x277D82BD8](v20);
    }

    if (v21)
    {
      MEMORY[0x277D82BD8](v22);
    }

    MEMORY[0x277D82BD8](v9);
  }

  return v24;
}

- (AMDSQLiteColumnSpec)initWithDict:(id)a3 withName:(id)a4 error:(id *)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = a5;
  v5 = v44;
  v44 = 0;
  v40.receiver = v5;
  v40.super_class = AMDSQLiteColumnSpec;
  v44 = [(AMDSQLiteColumnSpec *)&v40 init];
  objc_storeStrong(&v44, v44);
  v39 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v38 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v47, v42);
    _os_log_debug_impl(&dword_240CB9000, v39, v38, "SQLITE Loading schema for column '%@'", v47, 0xCu);
  }

  objc_storeStrong(&v39, 0);
  [v44 setName:v42];
  v29 = [location[0] objectForKey:AMD_SQLITE_TYPE];
  [v44 setTypeString:?];
  MEMORY[0x277D82BD8](v29);
  v30 = [v44 typeString];
  MEMORY[0x277D82BD8](v30);
  if (v30)
  {
    v26 = [v44 typeString];
    v25 = [v26 uppercaseString];
    [v44 setTypeString:?];
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    v27 = [v44 typeString];
    v7 = [AMDSQLiteColumnSpec getTypeEnumFor:?];
    [v44 setDataType:v7];
    MEMORY[0x277D82BD8](v27);
    if ([v44 dataType] == 1)
    {
      [v44 setNotNull:0];
    }

    else
    {
      v36 = [location[0] objectForKey:AMD_SQLITE_NOT_NULL];
      if (v36)
      {
        v24 = [v36 intValue] != 0;
      }

      else
      {
        v24 = 0;
      }

      [v44 setNotNull:v24];
      objc_storeStrong(&v36, 0);
    }

    v35 = [location[0] objectForKey:AMD_SQLITE_UNIQUE];
    if (v35)
    {
      v23 = [v35 intValue] != 0;
    }

    else
    {
      v23 = 0;
    }

    [v44 setUnique:v23];
    [v44 setDefaultValue:0];
    v34 = [location[0] objectForKey:AMD_SQLITE_DEFAULT_VALUE];
    if (v34)
    {
      v22 = [v44 dataType];
      if (!v22)
      {
LABEL_27:
        v19 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Bad data type"];
        v10 = v19;
        *v41 = v19;
        v45 = 0;
        v37 = 1;
        goto LABEL_31;
      }

      if (v22 != 1)
      {
        if ((v22 - 2) <= 2)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v21 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Not a numeric default"];
            v8 = v21;
            *v41 = v21;
            v45 = 0;
            v37 = 1;
LABEL_31:
            objc_storeStrong(&v34, 0);
            objc_storeStrong(&v35, 0);
            goto LABEL_32;
          }
        }

        else
        {
          if (v22 != 5)
          {
            goto LABEL_27;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Not a string default"];
            v9 = v20;
            *v41 = v20;
            v45 = 0;
            v37 = 1;
            goto LABEL_31;
          }
        }

        [v44 setDefaultValue:v34];
      }
    }

    v17 = [location[0] objectForKey:AMD_SQLITE_ALIAS];
    [v44 setAlias:?];
    MEMORY[0x277D82BD8](v17);
    v18 = [location[0] objectForKey:AMD_SQLITE_DERIVATION_EXP];
    [v44 setDerivationExpression:?];
    MEMORY[0x277D82BD8](v18);
    v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v12 = v42;
      v13 = [v44 dataType];
      v14 = [v44 notNull];
      v16 = [v44 defaultValue];
      v15 = [v44 derivationExpression];
      __os_log_helper_16_2_6_8_64_4_0_4_0_8_64_8_64_4_0(v46, v12, v13, v14, v16, v15, [v44 unique]);
      _os_log_debug_impl(&dword_240CB9000, v33, OS_LOG_TYPE_DEBUG, "SQLITE Loaded schema for column '%@', type: %u, notNull: %u, default: %@, derivation: %@, unique:%u", v46, 0x32u);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
    }

    objc_storeStrong(&v33, 0);
    v45 = MEMORY[0x277D82BE0](v44);
    v37 = 1;
    goto LABEL_31;
  }

  v28 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"No data type"];
  v6 = v28;
  *v41 = v28;
  v45 = 0;
  v37 = 1;
LABEL_32:
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v44, 0);
  *MEMORY[0x277D85DE8];
  return v45;
}

- (BOOL)isRequired
{
  if (![(AMDSQLiteColumnSpec *)self notNull])
  {
    return 0;
  }

  v2 = [(AMDSQLiteColumnSpec *)self defaultValue];
  v5 = v2 == 0;
  MEMORY[0x277D82BD8](v2);
  return v5;
}

@end