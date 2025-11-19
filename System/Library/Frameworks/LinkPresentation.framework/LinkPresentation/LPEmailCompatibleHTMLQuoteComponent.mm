@interface LPEmailCompatibleHTMLQuoteComponent
+ (id)baseRules;
+ (id)ruleDictionaryForStyle:(id)a3;
- (LPEmailCompatibleHTMLQuoteComponent)initWithText:(id)a3 style:(id)a4 themePath:(id)a5 generator:(id)a6;
@end

@implementation LPEmailCompatibleHTMLQuoteComponent

- (LPEmailCompatibleHTMLQuoteComponent)initWithText:(id)a3 style:(id)a4 themePath:(id)a5 generator:(id)a6
{
  v58 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v59.receiver = self;
  v59.super_class = LPEmailCompatibleHTMLQuoteComponent;
  v13 = [(LPHTMLComponent *)&v59 initWithTagName:@"div" themePath:v11 generator:v12];
  v15 = v13;
  if (v13)
  {
    LPWebLock(v13, v14);
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v10 font];
    [v17 pointSize];
    v19 = [v16 stringWithFormat:@"%gpt", v18];
    v20 = [v12 cssResolver];
    v21 = [v20 localVariables];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-font-size", v11];
    [v21 setObject:v19 forKeyedSubscript:v22];

    v23 = CSSAlignmentFromLPTextAlignment([v10 textAlignment]);
    v24 = [v12 cssResolver];
    v25 = [v24 localVariables];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-text-alignment", v11];
    [v25 setObject:v23 forKeyedSubscript:v26];

    v27 = [v10 color];
    v28 = [v27 _lp_CSSText];
    v29 = [v12 cssResolver];
    v30 = [v29 localVariables];
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-color", v11];
    [v30 setObject:v28 forKeyedSubscript:v31];

    v32 = [v12 rootWidth];
    [v32 value];
    v34 = v33;
    v35 = [v10 padding];
    v36 = [v35 leading];
    [v36 value];
    v38 = v37;
    v39 = [v10 padding];
    v40 = [v39 trailing];
    [v40 value];
    v42 = v34 - v38 - v41;

    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%gpx", *&v42];
    v44 = [v12 cssResolver];
    v45 = [v44 localVariables];
    v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"local-%@-width", v11];
    [v45 setObject:v43 forKeyedSubscript:v46];

    v47 = [v12 cssResolver];
    v48 = [@"lp-rich-link-" stringByAppendingString:v11];
    v49 = [(LPHTMLComponent *)v15 element];
    [v47 addStyle:v48 toElement:v49 inComponent:v15];

    v50 = [(LPHTMLComponent *)v15 element];
    v51 = [(LPHTMLComponent *)v15 generator];
    v52 = [v51 parentDocument];
    v53 = truncatedStringAtMaximumMetadataLength(v58);
    v54 = [v52 createTextNode:v53];
    v55 = [v50 appendChild:v54];

    v56 = v15;
  }

  return v15;
}

+ (id)baseRules
{
  v10[8] = *MEMORY[0x1E69E9840];
  v10[0] = @"hidden";
  v9[0] = @"overflow";
  v9[1] = @"color";
  v2 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-color"];
  v10[1] = v2;
  v9[2] = @"font-size";
  v3 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-font-size"];
  v10[2] = v3;
  v10[3] = @"300";
  v9[3] = @"font-weight";
  v9[4] = @"margin";
  v4 = [[LPCSSVariable alloc] initWithName:@"<theme-path>-padding"];
  v10[4] = v4;
  v9[5] = @"width";
  v5 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-width"];
  v10[5] = v5;
  v10[6] = @"break-word";
  v9[6] = @"word-wrap";
  v9[7] = @"text-align";
  v6 = [[LPCSSVariable alloc] initWithName:@"local-<theme-path>-text-alignment"];
  v10[7] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:8];

  return v7;
}

+ (id)ruleDictionaryForStyle:(id)a3
{
  v3 = [a1 baseRules];

  return v3;
}

@end