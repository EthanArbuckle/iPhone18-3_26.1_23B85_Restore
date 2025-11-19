@interface VOTOutputBrailleComponent
- (void)_handlePerformAction:(id)a3;
- (void)handleEvent:(id)a3;
@end

@implementation VOTOutputBrailleComponent

- (void)_handlePerformAction:(id)a3
{
  v4 = a3;
  v22 = [v4 objectForIndex:14];
  v5 = [v22 objectForVariant:34];
  LODWORD(v6) = [v5 intValue];

  v7 = [v22 objectForVariant:35];
  v8 = [v7 rangeValue];
  v10 = v9;
  v11 = [(VOTOutputComponent *)self determineLanguageForEvent:v4];

  v12 = [v22 objectForVariant:36];
  v13 = v12;
  if (v12)
  {
    [v12 doubleValue];
  }

  else
  {
    +[VOTBrailleManager currentDefaultBrailleAlertTimeout];
  }

  v15 = v14;
  v16 = [v22 objectForVariant:58];
  v17 = [v16 BOOLValue];

  v18 = [v22 string];
  if (([VOTSharedWorkspace emojiFeedback] & 0x10) == 0 && (v17 & 1) == 0)
  {
    v19 = [TTSEmojiUtilities stringByRemovingEmojiCharacters:v18];

    v18 = v19;
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v6;
  }

  v20 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v18];
  v21 = +[VOTBrailleManager manager];
  [v21 setBrailleString:v20 type:v6 timeout:v11 langCode:v8 brailleLineRange:v10 isBrailleLineRangeKnown:{v7 != 0, v15}];
}

- (void)handleEvent:(id)a3
{
  v6 = a3;
  v4 = [v6 objectForIndex:1];
  v5 = [v4 unsignedIntValue];

  if (v5 == 6)
  {
    [(VOTOutputBrailleComponent *)self _handlePerformAction:v6];
  }
}

@end