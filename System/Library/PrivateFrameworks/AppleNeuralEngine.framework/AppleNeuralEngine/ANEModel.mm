@interface ANEModel
@end

@implementation ANEModel

void __44___ANEModel_procedureInfoForProcedureIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  v14 = v6;
  if (objc_opt_isKindOfClass())
  {
    v7 = v14;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 objectForKeyedSubscript:kANEFModelProcedureIDKey[0]];
  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = *(a1 + 40);
    if (v13 == [v12 unsignedIntegerValue])
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v7);
      *a4 = 1;
    }
  }
}

@end