@interface NSXPCStoreManagedObjectArchivingToken
- (BOOL)isEqual:(id)equal;
- (NSXPCStoreManagedObjectArchivingToken)initWithCoder:(id)coder;
- (NSXPCStoreManagedObjectArchivingToken)initWithURI:(id)i;
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

- (NSXPCStoreManagedObjectArchivingToken)initWithURI:(id)i
{
  v6.receiver = self;
  v6.super_class = NSXPCStoreManagedObjectArchivingToken;
  v4 = [(NSXPCStoreManagedObjectArchivingToken *)&v6 init];
  if (v4)
  {
    v4->_managedObjectReferenceURI = i;
  }

  return v4;
}

- (NSXPCStoreManagedObjectArchivingToken)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSManagedObjectIDURI"];
  delegate = [coder delegate];
  if ([coder requiresSecureCoding])
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v8 = [coder userInfo]) != 0)
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

    if (!delegate)
    {
      goto LABEL_16;
    }
  }

  else if (!delegate)
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _persistentStoreCoordinator = [objc_msgSend(delegate "managedObjectContext")];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_20:
      NSLog(@"NSMOIDArchivingToken escaping un-de-tokenized (secured %d).", [coder requiresSecureCoding]);
LABEL_32:
      null = [(NSXPCStoreManagedObjectArchivingToken *)self init];
      null->_managedObjectReferenceURI = v6;
      goto LABEL_33;
    }

    _persistentStoreCoordinator = [delegate _persistentStoreCoordinator];
  }

  v10 = _persistentStoreCoordinator;
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

      null = [MEMORY[0x1E695DFB0] null];
      if (null)
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

  null = v13;

LABEL_33:
  objc_autoreleasePoolPop(v5);
  v23 = *MEMORY[0x1E69E9840];
  return null;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    managedObjectReferenceURI = self->_managedObjectReferenceURI;
    v7 = *(equal + 1);

    LOBYTE(v5) = [(NSURL *)managedObjectReferenceURI isEqual:v7];
  }

  return v5;
}

@end