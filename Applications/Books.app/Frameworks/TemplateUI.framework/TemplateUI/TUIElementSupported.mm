@interface TUIElementSupported
+ (id)attributesToIgnoreWhenResolving;
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
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

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  contextCopy = context;
  var0 = node.var0;
  attributesCopy = attributes;
  v10 = [attributesCopy constantNameForAttribute:137 node:node.var0];
  v11 = [attributesCopy stringForAttribute:71 node:var0];
  v12 = [attributesCopy stringForAttribute:81 node:var0];
  v13 = [attributesCopy stringForAttribute:14 node:var0];

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
        v21 = contextCopy;
        if (!v12)
        {
          goto LABEL_21;
        }

        manager = [contextCopy manager];
        elementRegistry = [manager elementRegistry];
        v20 = [elementRegistry supportFeature:v12];
      }
    }

    goto LABEL_20;
  }

  manager2 = [contextCopy manager];
  elementRegistry2 = [manager2 elementRegistry];
  v18 = [elementRegistry2 elementClassForName:v11];

  v19 = v18 != 0;
  if (v13)
  {
    v20 = 0;
    if (v15 == 0xFFFF)
    {
LABEL_20:
      v21 = contextCopy;
      goto LABEL_21;
    }

    v21 = contextCopy;
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

    supportedAttributes = [v18 supportedAttributes];
    v19 = [supportedAttributes containsAttribute:v15];
  }

  v20 = ((v12 == 0) & v19);
  v21 = contextCopy;
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