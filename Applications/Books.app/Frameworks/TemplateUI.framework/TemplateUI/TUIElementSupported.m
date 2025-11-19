@interface TUIElementSupported
+ (id)attributesToIgnoreWhenResolving;
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementSupported

+ (id)attributesToIgnoreWhenResolving
{
  if (qword_2E67E0 != -1)
  {
    sub_19BF40();
  }

  v3 = qword_2E67D8;

  return v3;
}

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v27 = a6;
  var0 = a4.var0;
  v9 = a5;
  v10 = [v9 constantNameForAttribute:137 node:a4.var0];
  v11 = [v9 stringForAttribute:71 node:var0];
  v12 = [v9 stringForAttribute:81 node:var0];
  v13 = [v9 stringForAttribute:14 node:var0];

  v14 = [TUIAttributeRegistry lookupAttributeWithName:v13];
  v15 = v14;
  if (!v11)
  {
    if (v14 != 0xFFFF && v12 == 0)
    {
      v26 = +[TUIAttributeSet allSupportedAttributes];
      v20 = [v26 containsAttribute:v15];
    }

    else
    {
      v20 = 0;
      if (v14 == 0xFFFF)
      {
        v21 = v27;
        if (!v12)
        {
          goto LABEL_21;
        }

        v24 = [v27 manager];
        v25 = [v24 elementRegistry];
        v20 = [v25 supportFeature:v12];
      }
    }

    goto LABEL_20;
  }

  v16 = [v27 manager];
  v17 = [v16 elementRegistry];
  v18 = [v17 elementClassForName:v11];

  v19 = v18 != 0;
  if (v13)
  {
    v20 = 0;
    if (v15 == 0xFFFF)
    {
LABEL_20:
      v21 = v27;
      goto LABEL_21;
    }

    v21 = v27;
    if (!v18)
    {
      goto LABEL_21;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_19:
      v20 = 0;
      goto LABEL_20;
    }

    v22 = [v18 supportedAttributes];
    v19 = [v22 containsAttribute:v15];
  }

  v20 = ((v12 == 0) & v19);
  v21 = v27;
  if (v12 && v19)
  {
    if (objc_opt_respondsToSelector())
    {
      v20 = [v18 supportAttribute:v15 feature:v12];
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:
  [v21 defineBool:v20 withName:v10];
}

@end