@interface CLPlacemark
@end

@implementation CLPlacemark

id __83__CLPlacemark_INCodableAttributeRelationComparing___intents_compareValue_relation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = MEMORY[0x1E695DEC8];
  v6 = [v4 name];

  v7 = [v5 if_arrayWithObjectIfNonNil:v6];

  return v7;
}

@end