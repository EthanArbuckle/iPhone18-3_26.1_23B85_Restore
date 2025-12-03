@interface AMDSQLiteColumnSpec
+ (char)getTypeEnumFor:(id)for;
- (AMDSQLiteColumnSpec)initWithDict:(id)dict withName:(id)name error:(id *)error;
- (BOOL)isRequired;
- (id)getCreateStatementPart;
- (id)getSelectColumnExpression;
- (id)getSelectColumnName;
@end

@implementation AMDSQLiteColumnSpec

+ (char)getTypeEnumFor:(id)for
{
  v10[5] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, for);
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
    unsignedIntValue = [v7 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return unsignedIntValue;
}

- (id)getCreateStatementPart
{
  selfCopy = self;
  v15[1] = a2;
  v15[0] = MEMORY[0x277D82BE0](&stru_2852A6E28);
  v13 = 0;
  v12 = 0;
  if ([(AMDSQLiteColumnSpec *)selfCopy notNull])
  {
    defaultValue = [(AMDSQLiteColumnSpec *)selfCopy defaultValue];
    v13 = 1;
    v12 = defaultValue != 0;
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](defaultValue);
  }

  if (v12)
  {
    v10 = MEMORY[0x277CCACA8];
    defaultValue2 = [(AMDSQLiteColumnSpec *)selfCopy defaultValue];
    v2 = [v10 stringWithFormat:@" ON CONFLICT REPLACE DEFAULT '%@'", defaultValue2];
    v3 = v15[0];
    v15[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](defaultValue2);
  }

  v6 = MEMORY[0x277CCACA8];
  name = [(AMDSQLiteColumnSpec *)selfCopy name];
  typeString = [(AMDSQLiteColumnSpec *)selfCopy typeString];
  if ([(AMDSQLiteColumnSpec *)selfCopy notNull])
  {
    v4 = @" NOT NULL";
  }

  else
  {
    v4 = &stru_2852A6E28;
  }

  v9 = [v6 stringWithFormat:@"%@ %@%@%@", name, typeString, v4, v15[0]];
  MEMORY[0x277D82BD8](typeString);
  MEMORY[0x277D82BD8](name);
  objc_storeStrong(v15, 0);

  return v9;
}

- (id)getSelectColumnName
{
  alias = [(AMDSQLiteColumnSpec *)self alias];
  v7 = 0;
  v5 = 0;
  if (alias)
  {
    alias2 = [(AMDSQLiteColumnSpec *)self alias];
    v7 = 1;
    v2 = MEMORY[0x277D82BE0](alias2);
  }

  else
  {
    name = [(AMDSQLiteColumnSpec *)self name];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](name);
  }

  v10 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](name);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](alias2);
  }

  MEMORY[0x277D82BD8](alias);

  return v10;
}

- (id)getSelectColumnExpression
{
  derivationExpression = [(AMDSQLiteColumnSpec *)self derivationExpression];
  MEMORY[0x277D82BD8](derivationExpression);
  if (derivationExpression)
  {
    v5 = MEMORY[0x277CCACA8];
    derivationExpression2 = [(AMDSQLiteColumnSpec *)self derivationExpression];
    alias = [(AMDSQLiteColumnSpec *)self alias];
    v13 = 0;
    v11 = 0;
    if (alias)
    {
      alias2 = [(AMDSQLiteColumnSpec *)self alias];
      v13 = 1;
      v4 = alias2;
    }

    else
    {
      name = [(AMDSQLiteColumnSpec *)self name];
      v11 = 1;
      v4 = name;
    }

    v24 = [v5 stringWithFormat:@"%@ AS %@", derivationExpression2, v4];
    if (v11)
    {
      MEMORY[0x277D82BD8](name);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](alias2);
    }

    MEMORY[0x277D82BD8](alias);
    MEMORY[0x277D82BD8](derivationExpression2);
  }

  else
  {
    alias3 = [(AMDSQLiteColumnSpec *)self alias];
    v21 = 0;
    v19 = 0;
    v17 = 0;
    v15 = 0;
    if (alias3)
    {
      v8 = MEMORY[0x277CCACA8];
      name2 = [(AMDSQLiteColumnSpec *)self name];
      v21 = 1;
      alias4 = [(AMDSQLiteColumnSpec *)self alias];
      v19 = 1;
      v18 = [v8 stringWithFormat:@"%@ AS %@", name2, alias4];
      v17 = 1;
      v2 = MEMORY[0x277D82BE0](v18);
    }

    else
    {
      name3 = [(AMDSQLiteColumnSpec *)self name];
      v15 = 1;
      v2 = MEMORY[0x277D82BE0](name3);
    }

    v24 = v2;
    if (v15)
    {
      MEMORY[0x277D82BD8](name3);
    }

    if (v17)
    {
      MEMORY[0x277D82BD8](v18);
    }

    if (v19)
    {
      MEMORY[0x277D82BD8](alias4);
    }

    if (v21)
    {
      MEMORY[0x277D82BD8](name2);
    }

    MEMORY[0x277D82BD8](alias3);
  }

  return v24;
}

