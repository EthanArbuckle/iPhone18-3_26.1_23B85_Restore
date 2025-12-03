@interface NSPersistentHistoryChangeRequest
+ (NSPersistentHistoryChangeRequest)deleteHistoryBeforeDate:(NSDate *)date;
+ (NSPersistentHistoryChangeRequest)deleteHistoryBeforeToken:(NSPersistentHistoryToken *)token;
+ (NSPersistentHistoryChangeRequest)deleteHistoryBeforeTransaction:(NSPersistentHistoryTransaction *)transaction;
+ (NSPersistentHistoryChangeRequest)fetchHistoryAfterDate:(NSDate *)date;
+ (NSPersistentHistoryChangeRequest)fetchHistoryAfterToken:(NSPersistentHistoryToken *)token;
+ (NSPersistentHistoryChangeRequest)fetchHistoryAfterTransaction:(NSPersistentHistoryTransaction *)transaction;
+ (NSPersistentHistoryChangeRequest)fetchHistoryWithFetchRequest:(NSFetchRequest *)fetchRequest;
+ (id)_stringForHistoryRequestResultType:(int64_t)type;
+ (id)decodeFromXPCArchive:(id)archive withContext:(id)context withPolicy:(id)policy;
+ (id)deleteHistoryBeforeDate:(id)date whenHistoryPercentageOfStoreIsGreaterThan:(unint64_t)than;
+ (id)deleteHistoryBeforeToken:(id)token whenHistoryPercentageOfStoreIsGreaterThan:(unint64_t)than;
+ (id)deleteRequest;
+ (id)fetchHistoryTransactionForToken:(id)token;
- (BOOL)isEqual:(id)equal;
- (NSFetchRequest)fetchRequestDescribingChangeRequestForStore:(void *)store;
- (NSFetchRequest)fetchRequestDescribingTokenCheckForStore:(NSFetchRequest *)store;
- (NSPersistentHistoryChangeRequest)init;
- (NSPersistentHistoryChangeRequest)initWithDate:(id)date delete:(BOOL)delete percentageOfDB:(unint64_t)b;
- (NSPersistentHistoryChangeRequest)initWithFetchRequest:(id)request;
- (NSPersistentHistoryChangeRequest)initWithToken:(id)token delete:(BOOL)delete percentageOfDB:(unint64_t)b;
- (NSPersistentHistoryChangeRequest)initWithTransactionID:(id)d delete:(BOOL)delete transactionOnly:(BOOL)only percentageOfDB:(unint64_t)b;
- (NSPersistentHistoryChangeRequest)initWithTransactionIDs:(id)ds;
- (NSPersistentHistoryChangeRequest)initWithTransactionToken:(id)token;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)encodeForXPC;
- (id)entityNameToFetch;
- (id)predicateForStoreIdentifier:(id)identifier;
- (id)propertiesToFetchForEntity:(id)entity includeTransactionStrings:(BOOL)strings;
- (unint64_t)fetchBatchSize;
- (unint64_t)fetchLimit;
- (unint64_t)fetchOffset;
- (void)_predicateForStoreID:(void *)result;
- (void)dealloc;
- (void)setFetchBatchSize:(unint64_t)size;
- (void)setFetchLimit:(unint64_t)limit;
- (void)setFetchOffset:(unint64_t)offset;
- (void)setResultType:(NSPersistentHistoryResultType)resultType;
@end

@implementation NSPersistentHistoryChangeRequest

