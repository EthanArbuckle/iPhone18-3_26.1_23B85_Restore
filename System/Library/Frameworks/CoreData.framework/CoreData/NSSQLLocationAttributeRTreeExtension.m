@interface NSSQLLocationAttributeRTreeExtension
+ (uint64_t)newRTReeTableNameForAttribute:(uint64_t)a3 onEntity:;
- (BOOL)isEqualToExtension:(id)a3;
- (BOOL)validate:(id *)a3;
- (BOOL)validatePropertyWithDescription:(uint64_t)a3 andName:(uint64_t)a4 forUseAs:(uint64_t)a5 onAttributeNamed:(uint64_t)a6 onEntityNamed:(uint64_t *)a7 error:;
- (NSSQLLocationAttributeRTreeExtension)initWithObjectFromUserInfo:(id)a3 onAttributeNamed:(id)a4 onEntity:(id)a5;
- (void)dealloc;
- (void)generateSQLStrings;
@end

@implementation NSSQLLocationAttributeRTreeExtension

- (NSSQLLocationAttributeRTreeExtension)initWithObjectFromUserInfo:(id)a3 onAttributeNamed:(id)a4 onEntity:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = NSSQLLocationAttributeRTreeExtension;
  v8 = [(NSSQLLocationAttributeRTreeExtension *)&v19 init];
  if (!v8)
  {
    goto LABEL_16;
  }

  if (!a3 || ([a3 isNSArray] & 1) == 0 && (objc_msgSend(a3, "isNSString") & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v14 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v16 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        if (v16)
        {
          *buf = 138412290;
          v21 = a4;
LABEL_18:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: UserInfo Object for RTree location must be either an array or a comma separated string of two components identifying the latitude / longitude properties - %@\n", buf, 0xCu);
        }
      }

      else if (v16)
      {
        *buf = 138412290;
        v21 = a4;
        goto LABEL_18;
      }
    }

    _NSCoreDataLog_console(1, "UserInfo Object for RTree location must be either an array or a comma separated string of two components identifying the latitude / longitude properties - %@", a4);
    objc_autoreleasePoolPop(v13);

    v8 = 0;
    goto LABEL_16;
  }

  v8->_userInfoObject = a3;
  v8->_sqlEntity = a5;
  v8->_attributeName = a4;
  v8->_components = 0;
  v9 = [objc_msgSend(-[NSSQLEntity entityDescription](v8->_sqlEntity "entityDescription")];
  v8->_attributeDescription = v9;
  v8->_rtreeTableName = [NSSQLLocationAttributeRTreeExtension newRTReeTableNameForAttribute:v9 onEntity:[(NSSQLEntity *)v8->_sqlEntity entityDescription]];
  v8->_latProp = 0;
  v8->_longProp = 0;
  v8->_insertSQLStrings = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v8->_dropSQLStrings = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v8->_bulkUpdateSQLStrings = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v10 = [v8->_userInfoObject isNSArray];
  userInfoObject = v8->_userInfoObject;
  if (v10)
  {
    v12 = [userInfoObject copy];
LABEL_13:
    v8->_components = v12;
    goto LABEL_16;
  }

  if ([userInfoObject isNSString])
  {
    v12 = [-[NSObject stringByReplacingOccurrencesOfString:withString:](v8->_userInfoObject stringByReplacingOccurrencesOfString:@" " withString:{&stru_1EF3F1768), "componentsSeparatedByString:", @", "}];
    goto LABEL_13;
  }

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (uint64_t)newRTReeTableNameForAttribute:(uint64_t)a3 onEntity:
{
  objc_opt_self();
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (a3)
  {
    if (atomic_load((a3 + 124)))
    {
      v7 = *(a3 + 72);
    }

    else
    {
      do
      {
        v7 = a3;
        a3 = [a3 superentity];
      }

      while (a3);
    }
  }

  else
  {
    v7 = 0;
  }

  return [v5 initWithFormat:@"Z_RT_%@_%@", objc_msgSend(v7, "name"), objc_msgSend(a2, "name")];
}

- (void)dealloc
{
  self->_userInfoObject = 0;

  self->_components = 0;
  self->_sqlEntity = 0;

  self->_attributeName = 0;
  self->_attributeDescription = 0;

  self->_rtreeTableName = 0;
  self->_latProp = 0;

  self->_longProp = 0;
  self->_insertSQLStrings = 0;

  self->_dropSQLStrings = 0;
  self->_bulkUpdateSQLStrings = 0;
  v3.receiver = self;
  v3.super_class = NSSQLLocationAttributeRTreeExtension;
  [(NSSQLLocationAttributeRTreeExtension *)&v3 dealloc];
}

- (BOOL)isEqualToExtension:(id)a3
{
  v17.receiver = self;
  v17.super_class = NSSQLLocationAttributeRTreeExtension;
  if (([(NSSQLLocationAttributeRTreeExtension *)&v17 isEqual:?]& 1) != 0)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = [(NSArray *)self->_components count];
  v7 = a3 ? *(a3 + 2) : 0;
  if (v6 != [v7 count])
  {
    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  components = self->_components;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__NSSQLLocationAttributeRTreeExtension_isEqualToExtension___block_invoke;
  v12[3] = &unk_1E6EC46E0;
  v12[4] = a3;
  v12[5] = &v13;
  [(NSArray *)components enumerateObjectsUsingBlock:v12];
  if (*(v14 + 24) == 1 && (!a3 ? (v9 = 0) : (v9 = *(a3 + 6)), [(NSAttributeDescription *)self->_attributeDescription isEqual:v9]))
  {
    if (a3)
    {
      v10 = *(a3 + 3);
    }

    else
    {
      v10 = 0;
    }

    v5 = [(NSStoreMapping *)self->_sqlEntity isEqual:v10];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __59__NSSQLLocationAttributeRTreeExtension_isEqualToExtension___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  result = [a2 isEqualToString:{objc_msgSend(v7, "objectAtIndexedSubscript:")}];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (BOOL)validate:(id *)a3
{
  v46[1] = *MEMORY[0x1E69E9840];
  v32 = 0;
  v5 = [(NSSQLEntity *)self->_sqlEntity entityDescription];
  attributeDescription = self->_attributeDescription;
  if (!attributeDescription)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A250];
    v37 = *MEMORY[0x1E696A588];
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to configure location index: couldn't find an attribute named '%@' on '%@'", self->_attributeName, objc_msgSend(-[NSSQLEntity entityDescription](self->_sqlEntity, "entityDescription"), "name")];
    v15 = MEMORY[0x1E695DF20];
    v16 = &v38;
    v17 = &v37;
LABEL_6:
    v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
    v19 = v13;
    v20 = v14;
    goto LABEL_9;
  }

  if (![(NSPropertyDescription *)attributeDescription isTransient])
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RTree tables can only be created to back transient attributes. %@.%@ is not transient.", objc_msgSend(v5, "name"), -[NSPropertyDescription name](self->_attributeDescription, "name")];
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v39 = *MEMORY[0x1E696A588];
    v40 = v21;
    v10 = MEMORY[0x1E695DF20];
    v11 = &v40;
    v12 = &v39;
    goto LABEL_8;
  }

  if ([(NSAttributeDescription *)self->_attributeDescription attributeType])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to configure location index: %@.%@ type is %@ but should be %@.", objc_msgSend(v5, "name"), -[NSPropertyDescription name](self->_attributeDescription, "name"), +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", -[NSAttributeDescription attributeType](self->_attributeDescription, "attributeType")), +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", 0)];
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v41 = *MEMORY[0x1E696A588];
    v42 = v7;
    v10 = MEMORY[0x1E695DF20];
    v11 = &v42;
    v12 = &v41;
LABEL_8:
    v18 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
    v19 = v8;
    v20 = v9;
LABEL_9:
    v22 = [v19 errorWithDomain:v20 code:134060 userInfo:v18];
    v32 = v22;
    if (v22)
    {
      goto LABEL_10;
    }

LABEL_22:
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLLocationAttributeRTreeExtension.m";
      v35 = 1024;
      v36 = 181;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v29 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v34 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLLocationAttributeRTreeExtension.m";
      v35 = 1024;
      v36 = 181;
      _os_log_fault_impl(&dword_18565F000, v29, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }

    goto LABEL_26;
  }

  components = self->_components;
  if (!components)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A250];
    v43 = *MEMORY[0x1E696A588];
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@ has an invalid description for a location index. It must be either an array or a comma separated string of two components identifying the latitude / longitude properties to use.", objc_msgSend(-[NSSQLEntity entityDescription](self->_sqlEntity, "entityDescription"), "name"), self->_attributeName];
    v15 = MEMORY[0x1E695DF20];
    v16 = &v44;
    v17 = &v43;
    goto LABEL_6;
  }

  if ([(NSArray *)components count]!= 2)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A250];
    v45 = *MEMORY[0x1E696A588];
    v46[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' is not a valid description for a location index, it should include two comma separated components or be an array of two string identifying the attributes which make up the location index.", self->_userInfoObject];
    v15 = MEMORY[0x1E695DF20];
    v16 = v46;
    v17 = &v45;
    goto LABEL_6;
  }

  v25 = [(NSArray *)self->_components firstObject];
  v26 = [(NSArray *)self->_components lastObject];
  if (v5)
  {
    self->_latProp = [objc_msgSend(v5 "propertiesByName")];
    v27 = [objc_msgSend(v5 "propertiesByName")];
  }

  else
  {
    v27 = 0;
    self->_latProp = 0;
  }

  self->_longProp = v27;
  if (-[NSSQLLocationAttributeRTreeExtension validatePropertyWithDescription:andName:forUseAs:onAttributeNamed:onEntityNamed:error:](self, self->_latProp, v25, @"latitude", self->_attributeName, [v5 name], &v32) && -[NSSQLLocationAttributeRTreeExtension validatePropertyWithDescription:andName:forUseAs:onAttributeNamed:onEntityNamed:error:](self, self->_longProp, v26, @"longitude", self->_attributeName, objc_msgSend(v5, "name"), &v32))
  {
    [(NSSQLLocationAttributeRTreeExtension *)self generateSQLStrings];
    v23 = 1;
    goto LABEL_27;
  }

  v22 = v32;
  if (!v32)
  {
    goto LABEL_22;
  }

