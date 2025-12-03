@interface LSEnumerator
+ (id)enumeratorForApplicationProxiesWithOptions:(unint64_t)options;
+ (id)enumeratorForPlugInKitProxiesWithExtensionPoint:(id)point options:(unint64_t)options;
+ (id)enumeratorForPlugInKitProxiesWithExtensionPoint:(id)point options:(unint64_t)options filter:(id)filter;
+ (void)initialize;
- (NSPredicate)predicate;
- (id)_initWithContext:(LSContext *)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)filter;
- (id)swift_firstWhere:(id)where;
- (void)setFilter:(id)filter;
- (void)setPredicate:(id)predicate;
- (void)swift_forEach:(id)each;
@end

@implementation LSEnumerator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.launchservices", "enumeration");
    v3 = _LSEnumeratorLog;
    _LSEnumeratorLog = v2;
  }
}

+ (id)enumeratorForApplicationProxiesWithOptions:(unint64_t)options
{
  v3 = [(_LSApplicationRecordEnumerator *)[_LSApplicationProxyEnumerator alloc] initWithContext:0 volumeURL:0 options:options];

  return v3;
}

+ (id)enumeratorForPlugInKitProxiesWithExtensionPoint:(id)point options:(unint64_t)options
{
  if (!point)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSEnumerator.mm" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"extensionPointID != nil"}];
  }

  v6 = [(_LSApplicationExtensionRecordEnumerator *)[_LSPlugInProxyEnumerator alloc] initWithExtensionPointIdentifier:point options:options];

  return v6;
}

+ (id)enumeratorForPlugInKitProxiesWithExtensionPoint:(id)point options:(unint64_t)options filter:(id)filter
{
  if (point)
  {
    if (filter)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSEnumerator.mm" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"extensionPointID != nil"}];

    if (filter)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSEnumerator.mm" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"filterBlock != nil"}];

LABEL_3:
  v10 = [(_LSApplicationExtensionRecordEnumerator *)[_LSPlugInProxyEnumerator alloc] initWithExtensionPointIdentifier:point options:options filter:filter];

  return v10;
}

- (NSPredicate)predicate
{
  v2 = MEMORY[0x1865D71B0](self->_filter, a2);
  v3 = v2;
  v4 = MEMORY[0x1E696AE18];
  if (v2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __25__LSEnumerator_predicate__block_invoke;
    v7[3] = &unk_1E6A1CC00;
    v8 = v2;
    v5 = [v4 predicateWithBlock:v7];
  }

  else
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  return v5;
}

- (void)setPredicate:(id)predicate
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__LSEnumerator_setPredicate___block_invoke;
  v6[3] = &unk_1E6A1CC28;
  v6[4] = predicate;
  v4 = MEMORY[0x1865D71B0](v6, a2);
  filter = self->_filter;
  self->_filter = v4;
}

- (id)filter
{
  if (self->_filter)
  {
    filter = self->_filter;
  }

  else
  {
    filter = &__block_literal_global_39;
  }

  v3 = MEMORY[0x1865D71B0](filter, a2);

  return v3;
}

- (void)setFilter:(id)filter
{
  v4 = [filter copy];
  filter = self->_filter;
  self->_filter = v4;
}

- (void)swift_forEach:(id)each
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v5 = [(LSEnumerator *)selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        (*(each + 2))(each, *(*(&v9 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [(LSEnumerator *)selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)swift_firstWhere:(id)where
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v5 = [(LSEnumerator *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ((*(where + 2))(where, v8))
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(LSEnumerator *)selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[(objc_class *)object_getClass(self) allocWithZone:zone] _initWithContext:0];
  if (v4)
  {
    v5 = [self->_filter copy];
    v6 = *(v4 + 8);
    *(v4 + 8) = v5;

    v7 = [self->_errorHandler copy];
    v8 = *(v4 + 24);
    *(v4 + 24) = v7;

    v9 = atomic_load(&self->_hasFiredErrorHandler);
    atomic_store(v9 & 1, (v4 + 16));
  }

  return v4;
}

- (id)_initWithContext:(LSContext *)context
{
  v4.receiver = self;
  v4.super_class = LSEnumerator;
  return [(LSEnumerator *)&v4 init];
}

@end