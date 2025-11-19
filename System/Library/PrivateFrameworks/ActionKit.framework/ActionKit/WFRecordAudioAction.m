@interface WFRecordAudioAction
+ (id)datedFilenameForFormat:(int64_t)a3;
+ (id)fileTypeForFormat:(int64_t)a3;
+ (id)userInterfaceXPCInterface;
- (BOOL)startImmediately;
- (double)recordingDuration;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (int64_t)outputFormat;
- (void)runWithRemoteUserInterface:(id)a3 input:(id)a4;
@end

@implementation WFRecordAudioAction

+ (id)datedFilenameForFormat:(int64_t)a3
{
  v3 = [a1 fileTypeForFormat:a3];
  v4 = MEMORY[0x277CCACA8];
  v5 = WFLocalizedString(@"Audio Recording");
  v6 = [v3 fileExtension];
  v7 = [v4 wf_datedFilenameWithTypeString:v5 fileExtension:v6];

  return v7;
}

+ (id)fileTypeForFormat:(int64_t)a3
{
  switch(a3)
  {
    case 0:
      v4 = MEMORY[0x277D79F68];
      v5 = MEMORY[0x277CE1CE0];
      goto LABEL_7;
    case 2:
      v4 = MEMORY[0x277D79F68];
      v5 = MEMORY[0x277CE1ED0];
LABEL_7:
      v3 = [v4 typeWithUTType:*v5];
      break;
    case 1:
      v3 = [MEMORY[0x277D79F68] typeWithString:*MEMORY[0x277D7A418]];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

+ (id)userInterfaceXPCInterface
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___WFRecordAudioAction;
  v2 = objc_msgSendSuper2(&v5, sel_userInterfaceXPCInterface);
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_showWithOutputFormat_startImmediately_recordingDuration_completionHandler_ argumentIndex:0 ofReply:1];

  return v2;
}

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a5;
  v8 = a3;
  v9 = WFLocalizedString(@"Allow “%1$@” to access the Microphone?");
  v10 = [v6 localizedStringWithFormat:v9, v7, v8];

  return v10;
}

- (double)recordingDuration
{
  v3 = [(WFRecordAudioAction *)self parameterValueForKey:@"WFRecordingEnd" ofClass:objc_opt_class()];
  v4 = [v3 isEqualToString:@"After Time"];

  if (!v4)
  {
    return 0.0;
  }

  v5 = [(WFRecordAudioAction *)self parameterValueForKey:@"WFRecordingTimeInterval" ofClass:objc_opt_class()];
  v6 = MEMORY[0x277D7C398];
  v7 = [v5 unitString];
  v8 = [v6 calendarUnitFromUnitString:v7];

  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [v5 magnitude];
  v11 = [v10 integerValue];
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [v9 dateByAddingUnit:v8 value:v11 toDate:v12 options:0];

  [v13 timeIntervalSinceNow];
  v15 = v14;

  return v15;
}

- (BOOL)startImmediately
{
  v2 = [(WFRecordAudioAction *)self parameterValueForKey:@"WFRecordingStart" ofClass:objc_opt_class()];
  v3 = [v2 isEqualToString:@"Immediately"];

  return v3;
}

- (int64_t)outputFormat
{
  v2 = [(WFRecordAudioAction *)self parameterValueForKey:@"WFRecordingCompression" ofClass:objc_opt_class()];
  if ([v2 isEqualToString:@"Normal"])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)runWithRemoteUserInterface:(id)a3 input:(id)a4
{
  v5 = a3;
  v6 = [(WFRecordAudioAction *)self outputFormat];
  v7 = [(WFRecordAudioAction *)self startImmediately];
  [(WFRecordAudioAction *)self recordingDuration];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__WFRecordAudioAction_runWithRemoteUserInterface_input___block_invoke;
  v8[3] = &unk_278C209C0;
  v8[4] = self;
  [v5 showWithOutputFormat:v6 startImmediately:v7 recordingDuration:v8 completionHandler:?];
}

void __56__WFRecordAudioAction_runWithRemoteUserInterface_input___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  if (a2)
  {
    v5 = MEMORY[0x277CFC2F8];
    v6 = MEMORY[0x277CFC318];
    v7 = a2;
    v8 = [v6 microphoneLocation];
    v9 = [v5 itemWithFile:v7 origin:v8 disclosureLevel:1];

    v10 = [*(a1 + 32) output];
    [v10 addItem:v9];
  }

  [*(a1 + 32) finishRunningWithError:v11];
}

@end