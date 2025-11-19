@interface AXUIScreenConvertToCAScreen
@end

@implementation AXUIScreenConvertToCAScreen

void ___AXUIScreenConvertToCAScreen_block_invoke()
{
  v0 = [NSClassFromString(@"UIScreen") valueForKey:@"mainScreen"];
  v1 = _AXUIScreenConvertToCAScreen_mainScreen;
  _AXUIScreenConvertToCAScreen_mainScreen = v0;

  v2 = [_AXUIScreenConvertToCAScreen_mainScreen valueForKey:@"scale"];
  [v2 doubleValue];
  _AXUIScreenConvertToCAScreen_MainScale = v3;

  v4 = [_AXUIScreenConvertToCAScreen_mainScreen valueForKey:@"_rotation"];
  [v4 doubleValue];
  _AXUIScreenConvertToCAScreen_MainRotation = v5;

  v8 = [_AXUIScreenConvertToCAScreen_mainScreen valueForKey:@"_unjailedReferenceBoundsInPixels"];
  [v8 rectValue];
  _AXUIScreenConvertToCAScreen_MainScreenSize_0 = v6;
  _AXUIScreenConvertToCAScreen_MainScreenSize_1 = v7;
}

@end