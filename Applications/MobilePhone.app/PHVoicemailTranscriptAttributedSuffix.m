@interface PHVoicemailTranscriptAttributedSuffix
@end

@implementation PHVoicemailTranscriptAttributedSuffix

void __PHVoicemailTranscriptAttributedSuffix_block_invoke(id a1)
{
  v1 = [UIApp userInterfaceLayoutDirection];
  v2 = +[NSBundle mainBundle];
  v3 = v2;
  if (v1 == 1)
  {
    v4 = @"VOICEMAIL_TRANSCRIPTION_QUOTE_PREFIX";
  }

  else
  {
    v4 = @"VOICEMAIL_TRANSCRIPTION_QUOTE_SUFFIX";
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_10028F310 table:@"General"];

  v6 = [NSAttributedString alloc];
  v12[0] = NSForegroundColorAttributeName;
  v7 = [UIColor colorWithRed:0.572549045 green:0.572549045 blue:0.572549045 alpha:1.0];
  v13[0] = v7;
  v12[1] = NSFontAttributeName;
  v8 = [UIFont phPreferredTightLeadingFontForTextStyle:UIFontTextStyleBody];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 initWithString:v5 attributes:v9];
  v11 = PHVoicemailTranscriptAttributedSuffix_attributedSuffix;
  PHVoicemailTranscriptAttributedSuffix_attributedSuffix = v10;
}

@end