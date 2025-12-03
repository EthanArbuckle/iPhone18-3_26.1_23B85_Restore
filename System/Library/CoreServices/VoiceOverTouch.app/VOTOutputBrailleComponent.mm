@interface VOTOutputBrailleComponent
- (void)_handlePerformAction:(id)action;
- (void)handleEvent:(id)event;
@end

@implementation VOTOutputBrailleComponent

- (void)_handlePerformAction:(id)action
{
  actionCopy = action;
  v22 = [actionCopy objectForIndex:14];
  v5 = [v22 objectForVariant:34];
  LODWORD(v6) = [v5 intValue];

  v7 = [v22 objectForVariant:35];
  rangeValue = [v7 rangeValue];
  v10 = v9;
  v11 = [(VOTOutputComponent *)self determineLanguageForEvent:actionCopy];

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
  bOOLValue = [v16 BOOLValue];

  string = [v22 string];
  if (([VOTSharedWorkspace emojiFeedback] & 0x10) == 0 && (bOOLValue & 1) == 0)
  {
    v19 = [TTSEmojiUtilities stringByRemovingEmojiCharacters:string];

    string = v19;
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v6;
  }

  v20 = [objc_allocWithZone(NSMutableAttributedString) initWithString:string];
  v21 = +[VOTBrailleManager manager];
  [v21 setBrailleString:v20 type:v6 timeout:v11 langCode:rangeValue brailleLineRange:v10 isBrailleLineRangeKnown:{v7 != 0, v15}];
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  v4 = [eventCopy objectForIndex:1];
  unsignedIntValue = [v4 unsignedIntValue];

  if (unsignedIntValue == 6)
  {
    [(VOTOutputBrailleComponent *)self _handlePerformAction:eventCopy];
  }
}

@end