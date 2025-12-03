@interface LPEmailCompatibleHTMLImageComponent
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLImageComponent)initWithImage:(id)image style:(id)style themePath:(id)path generator:(id)generator;
@end

@implementation LPEmailCompatibleHTMLImageComponent

- (LPEmailCompatibleHTMLImageComponent)initWithImage:(id)image style:(id)style themePath:(id)path generator:(id)generator
{
  imageCopy = image;
  styleCopy = style;
  pathCopy = path;
  generatorCopy = generator;
  v80.receiver = self;
  v80.super_class = LPEmailCompatibleHTMLImageComponent;
  v13 = [(LPHTMLComponent *)&v80 initWithTagName:@"img" themePath:pathCopy generator:generatorCopy];
  v15 = v13;
  if (v13)
  {
    LPWebLock(v13, v14);
    _alternateHTMLImageGenerator = [imageCopy _alternateHTMLImageGenerator];

    if (_alternateHTMLImageGenerator)
    {
      _alternateHTMLImageGenerator2 = [imageCopy _alternateHTMLImageGenerator];
      v18 = _alternateHTMLImageGenerator2[2]();

      imageCopy = v18;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__LPEmailCompatibleHTMLImageComponent_initWithImage_style_themePath_generator___block_invoke;
    aBlock[3] = &unk_1E7A357A0;
    v19 = pathCopy;
    v79 = v19;
    v75 = _Block_copy(aBlock);
    imageCopy = imageCopy;
    _remoteURLsForEmailCompatibleOutput = [imageCopy _remoteURLsForEmailCompatibleOutput];

    if (_remoteURLsForEmailCompatibleOutput)
    {
      element = [(LPHTMLComponent *)v15 element];
      _remoteURLsForEmailCompatibleOutput2 = [imageCopy _remoteURLsForEmailCompatibleOutput];
      firstObject = [_remoteURLsForEmailCompatibleOutput2 firstObject];
      v24 = [firstObject URL];
      absoluteString = [v24 absoluteString];
      [element setAttribute:@"src" value:absoluteString];

      element2 = [(LPHTMLComponent *)v15 element];
      _srcsetForRemoteURLs = [imageCopy _srcsetForRemoteURLs];
      [element2 setAttribute:@"srcset" value:_srcsetForRemoteURLs];
      v76 = imageCopy;
    }

    else
    {
      v76 = imageCopy;
      if ([styleCopy filter] == 4)
      {
        maskColor = [styleCopy maskColor];
        v76 = flatImageWithColor(imageCopy, maskColor);
      }

      element2 = [(LPHTMLComponent *)v15 element];
      _srcsetForRemoteURLs = [generatorCopy _URLForImage:v76];
      [element2 setAttribute:@"src" value:_srcsetForRemoteURLs];
    }

    element3 = [(LPHTMLComponent *)v15 element];
    properties = [imageCopy properties];
    accessibilityText = [properties accessibilityText];
    v74 = v19;
    [element3 setAttribute:@"alt" value:accessibilityText];

    fixedSize = [styleCopy fixedSize];
    if (fixedSize && ([styleCopy fixedSize], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isEmpty"), v33, fixedSize, (v34 & 1) == 0))
    {
      fixedSize2 = [styleCopy fixedSize];
      width = [fixedSize2 width];

      fixedSize3 = [styleCopy fixedSize];
      height = [fixedSize3 height];
    }

    else
    {
      [v76 _pixelSize];
      v36 = v35;
      v38 = v37;
      rootWidth = [generatorCopy rootWidth];
      [rootWidth value];
      sizeFittingInsideSizeMaintainingAspectRatio(v36, v38, v40, 500.0);
      v42 = v41;
      v44 = v43;

      width = [[LPPointUnit alloc] initWithValue:v42];
      height = [[LPPointUnit alloc] initWithValue:v44];
    }

    _lp_CSSText = [(LPPointUnit *)width _lp_CSSText];
    cssResolver = [generatorCopy cssResolver];
    localVariables = [cssResolver localVariables];
    v52 = v75[2](v75, @"local", @"width");
    [localVariables setObject:_lp_CSSText forKeyedSubscript:v52];

    _lp_CSSText2 = [(LPPointUnit *)height _lp_CSSText];
    cssResolver2 = [generatorCopy cssResolver];
    localVariables2 = [cssResolver2 localVariables];
    v56 = v75[2](v75, @"local", @"height");
    [localVariables2 setObject:_lp_CSSText2 forKeyedSubscript:v56];

    filter = [styleCopy filter];
    v58 = 0.0;
    if (filter == 2)
    {
      [styleCopy darkeningAmount];
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

    cssResolver3 = [generatorCopy cssResolver];
    localVariables3 = [cssResolver3 localVariables];
    v63 = v75[2](v75, @"local", @"filter");
    [localVariables3 setObject:v60 forKeyedSubscript:v63];

    if (v59 != 0.0)
    {
    }

    cssResolver4 = [generatorCopy cssResolver];
    v65 = [@"lp-rich-link-" stringByAppendingString:v74];
    element4 = [(LPHTMLComponent *)v15 element];
    [cssResolver4 addStyle:v65 toElement:element4 inComponent:v15];

    element5 = [(LPHTMLComponent *)v15 element];
    _lp_HTMLAttributeText = [(LPPointUnit *)width _lp_HTMLAttributeText];
    [element5 setAttribute:@"width" value:_lp_HTMLAttributeText];

    element6 = [(LPHTMLComponent *)v15 element];
    _lp_HTMLAttributeText2 = [(LPPointUnit *)height _lp_HTMLAttributeText];
    [element6 setAttribute:@"height" value:_lp_HTMLAttributeText2];

    element7 = [(LPHTMLComponent *)v15 element];
    [element7 setAttribute:@"draggable" value:@"false"];

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

+ (id)ruleDictionaryForStyle:(id)style
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