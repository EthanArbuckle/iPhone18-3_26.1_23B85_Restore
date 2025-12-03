@interface AXCaptionPanelTextPackage
- (BOOL)isEqual:(id)equal;
- (id)fileLogDescription;
@end

@implementation AXCaptionPanelTextPackage

- (id)fileLogDescription
{
  appName = [(AXCaptionPanelTextPackage *)self appName];
  v4 = [(AXCaptionPanelTextPackage *)self key];
  text = [(AXCaptionPanelTextPackage *)self text];
  englishText = [(AXCaptionPanelTextPackage *)self englishText];
  bundle = [(AXCaptionPanelTextPackage *)self bundle];
  file = [(AXCaptionPanelTextPackage *)self file];
  v9 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@", appName, v4, text, englishText, bundle, file];

  v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy key];
  v6 = [(AXCaptionPanelTextPackage *)self key];
  if ([v5 isEqual:v6])
  {
    bundle = [equalCopy bundle];
    bundle2 = [(AXCaptionPanelTextPackage *)self bundle];
    if ([bundle isEqual:bundle2])
    {
      file = [equalCopy file];
      file2 = [(AXCaptionPanelTextPackage *)self file];
      v11 = [file isEqual:file2];
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