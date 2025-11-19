@interface LPEmailCompatibleHTMLImageComponent
+ (id)ruleDictionaryForStyle:(id)a3;
- (LPEmailCompatibleHTMLImageComponent)initWithImage:(id)a3 style:(id)a4 themePath:(id)a5 generator:(id)a6;
@end

@implementation LPEmailCompatibleHTMLImageComponent

- (LPEmailCompatibleHTMLImageComponent)initWithImage:(id)a3 style:(id)a4 themePath:(id)a5 generator:(id)a6
{
  v10 = a3;
  v77 = a4;
  v11 = a5;
  v12 = a6;
  v80.receiver = self;
  v80.super_class = LPEmailCompatibleHTMLImageComponent;
  v13 = [(LPHTMLComponent *)&v80 initWithTagName:@"img" themePath:v11 generator:v12];
  v15 = v13;
  if (v13)
  {
    LPWebLock(v13, v14);
    v16 = [v10 _alternateHTMLImageGenerator];

    if (v16)
    {
      v17 = [v10 _alternateHTMLImageGenerator];
      v18 = v17[2]();

      v10 = v18;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__LPEmailCompatibleHTMLImageComponent_initWithImage_style_themePath_generator___block_invoke;
    aBlock[3] = &unk_1E7A357A0;
    v19 = v11;
    v79 = v19;
    v75 = _Block_copy(aBlock);
    v10 = v10;
    v20 = [v10 _remoteURLsForEmailCompatibleOutput];

    if (v20)
    {
      v21 = [(LPHTMLComponent *)v15 element];
      v22 = [v10 _remoteURLsForEmailCompatibleOutput];
      v23 = [v22 firstObject];
      v24 = [v23 URL];
      v25 = [v24 absoluteString];
      [v21 setAttribute:@"src" value:v25];

      v26 = [(LPHTMLComponent *)v15 element];
      v27 = [v10 _srcsetForRemoteURLs];
      [v26 setAttribute:@"srcset" value:v27];
      v76 = v10;
    }

    else
    {
      v76 = v10;
      if ([v77 filter] == 4)
      {
        v28 = [v77 maskColor];
        v76 = flatImageWithColor(v10, v28);
      }

      v26 = [(LPHTMLComponent *)v15 element];
      v27 = [v12 _URLForImage:v76];
      [v26 setAttribute:@"src" value:v27];
    }

    v29 = [(LPHTMLComponent *)v15 element];
    v30 = [v10 properties];
    v31 = [v30 accessibilityText];
    v74 = v19;
    [v29 setAttribute:@"alt" value:v31];

    v32 = [v77 fixedSize];
    if (v32 && ([v77 fixedSize], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isEmpty"), v33, v32, (v34 & 1) == 0))
    {
      v47 = [v77 fixedSize];
      v45 = [v47 width];

      v48 = [v77 fixedSize];
      v46 = [v48 height];
    }

    else
    {
      [v76 _pixelSize];
      v36 = v35;
      v38 = v37;
      v39 = [v12 rootWidth];
      [v39 value];
      sizeFittingInsideSizeMaintainingAspectRatio(v36, v38, v40, 500.0);
      v42 = v41;
      v44 = v43;

      v45 = [[LPPointUnit alloc] initWithValue:v42];
      v46 = [[LPPointUnit alloc] initWithValue:v44];
    }

    v49 = [(LPPointUnit *)v45 _lp_CSSText];
    v50 = [v12 cssResolver];
    v51 = [v50 localVariables];
    v52 = v75[2](v75, @"local", @"width");
    [v51 setObject:v49 forKeyedSubscript:v52];

    v53 = [(LPPointUnit *)v46 _lp_CSSText];
    v54 = [v12 cssResolver];
    v55 = [v54 localVariables];
    v56 = v75[2](v75, @"local", @"height");
    [v55 setObject:v53 forKeyedSubscript:v56];

    v57 = [v77 filter];
    v58 = 0.0;
    if (v57 == 2)
    {
      [v77 darkeningAmount];
    }

    v59 = v58;
    if (v59 == 0.0)
    {
      v60 = &stru_1F2447CF0;
    }

    else
    {
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"brightness(%g)", (1.0 - v59)];
    }

    v61 = [v12 cssResolver];
    v62 = [v61 localVariables];
    v63 = v75[2](v75, @"local", @"filter");
    [v62 setObject:v60 forKeyedSubscript:v63];

    if (v59 != 0.0)
    {
    }

    v64 = [v12 cssResolver];
    v65 = [@"lp-rich-link-" stringByAppendingString:v74];
    v66 = [(LPHTMLComponent *)v15 element];
    [v64 addStyle:v65 toElement:v66 inComponent:v15];

    v67 = [(LPHTMLComponent *)v15 element];
    v68 = [(LPPointUnit *)v45 _lp_HTMLAttributeText];
    [v67 setAttribute:@"width" value:v68];

    v69 = [(LPHTMLComponent *)v15 element];
    v70 = [(LPPointUnit *)v46 _lp_HTMLAttributeText];
    [v69 setAttribute:@"height" value:v70];

    v71 = [(LPHTMLComponent *)v15 element];
    [v71 setAttribute:@"draggable" value:@"false"];

    v72 = v15;
  }

  return v15;
}

id __79__LPEmailCompatibleHTMLImageComponent_initWithImage_style_themePath_generator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", v5, *(a1 + 32), v6];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", *(a1 + 32), v6];
  }
  v7 = ;

  return v7;
}

+ (id)ruleDictionaryForStyle:(id)a3
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"width";
  v3 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-width"];
  v9[0] = v3;
  v8[1] = @"height";
  v4 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-height"];
  v9[1] = v4;
  v8[2] = @"filter";
  v5 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-filter"];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

@end