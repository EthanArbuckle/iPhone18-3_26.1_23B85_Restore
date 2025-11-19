@interface WFGetCurrentSongAction
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)origin;
- (id)outputContentClasses;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFGetCurrentSongAction

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFGetCurrentSongAction *)self parameterStateForKey:@"Subject"];
  v6 = [v5 value];
  v7 = [v6 isEqualToString:@"Current Playback Time"];

  if (v7)
  {
    v8 = WFLocalizedStringResourceWithKey(@"Current Playback Time", @"Current Playback Time");
    v9 = [v4 localize:v8];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFGetCurrentSongAction;
    v9 = [(WFGetCurrentSongAction *)&v11 localizedDefaultOutputNameWithContext:v4];
  }

  return v9;
}

- (id)outputContentClasses
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [(WFGetCurrentSongAction *)self parameterStateForKey:@"Subject"];
  v4 = [v3 value];
  if ([v4 isEqualToString:@"Current Song"])
  {
    v13[0] = objc_opt_class();
    v5 = MEMORY[0x277CBEA60];
    v6 = v13;
LABEL_5:
    v7 = [v5 arrayWithObjects:v6 count:1];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"Current Playback Time"])
  {
    v12 = objc_opt_class();
    v5 = MEMORY[0x277CBEA60];
    v6 = &v12;
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = WFGetCurrentSongAction;
  v7 = [(WFGetCurrentSongAction *)&v11 outputContentClasses];
LABEL_7:
  v8 = v7;

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)origin
{
  v2 = [WFMediaPlaybackController bundleIdentifierForMediaPlaybackApplication:0];
  v3 = [MEMORY[0x277CFC238] locationWithSystemAppBundleIdentifier:v2];

  return v3;
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = objc_alloc_init(WFMediaPlaybackController);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__WFGetCurrentSongAction_runAsynchronouslyWithInput___block_invoke;
  v5[3] = &unk_278C1BB48;
  v5[4] = self;
  [(WFMediaPlaybackController *)v4 getCurrentlyPlayingMediaWithCompletion:v5];
}

void __53__WFGetCurrentSongAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v16 = v7;
  if (!v7)
  {
    [v8 finishRunningWithError:a3];
    goto LABEL_9;
  }

  v9 = [v8 parameterValueForKey:@"Subject" ofClass:objc_opt_class()];
  if ([v9 isEqualToString:@"Current Song"])
  {
    v10 = [*(a1 + 32) output];
    v11 = MEMORY[0x277CFC2F8];
    v12 = [*(a1 + 32) origin];
    v13 = [v11 itemWithObject:v16 origin:v12 disclosureLevel:1];
    [v10 addItem:v13];
LABEL_7:

    goto LABEL_8;
  }

  if ([v9 isEqualToString:@"Current Playback Time"])
  {
    v10 = [objc_alloc(MEMORY[0x277CFC540]) initWithTimeInterval:a4];
    v12 = [*(a1 + 32) output];
    v14 = MEMORY[0x277CFC2F8];
    v13 = [*(a1 + 32) origin];
    v15 = [v14 itemWithObject:v10 origin:v13 disclosureLevel:1];
    [v12 addItem:v15];

    goto LABEL_7;
  }

LABEL_8:
  [*(a1 + 32) finishRunningWithError:0];

LABEL_9:
}

@end