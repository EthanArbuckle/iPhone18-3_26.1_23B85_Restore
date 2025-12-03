@interface ContentStyle
+ (id)fontNameFromSummaryString:(id)string;
- (BOOL)autoHyphenate;
- (BOOL)isEqual:(id)equal;
- (BOOL)justification;
- (ContentStyle)init;
- (ContentStyle)initWithCoder:(id)coder;
- (ContentStyle)initWithFontFamily:(id)family andDetails:(id)details;
- (ContentStyle)initWithSummaryString:(id)string;
- (ContentStyleOverrideProvider)overrideProvider;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summaryString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ContentStyle

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  fontFamily = [(ContentStyle *)self fontFamily];
  v7 = [fontFamily copyWithZone:zone];
  [v5 setFontFamily:v7];

  [(ContentStyle *)self lineHeight];
  [v5 setLineHeight:?];
  [(ContentStyle *)self fontSize];
  [v5 setFontSize:?];
  [v5 setAutoHyphenate:{-[ContentStyle autoHyphenate](self, "autoHyphenate")}];
  [v5 setOptimizeLegibility:{-[ContentStyle optimizeLegibility](self, "optimizeLegibility")}];
  [v5 setJustification:{-[ContentStyle justification](self, "justification")}];
  return v5;
}

- (BOOL)autoHyphenate
{
  autoHyphenate = self->_autoHyphenate;
  overrideProvider = [(ContentStyle *)self overrideProvider];
  if (overrideProvider)
  {
    v5 = overrideProvider;
    overrideProvider2 = [(ContentStyle *)self overrideProvider];
    noAutoHyphenation = [overrideProvider2 noAutoHyphenation];

    autoHyphenate &= noAutoHyphenation ^ 1;
  }

  return autoHyphenate & 1;
}