- (NSPersistentHistoryChangeRequest)init
{
  v5.receiver = self;
  v5.super_class = NSPersistentHistoryChangeRequest;
  v2 = [(NSPersistentHistoryChangeRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_resultType = 5;
    v2->_additionalPrivateIvars = PF_CALLOC_OBJECT_ARRAY(5);
  }

  return v3;
}

- (unint64_t)fetchLimit
{
  result = *(self->_additionalPrivateIvars + 1);
  if (result)
  {
    return [result unsignedIntegerValue];
  }

  return result;
}

- (unint64_t)fetchBatchSize
{
  result = *(self->_additionalPrivateIvars + 2);
  if (result)
  {
    return [result unsignedIntegerValue];
  }

  return result;
}

- (id)entityNameToFetch
{
  if ([(NSPersistentHistoryChangeRequest *)self fetchRequest])
  {
    v3 = @"TRANSACTION";
    if (![(NSString *)[(NSFetchRequest *)[(NSPersistentHistoryChangeRequest *)self fetchRequest] entityName] isEqualToString:@"TRANSACTION"]&& ![(NSString *)[(NSFetchRequest *)[(NSPersistentHistoryChangeRequest *)self fetchRequest] entityName] isEqualToString:@"Transaction"])
    {
      v3 = @"CHANGE";
      if (![(NSString *)[(NSFetchRequest *)[(NSPersistentHistoryChangeRequest *)self fetchRequest] entityName] isEqualToString:@"CHANGE"]&& ![(NSString *)[(NSFetchRequest *)[(NSPersistentHistoryChangeRequest *)self fetchRequest] entityName] isEqualToString:@"Change"])
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = self->_resultType - 1;
    if (v4 > 5)
    {
      v5 = PFPersistentHistoryTransaction;
    }

    else
    {
      v5 = off_1E6EC1450[v4];
    }

    return *v5;
  }

  return v3;
}

- (void)dealloc
{
  self->_token = 0;

  self->_transactionIDs = 0;
  self->_transactionNumber = 0;
  additionalPrivateIvars = self->_additionalPrivateIvars;
  if (additionalPrivateIvars)
  {

    PF_FREE_OBJECT_ARRAY(self->_additionalPrivateIvars);
    self->_additionalPrivateIvars = 0;
  }

  v4.receiver = self;
  v4.super_class = NSPersistentHistoryChangeRequest;
  [(NSPersistentStoreRequest *)&v4 dealloc];
}

- (unint64_t)fetchOffset
{
  result = *(self->_additionalPrivateIvars + 4);
  if (result)
  {
    return [result unsignedIntegerValue];
  }

  return result;
}

- (id)encodeForXPC
{
  v2 = [[NSPersistentHistoryChangeRequestToken alloc] initForRequest:self];
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 setDelegate:objc_opt_class()];
  [v3 encodeObject:v2 forKey:@"root"];
  [v3 finishEncoding];
  encodedData = [v3 encodedData];

  return encodedData;
}

+ (id)decodeFromXPCArchive:(id)archive withContext:(id)context withPolicy:(id)policy
{
  v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:archive error:0];
  [v7 setDelegate:context];
  v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"root"];

  if ([v8 fetchData])
  {
    v9 = +[NSFetchRequest decodeFromXPCArchive:withContext:andPolicy:](NSFetchRequest, "decodeFromXPCArchive:withContext:andPolicy:", [v8 fetchData], context, policy);
    if ([v8 delete])
    {
      v10 = +[NSPersistentHistoryChangeRequest deleteRequest];
      [(NSPersistentHistoryChangeRequest *)v10 setFetchRequest:v9];
    }

    else
    {
      v10 = [[NSPersistentHistoryChangeRequest alloc] initWithFetchRequest:v9];
      v13 = v10;
    }
  }

  else
  {
    if ([v8 date] || objc_msgSend(v8, "token"))
    {
      v10 = 0;
    }

    else
    {
      if ([v8 delete])
      {
        if ([v8 percentageOfDB])
        {
          v17 = +[NSPersistentHistoryChangeRequest deleteHistoryBeforeToken:whenHistoryPercentageOfStoreIsGreaterThan:](NSPersistentHistoryChangeRequest, "deleteHistoryBeforeToken:whenHistoryPercentageOfStoreIsGreaterThan:", 0, [v8 percentageOfDB]);
        }

        else
        {
          v17 = [NSPersistentHistoryChangeRequest deleteHistoryBeforeToken:0];
        }
      }

      else
      {
        v17 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:0];
      }

      v10 = v17;
    }

    if ([v8 token])
    {
      v11 = -[_NSPersistentHistoryToken initWithDictionary:]([_NSPersistentHistoryToken alloc], "initWithDictionary:", [v8 token]);
      if ([v8 delete])
      {
        if ([v8 percentageOfDB])
        {
          v12 = +[NSPersistentHistoryChangeRequest deleteHistoryBeforeToken:whenHistoryPercentageOfStoreIsGreaterThan:](NSPersistentHistoryChangeRequest, "deleteHistoryBeforeToken:whenHistoryPercentageOfStoreIsGreaterThan:", v11, [v8 percentageOfDB]);
        }

        else
        {
          v12 = [NSPersistentHistoryChangeRequest deleteHistoryBeforeToken:v11];
        }
      }

      else if ([v8 transactionFromToken])
      {
        v12 = [NSPersistentHistoryChangeRequest fetchHistoryTransactionForToken:v11];
      }

      else
      {
        v12 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:v11];
      }

      v10 = v12;
    }

    else if ([v8 date])
    {
      if ([v8 delete])
      {
        percentageOfDB = [v8 percentageOfDB];
        date = [v8 date];
        if (percentageOfDB)
        {
          v16 = +[NSPersistentHistoryChangeRequest deleteHistoryBeforeDate:whenHistoryPercentageOfStoreIsGreaterThan:](NSPersistentHistoryChangeRequest, "deleteHistoryBeforeDate:whenHistoryPercentageOfStoreIsGreaterThan:", date, [v8 percentageOfDB]);
        }

        else
        {
          v16 = [NSPersistentHistoryChangeRequest deleteHistoryBeforeDate:date];
        }
      }

      else
      {
        v16 = +[NSPersistentHistoryChangeRequest fetchHistoryAfterDate:](NSPersistentHistoryChangeRequest, "fetchHistoryAfterDate:", [v8 date]);
      }

      v10 = v16;
    }
  }

  -[NSPersistentHistoryChangeRequest setResultType:](v10, "setResultType:", [v8 resultType]);
  if ([v8 fetchLimit])
  {
    -[NSPersistentHistoryChangeRequest setFetchLimit:](v10, "setFetchLimit:", [v8 fetchLimit]);
    if ([v8 fetchOffset])
    {
      -[NSPersistentHistoryChangeRequest setFetchOffset:](v10, "setFetchOffset:", [v8 fetchOffset]);
    }
  }

  if ([v8 fetchBatchSize])
  {
    -[NSPersistentHistoryChangeRequest setFetchBatchSize:](v10, "setFetchBatchSize:", [v8 fetchBatchSize]);
  }

  return v10;
}

