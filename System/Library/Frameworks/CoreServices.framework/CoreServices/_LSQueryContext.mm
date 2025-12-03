@interface _LSQueryContext
+ (BOOL)simulateLimitedMappingForXCTests;
+ (id)defaultContext;
+ (void)setSimulateLimitedMappingForXCTests:(BOOL)tests;
- (id)_init;
- (id)_resolveQueries:(id)queries XPCConnection:(id)connection error:(id *)error;
- (id)debugDescription;
- (id)resolveQueries:(id)queries error:(id *)error;
- (void)enumerateResolvedResultsOfQuery:(id)query withBlock:(id)block;
@end

@implementation _LSQueryContext

+ (BOOL)simulateLimitedMappingForXCTests
{
  LODWORD(v2) = [__LSDefaultsGetSharedInstance() isInXCTestRigInsecure];
  if (v2)
  {
    v2 = getenv("LS_SIMULATE_LIMITED_MAPPING_FOR_XCTESTS");
    if (v2)
    {
      LOBYTE(v2) = atoi(v2) != 0;
    }
  }

  return v2;
}

+ (id)defaultContext
{
  if (+[_LSQueryContext defaultContext]::once != -1)
  {
    +[_LSQueryContext defaultContext];
  }

  v3 = +[_LSQueryContext defaultContext]::result;

  return v3;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = _LSQueryContext;
  v2 = [(_LSQueryContext *)&v8 init];
  if (v2)
  {
    MayMapDatabase = _LSCurrentProcessMayMapDatabase();
    v4 = off_1E6A18378;
    if (MayMapDatabase)
    {
      v4 = off_1E6A18330;
    }

    v5 = objc_alloc_init(*v4);
    resolver = v2->_resolver;
    v2->_resolver = v5;
  }

  return v2;
}

- (id)debugDescription
{
  _resolver = [(_LSQueryContext *)self _resolver];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = @"no";
  if (isKindOfClass)
  {
    v5 = @"yes";
  }

  v6 = v5;

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"<%@ %p> { XPC: %@ }", v9, self, v6];

  return v10;
}

- (void)enumerateResolvedResultsOfQuery:(id)query withBlock:(id)block
{
  queryCopy = query;
  blockCopy = block;
  v9 = blockCopy;
  if (queryCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSQueryContext.mm" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"query != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSQueryContext.mm" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];

LABEL_3:
  _resolver = [(_LSQueryContext *)self _resolver];
  v11 = _resolver;
  if (_resolver)
  {
    [_resolver _enumerateResolvedResultsOfQuery:queryCopy XPCConnection:0 withBlock:v9];
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LSQueryContext.mm" lineNumber:91 description:@"Could not get query resolver"];

    v16 = 0;
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSQueryContext(QueryResolution) enumerateResolvedResultsOfQuery:withBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSQuery/LSQueryContext.mm", 99);
    (v9)[2](v9, 0, v15, &v16);
  }
}

- (id)resolveQueries:(id)queries error:(id *)error
{
  queriesCopy = queries;
  if (!queriesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSQueryContext.mm" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"queries != nil"}];
  }

  v12 = 0;
  v8 = [(_LSQueryContext *)self _resolveQueries:queriesCopy XPCConnection:0 error:&v12];
  v9 = v12;
  if (error && !v8)
  {
    v9 = v9;
    *error = v9;
  }

  return v8;
}

- (id)_resolveQueries:(id)queries XPCConnection:(id)connection error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  connectionCopy = connection;
  _resolver = [(_LSQueryContext *)self _resolver];
  if (_resolver)
  {
    if (!queriesCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSQueryContext.mm" lineNumber:160 description:@"Could not get query resolver"];

    if (!queriesCopy)
    {
      goto LABEL_7;
    }
  }

  if ([queriesCopy count])
  {
    v19 = 0;
    v12 = [_resolver _resolveQueries:queriesCopy XPCConnection:connectionCopy error:&v19];
    v13 = v19;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_7:
  v20 = *MEMORY[0x1E696A278];
  v21[0] = @"invalid input parameters";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v15, "[_LSQueryContext(Internal) _resolveQueries:XPCConnection:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSQuery/LSQueryContext.mm", 168);

  v12 = 0;
  if (!error)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v12)
  {
    v16 = v13;
    *error = v13;
  }

LABEL_10:

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (void)setSimulateLimitedMappingForXCTests:(BOOL)tests
{
  testsCopy = tests;
  if ([__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    if (testsCopy)
    {
      v4 = "1";
    }

    else
    {
      v4 = "0";
    }

    setenv("LS_SIMULATE_LIMITED_MAPPING_FOR_XCTESTS", v4, 1);
  }
}

@end