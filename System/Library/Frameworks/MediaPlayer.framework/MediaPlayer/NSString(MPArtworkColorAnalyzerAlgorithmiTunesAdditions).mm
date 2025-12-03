@interface NSString(MPArtworkColorAnalyzerAlgorithmiTunesAdditions)
+ (id)MP_hexStringFromColor:()MPArtworkColorAnalyzerAlgorithmiTunesAdditions;
- (id)MP_colorFromHexString;
@end

@implementation NSString(MPArtworkColorAnalyzerAlgorithmiTunesAdditions)

- (id)MP_colorFromHexString
{
  if ([self length] != 7 || (objc_msgSend(self, "hasPrefix:", @"#") & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSString+MPArtworkColorAnalyzerAlgorithmiTunesAdditions.m" lineNumber:14 description:@"Hex string is expected to begin with # and contain 6 digits"];
  }

  v8 = 0;
  v4 = [MEMORY[0x1E696AE88] scannerWithString:self];
  [v4 setScanLocation:1];
  [v4 scanHexInt:&v8];
  v5 = [MEMORY[0x1E69DC888] colorWithRed:BYTE2(v8) / 255.0 green:BYTE1(v8) / 255.0 blue:v8 / 255.0 alpha:1.0];

  return v5;
}

+ (id)MP_hexStringFromColor:()MPArtworkColorAnalyzerAlgorithmiTunesAdditions
{
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0.0;
  v5 = 0;
  [a3 getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02X%02X%02X", (v8 * 255.0), (v7 * 255.0), (v6 * 255.0)];

  return v3;
}

@end