+ (NSPersistentHistoryChangeRequest)fetchHistoryAfterDate:(NSDate *)date
{
  v3 = [[self alloc] initWithDate:date];

  return v3;
}

+ (NSPersistentHistoryChangeRequest)fetchHistoryAfterToken:(NSPersistentHistoryToken *)token
{
  v3 = [[self alloc] initWithToken:token];

  return v3;
}

+ (NSPersistentHistoryChangeRequest)fetchHistoryAfterTransaction:(NSPersistentHistoryTransaction *)transaction
{
  v3 = [[self alloc] initWithToken:{-[NSPersistentHistoryTransaction token](transaction, "token")}];

  return v3;
}

+ (id)fetchHistoryTransactionForToken:(id)token
{
  if (!token)
  {
    return 0;
  }

  v3 = [[self alloc] initWithTransactionToken:token];

  return v3;
}

+ (NSPersistentHistoryChangeRequest)fetchHistoryWithFetchRequest:(NSFetchRequest *)fetchRequest
{
  v3 = [[self alloc] initWithFetchRequest:fetchRequest];

  return v3;
}

+ (NSPersistentHistoryChangeRequest)deleteHistoryBeforeDate:(NSDate *)date
{
  v3 = [[self alloc] initWithDate:date delete:1];

  return v3;
}

+ (NSPersistentHistoryChangeRequest)deleteHistoryBeforeToken:(NSPersistentHistoryToken *)token
{
  v3 = [[self alloc] initWithToken:token delete:1];

  return v3;
}

+ (NSPersistentHistoryChangeRequest)deleteHistoryBeforeTransaction:(NSPersistentHistoryTransaction *)transaction
{
  v3 = [[self alloc] initWithToken:-[NSPersistentHistoryTransaction token](transaction delete:{"token"), 1}];

  return v3;
}

+ (id)deleteHistoryBeforeDate:(id)date whenHistoryPercentageOfStoreIsGreaterThan:(unint64_t)than
{
  v4 = [[self alloc] initWithDate:date delete:1 percentageOfDB:than];

  return v4;
}

+ (id)deleteHistoryBeforeToken:(id)token whenHistoryPercentageOfStoreIsGreaterThan:(unint64_t)than
{
  v4 = [[self alloc] initWithToken:token delete:1 percentageOfDB:than];

  return v4;
}

+ (id)deleteRequest
{
  v2 = objc_alloc_init(NSPersistentHistoryChangeRequest);
  v2->_resultType = 0;
  v2->_transactionIDs = NSArray_EmptyArray;
  *&v2->_persistentHistoryChangeRequestDescriptionFlags |= 2u;
  return v2;
}

- (NSPersistentHistoryChangeRequest)initWithDate:(id)date delete:(BOOL)delete percentageOfDB:(unint64_t)b
{
  deleteCopy = delete;
  v8 = [(NSPersistentHistoryChangeRequest *)self init];
  if (v8)
  {
    *v8->_additionalPrivateIvars = date;
    v9 = 5;
    if (deleteCopy)
    {
      v9 = 0;
    }

    v8->_resultType = v9;
    v8->_transactionIDs = NSArray_EmptyArray;
    if (b)
    {
      *&v8->_persistentHistoryChangeRequestDescriptionFlags |= 8u;
      v8->_percentageOfDB = b;
    }

    if (deleteCopy)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    v8->_persistentHistoryChangeRequestDescriptionFlags = (*&v8->_persistentHistoryChangeRequestDescriptionFlags & 0xFFFFFFFD | v10);
  }

  return v8;
}

- (NSPersistentHistoryChangeRequest)initWithFetchRequest:(id)request
{
  v15 = *MEMORY[0x1E69E9840];
  if (([objc_msgSend(request "entityName")] & 1) == 0 && (objc_msgSend(objc_msgSend(request, "entityName"), "isEqualToString:", @"Transaction") & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v7 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v9 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        if (v9)
        {
          goto LABEL_13;
        }
      }

      else if (v9)
      {
LABEL_13:
        *buf = 138412290;
        v14 = objc_opt_class();
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@ only accepts a NSFetchRequest that has the entity set to a Persistent History Entity\n", buf, 0xCu);
      }
    }

    v10 = objc_opt_class();
    _NSCoreDataLog_console(1, "%@ only accepts a NSFetchRequest that has the entity set to a Persistent History Entity", v10);
    objc_autoreleasePoolPop(v6);

    v5 = 0;
    goto LABEL_12;
  }

  v5 = [(NSPersistentHistoryChangeRequest *)self init];
  if (v5)
  {
    *(v5->_additionalPrivateIvars + 3) = request;
    v5->_transactionIDs = NSArray_EmptyArray;
    if ([objc_msgSend(request "entityName")])
    {
      v5->_resultType = 4;
    }
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

- (NSPersistentHistoryChangeRequest)initWithTransactionIDs:(id)ds
{
  v4 = [(NSPersistentHistoryChangeRequest *)self init];
  if (v4)
  {
    v4->_transactionIDs = ds;
    v4->_resultType = 4;
  }

  return v4;
}

- (NSPersistentHistoryChangeRequest)initWithTransactionID:(id)d delete:(BOOL)delete transactionOnly:(BOOL)only percentageOfDB:(unint64_t)b
{
  onlyCopy = only;
  deleteCopy = delete;
  if (delete && only)
  {
    return 0;
  }

  v10 = [(NSPersistentHistoryChangeRequest *)self init];
  if (v10)
  {
    v10->_transactionNumber = d;
    persistentHistoryChangeRequestDescriptionFlags = v10->_persistentHistoryChangeRequestDescriptionFlags;
    if (b)
    {
      v10->_persistentHistoryChangeRequestDescriptionFlags = (*&persistentHistoryChangeRequestDescriptionFlags | 8);
      v10->_percentageOfDB = b;
      v12 = v10->_persistentHistoryChangeRequestDescriptionFlags;
    }

    else
    {
      if (deleteCopy)
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }

      v12 = *&persistentHistoryChangeRequestDescriptionFlags & 0xFFFFFFFD | v13;
    }

    if (onlyCopy)
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    v10->_persistentHistoryChangeRequestDescriptionFlags = (v12 & 0xFFFFFFFB | v14);
    v15 = 5;
    if (deleteCopy)
    {
      v15 = 0;
    }

    v10->_resultType = v15;
  }

  return v10;
}

