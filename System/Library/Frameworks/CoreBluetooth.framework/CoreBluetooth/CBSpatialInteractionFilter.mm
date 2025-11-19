@interface CBSpatialInteractionFilter
- (BOOL)isEqual:(id)a3;
- (CBSpatialInteractionFilter)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)blob;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mask;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation CBSpatialInteractionFilter

- (void)encodeWithXPCObject:(id)a3
{
  if (self->_requiredSpatialFlags)
  {
    xpc_dictionary_set_uint64(a3, "siFl", self->_requiredSpatialFlags);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    [v4 setRequiredSpatialFlags:{-[CBSpatialInteractionFilter requiredSpatialFlags](self, "requiredSpatialFlags")}];
  }

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  requiredSpatialFlags = self->_requiredSpatialFlags;
  v5 = CUPrintFlags32();
  v6 = [v3 initWithFormat:@"RequiredSF %@", v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
LABEL_5:

    return 0;
  }

  if (v4 != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(CBSpatialInteractionFilter *)v5 requiredSpatialFlags];
      v7 = v6 == [(CBSpatialInteractionFilter *)self requiredSpatialFlags];

      return v7;
    }

    goto LABEL_5;
  }

  return 1;
}

- (id)blob
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v3 appendBytes:&self->_requiredSpatialFlags length:1];
  v4 = [v3 copy];

  return v4;
}

- (id)mask
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  [v3 appendBytes:&self->_requiredSpatialFlags length:1];
  v4 = [v3 copy];

  return v4;
}

- (CBSpatialInteractionFilter)initWithXPCObject:(id)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_19(self, a2, a3);
  v7 = OUTLINED_FUNCTION_18();
  if (!v7)
  {
    if (v5)
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_3_4();
      *v5 = CBErrorF(-6756, "%@ init failed", v23, v24, v25, v26, v27, v28, v30);
    }

    goto LABEL_12;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v29 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v30);
      OUTLINED_FUNCTION_16(v29);
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_0();
  v14 = OUTLINED_FUNCTION_3_1();
  if (v14 != 6)
  {
    if (v14 != 5)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_4(v14, v15, v16, v17, v18, v19, v20, v21, v30, 0);
LABEL_6:
  v6 = v7;
LABEL_7:

  return v6;
}

@end