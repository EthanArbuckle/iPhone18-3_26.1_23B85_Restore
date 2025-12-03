@interface NSPersistentCloudKitContainerEventRequest
+ (NSFetchRequest)fetchRequestForEvents;
+ (NSPersistentCloudKitContainerEventRequest)fetchEventsAfterDate:(NSDate *)date;
+ (NSPersistentCloudKitContainerEventRequest)fetchEventsAfterEvent:(NSPersistentCloudKitContainerEvent *)event;
+ (NSPersistentCloudKitContainerEventRequest)fetchEventsMatchingFetchRequest:(NSFetchRequest *)fetchRequest;
+ (__CFString)ckEventKeyForKey:(uint64_t)key;
+ (id)translateExpression:(uint64_t *)expression orReturnFailureReason:;
+ (uint64_t)translatePredicate:(uint64_t *)predicate orReturnFailureReason:;
- (NSPersistentCloudKitContainerEventRequest)initWithCKEventFetchRequest:(id)request;
- (void)dealloc;
@end

@implementation NSPersistentCloudKitContainerEventRequest

+ (NSPersistentCloudKitContainerEventRequest)fetchEventsAfterDate:(NSDate *)date
{
  v5 = [[NSFetchRequest alloc] initWithEntityName:+[NSCKEvent entityPath]];
  -[NSFetchRequest setPredicate:](v5, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"startedAt > %@", date]);
  v6 = [[self alloc] initWithCKEventFetchRequest:v5];

  return v6;
}

+ (NSPersistentCloudKitContainerEventRequest)fetchEventsAfterEvent:(NSPersistentCloudKitContainerEvent *)event
{
  v5 = [[NSFetchRequest alloc] initWithEntityName:+[NSCKEvent entityPath]];
  if (event)
  {
    -[NSFetchRequest setPredicate:](v5, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF > %@", event->_ckEventObjectID]);
  }

  v6 = [[self alloc] initWithCKEventFetchRequest:v5];

  return v6;
}

+ (NSPersistentCloudKitContainerEventRequest)fetchEventsMatchingFetchRequest:(NSFetchRequest *)fetchRequest
{
  v68 = *MEMORY[0x1E69E9840];
  v5 = 0x1E6EC0000uLL;
  objc_opt_self();
  v66 = 0;
  entityName = [(NSFetchRequest *)fetchRequest entityName];
  v7 = objc_opt_class();
  if (![(NSString *)entityName isEqualToString:NSStringFromClass(v7)])
  {
    v40 = MEMORY[0x1E696AEC0];
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    entityName2 = [(NSFetchRequest *)fetchRequest entityName];
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v66 = [v40 stringWithFormat:@"Fetch requests for '%@' must use '%@' as the entity name, '%@' is not valid. Please consider using +[%@ %@].", v42, v44, entityName2, v47, NSStringFromSelector(sel_fetchRequest)];
    if (!v66)
    {
      goto LABEL_30;
    }

    v58 = 0;
    goto LABEL_36;
  }

  v8 = [[NSFetchRequest alloc] initWithEntityName:+[NSCKEvent entityPath]];
  [(NSFetchRequest *)v8 setAffectedStores:[(NSFetchRequest *)fetchRequest affectedStores]];
  v58 = v8;
  if (([(NSFetchRequest *)fetchRequest resultType]| 4) == 4)
  {
    [(NSFetchRequest *)v8 setResultType:[(NSFetchRequest *)fetchRequest resultType]];
    goto LABEL_5;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v5 = 0x1E6EC0000uLL;
  v66 = [v9 stringWithFormat:@"'%@' only supports fetch requests with the following result types: %@, %@", NSStringFromClass(v10), +[NSFetchRequest _stringForFetchRequestResultType:](NSFetchRequest, "_stringForFetchRequestResultType:", 0), +[NSFetchRequest _stringForFetchRequestResultType:](NSFetchRequest, "_stringForFetchRequestResultType:", 4)];
  if (v66)
  {
LABEL_36:

    v50 = MEMORY[0x1E695DF30];
    v51 = *MEMORY[0x1E695D940];
    v52 = v66;
    goto LABEL_37;
  }

LABEL_5:
  selfCopy = self;
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](-[NSFetchRequest sortDescriptors](fetchRequest, "sortDescriptors"), "count")}];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v57 = fetchRequest;
  obj = [(NSFetchRequest *)fetchRequest sortDescriptors];
  v12 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v63;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v63 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v62 + 1) + 8 * i);
        v18 = +[NSPersistentCloudKitContainerEventRequest ckEventKeyForKey:](*(v5 + 2784), [v17 key]);
        if (v18)
        {
          [v11 addObject:{objc_msgSend(MEMORY[0x1E696AEB0], "sortDescriptorWithKey:ascending:", v18, objc_msgSend(v17, "ascending"))}];
        }

        else
        {
          v19 = v13;
          if ([objc_msgSend(v17 "key")])
          {
            v59 = MEMORY[0x1E696AEC0];
            v20 = [v17 key];
            v21 = objc_opt_class();
            v22 = NSStringFromClass(v21);
            v23 = *(v5 + 2784);
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            v26 = NSStringFromSelector(sel_affectedStores);
            v27 = objc_opt_class();
            v54 = NSStringFromClass(v27);
            v5 = 0x1E6EC0000;
            v28 = [v59 stringWithFormat:@"Cannot sort events by '%@', it is not a persisted property of '%@'. Use '%@.%@' or '%@.%@' instead.", v20, v22, v25, v26, v54, NSStringFromSelector(sel_affectedStores)];
          }

          else
          {
            v29 = [objc_msgSend(v17 "key")];
            v30 = MEMORY[0x1E696AEC0];
            v31 = [v17 key];
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            v34 = v33;
            if (!v29)
            {
              v14 = [v30 stringWithFormat:@"Cannot sort events by '%@', it is not an attribute of '%@'.", v31, v33];
              v66 = v14;
              goto LABEL_22;
            }

            v35 = NSStringFromSelector(sel_domain);
          }

          v14 = v28;
          v66 = v28;
          v13 = v19;
        }
      }

      v13 = [(NSArray *)obj countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_22:
  [(NSFetchRequest *)v58 setSortDescriptors:v11];

  if (v14)
  {
    goto LABEL_36;
  }

  if ([(NSFetchRequest *)v57 predicate])
  {
    v36 = [NSPersistentCloudKitContainerEventRequest translatePredicate:&v66 orReturnFailureReason:?];
    [(NSFetchRequest *)v58 setPredicate:v36];

    if (v66)
    {
      goto LABEL_36;
    }
  }

  if (!v58)
  {
LABEL_30:
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetch request validation for NSPersistentCloudKitContainerEventRequest failed but did not report a failure reason.\n", buf, 2u);
    }

    v49 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v49, OS_LOG_TYPE_FAULT, "CoreData: Fetch request validation for NSPersistentCloudKitContainerEventRequest failed but did not report a failure reason.", buf, 2u);
    }

    v50 = MEMORY[0x1E695DF30];
    v51 = *MEMORY[0x1E695D940];
    v52 = 0;