- (NSPersistentHistoryChangeRequest)initWithToken:(id)token delete:(BOOL)delete percentageOfDB:(unint64_t)b
{
  deleteCopy = delete;
  v8 = [(NSPersistentHistoryChangeRequest *)self init];
  if (v8)
  {
    if (token)
    {
      v8->_token = token;
    }

    v9 = 5;
    if (deleteCopy)
    {
      v9 = 0;
    }

    v8->_resultType = v9;
    if (deleteCopy)
    {
      if (b)
      {
        v8->_percentageOfDB = b;
        v10 = 8;
      }

      else
      {
        v10 = 2;
      }

      *&v8->_persistentHistoryChangeRequestDescriptionFlags |= v10;
    }
  }

  return v8;
}

- (NSPersistentHistoryChangeRequest)initWithTransactionToken:(id)token
{
  if (!token)
  {
    return 0;
  }

  v4 = [(NSPersistentHistoryChangeRequest *)self init];
  if (v4)
  {
    v4->_token = token;
    *&v4->_persistentHistoryChangeRequestDescriptionFlags |= 4u;
    v4->_resultType = 5;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = NSPersistentHistoryChangeRequest;
  v4 = [(NSPersistentStoreRequest *)&v9 copyWithZone:zone];
  if (v4)
  {
    token = self->_token;
    if (token)
    {
      v4[2] = token;
    }

    transactionIDs = self->_transactionIDs;
    if (transactionIDs)
    {
      v4[4] = [(NSArray *)transactionIDs copy];
    }

    transactionNumber = self->_transactionNumber;
    if (transactionNumber)
    {
      v4[5] = [(NSNumber *)transactionNumber copy];
    }

    v4[8] = self->_percentageOfDB;
    *(v4 + 12) = self->_persistentHistoryChangeRequestDescriptionFlags;
    *v4[7] = [*self->_additionalPrivateIvars copy];
    *(v4[7] + 8) = [self->_additionalPrivateIvars[1] copy];
    *(v4[7] + 16) = [self->_additionalPrivateIvars[2] copy];
    *(v4[7] + 24) = [self->_additionalPrivateIvars[3] copy];
    *(v4[7] + 32) = [self->_additionalPrivateIvars[4] copy];
    v4[3] = self->_resultType;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_33;
  }

  if (!equal)
  {
    goto LABEL_32;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_32;
  }

  token = [(NSPersistentHistoryChangeRequest *)self token];
  token2 = [equal token];
  if (token != token2)
  {
    v7 = token2;
    LOBYTE(token2) = 0;
    if (!token)
    {
      return token2;
    }

    if (!v7)
    {
      return token2;
    }

    LODWORD(token2) = [(NSPersistentHistoryToken *)token isEqual:?];
    if (!token2)
    {
      return token2;
    }
  }

  transactionNumber = [(NSPersistentHistoryChangeRequest *)self transactionNumber];
  token2 = [equal transactionNumber];
  if (transactionNumber != token2)
  {
    v9 = token2;
    LOBYTE(token2) = 0;
    if (!transactionNumber)
    {
      return token2;
    }

    if (!v9)
    {
      return token2;
    }

    LODWORD(token2) = [transactionNumber isEqual:?];
    if (!token2)
    {
      return token2;
    }
  }

  transactionIDs = [(NSPersistentHistoryChangeRequest *)self transactionIDs];
  token2 = [equal transactionIDs];
  if (transactionIDs != token2)
  {
    v11 = token2;
    LOBYTE(token2) = 0;
    if (!transactionIDs)
    {
      return token2;
    }

    if (!v11)
    {
      return token2;
    }

    LODWORD(token2) = [transactionIDs isEqual:?];
    if (!token2)
    {
      return token2;
    }
  }

  if (((*(equal + 12) ^ *&self->_persistentHistoryChangeRequestDescriptionFlags) & 0xF) != 0)
  {
    goto LABEL_32;
  }

  resultType = [(NSPersistentHistoryChangeRequest *)self resultType];
  if (resultType != [equal resultType])
  {
    goto LABEL_32;
  }

  percentageOfDB = [(NSPersistentHistoryChangeRequest *)self percentageOfDB];
  if (percentageOfDB != [equal percentageOfDB])
  {
    goto LABEL_32;
  }

  date = [(NSPersistentHistoryChangeRequest *)self date];
  token2 = [equal date];
  if (date != token2)
  {
    v15 = token2;
    LOBYTE(token2) = 0;
    if (!date)
    {
      return token2;
    }

    if (!v15)
    {
      return token2;
    }

    LODWORD(token2) = [date isEqual:?];
    if (!token2)
    {
      return token2;
    }
  }

  fetchLimit = [(NSPersistentHistoryChangeRequest *)self fetchLimit];
  if (fetchLimit != [equal fetchLimit] || (v17 = -[NSPersistentHistoryChangeRequest fetchOffset](self, "fetchOffset"), v17 != objc_msgSend(equal, "fetchOffset")) || (v18 = -[NSPersistentHistoryChangeRequest fetchBatchSize](self, "fetchBatchSize"), v18 != objc_msgSend(equal, "fetchBatchSize")))
  {
LABEL_32:
    LOBYTE(token2) = 0;
    return token2;
  }

  fetchRequest = [(NSPersistentHistoryChangeRequest *)self fetchRequest];
  token2 = [equal fetchRequest];
  if (fetchRequest == token2)
  {
LABEL_33:
    LOBYTE(token2) = 1;
    return token2;
  }

  v20 = token2;
  LOBYTE(token2) = 0;
  if (fetchRequest && v20)
  {

    LOBYTE(token2) = [(NSFetchRequest *)fetchRequest isEqual:?];
  }

  return token2;
}

- (id)propertiesToFetchForEntity:(id)entity includeTransactionStrings:(BOOL)strings
{
  stringsCopy = strings;
  v37[3] = *MEMORY[0x1E69E9840];
  if (-[NSPersistentHistoryChangeRequest resultType](self, "resultType") == NSPersistentHistoryResultTypeObjectIDs && [entity name] == @"CHANGE")
  {
    v37[0] = @"CHANGETYPE";
    v37[1] = @"ENTITY";
    v37[2] = @"ENTITYPK";
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
    goto LABEL_29;
  }

  v7 = objc_alloc_init(NSExpressionDescription);
  [(NSPropertyDescription *)v7 setName:@"self"];
  -[NSExpressionDescription setExpression:](v7, "setExpression:", [MEMORY[0x1E696ABC8] expressionForEvaluatedObject]);
  [(NSExpressionDescription *)v7 setExpressionResultType:2000];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v7, 0}];

  if (![objc_msgSend(entity "name")] || -[NSPersistentHistoryChangeRequest resultType](self, "resultType") != NSPersistentHistoryResultTypeObjectIDs && -[NSPersistentHistoryChangeRequest resultType](self, "resultType") != NSPersistentHistoryResultTypeChangesOnly)
  {
    if ([objc_msgSend(entity "name")] && stringsCopy)
    {
      v36[0] = @"AUTHORTS";
      v36[1] = @"BUNDLEIDTS";
      v36[2] = @"CONTEXTNAMETS";
      v36[3] = @"PROCESSIDTS";
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v31;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if (entity)
            {
              v14 = *(*(&v30 + 1) + 8 * i);
              if ([objc_msgSend(entity "propertiesByName")])
              {
                v15 = [MEMORY[0x1E696ABC8] expressionForKeyPath:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", v14, @"NAME"}];
                v16 = objc_alloc_init(NSExpressionDescription);
                [(NSPropertyDescription *)v16 setName:v14];
                [(NSExpressionDescription *)v16 setExpression:v15];
                [(NSExpressionDescription *)v16 setExpressionResultType:700];
                [v8 addObject:v16];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v11);
      }

      goto LABEL_21;
    }

    if (![objc_msgSend(entity "name")] || (v17 = objc_msgSend(MEMORY[0x1E696ABC8], "expressionForKeyPath:", @"TRANSACTIONID"), v18 = objc_alloc_init(NSExpressionDescription), -[NSPropertyDescription setName:](v18, "setName:", @"TRANSACTIONID"), -[NSExpressionDescription setExpression:](v18, "setExpression:", v17), -[NSExpressionDescription setExpressionResultType:](v18, "setExpressionResultType:", 2000), objc_msgSend(v8, "addObject:", v18), v18, -[NSPersistentHistoryChangeRequest resultType](self, "resultType") != NSPersistentHistoryResultTypeTransactionsOnly))
    {
LABEL_21:
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      attributeKeys = [entity attributeKeys];
      v20 = [attributeKeys countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v27;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v27 != v22)
            {
              objc_enumerationMutation(attributeKeys);
            }

            [v8 addObject:*(*(&v26 + 1) + 8 * j)];
          }

          v21 = [attributeKeys countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v21);
      }
    }
  }

  result = v8;
