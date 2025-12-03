@interface AXAuditContrastResult
- (AXAuditContrastResult)init;
- (NSArray)compareColors;
- (NSString)summary;
- (id)description;
@end

@implementation AXAuditContrastResult

- (AXAuditContrastResult)init
{
  v5.receiver = self;
  v5.super_class = AXAuditContrastResult;
  v2 = [(AXAuditContrastResult *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXAuditContrastResult *)v2 setClassification:0];
  }

  return v3;
}

- (NSArray)compareColors
{
  textColor = [(AXAuditContrastResult *)self textColor];
  primaryColor = [(AXAuditContrastResult *)self primaryColor];
  secondaryColor = [(AXAuditContrastResult *)self secondaryColor];
  if (textColor)
  {
    if (!primaryColor)
    {
      v7 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_11;
    }

    v6 = [textColor isEqualToString:primaryColor];
    v7 = textColor;
    if ((v6 & (secondaryColor != 0)) != 0)
    {
      v8 = secondaryColor;
    }

    else
    {
      v8 = primaryColor;
    }
  }

  else
  {
    v7 = primaryColor;
    v8 = secondaryColor;
  }

  v9 = v8;
  v10 = v9;
  v11 = 0;
  if (v7 && v9)
  {
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:{v7, v9, 0}];
  }

LABEL_11:

  return v11;
}

- (NSString)summary
{
  classification = [(AXAuditContrastResult *)self classification];
  if (classification == 15 || (v4 = 0.0, classification == 12))
  {
    [(AXAuditContrastResult *)self fontSize];
    v4 = v5;
  }

  textColor = [(AXAuditContrastResult *)self textColor];

  if (textColor)
  {
    primaryColor = [(AXAuditContrastResult *)self primaryColor];

    if (!primaryColor)
    {
LABEL_16:
      v13 = 0;
      goto LABEL_19;
    }

    v8 = @"textBackgroundComparisonFormatter";
  }

  else
  {
    v8 = @"colorsComparisonFormatter";
  }

  primaryColor = AXAuditLocString(v8, 0);
  if (!primaryColor)
  {
    goto LABEL_16;
  }

  v9 = AXAuditLocString(@"textContrastRatioFormatter", 0);
  v10 = 0;
  if (v4 > 0.0)
  {
    v10 = AXAuditLocString(@"fontSizeFormatter", 0);
  }

  v11 = objc_alloc(MEMORY[0x277CCAB68]);
  [(AXAuditContrastResult *)self ratio];
  v13 = [v11 initWithFormat:v9, v12];
  compareColors = [(AXAuditContrastResult *)self compareColors];
  if ([compareColors count] == 2)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [compareColors objectAtIndexedSubscript:0];
    v17 = [compareColors objectAtIndexedSubscript:1];
    v18 = [v15 stringWithFormat:primaryColor, v16, v17];

    primaryColor = v18;
  }

  if (v10)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:v10, *&v4];

    [v13 appendString:primaryColor];
    if (v19)
    {
      [v13 appendString:v19];
    }
  }

  else
  {
    [v13 appendString:primaryColor];
  }

LABEL_19:

  return v13;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  classification = [(AXAuditContrastResult *)self classification];
  v16.receiver = self;
  v16.super_class = AXAuditContrastResult;
  v5 = [(AXAuditContrastResult *)&v16 description];
  [v3 appendFormat:@"[%ld] %@, ", classification, v5];

  [(AXAuditContrastResult *)self ratio];
  [v3 appendFormat:@"Ratio:%.2f ", v6];
  textColor = [(AXAuditContrastResult *)self textColor];

  if (textColor)
  {
    textColor2 = [(AXAuditContrastResult *)self textColor];
    [v3 appendFormat:@"Text:%@ ", textColor2];
  }

  primaryColor = [(AXAuditContrastResult *)self primaryColor];

  if (primaryColor)
  {
    primaryColor2 = [(AXAuditContrastResult *)self primaryColor];
    [v3 appendFormat:@"PrimaryColor:%@ ", primaryColor2];
  }

  secondaryColor = [(AXAuditContrastResult *)self secondaryColor];

  if (secondaryColor)
  {
    secondaryColor2 = [(AXAuditContrastResult *)self secondaryColor];
    [v3 appendFormat:@"SecondaryColor:%@ ", secondaryColor2];
  }

  [(AXAuditContrastResult *)self fontSize];
  if (v13 > 0.0)
  {
    [(AXAuditContrastResult *)self fontSize];
    [v3 appendFormat:@"FontSize:%.0f", v14];
  }

  return v3;
}

@end