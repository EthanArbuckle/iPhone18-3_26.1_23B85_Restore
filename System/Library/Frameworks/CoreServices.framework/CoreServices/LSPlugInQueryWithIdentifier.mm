@interface LSPlugInQueryWithIdentifier
- (BOOL)isEqual:(id)equal;
- (LSPlugInQueryWithIdentifier)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier inMap:(int)map;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSPlugInQueryWithIdentifier

- (id)_initWithIdentifier:(id)identifier inMap:(int)map
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = LSPlugInQueryWithIdentifier;
  _init = [(LSPlugInQuery *)&v13 _init];
  v8 = _init;
  if (_init)
  {
    _init[3] = map;
    v9 = [identifierCopy copy];
    v10 = v8[2];
    v8[2] = v9;
  }

  if (_LSEntitledForPluginQuery())
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  v20[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  blockCopy = block;
  if (*&self->_bindingMap && [(LSPlugInQueryWithIdentifier *)self isBindingMapValid])
  {
    v17 = 0;
    v18 = 0;
    inited = _LSContextInitReturningError(&v18, &v17);
    v9 = v17;
    if (inited)
    {
      v10 = [MEMORY[0x1E695DFA8] set];
      _LSDatabaseGetStringForCFString(v18, *&self->_bindingMap, 0);
      v11 = v18;
      v12 = *(&self->super.super._legacy + 1);
      v15 = MEMORY[0x1E69E9820];
      v16 = v10;
      _LSDatabaseEnumeratingBindingMap(v11);
      [(LSPlugInQuery *)self sort:1 pluginIDs:v16 andYield:blockCopy context:&v18, v15, 3221225472, __65__LSPlugInQueryWithIdentifier__enumerateWithXPCConnection_block___block_invoke, &unk_1E6A1D720];
      _LSContextDestroy(&v18);
    }

    else
    {
      blockCopy[2](blockCopy, 0, v9);
    }
  }

  else
  {
    v19 = *MEMORY[0x1E696A278];
    v20[0] = @"invalid bundleIdentifier";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v9, "[LSPlugInQueryWithIdentifier _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSPlugInQueryWithIdentifier.m", 55);
    blockCopy[2](blockCopy, 0, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __65__LSPlugInQueryWithIdentifier__enumerateWithXPCConnection_block___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [v1 addObject:v2];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = LSPlugInQueryWithIdentifier;
  if ([(LSPlugInQuery *)&v9 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = *&self->_bindingMap;
    _identifier = [equalCopy _identifier];
    v7 = [v5 isEqualToString:_identifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [*&self->_bindingMap hash];
  v5.receiver = self;
  v5.super_class = LSPlugInQueryWithIdentifier;
  return [(LSPlugInQuery *)&v5 hash]^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *&self->_bindingMap;
  coderCopy = coder;
  [coderCopy encodeObject:v4 forKey:@"identifier"];
  [coderCopy encodeInt32:*(&self->super.super._legacy + 1) forKey:@"bindingMap"];
}

- (LSPlugInQueryWithIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeInt32ForKey:@"bindingMap"];

  v7 = [(LSPlugInQueryWithIdentifier *)self _initWithIdentifier:v5 inMap:v6];
  return v7;
}

@end