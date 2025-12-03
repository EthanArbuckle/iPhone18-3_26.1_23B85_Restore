@interface _BSProtobufTranslator_BSAuditToken
- (id)didFinishProtobufDecodingWithError:(id *)error;
- (id)initProtobufTranslatorForObject:(id)object;
@end

@implementation _BSProtobufTranslator_BSAuditToken

- (id)initProtobufTranslatorForObject:(id)object
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = _BSProtobufTranslator_BSAuditToken;
  v5 = [(_BSProtobufTranslator_BSAuditToken *)&v14 init];
  if (v5)
  {
    if (objectCopy)
    {
      v6 = [MEMORY[0x1E696B098] value:objectCopy + 8 withObjCType:"{?=[8I]}"];
      v7 = v6;
      if (v6)
      {
        sizep = 0;
        NSGetSizeAndAlignment([v6 objCType], &sizep, 0);
        v9 = malloc_type_malloc(sizep, 0x7A79F891uLL);
        [v7 getValue:v9];
        v8 = [MEMORY[0x1E695DEF0] dataWithBytes:v9 length:sizep];
        free(v9);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    tokenData = v5->_tokenData;
    v5->_tokenData = v8;

    bundleID = [objectCopy bundleID];
    bundleID = v5->_bundleID;
    v5->_bundleID = bundleID;
  }

  return v5;
}

- (id)didFinishProtobufDecodingWithError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  v4 = [BSAuditToken alloc];
  bundleID = self->_bundleID;
  v6 = self->_tokenData;
  v7 = bundleID;
  if (v4)
  {
    v8 = v6;
    v9 = v8;
    if (v8 && (v10 = [(NSData *)v8 length], sizep[0] = 0, NSGetSizeAndAlignment("{?=[8I]}", sizep, 0), v10 == sizep[0]))
    {
      v11 = MEMORY[0x1E696B098];
      v12 = v9;
      v13 = [v11 valueWithBytes:-[NSData bytes](v9 objCType:{"bytes"), "{?=[8I]}"}];

      if (v13)
      {
        *&v14 = -1;
        *(&v14 + 1) = -1;
        *sizep = v14;
        v24 = v14;
        [v13 getValue:sizep];
        v22[0] = *sizep;
        v22[1] = v24;
        v15 = [(BSAuditToken *)v4 initWithAuditToken:v22];
        v16 = v15;
        if (v15)
        {
          objc_storeStrong((v15 + 40), bundleID);
        }

        v4 = v16;
        v17 = v4;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
    }

    v18 = BSLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      LODWORD(sizep[0]) = 138543362;
      *(sizep + 4) = v20;
      v21 = v20;
      _os_log_error_impl(&dword_18FEF6000, v18, OS_LOG_TYPE_ERROR, "Failed to decode audit token for %{public}@ - returning nil from initializer", sizep, 0xCu);
    }

    v13 = 0;
    v17 = 0;
    goto LABEL_14;
  }

  v17 = 0;
LABEL_15:

  return v17;
}

@end