LABEL_29:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setResultType:(NSPersistentHistoryResultType)resultType
{
  if ([(NSPersistentHistoryChangeRequest *)self isDelete])
  {
    if (resultType > (NSPersistentHistoryResultTypeChangesOnly|NSPersistentHistoryResultTypeCount))
    {
      resultType = NSPersistentHistoryResultTypeStatusOnly;
    }

    else
    {
      resultType = qword_18592E358[resultType];
    }
  }

  self->_resultType = resultType;
}

- (void)setFetchLimit:(unint64_t)limit
{
  v5 = *(self->_additionalPrivateIvars + 1);
  if (v5)
  {
    if ([v5 unsignedIntegerValue] == limit)
    {
      return;
    }

    v6 = *(self->_additionalPrivateIvars + 1);
  }

  else
  {
    v6 = 0;
  }

  *(self->_additionalPrivateIvars + 1) = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:limit];
}

- (void)setFetchOffset:(unint64_t)offset
{
  v5 = *(self->_additionalPrivateIvars + 4);
  if (v5)
  {
    if ([v5 unsignedIntegerValue] == offset)
    {
      return;
    }

    v6 = *(self->_additionalPrivateIvars + 4);
  }

  else
  {
    v6 = 0;
  }

  *(self->_additionalPrivateIvars + 4) = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:offset];
}

