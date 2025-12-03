@interface TUIElementImagePlain
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementImagePlain

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  var0 = node.var0;
  contextCopy = context;
  objectCopy = object;
  v12 = [attributesCopy stringForAttribute:215 node:node.var0];
  v13 = [contextCopy baseURLForNode:node.var0];
  [attributesCopy sizeForAttribute:194 node:var0];
  v15 = v14;
  v17 = v16;
  v18 = [attributesCopy stringForAttribute:168 node:var0];
  v19 = [TUIBox imageRenderingModeFromString:v18];

  [attributesCopy insetsForAttribute:3 node:var0];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [contextCopy identifierWithNode:var0];

  if (!v12)
  {
    v33 = 0;
    v32 = 0;
    goto LABEL_18;
  }

  v29 = [NSURL URLWithString:v12];
  v30 = v29;
  if (!v29 || ([v29 isFileURL] & 1) == 0 && (objc_msgSend(v30, "scheme"), v31 = objc_claimAutoreleasedReturnValue(), v31, v31))
  {
    v32 = [[TUIImageModel alloc] initWithIdentifier:v28 urlString:v12 baseURL:v13 size:v19 renderMode:v15 alignmentRectInsets:v17, v21, v23, v25, v27];
    v33 = v30;
    goto LABEL_18;
  }

  v33 = [NSURL URLWithString:v12 relativeToURL:v13];

  if (!v33)
  {
    v34 = 0;
LABEL_16:
    v32 = 0;
    goto LABEL_17;
  }

  v34 = [NSData dataWithContentsOfURL:v33];
  lastPathComponent = [v33 lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  v37 = [stringByDeletingPathExtension rangeOfString:@"@" options:4];
  v38 = 1.0;
  if (v37 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = [stringByDeletingPathExtension substringWithRange:{v37 + 1, 1}];
    v46 = v34;
    integerValue = [v39 integerValue];

    v41 = integerValue;
    v42 = integerValue == 0;
    v34 = v46;
    if (v42)
    {
      v38 = 1.0;
    }

    else
    {
      v38 = v41;
    }
  }

  if (!v34)
  {
    goto LABEL_16;
  }

  v43 = [UIImage imageWithData:v34 scale:v38];
  if (!v43)
  {
    goto LABEL_16;
  }

  v44 = v43;
  v32 = [[TUIImageModel alloc] initWithIdentifier:v28 image:v43 size:v19 renderMode:v15 alignmentRectInsets:v17, v21, v23, v25, v27];

LABEL_17:
LABEL_18:
  [objectCopy setImageModel:{v32, v46}];
  v45 = [attributesCopy stringForAttribute:178 node:var0];
  [objectCopy setRole:v45];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  builderCopy = builder;
  objectCopy = object;
  imageModel = [objectCopy imageModel];
  role = [objectCopy role];

  [builderCopy addImageModel:imageModel forRole:role];
}

@end