- (AMDSQLiteColumnSpec)initWithDict:(id)dict withName:(id)name error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dict);
  v42 = 0;
  objc_storeStrong(&v42, name);
  errorCopy = error;
  v5 = selfCopy;
  selfCopy = 0;
  v40.receiver = v5;
  v40.super_class = AMDSQLiteColumnSpec;
  selfCopy = [(AMDSQLiteColumnSpec *)&v40 init];
  objc_storeStrong(&selfCopy, selfCopy);
  v39 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v38 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v47, v42);
    _os_log_debug_impl(&dword_240CB9000, v39, v38, "SQLITE Loading schema for column '%@'", v47, 0xCu);
  }

  objc_storeStrong(&v39, 0);
  [selfCopy setName:v42];
  v29 = [location[0] objectForKey:AMD_SQLITE_TYPE];
  [selfCopy setTypeString:?];
  MEMORY[0x277D82BD8](v29);
  typeString = [selfCopy typeString];
  MEMORY[0x277D82BD8](typeString);
  if (typeString)
  {
    typeString2 = [selfCopy typeString];
    uppercaseString = [typeString2 uppercaseString];
    [selfCopy setTypeString:?];
    MEMORY[0x277D82BD8](uppercaseString);
    MEMORY[0x277D82BD8](typeString2);
    typeString3 = [selfCopy typeString];
    v7 = [AMDSQLiteColumnSpec getTypeEnumFor:?];
    [selfCopy setDataType:v7];
    MEMORY[0x277D82BD8](typeString3);
    if ([selfCopy dataType] == 1)
    {
      [selfCopy setNotNull:0];
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

      [selfCopy setNotNull:v24];
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

    [selfCopy setUnique:v23];
    [selfCopy setDefaultValue:0];
    v34 = [location[0] objectForKey:AMD_SQLITE_DEFAULT_VALUE];
    if (v34)
    {
      dataType = [selfCopy dataType];
      if (!dataType)
      {
LABEL_27:
        v19 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Bad data type"];
        v10 = v19;
        *errorCopy = v19;
        v45 = 0;
        v37 = 1;
        goto LABEL_31;
      }

      if (dataType != 1)
      {
        if ((dataType - 2) <= 2)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v21 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Not a numeric default"];
            v8 = v21;
            *errorCopy = v21;
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
          if (dataType != 5)
          {
            goto LABEL_27;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Not a string default"];
            v9 = v20;
            *errorCopy = v20;
            v45 = 0;
            v37 = 1;
            goto LABEL_31;
          }
        }

        [selfCopy setDefaultValue:v34];
      }
    }

    v17 = [location[0] objectForKey:AMD_SQLITE_ALIAS];
    [selfCopy setAlias:?];
    MEMORY[0x277D82BD8](v17);
    v18 = [location[0] objectForKey:AMD_SQLITE_DERIVATION_EXP];
    [selfCopy setDerivationExpression:?];
    MEMORY[0x277D82BD8](v18);
    v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v12 = v42;
      dataType2 = [selfCopy dataType];
      notNull = [selfCopy notNull];
      defaultValue = [selfCopy defaultValue];
      derivationExpression = [selfCopy derivationExpression];
      __os_log_helper_16_2_6_8_64_4_0_4_0_8_64_8_64_4_0(v46, v12, dataType2, notNull, defaultValue, derivationExpression, [selfCopy unique]);
      _os_log_debug_impl(&dword_240CB9000, v33, OS_LOG_TYPE_DEBUG, "SQLITE Loaded schema for column '%@', type: %u, notNull: %u, default: %@, derivation: %@, unique:%u", v46, 0x32u);
      MEMORY[0x277D82BD8](derivationExpression);
      MEMORY[0x277D82BD8](defaultValue);
    }

    objc_storeStrong(&v33, 0);
    v45 = MEMORY[0x277D82BE0](selfCopy);
    v37 = 1;
    goto LABEL_31;
  }

  v28 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"No data type"];
  v6 = v28;
  *errorCopy = v28;
  v45 = 0;
  v37 = 1;
LABEL_32:
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v45;
}

- (BOOL)isRequired
{
  if (![(AMDSQLiteColumnSpec *)self notNull])
  {
    return 0;
  }

  defaultValue = [(AMDSQLiteColumnSpec *)self defaultValue];
  v5 = defaultValue == 0;
  MEMORY[0x277D82BD8](defaultValue);
  return v5;
}

@end