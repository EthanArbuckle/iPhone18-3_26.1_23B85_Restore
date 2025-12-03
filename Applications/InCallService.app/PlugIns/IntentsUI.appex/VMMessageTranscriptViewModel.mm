@interface VMMessageTranscriptViewModel
+ (BOOL)metricsCollectionValidForLocale:(id)locale;
- (NSAttributedString)localizedAttributedFollowUpSuggestionsText;
- (NSAttributedString)localizedAttributedTitle;
- (UIView)tintColorDelegate;
- (VMMessageTranscriptViewModel)initWithDonated:(BOOL)donated transcribing:(BOOL)transcribing transcriptionAttempted:(BOOL)attempted transcriptionAvailable:(BOOL)available messageTranscript:(id)transcript;
- (VMMessageTranscriptViewModel)initWithMPMessage:(id)message;
- (VMMessageTranscriptViewModel)initWithMessage:(id)message;
- (id)localizedAttributedFeedbackTextForConfidence:(unint64_t)confidence locale:(id)locale;
- (id)localizedAttributedFeedbackTextWithLocale:(id)locale;
- (id)localizedAttributedTextForConfidence:(unint64_t)confidence;
- (id)localizedAttributedTextForMessage;
- (id)localizedAttributedTitleForConfidence:(unint64_t)confidence;
- (id)tintColorForColor:(id)color;
- (unint64_t)confidence;
@end

@implementation VMMessageTranscriptViewModel

- (VMMessageTranscriptViewModel)initWithMessage:(id)message
{
  messageCopy = message;
  v5 = [MPVisualTranscriptionMessage alloc];
  transcript = [messageCopy transcript];
  v7 = [(MPVisualTranscriptionMessage *)v5 initWithVMTranscript:transcript];

  isTranscriptionRated = [messageCopy isTranscriptionRated];
  isTranscribing = [messageCopy isTranscribing];
  wasTranscriptionAttempted = [messageCopy wasTranscriptionAttempted];
  isTranscriptionAvailable = [messageCopy isTranscriptionAvailable];

  v12 = [(VMMessageTranscriptViewModel *)self initWithDonated:isTranscriptionRated transcribing:isTranscribing transcriptionAttempted:wasTranscriptionAttempted transcriptionAvailable:isTranscriptionAvailable messageTranscript:v7];
  return v12;
}

- (VMMessageTranscriptViewModel)initWithDonated:(BOOL)donated transcribing:(BOOL)transcribing transcriptionAttempted:(BOOL)attempted transcriptionAvailable:(BOOL)available messageTranscript:(id)transcript
{
  transcriptCopy = transcript;
  v19.receiver = self;
  v19.super_class = VMMessageTranscriptViewModel;
  v13 = [(VMMessageTranscriptViewModel *)&v19 init];
  v14 = v13;
  if (v13)
  {
    v13->_donated = donated;
    v13->_transcribing = transcribing;
    v13->_transcriptionAttempted = attempted;
    v13->_transcriptionAvailable = available;
    if (transcriptCopy)
    {
      [transcriptCopy confidence];
      *&v15 = v15;
      v14->_messageTranscriptConfidence = *&v15;
      v14->_messageTranscriptConfidenceRating = [transcriptCopy confidenceRating];
      attributedText = [transcriptCopy attributedText];
      messageTranscriptAttributedText = v14->_messageTranscriptAttributedText;
      v14->_messageTranscriptAttributedText = attributedText;
    }
  }

  return v14;
}

- (NSAttributedString)localizedAttributedFollowUpSuggestionsText
{
  v3 = [[NSMutableAttributedString alloc] initWithString:&stru_1000B4840];
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[UIFont telephonyUIBodyShortEmphasizedFont];
  [v4 setObject:v5 forKeyedSubscript:NSFontAttributeName];

  v6 = +[UIColor dynamicSecondaryLabelColor];
  v7 = [(VMMessageTranscriptViewModel *)self tintColorForColor:v6];
  [v4 setObject:v7 forKeyedSubscript:NSForegroundColorAttributeName];

  v8 = [NSAttributedString alloc];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_FOLLOW_UP_SUGGESTIONS" value:&stru_1000B4840 table:@"VoicemailUI"];
  v11 = [v8 initWithString:v10 attributes:v4];

  v12 = objc_alloc_init(NSTextAttachment);
  v13 = [UIImage systemImageNamed:@"apple.intelligence"];
  [v12 setImage:v13];

  v14 = [NSAttributedString attributedStringWithAttachment:v12 attributes:v4];
  [v3 appendAttributedString:v14];
  [v3 appendAttributedString:v11];
  v15 = [v3 copy];

  return v15;
}