- (void)setFetchBatchSize:(unint64_t)size
{
  v5 = *(self->_additionalPrivateIvars + 2);
  if (v5)
  {
    if ([v5 unsignedIntegerValue] == size)
    {
      return;
    }

    v6 = *(self->_additionalPrivateIvars + 2);
  }

  else
  {
    v6 = 0;
  }

  *(self->_additionalPrivateIvars + 2) = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:size];
}

- (id)predicateForStoreIdentifier:(id)identifier
{
  if ([(NSPersistentHistoryChangeRequest *)self fetchRequest])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    predicate = [(NSFetchRequest *)[(NSPersistentHistoryChangeRequest *)self fetchRequest] predicate];
    if (predicate)
    {
      v7 = predicate;
      v8 = [[_NSPersistentHistoryPredicateRemapper alloc] initWithStoreIdentifier:identifier];
      v9 = [(_NSPersistentHistoryPredicateRemapper *)v8 createPredicateForFetchFromPredicate:v7];
      v10 = v9;
    }

    else
    {
      v9 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    }

    [v5 addObject:v9];
    if (self->_token || [(NSPersistentHistoryChangeRequest *)self date]|| self->_transactionNumber || [(NSArray *)self->_transactionIDs count])
    {
      predicate2 = [(NSPersistentHistoryChangeRequest *)self predicate];
      if (predicate2)
      {
        [v5 addObject:predicate2];
      }
    }

    v13 = MEMORY[0x1E696AB28];

    return [v13 andPredicateWithSubpredicates:v5];
  }

  else
  {

    return [(NSPersistentHistoryChangeRequest *)self _predicateForStoreID:identifier];
  }
}

