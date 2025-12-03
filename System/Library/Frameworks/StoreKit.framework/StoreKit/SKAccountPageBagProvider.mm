@interface SKAccountPageBagProvider
+ (id)sharedBag;
@end

@implementation SKAccountPageBagProvider

+ (id)sharedBag
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SKAccountPageBagProvider_sharedBag__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedBag_onceToken != -1)
  {
    dispatch_once(&sharedBag_onceToken, block);
  }

  v2 = sharedBag__shared;

  return v2;
}

void __37__SKAccountPageBagProvider_sharedBag__block_invoke()
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v0 = getISLoadURLBagOperationClass_softClass;
  v23 = getISLoadURLBagOperationClass_softClass;
  if (!getISLoadURLBagOperationClass_softClass)
  {
    *v24 = MEMORY[0x1E69E9820];
    *&v24[8] = 3221225472;
    *&v24[16] = __getISLoadURLBagOperationClass_block_invoke;
    v25 = &unk_1E7B279A8;
    v26 = &v20;
    __getISLoadURLBagOperationClass_block_invoke(v24);
    v0 = v21[3];
  }

  v1 = v0;
  _Block_object_dispose(&v20, 8);
  v2 = objc_alloc_init(v0);
  [v2 start];
  v3 = [v2 success];
  v4 = [v2 error];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x1E69D4938] sharediTunesStoreConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x1E69D4938] sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      *v24 = 138543618;
      *&v24[4] = v10;
      *&v24[12] = 2114;
      *&v24[14] = v4;
      v11 = v10;
      LODWORD(v19) = 22;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_18:

        goto LABEL_19;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, v24, v19, v20}];
      free(v12);
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_19:
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v13 = getISAMSBagShimClass_softClass;
  v23 = getISAMSBagShimClass_softClass;
  if (!getISAMSBagShimClass_softClass)
  {
    *v24 = MEMORY[0x1E69E9820];
    *&v24[8] = 3221225472;
    *&v24[16] = __getISAMSBagShimClass_block_invoke;
    v25 = &unk_1E7B279A8;
    v26 = &v20;
    __getISAMSBagShimClass_block_invoke(v24);
    v13 = v21[3];
  }

  v14 = v13;
  _Block_object_dispose(&v20, 8);
  v15 = [v13 alloc];
  v16 = [v2 URLBag];
  v17 = [v15 initWithURLBag:v16];
  v18 = sharedBag__shared;
  sharedBag__shared = v17;
}

@end