- (id)localizedAttributedFeedbackTextWithLocale:(id)locale
{
  localeCopy = locale;
  v5 = [(VMMessageTranscriptViewModel *)self localizedAttributedFeedbackTextForConfidence:[(VMMessageTranscriptViewModel *)self confidence] locale:localeCopy];

  return v5;
}

- (NSAttributedString)localizedAttributedTitle
{
  confidence = [(VMMessageTranscriptViewModel *)self confidence];

  return [(VMMessageTranscriptViewModel *)self localizedAttributedTitleForConfidence:confidence];
}

- (id)localizedAttributedTextForMessage
{
  v3 = objc_alloc_init(NSMutableParagraphStyle);
  [v3 setAlignment:4];
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[UIColor dynamicSecondaryLabelColor];
  v6 = [(VMMessageTranscriptViewModel *)self tintColorForColor:v5];
  [v4 setObject:v6 forKeyedSubscript:NSForegroundColorAttributeName];

  v7 = +[UIFont telephonyUIBodyShortFont];
  [v4 setObject:v7 forKeyedSubscript:NSFontAttributeName];

  [v4 setObject:v3 forKeyedSubscript:NSParagraphStyleAttributeName];
  if ([(VMMessageTranscriptViewModel *)self isTranscribing])
  {
    v8 = @"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_MESSAGE_TRANSCRIBING";
LABEL_3:
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:v8 value:&stru_1000B4840 table:@"VoicemailUI"];

    v11 = [[NSAttributedString alloc] initWithString:v10 attributes:v4];
    goto LABEL_7;
  }

  if ([(VMMessageTranscriptViewModel *)self transcriptionAttempted]&& ![(VMMessageTranscriptViewModel *)self isTranscriptionAvailable])
  {
    v8 = @"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_MESSAGE_TRANSCRIBE_ERROR";
    goto LABEL_3;
  }

  v11 = [(VMMessageTranscriptViewModel *)self localizedAttributedTextForConfidence:[(VMMessageTranscriptViewModel *)self confidence]];
LABEL_7:

  return v11;
}