LABEL_37:
    objc_exception_throw([v50 exceptionWithName:v51 reason:v52 userInfo:0]);
  }

  v37 = [[selfCopy alloc] initWithCKEventFetchRequest:v58];

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

+ (NSFetchRequest)fetchRequestForEvents
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);

  return [NSFetchRequest fetchRequestWithEntityName:v3];
}

- (NSPersistentCloudKitContainerEventRequest)initWithCKEventFetchRequest:(id)request
{
  v8.receiver = self;
  v8.super_class = NSPersistentCloudKitContainerEventRequest;
  v4 = [(NSPersistentCloudKitContainerEventRequest *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_resultType = 0;
    requestCopy = request;
    v5->_ckEventFetchRequest = requestCopy;
    if ([(NSArray *)[(NSFetchRequest *)requestCopy affectedStores] count])
    {
      [(NSPersistentStoreRequest *)v5 setAffectedStores:[(NSFetchRequest *)v5->_ckEventFetchRequest affectedStores]];
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSPersistentCloudKitContainerEventRequest;
  [(NSPersistentStoreRequest *)&v3 dealloc];
}

+ (__CFString)ckEventKeyForKey:(uint64_t)key
{
  objc_opt_self();
  if ([a2 isEqualToString:@"identifier"])
  {
    return @"eventIdentifier";
  }

  if ([a2 isEqualToString:@"type"])
  {
    return @"cloudKitEventType";
  }

  if ([a2 isEqualToString:@"startDate"])
  {
    return @"startedAt";
  }

  if ([a2 isEqualToString:@"endDate"])
  {
    return @"endedAt";
  }

  if (([a2 isEqualToString:@"succeeded"] & 1) == 0)
  {
    if ([a2 isEqualToString:@"error.domain"])
    {
      return @"errorDomain";
    }

    else if ([a2 isEqualToString:@"error.code"])
    {
      return @"errorCode";
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

+ (uint64_t)translatePredicate:(uint64_t *)predicate orReturnFailureReason:
{
  v33 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(objc_msgSend(a2, "subpredicates"), "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    subpredicates = [a2 subpredicates];
    v7 = [subpredicates countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (!v7)
    {
LABEL_10:
      v13 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(a2 subpredicates:{"compoundPredicateType"), v5}];
      goto LABEL_20;
    }

    v8 = v7;
    v9 = *v27;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(subpredicates);
      }

      v11 = [NSPersistentCloudKitContainerEventRequest translatePredicate:predicate orReturnFailureReason:?];
      if (!v11)
      {
        goto LABEL_19;
      }

      v12 = v11;
      [v5 addObject:v11];

      if (v8 == ++v10)
      {
        v8 = [subpredicates countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = objc_opt_class();
    v16 = [v17 stringWithFormat:@"'%@' does not support predicates of type '%@'.", v19, NSStringFromClass(v20)];
    goto LABEL_15;
  }

  if ([a2 predicateOperatorType] == 11)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = [v14 stringWithFormat:@"'%@' does not support predicates with custom selectors: %@", NSStringFromClass(v15), a2];
LABEL_15:
    v13 = 0;
    *predicate = v16;
    goto LABEL_26;
  }

  v5 = +[NSPersistentCloudKitContainerEventRequest translateExpression:orReturnFailureReason:](NSPersistentCloudKitContainerEventRequest, [a2 leftExpression], predicate);
  if (!v5)
  {
LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v21 = +[NSPersistentCloudKitContainerEventRequest translateExpression:orReturnFailureReason:](NSPersistentCloudKitContainerEventRequest, [a2 rightExpression], predicate);
  if (v21)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v5 rightExpression:v21 modifier:objc_msgSend(a2 type:"comparisonPredicateModifier") options:{objc_msgSend(a2, "predicateOperatorType"), objc_msgSend(a2, "options")}];
  }

  else
  {
    v13 = 0;
  }

LABEL_20:
  if (!(predicate | v13))
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: NSPersistentCloudKitContainerEventRequest predicate translation failed but did not return a failure reason: %@\n", buf, 0xCu);
    }

    v23 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v31 = a2;
      _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: NSPersistentCloudKitContainerEventRequest predicate translation failed but did not return a failure reason: %@", buf, 0xCu);
    }

    v13 = 0;
  }

LABEL_26:
  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)translateExpression:(uint64_t *)expression orReturnFailureReason:
{
  objc_opt_self();
  if ([a2 expressionType] != 3)
  {
    if ([a2 expressionType] != 13)
    {
      v6 = a2;
      goto LABEL_8;
    }

    v7 = +[NSPersistentCloudKitContainerEventRequest translatePredicate:orReturnFailureReason:](NSPersistentCloudKitContainerEventRequest, [a2 predicate], expression);
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC8]) initWithExpression:objc_msgSend(a2 usingIteratorExpression:"collection") predicate:{objc_msgSend(a2, "variableExpression"), v7}];
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  keyPath = [a2 keyPath];
  v5 = [NSPersistentCloudKitContainerEventRequest ckEventKeyForKey:keyPath];
  if (!v5)
  {
    if ([keyPath isEqualToString:@"storeIdentifier"])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(sel_affectedStores);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v10 stringWithFormat:@"Cannot query events by '%@', it is not a persisted property of '%@'. Use '%@.%@' or '%@.%@' instead.", keyPath, v12, v14, v15, v17, NSStringFromSelector(sel_affectedStores)];
    }

    else
    {
      v19 = [keyPath isEqualToString:@"error"];
      v20 = MEMORY[0x1E696AEC0];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = v22;
      if (v19)
      {
        v24 = NSStringFromSelector(sel_domain);
      }

      else
      {
        v18 = [v20 stringWithFormat:@"Cannot query events by '%@', it is not an attribute of '%@'.", keyPath, v22, v25, v26, v27, v28];
      }
    }

    v8 = 0;
    *expression = v18;
    return v8;
  }

  v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v5];
LABEL_8:

  return v6;
}

@end