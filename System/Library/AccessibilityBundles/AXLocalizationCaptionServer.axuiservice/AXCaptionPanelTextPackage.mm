@interface AXCaptionPanelTextPackage
- (BOOL)isEqual:(id)a3;
- (id)fileLogDescription;
@end

@implementation AXCaptionPanelTextPackage

- (id)fileLogDescription
{
  v3 = [(AXCaptionPanelTextPackage *)self appName];
  v4 = [(AXCaptionPanelTextPackage *)self key];
  v5 = [(AXCaptionPanelTextPackage *)self text];
  v6 = [(AXCaptionPanelTextPackage *)self englishText];
  v7 = [(AXCaptionPanelTextPackage *)self bundle];
  v8 = [(AXCaptionPanelTextPackage *)self file];
  v9 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@", v3, v4, v5, v6, v7, v8];

  v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 key];
  v6 = [(AXCaptionPanelTextPackage *)self key];
  if ([v5 isEqual:v6])
  {
    v7 = [v4 bundle];
    v8 = [(AXCaptionPanelTextPackage *)self bundle];
    if ([v7 isEqual:v8])
    {
      v9 = [v4 file];
      v10 = [(AXCaptionPanelTextPackage *)self file];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end