@interface PHVoicemailDurationFormatter
@end

@implementation PHVoicemailDurationFormatter

void __PHVoicemailDurationFormatter_block_invoke(id a1)
{
  v1 = objc_alloc_init(NSDateComponentsFormatter);
  v2 = PHVoicemailDurationFormatter_voicemailDurationFormatter;
  PHVoicemailDurationFormatter_voicemailDurationFormatter = v1;

  [PHVoicemailDurationFormatter_voicemailDurationFormatter setAllowedUnits:192];
  v3 = PHVoicemailDurationFormatter_voicemailDurationFormatter;

  [v3 setZeroFormattingBehavior:0x10000];
}

@end