LABEL_10:
  if (!a3)
  {
LABEL_26:
    v23 = 0;
    goto LABEL_27;
  }

  v23 = 0;
  *a3 = v22;
LABEL_27:
  v30 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)validatePropertyWithDescription:(uint64_t)a3 andName:(uint64_t)a4 forUseAs:(uint64_t)a5 onAttributeNamed:(uint64_t)a6 onEntityNamed:(uint64_t *)a7 error:
{
  v44[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v13 = result;
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to configure location index (invalid %@ on %@.%@): ", a4, a6, a5];
    v15 = v14;
    if (a2)
    {
      if ([a2 _isAttribute])
      {
        if ([a2 isTransient])
        {
          v16 = [v15 stringByAppendingFormat:@"%@.%@ is a transient attribute.", a6, a3];
          v17 = MEMORY[0x1E696ABC0];
          v18 = *MEMORY[0x1E696A250];
          v41 = *MEMORY[0x1E696A588];
          v42 = v16;
          v19 = MEMORY[0x1E695DF20];
          v20 = &v42;
          v21 = &v41;
        }

        else
        {
          if ([a2 attributeType] == 500)
          {
            result = 1;
            goto LABEL_19;
          }

          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to configure location index (invalid %@ on %@.%@): %@.%@ is of type %@ and should be of type %@.", a4, objc_msgSend(objc_msgSend(*(v13 + 24), "entityDescription"), "name"), a5, objc_msgSend(objc_msgSend(*(v13 + 24), "entityDescription"), "name"), a3, +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", objc_msgSend(a2, "attributeType")), +[NSAttributeDescription stringForAttributeType:](NSAttributeDescription, "stringForAttributeType:", 500)];
          v17 = MEMORY[0x1E696ABC0];
          v18 = *MEMORY[0x1E696A250];
          v43 = *MEMORY[0x1E696A588];
          v44[0] = v32;
          v19 = MEMORY[0x1E695DF20];
          v20 = v44;
          v21 = &v43;
        }
      }

      else
      {
        v27 = [v15 stringByAppendingFormat:@"%@.%@ is a relationship.", a6, a3];
        v17 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A250];
        v39 = *MEMORY[0x1E696A588];
        v40 = v27;
        v19 = MEMORY[0x1E695DF20];
        v20 = &v40;
        v21 = &v39;
      }

      v24 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
      v25 = v17;
      v26 = v18;
    }

    else
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A250];
      v37 = *MEMORY[0x1E696A588];
      v38 = [v14 stringByAppendingFormat:@"couldn't find an attribute named '%@' on '%@' to use as the %@.", a3, a6, a4];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v25 = v22;
      v26 = v23;
    }

    v28 = [v25 errorWithDomain:v26 code:134060 userInfo:v24];
    if (v28)
    {
      if (a7)
      {
        result = 0;
        *a7 = v28;
        goto LABEL_19;
      }

LABEL_16:
      result = 0;
      goto LABEL_19;
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLLocationAttributeRTreeExtension.m";
      v35 = 1024;
      v36 = 226;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v30 = _PFLogGetLogStream(17);
    result = os_log_type_enabled(v30, OS_LOG_TYPE_FAULT);
    if (result)
    {
      *buf = 136315394;
      v34 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLLocationAttributeRTreeExtension.m";
      v35 = 1024;
      v36 = 226;
      _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      goto LABEL_16;
    }
  }