- (void)_predicateForStoreID:(void *)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  date = [result date];
  v5 = *(v3 + 3);
  v6 = v5 > 6;
  v7 = (1 << v5) & 0x52;
  if (!v6 && v7 != 0)
  {
    if ([*(v3 + 4) count])
    {
      return [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY TRANSACTIONID IN %@", *(v3 + 4)];
    }

    if (*(v3 + 5))
    {
      v9 = MEMORY[0x1E696AEC0];
      if ([v3 isFetchTransactionForToken])
      {
        v10 = @"=";
      }

      else if ([v3 isDelete])
      {
        v10 = @"<";
      }

      else
      {
        v10 = @">";
      }

      longLongValue2 = v10;
      longLongValue = [*(v3 + 5) longLongValue];
      v36 = @"TRANSACTIONID";
      v18 = @"ANY %@ %@ %lld";
LABEL_41:
      v22 = v9;
LABEL_68:
      v23 = [v22 stringWithFormat:v18, v36, longLongValue2, longLongValue, v39];
      goto LABEL_69;
    }

    v13 = *(v3 + 2);
    if (v13)
    {
      v14 = [objc_msgSend(v13 "storeTokens")];
      if (!v14)
      {
        v23 = 0;
LABEL_69:
        v34 = MEMORY[0x1E696AE18];

        return [v34 predicateWithFormat:v23];
      }

      v15 = v14;
      v16 = MEMORY[0x1E696AEC0];
      if ([v3 isFetchTransactionForToken])
      {
        v17 = @"=";
      }

      else
      {
        isDelete = [v3 isDelete];
        v17 = @">";
        if (isDelete)
        {
          v17 = @"<";
        }
      }

      longLongValue2 = v17;
      longLongValue = v15;
      v36 = @"TRANSACTIONID";
      v18 = @"ANY %@ %@ %@";
    }

    else
    {
      v16 = MEMORY[0x1E696AEC0];
      if ([v3 isDelete])
      {
        v20 = @"<";
      }

      else
      {
        v20 = @">";
      }

      if (date)
      {
        [date timeIntervalSinceReferenceDate];
      }

      else
      {
        v21 = 0;
      }

      v39 = v21;
      longLongValue2 = @"TIMESTAMP";
      longLongValue = v20;
      v36 = @"TRANSACTIONID";
      v18 = @"ANY %@.%@ %@ %f";
    }

LABEL_67:
    v22 = v16;
    goto LABEL_68;
  }

  if (*(v3 + 5))
  {
    v11 = [objc_msgSend(objc_msgSend(v3 "fetchRequest")];
    v9 = MEMORY[0x1E696AEC0];
    if (v11)
    {
      if ([v3 isFetchTransactionForToken])
      {
        v12 = @"=";
      }

      else if ([v3 isDelete])
      {
        v12 = @"<";
      }

      else
      {
        v12 = @">";
      }

      longLongValue2 = v12;
      longLongValue = [*(v3 + 5) longLongValue];
      v36 = @"TRANSACTIONID";
      v18 = @"%@ %@ %lld";
    }

    else
    {
      if ([v3 isFetchTransactionForToken])
      {
        v19 = @"=";
      }

      else if ([v3 isDelete])
      {
        v19 = @"<";
      }

      else
      {
        v19 = @">";
      }

      v36 = v19;
      longLongValue2 = [*(v3 + 5) longLongValue];
      v18 = @"_pk %@ %lld";
    }

    goto LABEL_41;
  }

  if ([*(v3 + 4) count])
  {
    return [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY _pk IN %@", *(v3 + 4)];
  }

  if (date || *(v3 + 2))
  {
    if ([objc_msgSend(objc_msgSend(v3 "fetchRequest")])
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.", @"TRANSACTIONID"];
    }

    else
    {
      v24 = &stru_1EF3F1768;
    }

    v26 = *(v3 + 2);
    if (v26)
    {
      v27 = [objc_msgSend(v26 "storeTokens")];
      if (v27)
      {
        v28 = v27;
        v29 = MEMORY[0x1E696AEC0];
        if ([v3 isFetchTransactionForToken])
        {
          v30 = @"=";
        }

        else
        {
          isDelete2 = [v3 isDelete];
          v30 = @">";
          if (isDelete2)
          {
            v30 = @"<";
          }
        }

        v23 = [v29 stringWithFormat:@"%@%@ %@ %@", v24, @"_pk", v30, v28];
        if (v23)
        {
          goto LABEL_69;
        }
      }
    }

    v16 = MEMORY[0x1E696AEC0];
    if ([v3 isDelete])
    {
      v32 = @"<";
    }

    else
    {
      v32 = @">";
    }

    if (date)
    {
      [date timeIntervalSinceReferenceDate];
    }

    else
    {
      v33 = 0;
    }

    v39 = v33;
    longLongValue2 = @"TIMESTAMP";
    longLongValue = v32;
    v36 = v24;
    v18 = @"%@%@ %@ %f";
    goto LABEL_67;
  }

  v35 = MEMORY[0x1E696AE18];

  return [v35 predicateWithValue:1];
}

- (NSFetchRequest)fetchRequestDescribingTokenCheckForStore:(NSFetchRequest *)store
{
  storeCopy = store;
  if (store)
  {
    if (-[NSFetchRequest token](store, "token") && (v4 = [-[NSArray storeTokens](storeCopy->_groupByProperties "storeTokens")], objc_msgSend(v4, "longLongValue") >= 1))
    {
      storeCopy = -[NSFetchRequest initWithEntityName:]([NSFetchRequest alloc], "initWithEntityName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", +[_PFPersistentHistoryModel ancillaryModelNamespace](_PFPersistentHistoryModel, "ancillaryModelNamespace"), @"TRANSACTION"]);
      [(NSFetchRequest *)storeCopy setIncludesSubentities:0];
      -[NSFetchRequest setPredicate:](storeCopy, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"_pk = %@", v4]);
      [(NSFetchRequest *)storeCopy setResultType:4];
    }

    else
    {
      return 0;
    }
  }

  return storeCopy;
}