- (unint64_t)confidence
{
  result = [(VMMessageTranscriptViewModel *)self messageTranscriptConfidenceRating];
  if (result - 1 >= 3)
  {
    [(VMMessageTranscriptViewModel *)self messageTranscriptConfidence];
    if (v4 <= PHVoicemailLowQualityConfidenceThresholdForTranscript())
    {
      [(VMMessageTranscriptViewModel *)self messageTranscriptConfidence];
      if (v5 <= PHVoicemailLowQualityConfidenceThresholdForTranscript())
      {
        [(VMMessageTranscriptViewModel *)self messageTranscriptConfidence];
        if (v6 <= PHVoicemailConfidenceThresholdForTranscript())
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 3;
    }
  }

  return result;
}

- (id)localizedAttributedFeedbackTextForConfidence:(unint64_t)confidence locale:(id)locale
{
  localeCopy = locale;
  v7 = [objc_opt_class() metricsCollectionValidForLocale:localeCopy];

  if (!v7)
  {
    v31 = 0;
    goto LABEL_13;
  }

  userInterfaceLayoutDirection = [UIApp userInterfaceLayoutDirection];
  v9 = +[NSMutableDictionary dictionary];
  v10 = objc_alloc_init(NSMutableParagraphStyle);
  [v10 setAlignment:4];
  v11 = +[UIFont voicemailFootnoteFont];
  [v9 setObject:v11 forKeyedSubscript:NSFontAttributeName];

  [v9 setObject:v10 forKeyedSubscript:NSParagraphStyleAttributeName];
  v12 = +[UIColor dynamicSecondaryLabelColor];
  v13 = [(VMMessageTranscriptViewModel *)self tintColorForColor:v12];
  [v9 setObject:v13 forKeyedSubscript:NSForegroundColorAttributeName];

  if (confidence - 2 < 2)
  {
    v14 = +[NSBundle mainBundle];
    [v14 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_FEEDBACK_OPTION_NEGATIVE" value:&stru_1000B4840 table:@"VoicemailUI"];
    v15 = v42 = v9;

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_FEEDBACK_OPTION_POSITIVE" value:&stru_1000B4840 table:@"VoicemailUI"];

    +[NSBundle mainBundle];
    v18 = v41 = v10;
    v19 = [v18 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_FEEDBACK_WITH_OPTIONS_%_OR_%" value:&stru_1000B4840 table:@"VoicemailUI"];
    v20 = [NSString stringWithFormat:v19, v17, v15];

    v40 = [v20 rangeOfString:v15];
    v22 = v21;
    v23 = [v20 rangeOfString:v17];
    v25 = v24;
    v26 = [[NSMutableAttributedString alloc] initWithString:v20 attributes:v42];
    positiveFeedbackURL = [objc_opt_class() positiveFeedbackURL];
    [v26 addAttribute:NSLinkAttributeName value:positiveFeedbackURL range:{v23, v25}];

    v28 = v15;
    v9 = v42;
    neutralFeedbackURL = [objc_opt_class() neutralFeedbackURL];
    v30 = v22;
    v10 = v41;
    [v26 addAttribute:NSLinkAttributeName value:neutralFeedbackURL range:{v40, v30}];
LABEL_11:

    v31 = [v26 copy];
    goto LABEL_12;
  }

  if (confidence == 1)
  {
    neutralFeedbackURL2 = [objc_opt_class() neutralFeedbackURL];
    [v9 setObject:neutralFeedbackURL2 forKeyedSubscript:NSLinkAttributeName];

    v28 = objc_alloc_init(NSTextAttachment);
    v33 = +[UIImage voicemailReportFeedbackGlyphImage];
    v17 = [v33 imageWithRenderingMode:2];

    [v28 setImage:v17];
    [v9 setObject:v28 forKeyedSubscript:NSAttachmentAttributeName];
    v34 = +[NSBundle mainBundle];
    v20 = [v34 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_FEEDBACK_CONFIDENCE_NONE" value:&stru_1000B4840 table:@"VoicemailUI"];

    v26 = [[NSMutableAttributedString alloc] initWithString:&stru_1000B4840 attributes:v9];
    if (userInterfaceLayoutDirection == 1)
    {
      neutralFeedbackURL = [v20 stringByAppendingString:@" "];
      v35 = [[NSAttributedString alloc] initWithString:neutralFeedbackURL];
      [v26 appendAttributedString:v35];

      v36 = [NSAttributedString attributedStringWithAttachment:v28];
    }

    else
    {
      neutralFeedbackURL = [@" " stringByAppendingString:v20];
      v37 = [NSAttributedString attributedStringWithAttachment:v28];
      [v26 appendAttributedString:v37];

      v36 = [[NSAttributedString alloc] initWithString:neutralFeedbackURL];
    }

    v38 = v36;
    [v26 appendAttributedString:v36];

    [v26 addAttributes:v9 range:{0, objc_msgSend(v26, "length")}];
    goto LABEL_11;
  }

  v31 = 0;
LABEL_12:

LABEL_13:

  return v31;
}

- (id)localizedAttributedTextForConfidence:(unint64_t)confidence
{
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[UIColor dynamicSecondaryLabelColor];
  v7 = [(VMMessageTranscriptViewModel *)self tintColorForColor:v6];
  [v5 setObject:v7 forKeyedSubscript:NSForegroundColorAttributeName];

  if (confidence - 2 < 2)
  {
    v8 = PHVoicemailTranscriptAttributedPrefix();
    v9 = PHVoicemailTranscriptAttributedSuffix();
    messageTranscriptAttributedText = [(VMMessageTranscriptViewModel *)self messageTranscriptAttributedText];
    v11 = [messageTranscriptAttributedText mutableCopy];

    [v11 insertAttributedString:v8 atIndex:0];
    [v11 appendAttributedString:v9];
    v12 = objc_alloc_init(NSMutableParagraphStyle);
    [v8 size];
    [v12 setHeadIndent:?];
    v13 = +[UIFont telephonyUIBodyShortFont];
    [v5 setObject:v13 forKeyedSubscript:NSFontAttributeName];

    [v5 setObject:v12 forKeyedSubscript:NSParagraphStyleAttributeName];
    [v11 addAttributes:v5 range:{0, objc_msgSend(v11, "length")}];
    v14 = [v11 copy];

LABEL_5:
    goto LABEL_7;
  }

  if (confidence == 1)
  {
    v15 = +[NSBundle mainBundle];
    v8 = [v15 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_MESSAGE_CONFIDENCE_NONE" value:&stru_1000B4840 table:@"VoicemailUI"];

    v9 = objc_alloc_init(NSMutableParagraphStyle);
    [v9 setAlignment:4];
    v16 = +[UIFont telephonyUIBodyShortFont];
    [v5 setObject:v16 forKeyedSubscript:NSFontAttributeName];

    [v5 setObject:v9 forKeyedSubscript:NSParagraphStyleAttributeName];
    v14 = [[NSAttributedString alloc] initWithString:v8 attributes:v5];
    goto LABEL_5;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (id)localizedAttributedTitleForConfidence:(unint64_t)confidence
{
  v5 = +[NSMutableDictionary dictionary];
  v6 = +[UIFont telephonyUIBodyShortEmphasizedFont];
  [v5 setObject:v6 forKeyedSubscript:NSFontAttributeName];

  v7 = +[UIColor dynamicSecondaryLabelColor];
  v8 = [(VMMessageTranscriptViewModel *)self tintColorForColor:v7];
  [v5 setObject:v8 forKeyedSubscript:NSForegroundColorAttributeName];

  if (confidence == 2)
  {
    v9 = @"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_TITLE_CONFIDENCE_LOW";
    goto LABEL_5;
  }

  if (confidence == 3)
  {
    v9 = @"VOICEMAILUI_MESSAGE_TRANSCRIPT_VIEW_TITLE";
LABEL_5:
    v10 = [NSAttributedString alloc];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:v9 value:&stru_1000B4840 table:@"VoicemailUI"];
    v13 = [v10 initWithString:v12 attributes:v5];

    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)tintColorForColor:(id)color
{
  colorCopy = color;
  tintColorDelegate = [(VMMessageTranscriptViewModel *)self tintColorDelegate];
  v6 = [tintColorDelegate _accessibilityHigherContrastTintColorForColor:colorCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = colorCopy;
  }

  v9 = v8;

  return v8;
}

+ (BOOL)metricsCollectionValidForLocale:(id)locale
{
  localeCopy = locale;
  if (!localeCopy)
  {
    localeCopy = +[NSLocale currentLocale];
  }

  regionCode = [localeCopy regionCode];
  v5 = [TULVMRegionsWithoutMetrics containsObject:regionCode];

  return v5 ^ 1;
}

- (UIView)tintColorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tintColorDelegate);

  return WeakRetained;
}

- (VMMessageTranscriptViewModel)initWithMPMessage:(id)message
{
  swift_unknownObjectRetain();
  v5 = -[VMMessageTranscriptViewModel initWithDonated:transcribing:transcriptionAttempted:transcriptionAvailable:messageTranscript:](self, "initWithDonated:transcribing:transcriptionAttempted:transcriptionAvailable:messageTranscript:", [message isTranscriptionRated], objc_msgSend(message, "isTranscribing"), objc_msgSend(message, "transcriptionAttempted"), objc_msgSend(message, "isTranscriptionAvailable"), objc_msgSend(message, "transcript"));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5;
}

@end