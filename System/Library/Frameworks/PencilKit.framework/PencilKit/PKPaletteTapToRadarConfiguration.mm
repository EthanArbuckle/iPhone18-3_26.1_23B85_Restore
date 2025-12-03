@interface PKPaletteTapToRadarConfiguration
- (BOOL)hasContent;
@end

@implementation PKPaletteTapToRadarConfiguration

- (BOOL)hasContent
{
  debugSharpenerLog = [(PKPaletteTapToRadarConfiguration *)self debugSharpenerLog];
  hasContent = [debugSharpenerLog hasContent];

  return hasContent;
}

@end