LABEL_19:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)generateSQLStrings
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v3 = [*(a1 + 56) name];
    if (v2)
    {
      v2 = [v2[5] objectForKey:v3];
    }

    v4 = *(a1 + 24);
    v5 = [*(a1 + 64) name];
    if (v4)
    {
      v6 = [*(v4 + 40) objectForKey:v5];
    }

    else
    {
      v6 = 0;
    }

    v7 = [*(a1 + 24) tableName];
    v8 = [v2 columnName];
    v9 = [v6 columnName];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v10 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE VIRTUAL TABLE IF NOT EXISTS %@ USING RTREE (Z_PK INTEGER PRIMARY KEY, %@_MIN FLOAT, %@_MAX FLOAT, %@_MIN FLOAT, %@_MAX FLOAT)", *(a1 + 40), v8, v8, v9, v9)}];
    [v11 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"DROP TABLE IF EXISTS %@", *(a1 + 40))}];
    [v10 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW BEGIN INSERT OR REPLACE INTO %@ (Z_PK, %@_MIN, %@_MAX, %@_MIN, %@_MAX) VALUES (NEW.Z_PK, NEW.%@, NEW.%@, NEW.%@, NEW.%@) ; END", *(a1 + 40), v7, *(a1 + 40), v8, v8, v9, v9, v8, v8, v9, v9)}];
    [v11 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"DROP TRIGGER IF EXISTS %@_INSERT", *(a1 + 40))}];
    [v10 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE TRIGGER IF NOT EXISTS %@_UPDATE AFTER UPDATE ON %@ FOR EACH ROW BEGIN DELETE FROM %@ WHERE Z_PK = NEW.Z_PK ; INSERT INTO %@ (Z_PK, %@_MIN, %@_MAX, %@_MIN, %@_MAX) VALUES (NEW.Z_PK, NEW.%@, NEW.%@, NEW.%@, NEW.%@) ; END", *(a1 + 40), v7, *(a1 + 40), *(a1 + 40), v8, v8, v9, v9, v8, v8, v9, v9)}];
    [v11 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"DROP TRIGGER IF EXISTS %@_UPDATE", *(a1 + 40))}];
    [v10 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE TRIGGER IF NOT EXISTS %@_DELETE AFTER DELETE ON %@ FOR EACH ROW BEGIN DELETE FROM %@ WHERE Z_PK = OLD.Z_PK ; END", *(a1 + 40), v7, *(a1 + 40))}];
    [v11 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"DROP TRIGGER IF EXISTS %@_DELETE", *(a1 + 40))}];
    [v12 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"INSERT OR REPLACE INTO %@ (Z_PK, %@_MIN, %@_MAX, %@_MIN, %@_MAX) SELECT Z_PK, %@, %@, %@, %@ from %@ where %@ NOT NULL and %@ NOT NULL", *(a1 + 40), v8, v8, v9, v9, v8, v8, v9, v9, v7, v8, v9)}];

    *(a1 + 72) = [v10 copy];
    *(a1 + 80) = [v11 copy];

    *(a1 + 88) = [v12 copy];
  }
}

@end