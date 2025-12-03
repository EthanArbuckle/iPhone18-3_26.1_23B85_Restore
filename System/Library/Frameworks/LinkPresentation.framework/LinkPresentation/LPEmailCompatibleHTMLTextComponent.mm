@interface LPEmailCompatibleHTMLTextComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)style;
- (LPEmailCompatibleHTMLTextComponent)initWithCaption:(id)caption style:(id)style themePath:(id)path generator:(id)generator;
@end

@implementation LPEmailCompatibleHTMLTextComponent

- (LPEmailCompatibleHTMLTextComponent)initWithCaption:(id)caption style:(id)style themePath:(id)path generator:(id)generator
{
  captionCopy = caption;
  styleCopy = style;
  pathCopy = path;
  generatorCopy = generator;
  v71.receiver = self;
  v71.super_class = LPEmailCompatibleHTMLTextComponent;
  v14 = [(LPHTMLComponent *)&v71 initWithTagName:@"div" themePath:pathCopy generator:generatorCopy];
  v16 = v14;
  if (v14)
  {
    LPWebLock(v14, v15);
    attributedText = [captionCopy attributedText];
    v65 = captionCopy;
    v61 = generatorCopy;
    v62 = pathCopy;
    v18 = [styleCopy adjustedForString:attributedText];

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __80__LPEmailCompatibleHTMLTextComponent_initWithCaption_style_themePath_generator___block_invoke;
    v66[3] = &unk_1E7A371A8;
    v19 = generatorCopy;
    v67 = v19;
    v20 = pathCopy;
    v68 = v20;
    v21 = captionCopy;
    v69 = v21;
    styleCopy = v18;
    v70 = styleCopy;
    v64 = __80__LPEmailCompatibleHTMLTextComponent_initWithCaption_style_themePath_generator___block_invoke(v66);
    _lp_CSSText = [v64 _lp_CSSText];
    [v21 textScale];
    v23 = v22;
    font = [styleCopy font];
    v25 = MEMORY[0x1E696AEC0];
    [font pointSize];
    v27 = [v25 stringWithFormat:@"%gpx", v23 * v26];

    cssResolver = [v19 cssResolver];
    localVariables = [cssResolver localVariables];
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-font-size", v20];
    [localVariables setObject:v27 forKeyedSubscript:v30];

    v31 = CSSAlignmentFromLPTextAlignment([styleCopy textAlignment]);
    cssResolver2 = [v19 cssResolver];
    localVariables2 = [cssResolver2 localVariables];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-text-alignment", v20];
    [localVariables2 setObject:v31 forKeyedSubscript:v34];

    cssResolver3 = [v19 cssResolver];
    v36 = [@"lp-rich-link-" stringByAppendingString:v20];
    element = [(LPHTMLComponent *)v16 element];
    [cssResolver3 addStyle:v36 toElement:element inComponent:v16];

    generator = [(LPHTMLComponent *)v16 generator];
    parentDocument = [generator parentDocument];
    v40 = [parentDocument createElement:@"a"];

    [v40 setAttribute:@"rel" value:@"nofollow"];
    generator2 = [(LPHTMLComponent *)v16 generator];
    v42 = [generator2 URL];
    absoluteString = [v42 absoluteString];
    [v40 setAttribute:@"href" value:absoluteString];

    [v40 setAttribute:@"style" value:@"text-decoration: none"];
    [v40 setAttribute:@"draggable" value:@"false"];
    generator3 = [(LPHTMLComponent *)v16 generator];
    parentDocument2 = [generator3 parentDocument];
    v46 = [parentDocument2 createElement:@"font"];

    [v46 setAttribute:@"color" value:_lp_CSSText];
    v47 = MEMORY[0x1E696AEC0];
    v48 = [v64 _lp_CSSTextForcingUserInterfaceStyle:0];
    v49 = [v47 stringWithFormat:@"color: %@", v48];;
    [v46 setAttribute:@"style" value:v49];

    v50 = [v40 appendChild:v46];
    generator4 = [(LPHTMLComponent *)v16 generator];
    parentDocument3 = [generator4 parentDocument];
    text = [v21 text];
    v54 = truncatedStringAtMaximumMetadataLength(text);
    v55 = [parentDocument3 createTextNode:v54];
    v56 = [v46 appendChild:v55];

    element2 = [(LPHTMLComponent *)v16 element];
    v58 = [element2 appendChild:v40];

    v59 = v16;
    captionCopy = v65;
    generatorCopy = v61;
    pathCopy = v62;
  }

  return v16;
}

id __80__LPEmailCompatibleHTMLTextComponent_initWithCaption_style_themePath_generator___block_invoke(id *a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__LPEmailCompatibleHTMLTextComponent_initWithCaption_style_themePath_generator___block_invoke_2;
  aBlock[3] = &unk_1E7A37180;
  v9 = a1[4];
  v2 = _Block_copy(aBlock);
  if (([a1[5] containsString:@"mediaTopCaptionBar"] & 1) != 0 || objc_msgSend(a1[5], "containsString:", @"mediaBottomCaptionBar"))
  {
    v3 = +[LPTheme primaryLabelColor];
    v4 = v2[2](v2, v3);
LABEL_4:
    v5 = v4;

    goto LABEL_5;
  }

  v7 = [a1[6] color];

  if (!v7)
  {
    v3 = [a1[7] color];
    v4 = v2[2](v2, v3);
    goto LABEL_4;
  }

  v5 = [a1[6] color];
LABEL_5:

  return v5;
}

id __80__LPEmailCompatibleHTMLTextComponent_initWithCaption_style_themePath_generator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dominantImageBackgroundColor];

  if (v4)
  {
    v5 = [*(a1 + 32) dominantImageBackgroundColor];
    v6 = [v5 _lp_luminosityLevelForUserInterfaceStyle] == 1;

    v7 = [v3 _lp_colorForcingUserInterfaceStyle:v6];
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

+ (id)baseRules
{
  v8[6] = *MEMORY[0x1E69E9840];
  v8[0] = @"hidden";
  v7[0] = @"overflow";
  v7[1] = @"font-size";
  v2 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-font-size"];
  v8[1] = v2;
  v7[2] = @"font-weight";
  v3 = [[LPCSSVariable alloc] initWithName:@"<theme-path>-font-_lp_CSSFontWeight"];
  v8[2] = v3;
  v7[3] = @"text-align";
  v4 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-text-alignment"];
  v8[3] = v4;
  v8[4] = @"break-word";
  v7[4] = @"word-wrap";
  v7[5] = @"text-overflow";
  v8[5] = @"ellipsis";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];

  return v5;
}

+ (id)ruleDictionaryForStyle:(id)style
{
  baseRules = [self baseRules];

  return baseRules;
}

@end