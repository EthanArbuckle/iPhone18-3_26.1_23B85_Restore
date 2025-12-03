@interface LPEmailCompatibleHTMLIconComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLIconComponent)initWithImage:(id)image style:(id)style properties:(id)properties themePath:(id)path generator:(id)generator;
@end

@implementation LPEmailCompatibleHTMLIconComponent

- (LPEmailCompatibleHTMLIconComponent)initWithImage:(id)image style:(id)style properties:(id)properties themePath:(id)path generator:(id)generator
{
  imageCopy = image;
  styleCopy = style;
  propertiesCopy = properties;
  pathCopy = path;
  v89.receiver = self;
  v89.super_class = LPEmailCompatibleHTMLIconComponent;
  generatorCopy = generator;
  v15 = [(LPHTMLComponent *)&v89 initWithTagName:@"img" themePath:pathCopy generator:?];
  v17 = v15;
  if (v15)
  {
    LPWebLock(v15, v16);
    _alternateHTMLImageGenerator = [imageCopy _alternateHTMLImageGenerator];

    v84 = pathCopy;
    if (_alternateHTMLImageGenerator)
    {
      _alternateHTMLImageGenerator2 = [imageCopy _alternateHTMLImageGenerator];
      v20 = _alternateHTMLImageGenerator2[2]();

      imageCopy = v20;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__LPEmailCompatibleHTMLIconComponent_initWithImage_style_properties_themePath_generator___block_invoke;
    aBlock[3] = &unk_1E7A357A0;
    v83 = pathCopy;
    v88 = v83;
    v21 = _Block_copy(aBlock);
    v22 = LPImageViewFilterResolve(imageCopy, propertiesCopy, styleCopy);
    _remoteURLsForEmailCompatibleOutput = [imageCopy _remoteURLsForEmailCompatibleOutput];

    if (_remoteURLsForEmailCompatibleOutput)
    {
      cornerRadius = [styleCopy cornerRadius];
      [cornerRadius value];
      v26 = v25;

      if (v26 != 0.0)
      {
        v27 = MEMORY[0x1E696AEC0];
        cornerRadius2 = [styleCopy cornerRadius];
        [cornerRadius2 value];
        v30 = [v27 stringWithFormat:@"%gpx", v29];
        cssResolver = [generatorCopy cssResolver];
        localVariables = [cssResolver localVariables];
        v33 = v21[2](v21, @"local", @"corner-radius");
        [localVariables setObject:v30 forKeyedSubscript:v33];
      }

      element = [(LPHTMLComponent *)v17 element];
      _remoteURLsForEmailCompatibleOutput2 = [imageCopy _remoteURLsForEmailCompatibleOutput];
      firstObject = [_remoteURLsForEmailCompatibleOutput2 firstObject];
      v37 = [firstObject URL];
      absoluteString = [v37 absoluteString];
      [element setAttribute:@"src" value:absoluteString];

      element2 = [(LPHTMLComponent *)v17 element];
      _srcsetForRemoteURLs = [imageCopy _srcsetForRemoteURLs];
      [element2 setAttribute:@"srcset" value:_srcsetForRemoteURLs];
      goto LABEL_15;
    }

    v41 = imageCopy;
    maskColor = [propertiesCopy maskColor];

    element2 = v41;
    if (maskColor)
    {
      maskColor2 = [propertiesCopy maskColor];
      element2 = flatImageWithColor(v41, maskColor2);
    }

    if (v22 <= 0xF)
    {
      if (((1 << v22) & 0xD008) != 0)
      {
        fixedSize = [styleCopy fixedSize];
        [fixedSize asSize];
        v46 = v45;
        v48 = v47;

        cornerRadius3 = [styleCopy cornerRadius];
        [cornerRadius3 value];
        v51 = v50;

        backgroundColor = [styleCopy backgroundColor];
        backgroundInset = [styleCopy backgroundInset];
        [backgroundInset value];
        v55 = squareImageWithCornerRadius(element2, backgroundColor, v46, v48, v51, 2.0, v54);

        element2 = backgroundColor;
      }

      else
      {
        if (v22 != 1)
        {
          goto LABEL_14;
        }

        [v41 _pixelSize];
        v76 = v75;
        [v41 _pixelSize];
        if (v76 == v77)
        {
          goto LABEL_14;
        }

        fixedSize2 = [styleCopy fixedSize];
        [fixedSize2 asSize];
        v80 = v79;
        v82 = v81;

        v55 = squareBitmapImageWithInlaidImage(element2, v80, v82, 2.0);
      }

      element2 = v55;
    }

LABEL_14:
    _srcsetForRemoteURLs = [(LPHTMLComponent *)v17 element];
    v56 = [generatorCopy _URLForImage:element2];
    [_srcsetForRemoteURLs setAttribute:@"src" value:v56];

LABEL_15:
    element3 = [(LPHTMLComponent *)v17 element];
    [element3 setAttribute:@"draggable" value:@"false"];

    v58 = [LPCSSVariable alloc];
    v59 = v21[2](v21, 0, @"fixedSize-width");
    v60 = [(LPCSSVariable *)v58 initWithName:v59];
    cssResolver2 = [generatorCopy cssResolver];
    localVariables2 = [cssResolver2 localVariables];
    v63 = v21[2](v21, @"local", @"size-width");
    [localVariables2 setObject:v60 forKeyedSubscript:v63];

    v64 = [LPCSSVariable alloc];
    v65 = v21[2](v21, 0, @"fixedSize-height");
    v66 = [(LPCSSVariable *)v64 initWithName:v65];
    cssResolver3 = [generatorCopy cssResolver];
    localVariables3 = [cssResolver3 localVariables];
    v69 = v21[2](v21, @"local", @"size-height");
    [localVariables3 setObject:v66 forKeyedSubscript:v69];

    cssResolver4 = [generatorCopy cssResolver];
    v71 = [@"lp-rich-link-" stringByAppendingString:v83];
    pathCopy = v84;
    element4 = [(LPHTMLComponent *)v17 element];
    [cssResolver4 addStyle:v71 toElement:element4 inComponent:v17];

    v73 = v17;
  }

  return v17;
}

id __89__LPEmailCompatibleHTMLIconComponent_initWithImage_style_properties_themePath_generator___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (id)baseRules
{
  v8[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"inline-block";
  v7[0] = @"display";
  v7[1] = @"width";
  v2 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-size-width"];
  v8[1] = v2;
  v7[2] = @"height";
  v3 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-size-height"];
  v8[2] = v3;
  v8[3] = @"none !important";
  v7[3] = @"pointer-events";
  v7[4] = @"border-radius";
  v4 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-corner-radius"];
  v8[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];

  return v5;
}

+ (id)ruleDictionaryForStyle:(id)style
{
  baseRules = [self baseRules];

  return baseRules;
}

@end