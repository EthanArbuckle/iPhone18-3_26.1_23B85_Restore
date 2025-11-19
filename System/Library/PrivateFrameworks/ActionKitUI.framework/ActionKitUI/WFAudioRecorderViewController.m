@interface WFAudioRecorderViewController
- (UIButton)inputButton;
- (WFAudioRecorderViewController)initWithOutputFormat:(int64_t)a3 destinationURL:(id)a4;
- (void)audioRecorder:(id)a3 didFinishWithDestinationURL:(id)a4 error:(id)a5;
- (void)audioRecorder:(id)a3 didProgressToTime:(double)a4;
- (void)finishRecording;
- (void)handleTap;
- (void)inputButtonTapped;
- (void)startRecording;
- (void)viewDidLoad;
@end

@implementation WFAudioRecorderViewController

- (UIButton)inputButton
{
  WeakRetained = objc_loadWeakRetained(&self->_inputButton);

  return WeakRetained;
}

- (void)audioRecorder:(id)a3 didFinishWithDestinationURL:(id)a4 error:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(WFAudioRecorderViewController *)self completionHandler];

  if (v8)
  {
    v9 = [(WFAudioRecorderViewController *)self completionHandler];
    (v9)[2](v9, v10, v7);
  }
}

- (void)audioRecorder:(id)a3 didProgressToTime:(double)a4
{
  v5 = MEMORY[0x277CE8810];
  [(WFAudioRecorderViewController *)self recordingDuration];
  v9 = [v5 formattedStringWithDuration:? elapsedTime:?];
  v6 = WFLocalizedString(@"Tap to finish recording.");
  v7 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%@\n\n%@", v6, v9];
  v8 = [(WFAudioInputViewController *)self statusLabel];
  [v8 setText:v7];
}

- (void)inputButtonTapped
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFC218] alertWithPreferredStyle:1];
  v4 = MEMORY[0x277D7D500];
  v5 = [(WFAudioRecorderViewController *)self inputButton];
  v6 = [v4 sourceWithView:v5];
  v25 = v3;
  [v3 setPresentationSource:v6];

  v7 = [MEMORY[0x277CB83F8] sharedInstance];
  v8 = [v7 currentRoute];
  v9 = [v8 inputs];
  v10 = [v9 firstObject];
  v11 = [v10 portName];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [v7 availableInputs];
  v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [v16 portName];
        v18 = [v17 isEqualToString:v11];
        v19 = MEMORY[0x277CFC510];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __50__WFAudioRecorderViewController_inputButtonTapped__block_invoke;
        v26[3] = &unk_278C375A0;
        v27 = v7;
        v28 = v16;
        v20 = [v19 buttonWithTitle:v17 subtitle:0 selected:v18 style:0 handler:v26];
        [v25 addButton:v20];
      }

      v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }

  v21 = [MEMORY[0x277CFC220] cancelButtonWithHandler:0];
  [v25 addButton:v21];

  v22 = WFUserInterfaceFromViewController();
  [v22 presentAlert:v25];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)finishRecording
{
  v2 = [(WFAudioRecorderViewController *)self audioRecorder];
  [v2 finishRecording];
}

- (void)startRecording
{
  v3 = WFLocalizedString(@"Tap to finish recording.");
  v4 = [(WFAudioInputViewController *)self statusLabel];
  [v4 setText:v3];

  [(WFAudioRecorderViewController *)self recordingDuration];
  v6 = v5;
  v7 = [(WFAudioRecorderViewController *)self audioRecorder];
  if (v6 == 0.0)
  {
    [v7 startRecording];
  }

  else
  {
    [(WFAudioRecorderViewController *)self recordingDuration];
    [v7 recordForDuration:?];
  }
}

- (void)handleTap
{
  v3 = [(WFAudioRecorderViewController *)self audioRecorder];
  v4 = [v3 isRecording];

  if (v4)
  {
    [(WFAudioRecorderViewController *)self setIsFinishing:1];

    [(WFAudioRecorderViewController *)self finishRecording];
  }

  else if (![(WFAudioRecorderViewController *)self isFinishing])
  {

    [(WFAudioRecorderViewController *)self startRecording];
  }
}

- (void)viewDidLoad
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = WFAudioRecorderViewController;
  [(WFAudioRecorderViewController *)&v22 viewDidLoad];
  v3 = WFLocalizedString(@"Tap to start recording.");
  v4 = [(WFAudioInputViewController *)self statusLabel];
  [v4 setText:v3];

  v5 = [(WFAudioInputViewController *)self contentView];
  v6 = [MEMORY[0x277D75220] buttonWithType:1];
  v7 = [MEMORY[0x277D75348] whiteColor];
  [v6 setTintColor:v7];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [MEMORY[0x277D79FC8] actionKitImageNamed:@"MicrophoneButton"];
  v9 = [v8 UIImage];
  [v6 setImage:v9 forState:0];

  [v6 addTarget:self action:sel_inputButtonTapped forControlEvents:64];
  [v5 addSubview:v6];
  objc_storeWeak(&self->_inputButton, v6);
  v20 = MEMORY[0x277CCAAD0];
  v10 = [v6 bottomAnchor];
  v21 = v5;
  v11 = [v5 safeAreaLayoutGuide];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:-22.0];
  v23[0] = v13;
  v14 = [v6 trailingAnchor];
  v15 = [v5 safeAreaLayoutGuide];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:-22.0];
  v23[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v20 activateConstraints:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (WFAudioRecorderViewController)initWithOutputFormat:(int64_t)a3 destinationURL:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = WFAudioRecorderViewController;
  v7 = [(WFAudioRecorderViewController *)&v12 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CE8810]) initWithOutputFormat:a3 destinationURL:v6];
    audioRecorder = v7->_audioRecorder;
    v7->_audioRecorder = v8;

    [(WFAudioRecorder *)v7->_audioRecorder setDelegate:v7];
    v10 = v7;
  }

  return v7;
}

@end