- (NSFetchRequest)fetchRequestDescribingChangeRequestForStore:(void *)store
{
  v21 = *MEMORY[0x1E69E9840];
  if (!store)
  {
    v10 = 0;
    goto LABEL_38;
  }

  entityNameToFetch = [store entityNameToFetch];
  persistentStoreCoordinator = [a2 persistentStoreCoordinator];
  if (persistentStoreCoordinator)
  {
    v6 = *(persistentStoreCoordinator + 96);
  }

  else
  {
    v6 = 0;
  }

  v7 = @"TRANSACTION";
  if (([entityNameToFetch isEqualToString:@"TRANSACTION"] & 1) == 0 && !objc_msgSend(entityNameToFetch, "isEqualToString:", @"Transaction"))
  {
    v7 = @"CHANGE";
    if (([entityNameToFetch isEqualToString:@"CHANGE"] & 1) == 0 && !objc_msgSend(entityNameToFetch, "isEqualToString:", @"Change"))
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = entityNameToFetch;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexepected Entity Name for a History Request - %@\n", buf, 0xCu);
      }

      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v20 = entityNameToFetch;
        _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Unexepected Entity Name for a History Request - %@", buf, 0xCu);
      }

      goto LABEL_32;
    }
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", +[_PFPersistentHistoryModel ancillaryModelNamespace](_PFPersistentHistoryModel, "ancillaryModelNamespace"), v7];
  if (!v6)
  {
LABEL_32:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = [*(v6 + 56) objectForKey:v8];
LABEL_10:
  v10 = -[NSFetchRequest initWithEntityName:]([NSFetchRequest alloc], "initWithEntityName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", +[_PFPersistentHistoryModel ancillaryModelNamespace](_PFPersistentHistoryModel, "ancillaryModelNamespace"), objc_msgSend(objc_msgSend(v9, "name"), "uppercaseString")]);
  [(NSFetchRequest *)v10 setIncludesSubentities:0];
  v11 = [store predicateForStoreIdentifier:{objc_msgSend(a2, "identifier")}];
  if (v11)
  {
    [(NSFetchRequest *)v10 setPredicate:v11];
  }

  [(NSFetchRequest *)v10 setIncludesPropertyValues:1];
  [(NSFetchRequest *)v10 setIncludesPendingChanges:0];
  if ([store fetchLimit])
  {
    -[NSFetchRequest setFetchLimit:](v10, "setFetchLimit:", [store fetchLimit]);
    if ([store fetchOffset])
    {
      -[NSFetchRequest setFetchOffset:](v10, "setFetchOffset:", [store fetchOffset]);
    }
  }

  if ([store fetchRequest] && objc_msgSend(objc_msgSend(objc_msgSend(store, "fetchRequest"), "sortDescriptors"), "count"))
  {
    -[NSFetchRequest setSortDescriptors:](v10, "setSortDescriptors:", [objc_msgSend(store "fetchRequest")]);
  }

  if ([store fetchBatchSize])
  {
    -[NSFetchRequest setFetchBatchSize:](v10, "setFetchBatchSize:", [store fetchBatchSize]);
    if (![(NSArray *)[(NSFetchRequest *)v10 sortDescriptors] count])
    {
      v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
      -[NSFetchRequest setSortDescriptors:](v10, "setSortDescriptors:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1]);
    }
  }

  if ([store resultType] == 5)
  {
    v17 = @"CHANGES";
    -[NSFetchRequest setRelationshipKeyPathsForPrefetching:](v10, "setRelationshipKeyPathsForPrefetching:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1]);
  }

  if ([store resultType] && objc_msgSend(store, "resultType") != 2 && objc_msgSend(store, "resultType") != 6)
  {
    if ([store propertiesToFetch])
    {
      propertiesToFetch = [store propertiesToFetch];
    }

    else
    {
      propertiesToFetch = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(store, "propertiesToFetchForEntity:includeTransactionStrings:", v9, 1)}];
      if ([objc_msgSend(a2 "type")])
      {
        [propertiesToFetch removeObject:@"QUERYGEN"];
      }
    }

    [(NSFetchRequest *)v10 setPropertiesToFetch:propertiesToFetch];
  }

  if ([objc_msgSend(store "affectedStores")])
  {
    -[NSFetchRequest setAffectedStores:](v10, "setAffectedStores:", [store affectedStores]);
  }

LABEL_38:
  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  if ((*&self->_persistentHistoryChangeRequestDescriptionFlags & 2) != 0)
  {
    v4 = @"Delete";
  }

  else
  {
    v4 = @"Fetch";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSPersistentHistoryChangeRequest : %@ < %@ - %@-%@> %@", v4, *self->_additionalPrivateIvars, self->_token, self->_transactionNumber, +[NSPersistentHistoryChangeRequest _stringForHistoryRequestResultType:](NSPersistentHistoryChangeRequest, "_stringForHistoryRequestResultType:", self->_resultType)];
  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  if ((*&self->_persistentHistoryChangeRequestDescriptionFlags & 2) != 0)
  {
    v4 = @"Delete";
  }

  else
  {
    v4 = @"Fetch";
  }

  v5 = *self->_additionalPrivateIvars;
  token = self->_token;
  transactionNumber = self->_transactionNumber;
  fetchLimit = [(NSPersistentHistoryChangeRequest *)self fetchLimit];
  fetchOffset = [(NSPersistentHistoryChangeRequest *)self fetchOffset];
  fetchBatchSize = [(NSPersistentHistoryChangeRequest *)self fetchBatchSize];
  v11 = [NSPersistentHistoryChangeRequest _stringForHistoryRequestResultType:self->_resultType];
  fetchRequest = [(NSPersistentHistoryChangeRequest *)self fetchRequest];
  v13 = @"nil";
  if (fetchRequest)
  {
    v13 = fetchRequest;
  }

  return [v3 stringWithFormat:@"NSPersistentHistoryChangeRequest : %@ <Date-%@ Token-%@ TransactionID-%@> limit - %lu offset - %lu batchSize - %lu, resultType - %@, fetchRequest - %@", v4, v5, token, transactionNumber, fetchLimit, fetchOffset, fetchBatchSize, v11, v13];
}

+ (id)_stringForHistoryRequestResultType:(int64_t)type
{
  v10 = *MEMORY[0x1E69E9840];
  if (type >= 7)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      typeCopy2 = type;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown fetch request result type: %ld\n", &v8, 0xCu);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 134217984;
      typeCopy2 = type;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Unknown fetch request result type: %ld", &v8, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = off_1E6EC1480[type];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end