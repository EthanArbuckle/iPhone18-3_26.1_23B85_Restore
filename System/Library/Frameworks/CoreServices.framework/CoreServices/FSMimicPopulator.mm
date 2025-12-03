@interface FSMimicPopulator
- (BOOL)populateHFSTypeAndCreatorWithError:(id *)error;
- (BOOL)populateSimpleSelector:(SEL)selector error:(id *)error;
- (BOOL)populateValueForKey:(id)key error:(id *)error;
- (FSMimicPopulator)initWithNode:(id)node;
- (void)populateHasChildNodeWithRelativePath:(id)path;
@end

@implementation FSMimicPopulator

- (FSMimicPopulator)initWithNode:(id)node
{
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = FSMimicPopulator;
  v6 = [(FSMimicPopulator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_node, node);
    v8 = [FSMimic alloc];
    v9 = [nodeCopy URL];
    v10 = [(FSMimic *)v8 initWithURL:v9];
    mimic = v7->_mimic;
    v7->_mimic = v10;
  }

  return v7;
}

- (BOOL)populateSimpleSelector:(SEL)selector error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  if ([(FSMimic *)self->_mimic hasObjectValueForSelector:?])
  {
    goto LABEL_2;
  }

  v10 = categorizeSelector(selector);
  LOBYTE(mimic) = 0;
  if (v10 > 2)
  {
    if ((v10 - 5) >= 2)
    {
      if (v10 == 3)
      {
        mimic = self->_mimic;
        v11 = self->_node;
        v12 = mimic;
        v25 = 0.0;
        LODWORD(mimic) = [v11 selector];
        if (mimic)
        {
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&v25];
          [v12 setObjectValue:v24 forSelector:selector];
        }
      }

      else
      {
        if (v10 != 4)
        {
          goto LABEL_3;
        }

        mimic = self->_mimic;
        v11 = self->_node;
        v12 = mimic;
        v25 = 0.0;
        LODWORD(mimic) = [v11 selector];
        if (mimic)
        {
          v14 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
          [v12 setObjectValue:v14 forSelector:selector];
        }
      }

      goto LABEL_26;
    }

    if (error)
    {
      v26 = *MEMORY[0x1E696A278];
      v15 = NSStringFromSelector(selector);
      v27[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v16, "[FSMimicPopulator populateSimpleSelector:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 487);
    }

    LOBYTE(mimic) = 0;
  }

  else
  {
    if (!v10)
    {
      v17 = self->_mimic;
      v18 = self->_node;
      v19 = v17;
      selector = [v18 selector];
      v21 = [MEMORY[0x1E696AD98] numberWithBool:selector];
      [(FSMimic *)v19 setObjectValue:v21 forSelector:selector];

LABEL_2:
      LOBYTE(mimic) = 1;
      goto LABEL_3;
    }

    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_3;
      }

      mimic = self->_mimic;
      v11 = self->_node;
      v12 = mimic;
      LODWORD(v25) = 0;
      LODWORD(mimic) = [v11 selector];
      if (mimic)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(v25)];
        [v12 setObjectValue:v13 forSelector:selector];
      }

LABEL_26:

      goto LABEL_3;
    }

    mimic = self->_node;
    v22 = self->_mimic;
    selector2 = [mimic selector];
    LOBYTE(mimic) = selector2 != 0;
    if (selector2)
    {
      [(FSMimic *)v22 setObjectValue:selector2 forSelector:selector];
    }
  }

LABEL_3:
  v8 = *MEMORY[0x1E69E9840];
  return mimic;
}

- (BOOL)populateValueForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v13 = 0;
  if ([(FSMimic *)self->_mimic hasResourceValueForKey:keyCopy])
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v9 = [(FSNode *)self->_node getResourceValue:&v13 forKey:keyCopy options:3 error:error];
    v7 = v13;
    if (v9)
    {
      if (!v13)
      {
        null = [MEMORY[0x1E695DFB0] null];
        v11 = v13;
        v13 = null;

        v7 = v13;
      }

      [(FSMimic *)self->_mimic setResourceValue:v7 forKey:keyCopy];
      v8 = 1;
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)populateHasChildNodeWithRelativePath:(id)path
{
  pathCopy = path;
  if ([(FSNode *)self->_node childNodeWithRelativePathExists:?])
  {
    [(FSMimic *)self->_mimic noteExtantChildNodeWithRelativePath:pathCopy];
  }
}

- (BOOL)populateHFSTypeAndCreatorWithError:(id *)error
{
  v13 = 0;
  v14 = 0;
  v5 = [(FSNode *)self->_node getHFSType:&v14 + 4 creator:&v14 error:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    [(FSMimic *)self->_mimic setHFSType:HIDWORD(v14) creator:v14];
LABEL_3:
    v8 = 1;
    goto LABEL_11;
  }

  domain = [v6 domain];
  if ([domain isEqual:*MEMORY[0x1E696A768]])
  {
    code = [v7 code];

    if (code == -10813)
    {
      [(FSMimic *)self->_mimic setHFSTypesUnavailable];
      goto LABEL_3;
    }
  }

  else
  {
  }

  if (error)
  {
    v11 = v7;
    v8 = 0;
    *error = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_11:

  return v8;
}

@end