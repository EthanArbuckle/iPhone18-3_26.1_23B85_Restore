@interface NSXPCStoreManagedObjectArchivingToken
- (BOOL)isEqual:(id)a3;
- (NSXPCStoreManagedObjectArchivingToken)initWithCoder:(id)a3;
- (NSXPCStoreManagedObjectArchivingToken)initWithURI:(id)a3;
- (void)dealloc;
@end

@implementation NSXPCStoreManagedObjectArchivingToken

- (void)dealloc
{
  self->_managedObjectReferenceURI = 0;
  v3.receiver = self;
  v3.super_class = NSXPCStoreManagedObjectArchivingToken;
  [(NSXPCStoreManagedObjectArchivingToken *)&v3 dealloc];
}

- (NSXPCStoreManagedObjectArchivingToken)initWithURI:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSXPCStoreManagedObjectArchivingToken;
  v4 = [(NSXPCStoreManagedObjectArchivingToken *)&v6 init];
  if (v4)
  {
    v4->_managedObjectReferenceURI = a3;
  }

  return v4;
}

- (NSXPCStoreManagedObjectArchivingToken)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSManagedObjectIDURI"];
  v7 = [a3 delegate];
  if ([a3 requiresSecureCoding])
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v8 = [a3 userInfo]) != 0)
    {
      v9 = v8;
      v10 = [objc_msgSend(objc_msgSend(v8 valueForKey:{@"NSConnectionContext", "managedObjectContext"), "persistentStoreCoordinator"}];
      if (v10)
      {
        goto LABEL_17;
      }

      v10 = [v9 valueForKey:@"PSCKey"];
      if (v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = 0;
    }

    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (!v7)
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [objc_msgSend(v7 "managedObjectContext")];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_20:
      NSLog(@"NSMOIDArchivingToken escaping un-de-tokenized (secured %d).", [a3 requiresSecureCoding]);
LABEL_32:
      v14 = [(NSXPCStoreManagedObjectArchivingToken *)self init];
      v14->_managedObjectReferenceURI = v6;
      goto LABEL_33;
    }

    v11 = [v7 _persistentStoreCoordinator];
  }

  v10 = v11;
LABEL_16:
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_17:
  v12 = v10;
  if (!v6)
  {
    v15 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v16 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v18 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v16)
      {
        if (v18)
        {
          *buf = 0;
LABEL_39:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: XPC: Missing oid uri\n", buf, 2u);
        }
      }

      else if (v18)
      {
        *buf = 0;
        goto LABEL_39;
      }
    }

    _NSCoreDataLog_console(1, "XPC: Missing oid uri");
    objc_autoreleasePoolPop(v15);
    goto LABEL_32;
  }

  v13 = [v10 managedObjectIDForURIRepresentation:v6];
  if (!v13)
  {
    if (!+[NSXPCStoreServer debugDefault])
    {
LABEL_36:

      v14 = [MEMORY[0x1E695DFB0] null];
      if (v14)
      {
        goto LABEL_33;
      }

      self = 0;
      goto LABEL_32;
    }

    v19 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v20 = _pflogging_catastrophic_mode;
      v21 = _PFLogGetLogStream(1);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
      if (v20)
      {
        if (v22)
        {
          *buf = 138412290;
          v26 = v6;
LABEL_41:
          _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: error: XPC: Possible API misuse: Unable to find object for managed object URI %@, returning null instead\n", buf, 0xCu);
        }
      }

      else if (v22)
      {
        *buf = 138412290;
        v26 = v6;
        goto LABEL_41;
      }
    }

    _NSCoreDataLog_console(1, "XPC: Possible API misuse: Unable to find object for managed object URI %@, returning null instead", v6);
    objc_autoreleasePoolPop(v19);
    goto LABEL_36;
  }

  v14 = v13;

LABEL_33:
  objc_autoreleasePoolPop(v5);
  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    managedObjectReferenceURI = self->_managedObjectReferenceURI;
    v7 = *(a3 + 1);

    LOBYTE(v5) = [(NSURL *)managedObjectReferenceURI isEqual:v7];
  }

  return v5;
}

@end