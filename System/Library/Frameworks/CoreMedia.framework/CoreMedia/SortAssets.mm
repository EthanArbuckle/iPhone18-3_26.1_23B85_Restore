@interface SortAssets
@end

@implementation SortAssets

uint64_t __figMobileAsset_SortAssets_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [objc_msgSend(a2 "attributes")];
  v5 = [objc_msgSend(a3 "attributes")];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    if (v6)
    {
      return 1;
    }

    else
    {
      return v9;
    }
  }

  else
  {

    return [v6 compare:v7];
  }
}

@end