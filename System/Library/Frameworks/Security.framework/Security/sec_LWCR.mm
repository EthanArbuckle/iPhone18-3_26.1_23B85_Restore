@interface sec_LWCR
+ (id)withData:(id)data withError:(id *)error;
- (BOOL)hasRequirements;
- (id).cxx_construct;
- (sec_LWCR)init;
- (void)dealloc;
@end

@implementation sec_LWCR

- (id).cxx_construct
{
  *(self + 104) = 0;
  *(self + 81) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  return self;
}

- (BOOL)hasRequirements
{
  v3 = *&self->lwcr.ctx.der_context.runtime;
  v4 = *&self->lwcr.ctx.der_context.lookup.index_count;
  v5 = *&self->lwcr.ctx.der_context.sorted;
  der_end = self->lwcr.ctx.der_context.var0.ccstate.der_end;
  return der_vm_context_is_valid();
}

- (void)dealloc
{
  backingContext = self->backingContext;
  p_backingContext = &self->backingContext;
  if (backingContext)
  {
    SecCEReleaseContext(p_backingContext);
  }

  v5.receiver = self;
  v5.super_class = sec_LWCR;
  [(sec_LWCR *)&v5 dealloc];
}

- (sec_LWCR)init
{
  v6.receiver = self;
  v6.super_class = sec_LWCR;
  v2 = [(sec_LWCR *)&v6 init];
  v3 = v2;
  if (v2)
  {
    backingStorage = v2->backingStorage;
    v2->backingStorage = 0;

    v3->backingContext = 0;
  }

  return v3;
}

+ (id)withData:(id)data withError:(id *)error
{
  v53[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v39 = 0;
  v44 = 0uLL;
  *&v45 = 0;
  CFDataGetBytePtr(dataCopy);
  CFDataGetLength(dataCopy);
  v7 = CEValidateWithOptions();
  v8 = MEMORY[0x1E69E50B8];
  v9 = *MEMORY[0x1E69E50B8];
  if (v7 == *MEMORY[0x1E69E50B8])
  {
    v48 = v44;
    *&v49 = v45;
    v7 = SecCEAcquireContext(&v48, &v39);
    v9 = *v8;
  }

  if (v7 == v9)
  {
    v11 = objc_alloc_init(sec_LWCR);
    objc_storeStrong(&v11->backingStorage, data);
    v12 = v39;
    v11->backingContext = v39;
    runtime = v12->der_context.runtime;
    v14 = *&v12->der_context.runtime;
    v15 = *&v12->der_context.lookup.index_count;
    v16 = *&v12->der_context.sorted;
    *&v47 = v12->der_context.var0.ccstate.der_end;
    v45 = v15;
    v46 = v16;
    v44 = v14;
    if (der_vm_select_int_for_key() && (v17 = *&v12->der_context.runtime, v18 = *&v12->der_context.lookup.index_count, v19 = *&v12->der_context.sorted, *&v47 = v12->der_context.var0.ccstate.der_end, v45 = v18, v46 = v19, v44 = v17, (der_vm_select_int_for_key() & 1) != 0))
    {
      if (v11->lwcr._compatVersion <= 1)
      {
        v30 = *&v12->der_context.runtime;
        v31 = *&v12->der_context.lookup.index_count;
        v32 = *&v12->der_context.sorted;
        *&v47 = v12->der_context.var0.ccstate.der_end;
        v45 = v31;
        v46 = v32;
        v44 = v30;
        if (der_vm_select_int_for_key() && v11->lwcr._constraintCat < 0)
        {
          v20 = 7;
          v21 = "LWCRs constraint category cannot be less that zero";
          v22 = 50;
        }

        else
        {
          v51 = 0;
          v49 = 0u;
          v50 = 0u;
          v48 = 0u;
          v33 = *&v12->der_context.runtime;
          v34 = *&v12->der_context.lookup.index_count;
          v35 = *&v12->der_context.sorted;
          *&v47 = v12->der_context.var0.ccstate.der_end;
          v45 = v34;
          v46 = v35;
          v44 = v33;
          der_vm_execute_nocopy();
          v44 = v48;
          v45 = v49;
          v46 = v50;
          *&v47 = v51;
          if (der_vm_context_is_valid() && (v44 = v48, v45 = v49, v46 = v50, *&v47 = v51, der_vm_CEType_from_context() != 1))
          {
            v21 = "LWCRs 'requirements' field is not a dictionary";
            v22 = 46;
          }

          else
          {
            if (v11->lwcr._constraintCat || (v44 = v48, v45 = v49, v46 = v50, *&v47 = v51, der_vm_context_is_valid()))
            {
              v44 = v48;
              v45 = v49;
              v46 = v50;
              *&v47 = v51;
              if (der_vm_context_is_valid())
              {
                v40 = v48;
                v41 = v49;
                v42 = v50;
                v43 = v51;
                CEConjureContextFromDER();
                v36 = v45;
                v38 = v46;
                v37 = v47;
                *&v11->lwcr.ctx.der_context.runtime = v44;
                *&v11->lwcr.ctx.der_context.lookup.index_count = v36;
                *&v11->lwcr.ctx.der_context.sorted = v38;
                *&v11->lwcr.ctx.der_context.var0.state.der_end = v37;
              }

              v10 = v11;
              v11 = 0;
              goto LABEL_16;
            }

            v21 = "LWCRs do not specify a constraint category or explicit requirements";
            v22 = 67;
          }

          v20 = 7;
        }
      }

      else
      {
        v20 = 6;
        v21 = "This LWCR is not compatible with this runtime";
        v22 = 45;
      }
    }

    else
    {
      v23 = *(runtime + 3);
      if (v23)
      {
        v23(runtime, "[%s]: %s\n", "loadFromCE", "LWCR: invalid version / compatible version fields");
      }

      v20 = 7;
      v21 = "LWCRs are not encoded correctly";
      v22 = 31;
    }

    if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v52[0] = *MEMORY[0x1E696AA08];
      v25 = [MEMORY[0x1E696AD98] numberWithInt:v20];
      v52[1] = *MEMORY[0x1E696A278];
      v53[0] = v25;
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v21 length:v22 encoding:4];
      v53[1] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
      *error = [v24 errorWithDomain:@"LWCRError" code:1 userInfo:v27];
    }

    v10 = 0;
LABEL_16:

    goto LABEL_18;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"LWCRError" code:2 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_18:

  v28 = *MEMORY[0x1E69E9840];

  return v10;
}

@end