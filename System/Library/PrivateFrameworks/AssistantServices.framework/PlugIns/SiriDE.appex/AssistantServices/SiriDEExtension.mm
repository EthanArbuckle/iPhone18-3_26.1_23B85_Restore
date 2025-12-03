@interface SiriDEExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation SiriDEExtension

- (id)attachmentsForParameters:(id)parameters
{
  v3 = [[DEAttachmentItem alloc] initWithPath:@"/private/var/mobile/Library/Logs/CrashReporter/Assistant/assistant_dump.log"];
  [v3 setDisplayName:@"State Snapshot"];
  v4 = [[DEAttachmentItem alloc] initWithPath:@"/private/var/mobile/Library/Logs/CrashReporter/Assistant/SpeechLogs"];
  [v4 setDisplayName:@"Speech Logs"];
  v5 = [[DEAttachmentItem alloc] initWithPath:@"/private/var/mobile/Library/VoiceTrigger/SAT"];
  [v5 setDisplayName:@"Voice Profiles"];
  v6 = [NSArray arrayWithObjects:v3, v4, v5, 0];

  return v6;
}

@end