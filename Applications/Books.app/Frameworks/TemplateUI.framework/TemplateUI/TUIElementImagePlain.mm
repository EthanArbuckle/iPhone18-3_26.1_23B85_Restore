@interface TUIElementImagePlain
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementImagePlain

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v47 = a5;
  var0 = a4.var0;
  v10 = a6;
  v11 = a3;
  v12 = [v47 stringForAttribute:215 node:a4.var0];
  v13 = [v10 baseURLForNode:a4.var0];
  [v47 sizeForAttribute:194 node:var0];
  v15 = v14;
  v17 = v16;
  v18 = [v47 stringForAttribute:168 node:var0];
  v19 = [TUIBox imageRenderingModeFromString:v18];

  [v47 insetsForAttribute:3 node:var0];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [v10 identifierWithNode:var0];

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
  v35 = [v33 lastPathComponent];
  v36 = [v35 stringByDeletingPathExtension];

  v37 = [v36 rangeOfString:@"@" options:4];
  v38 = 1.0;
  if (v37 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = [v36 substringWithRange:{v37 + 1, 1}];
    v46 = v34;
    v40 = [v39 integerValue];

    v41 = v40;
    v42 = v40 == 0;
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
  [v11 setImageModel:{v32, v46}];
  v45 = [v47 stringForAttribute:178 node:var0];
  [v11 setRole:v45];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 imageModel];
  v8 = [v7 role];

  [v6 addImageModel:v9 forRole:v8];
}

@end