- (BOOL)justification
{
  justification = self->_justification;
  overrideProvider = [(ContentStyle *)self overrideProvider];
  if (overrideProvider)
  {
    v5 = overrideProvider;
    overrideProvider2 = [(ContentStyle *)self overrideProvider];
    noJustification = [overrideProvider2 noJustification];

    justification &= noJustification ^ 1;
  }

  return justification & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(ContentStyle *)self fontSize];
    v7 = v6;
    [v5 fontSize];
    if (v7 == v8)
    {
      mFontFamily = self->mFontFamily;
      fontFamily = [v5 fontFamily];
      if (-[NSString isEqualToString:](mFontFamily, "isEqualToString:", fontFamily) && (-[ContentStyle lineHeight](self, "lineHeight"), v12 = v11, [v5 lineHeight], v12 == v13) && (v14 = -[ContentStyle autoHyphenate](self, "autoHyphenate"), v14 == objc_msgSend(v5, "autoHyphenate")) && (v15 = -[ContentStyle optimizeLegibility](self, "optimizeLegibility"), v15 == objc_msgSend(v5, "optimizeLegibility")))
      {
        justification = [(ContentStyle *)self justification];
        v16 = justification ^ [v5 justification] ^ 1;
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (id)description
{
  fontFamily = [(ContentStyle *)self fontFamily];
  [(ContentStyle *)self lineHeight];
  v5 = v4;
  [(ContentStyle *)self fontSize];
  v7 = [NSString stringWithFormat:@"ContentStyle: <%p> font-family:%@ line-height:%g; font-size:%g; autoHyphenate = %d; optimizeLegibility = %d, justification=%d", self, fontFamily, *&v5, v6, [(ContentStyle *)self autoHyphenate], [(ContentStyle *)self optimizeLegibility], [(ContentStyle *)self justification]];;

  return v7;
}

- (ContentStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ContentStyle *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fontFamily"];
    [(ContentStyle *)v5 setFontFamily:v6];

    [coderCopy decodeFloatForKey:@"lineHeight"];
    [(ContentStyle *)v5 setLineHeight:?];
    [coderCopy decodeFloatForKey:@"fontSize"];
    [(ContentStyle *)v5 setFontSize:?];
    -[ContentStyle setAutoHyphenate:](v5, "setAutoHyphenate:", [coderCopy decodeBoolForKey:@"autoHyphenate"]);
    -[ContentStyle setOptimizeLegibility:](v5, "setOptimizeLegibility:", [coderCopy decodeBoolForKey:@"legibility"]);
    -[ContentStyle setJustification:](v5, "setJustification:", [coderCopy decodeBoolForKey:@"justification"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fontFamily = [(ContentStyle *)self fontFamily];
  [coderCopy encodeObject:fontFamily forKey:@"fontFamily"];

  [(ContentStyle *)self lineHeight];
  [coderCopy encodeFloat:@"lineHeight" forKey:?];
  [(ContentStyle *)self fontSize];
  [coderCopy encodeFloat:@"fontSize" forKey:?];
  [coderCopy encodeBool:-[ContentStyle autoHyphenate](self forKey:{"autoHyphenate"), @"autoHyphenate"}];
  [coderCopy encodeBool:-[ContentStyle optimizeLegibility](self forKey:{"optimizeLegibility"), @"legibility"}];
  [coderCopy encodeBool:-[ContentStyle justification](self forKey:{"justification"), @"justification"}];
}

- (id)summaryString
{
  v3 = [NSArray alloc];
  fontFamily = [(ContentStyle *)self fontFamily];
  [(ContentStyle *)self lineHeight];
  v6 = [NSString stringWithFormat:@"%f", v5];
  [(ContentStyle *)self fontSize];
  v8 = [NSString stringWithFormat:@"%f", v7];
  v9 = [NSString stringWithFormat:@"%d", [(ContentStyle *)self autoHyphenate]];
  v10 = [NSString stringWithFormat:@"%d", [(ContentStyle *)self optimizeLegibility]];
  v11 = [v3 initWithObjects:{fontFamily, v6, v8, v9, v10, 0}];

  v12 = [v11 componentsJoinedByString:gContentStyleSeparator];

  return v12;
}

- (ContentStyle)init
{
  v5.receiver = self;
  v5.super_class = ContentStyle;
  v2 = [(ContentStyle *)&v5 init];
  if (v2)
  {
    v3 = +[NSString string];
    [(ContentStyle *)v2 setFontFamily:v3];
  }

  return v2;
}

+ (id)fontNameFromSummaryString:(id)string
{
  v3 = [string componentsSeparatedByString:gContentStyleSeparator];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ContentStyle)initWithSummaryString:(id)string
{
  stringCopy = string;
  v5 = [(ContentStyle *)self init];
  if (v5)
  {
    v6 = [stringCopy componentsSeparatedByString:gContentStyleSeparator];
    if ([v6 count] >= 3)
    {
      v7 = [v6 objectAtIndex:0];
      mFontFamily = v5->mFontFamily;
      v5->mFontFamily = v7;

      v9 = [v6 objectAtIndex:1];
      [v9 floatValue];
      [(ContentStyle *)v5 setLineHeight:?];
      v10 = [v6 objectAtIndex:2];
      [v10 floatValue];
      [(ContentStyle *)v5 setFontSize:?];
      if ([v6 count] >= 5)
      {
        v11 = [v6 objectAtIndex:3];
        -[ContentStyle setAutoHyphenate:](v5, "setAutoHyphenate:", [v11 BOOLValue]);
      }

      if ([v6 count] >= 6)
      {
        v12 = [v6 objectAtIndex:4];
        -[ContentStyle setOptimizeLegibility:](v5, "setOptimizeLegibility:", [v12 BOOLValue]);
      }
    }
  }

  return v5;
}

- (ContentStyle)initWithFontFamily:(id)family andDetails:(id)details
{
  familyCopy = family;
  detailsCopy = details;
  v8 = [(ContentStyle *)self init];
  v9 = v8;
  if (v8)
  {
    [(ContentStyle *)v8 setFontFamily:familyCopy];
    objc_opt_class();
    v10 = [detailsCopy valueForKey:@"fontSize"];
    v11 = BUDynamicCast();
    [v11 floatValue];
    [(ContentStyle *)v9 setFontSize:?];

    objc_opt_class();
    v12 = [detailsCopy valueForKey:@"lineHeight"];
    v13 = BUDynamicCast();
    [v13 floatValue];
    [(ContentStyle *)v9 setLineHeight:?];
  }

  return v9;
}

- (ContentStyleOverrideProvider)overrideProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideProvider);

  return WeakRetained;
}

@end