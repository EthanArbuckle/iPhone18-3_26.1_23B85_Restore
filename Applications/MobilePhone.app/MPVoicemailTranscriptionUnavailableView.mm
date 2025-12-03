@interface MPVoicemailTranscriptionUnavailableView
- (void)loadView;
@end

@implementation MPVoicemailTranscriptionUnavailableView

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = MPVoicemailTranscriptionUnavailableView;
  [(MPVoicemailTableHeaderView *)&v9 loadView];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"VOICEMAILUI_TRANSCRIPTION_UNAVAILABLE_VIEW_TITLE" value:&stru_10028F310 table:@"VoicemailUI"];
  titleLabel = [(MPVoicemailTableHeaderView *)self titleLabel];
  [titleLabel setText:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"VOICEMAILUI_TRANSCRIPTION_UNAVAILABLE_VIEW_MESSAGE" value:&stru_10028F310 table:@"VoicemailUI"];
  messageLabel = [(MPVoicemailTableHeaderView *)self messageLabel];
  [messageLabel setText:v7];
}

@end