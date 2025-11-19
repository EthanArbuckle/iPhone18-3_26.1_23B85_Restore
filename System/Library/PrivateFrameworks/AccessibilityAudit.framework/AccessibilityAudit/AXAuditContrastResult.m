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
  v3 = [(AXAuditContrastResult *)self textColor];
  v4 = [(AXAuditContrastResult *)self primaryColor];
  v5 = [(AXAuditContrastResult *)self secondaryColor];
  if (v3)
  {
    if (!v4)
    {
      v7 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_11;
    }

    v6 = [v3 isEqualToString:v4];
    v7 = v3;
    if ((v6 & (v5 != 0)) != 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = v4;
    }
  }

  else
  {
    v7 = v4;
    v8 = v5;
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
  v3 = [(AXAuditContrastResult *)self classification];
  if (v3 == 15 || (v4 = 0.0, v3 == 12))
  {
    [(AXAuditContrastResult *)self fontSize];
    v4 = v5;
  }

  v6 = [(AXAuditContrastResult *)self textColor];

  if (v6)
  {
    v7 = [(AXAuditContrastResult *)self primaryColor];

    if (!v7)
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

  v7 = AXAuditLocString(v8, 0);
  if (!v7)
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
  v14 = [(AXAuditContrastResult *)self compareColors];
  if ([v14 count] == 2)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [v14 objectAtIndexedSubscript:0];
    v17 = [v14 objectAtIndexedSubscript:1];
    v18 = [v15 stringWithFormat:v7, v16, v17];

    v7 = v18;
  }

  if (v10)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:v10, *&v4];

    [v13 appendString:v7];
    if (v19)
    {
      [v13 appendString:v19];
    }
  }

  else
  {
    [v13 appendString:v7];
  }

LABEL_19:

  return v13;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [(AXAuditContrastResult *)self classification];
  v16.receiver = self;
  v16.super_class = AXAuditContrastResult;
  v5 = [(AXAuditContrastResult *)&v16 description];
  [v3 appendFormat:@"[%ld] %@, ", v4, v5];

  [(AXAuditContrastResult *)self ratio];
  [v3 appendFormat:@"Ratio:%.2f ", v6];
  v7 = [(AXAuditContrastResult *)self textColor];

  if (v7)
  {
    v8 = [(AXAuditContrastResult *)self textColor];
    [v3 appendFormat:@"Text:%@ ", v8];
  }

  v9 = [(AXAuditContrastResult *)self primaryColor];

  if (v9)
  {
    v10 = [(AXAuditContrastResult *)self primaryColor];
    [v3 appendFormat:@"PrimaryColor:%@ ", v10];
  }

  v11 = [(AXAuditContrastResult *)self secondaryColor];

  if (v11)
  {
    v12 = [(AXAuditContrastResult *)self secondaryColor];
    [v3 appendFormat:@"SecondaryColor:%@ ", v12];
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