@interface NSBatchUpdateRequestEncodingToken
- (NSBatchUpdateRequestEncodingToken)initWithCoder:(id)coder;
- (id)initForRequest:(id)request;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSBatchUpdateRequestEncodingToken

- (id)initForRequest:(id)request
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [objc_msgSend(request "propertiesToUpdate")];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    v8 = 0;
    v9 = *v24;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v23 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 constantValue] == 0;
      }

      else
      {
        v12 = [v11 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
      }

      v8 += v12;
      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        v13 = v8;
        self = selfCopy;
        goto LABEL_18;
      }
    }

    v14 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v15 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v17 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        if (v17)
        {
          *buf = 138412290;
          v28 = v11;
LABEL_24:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unsupported Expression with the XPC Store: %@\n", buf, 0xCu);
        }
      }

      else if (v17)
      {
        *buf = 138412290;
        v28 = v11;
        goto LABEL_24;
      }
    }

    _NSCoreDataLog_console(1, "Unsupported Expression with the XPC Store: %@", v11);
    objc_autoreleasePoolPop(v14);

    v18 = 0;
    goto LABEL_22;
  }

  v13 = 0;
LABEL_18:
  v22.receiver = self;
  v22.super_class = NSBatchUpdateRequestEncodingToken;
  v18 = [(NSBatchUpdateRequestEncodingToken *)&v22 init];
  if (v18)
  {
    v18->_entityName = [objc_msgSend(request "entityName")];
    v18->_predicate = [objc_msgSend(request "predicate")];
    v18->_columnsToUpdate = [objc_msgSend(request "propertiesToUpdate")];
    v18->_resultType = [request resultType];
    v18->_nullValueCount = v13;
    v18->_includeSubEntities = [request includesSubentities];
    v18->_secure = [request _secureOperation];
  }

LABEL_22:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)dealloc
{
  self->_entityName = 0;

  self->_predicate = 0;
  self->_columnsToUpdate = 0;
  v3.receiver = self;
  v3.super_class = NSBatchUpdateRequestEncodingToken;
  [(NSBatchUpdateRequestEncodingToken *)&v3 dealloc];
}

- (NSBatchUpdateRequestEncodingToken)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = NSBatchUpdateRequestEncodingToken;
  v4 = [(NSBatchUpdateRequestEncodingToken *)&v14 init];
  if (v4)
  {
    v4->_entityName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"entityName"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_predicate = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"predicate"}];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
    if ([objc_msgSend(coder "allowedClasses")])
    {
      v12 = [v12 setByAddingObjectsFromSet:{objc_msgSend(coder, "allowedClasses")}];
    }

    v4->_columnsToUpdate = [coder decodeObjectOfClasses:v12 forKey:@"columnsToUpdate"];
    v4->_nullValueCount = [coder decodeIntegerForKey:@"nullValueCount"];
    v4->_resultType = [coder decodeIntegerForKey:@"resultType"];
    v4->_includeSubEntities = [coder decodeBoolForKey:@"includeSubEntities"];
    v4->_secure = [coder decodeBoolForKey:@"secure"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  [coder encodeObject:self->_entityName forKey:@"entityName"];
  coderCopy = coder;
  [coder encodeObject:self->_predicate forKey:@"predicate"];
  v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSDictionary count](self->_columnsToUpdate, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  columnsToUpdate = self->_columnsToUpdate;
  v6 = [(NSDictionary *)columnsToUpdate countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(columnsToUpdate);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = [(NSDictionary *)self->_columnsToUpdate objectForKey:v10];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v19 setObject:v11 forKey:{objc_msgSend(v10, "name")}];
          goto LABEL_14;
        }

        v12 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v13 = _pflogging_catastrophic_mode;
          LogStream = _PFLogGetLogStream(1);
          v15 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
          if (v13)
          {
            if (v15)
            {
              goto LABEL_16;
            }
          }

          else if (v15)
          {
LABEL_16:
            *buf = 138412290;
            v25 = v11;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unsupported Expression for the XPC Store: %@\n", buf, 0xCu);
          }
        }

        _NSCoreDataLog_console(1, "Unsupported Expression for the XPC Store: %@", v11);
        objc_autoreleasePoolPop(v12);
LABEL_14:
        ++v9;
      }

      while (v7 != v9);
      v16 = [(NSDictionary *)columnsToUpdate countByEnumeratingWithState:&v20 objects:v26 count:16];
      v7 = v16;
    }

    while (v16);
  }

  [coderCopy encodeObject:v19 forKey:@"columnsToUpdate"];

  [coderCopy encodeInteger:self->_nullValueCount forKey:@"nullValueCount"];
  [coderCopy encodeInteger:self->_resultType forKey:@"resultType"];
  [coderCopy encodeBool:self->_includeSubEntities forKey:@"includeSubEntities"];
  [coderCopy encodeBool:self->_secure forKey:@"secure"];
  v17 = *MEMORY[0x1E69E9840];
}

@end