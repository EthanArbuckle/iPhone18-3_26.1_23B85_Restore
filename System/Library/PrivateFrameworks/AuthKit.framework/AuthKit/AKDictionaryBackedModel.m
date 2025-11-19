@interface AKDictionaryBackedModel
- (AKDictionaryBackedModel)initWithCoder:(id)a3;
- (AKDictionaryBackedModel)initWithValues:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKey:(id)a3 as:(Class)a4;
- (id)parseValue:(id)a3 atKey:(id)a4;
- (id)validObjectForKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AKDictionaryBackedModel

- (AKDictionaryBackedModel)initWithValues:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v33;
  v33 = 0;
  v31.receiver = v3;
  v31.super_class = AKDictionaryBackedModel;
  v14 = [(AKDictionaryBackedModel *)&v31 init];
  v33 = v14;
  objc_storeStrong(&v33, v14);
  if (!v14)
  {
    goto LABEL_8;
  }

  v30 = [v33 validationRequirements];
  v11 = MEMORY[0x1E695DF70];
  v12 = [v30 allKeys];
  v29 = [v11 arrayWithArray:?];
  MEMORY[0x1E69E5920](v12);
  v13 = location[0];
  v20 = MEMORY[0x1E69E9820];
  v21 = -1073741824;
  v22 = 0;
  v23 = __42__AKDictionaryBackedModel_initWithValues___block_invoke;
  v24 = &unk_1E73D6E38;
  v25 = MEMORY[0x1E69E5928](v33);
  v26 = MEMORY[0x1E69E5928](v30);
  v27 = MEMORY[0x1E69E5928](v29);
  v28 = [v13 aaf_map:&v20];
  if ([v29 count])
  {
    v19 = _AKLogSystem();
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      type = v18;
      v4 = objc_opt_class();
      v10 = NSStringFromClass(v4);
      v6 = MEMORY[0x1E69E5928](v10);
      v17 = v6;
      v9 = [v29 aaf_arrayAsCommaSeperatedString];
      v16 = MEMORY[0x1E69E5928](v9);
      __os_log_helper_16_2_2_8_64_8_64(v35, v6, v16);
      _os_log_error_impl(&dword_193225000, log, type, "AKDictionaryBackedModel %@ is missing or has invalid value(s) at key(s): %@", v35, 0x16u);
      MEMORY[0x1E69E5920](v9);
      MEMORY[0x1E69E5920](v10);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v19, 0);
    v34 = 0;
    v15 = 1;
  }

  else
  {
    objc_storeStrong(v33 + 1, v28);
    v15 = 0;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  if (!v15)
  {
LABEL_8:
    v34 = MEMORY[0x1E69E5928](v33);
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v33, 0);
  *MEMORY[0x1E69E9840];
  return v34;
}

id __42__AKDictionaryBackedModel_initWithValues___block_invoke(id *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  v10[0] = [a1[4] parseValue:v11 atKey:location[0]];
  v9 = [a1[5] valueForKey:location[0]];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      [a1[6] removeObject:location[0]];
      v13 = MEMORY[0x1E69E5928](v10[0]);
      v8 = 1;
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_8_64_8_64(v14, v9, location[0], v11);
        _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "AKDictionaryBackedModel initWithValues requires %@ for key %@, but got %@ instead", v14, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      v13 = 0;
      v8 = 1;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E5928](v10[0]);
    v8 = 1;
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v13;

  return v3;
}

- (id)parseValue:(id)a3 atKey:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = MEMORY[0x1E69E5928](location[0]);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)validObjectForKey:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(AKDictionaryBackedModel *)v8 validationRequirements];
  v6 = [(NSDictionary *)v5 objectForKey:location[0]];
  MEMORY[0x1E69E5920](v5);
  if (v6)
  {
    v9 = [(AKDictionaryBackedModel *)v8 objectForKey:location[0] as:v6];
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

- (id)objectForKey:(id)a3 as:(Class)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v11 = [(AKDictionaryBackedModel *)v14 objectForKey:location[0]];
  v4 = objc_opt_class();
  v10 = _AKSafeCast_9(v4, v11);
  if (v10)
  {
    v15 = MEMORY[0x1E69E5928](v10);
    v9 = 1;
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_64_8_64_8_64(v16, location[0], v11, v12);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "AKDictionaryBackedModel objectForKey: %@ is %@ but expected a(n) %@", v16, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v15 = 0;
    v9 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v5 = v15;

  return v5;
}

- (id)objectForKey:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(AKDictionaryBackedModel *)v10 values];
  v8 = [(NSDictionary *)v5 objectForKeyedSubscript:location[0]];
  MEMORY[0x1E69E5920](v5);
  if (v8)
  {
    v11 = MEMORY[0x1E69E5928](v8);
    v7 = 1;
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v12, location[0]);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "AKDictionaryBackedModel objectForKey: %@ is missing", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v11 = MEMORY[0x1E69E5928](v8);
    v7 = 1;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v11;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E69E5928](location[0]);
    v5 = [(AKDictionaryBackedModel *)v9 values];
    v4 = [v6 values];
    v10 = [(NSDictionary *)v5 isEqualToDictionary:?];
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v5);
    v7 = 1;
    objc_storeStrong(&v6, 0);
  }

  else
  {
    v10 = 0;
    v7 = 1;
  }

  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(AKDictionaryBackedModel *)v6 values];
  [v3 encodeObject:? forKey:?];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);
}

- (AKDictionaryBackedModel)initWithCoder:(id)a3
{
  v13 = &v19;
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v19;
  v19 = 0;
  v14 = [v3 init];
  v19 = v14;
  objc_storeStrong(&v19, v14);
  if (!v14)
  {
    goto LABEL_6;
  }

  v12 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v17 = [v12 setWithObjects:{v11, v7, v8, v9, v10, objc_opt_class(), 0}];
  v16 = [location[0] decodeObjectOfClasses:v17 forKey:@"_AKDictionaryBackedModelValues"];
  if (v16)
  {
    objc_storeStrong(v19 + 1, v16);
    v15 = 0;
  }

  else
  {
    v20 = 0;
    v15 = 1;
  }

  obj = 0;
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, obj);
  if (!v15)
  {
LABEL_6:
    v20 = MEMORY[0x1E69E5928](v19);
    v15 = 1;
  }

  v5 = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, v5);
  return v20;
}

@end