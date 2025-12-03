@interface WFAudioRecorderViewController
- (UIButton)inputButton;
- (WFAudioRecorderViewController)initWithOutputFormat:(int64_t)format destinationURL:(id)l;
- (void)audioRecorder:(id)recorder didFinishWithDestinationURL:(id)l error:(id)error;
- (void)audioRecorder:(id)recorder didProgressToTime:(double)time;
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

- (void)audioRecorder:(id)recorder didFinishWithDestinationURL:(id)l error:(id)error
{
  lCopy = l;
  errorCopy = error;
  completionHandler = [(WFAudioRecorderViewController *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFAudioRecorderViewController *)self completionHandler];
    (completionHandler2)[2](completionHandler2, lCopy, errorCopy);
  }
}

- (void)audioRecorder:(id)recorder didProgressToTime:(double)time
{
  v5 = MEMORY[0x277CE8810];
  [(WFAudioRecorderViewController *)self recordingDuration];
  v9 = [v5 formattedStringWithDuration:? elapsedTime:?];
  v6 = WFLocalizedString(@"Tap to finish recording.");
  v7 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%@\n\n%@", v6, v9];
  statusLabel = [(WFAudioInputViewController *)self statusLabel];
  [statusLabel setText:v7];
}

- (void)inputButtonTapped
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFC218] alertWithPreferredStyle:1];
  v4 = MEMORY[0x277D7D500];
  inputButton = [(WFAudioRecorderViewController *)self inputButton];
  v6 = [v4 sourceWithView:inputButton];
  v25 = v3;
  [v3 setPresentationSource:v6];

  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  currentRoute = [mEMORY[0x277CB83F8] currentRoute];
  inputs = [currentRoute inputs];
  firstObject = [inputs firstObject];
  portName = [firstObject portName];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [mEMORY[0x277CB83F8] availableInputs];
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
        portName2 = [v16 portName];
        v18 = [portName2 isEqualToString:portName];
        v19 = MEMORY[0x277CFC510];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __50__WFAudioRecorderViewController_inputButtonTapped__block_invoke;
        v26[3] = &unk_278C375A0;
        v27 = mEMORY[0x277CB83F8];
        v28 = v16;
        v20 = [v19 buttonWithTitle:portName2 subtitle:0 selected:v18 style:0 handler:v26];
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
  audioRecorder = [(WFAudioRecorderViewController *)self audioRecorder];
  [audioRecorder finishRecording];
}

- (void)startRecording
{
  v3 = WFLocalizedString(@"Tap to finish recording.");
  statusLabel = [(WFAudioInputViewController *)self statusLabel];
  [statusLabel setText:v3];

  [(WFAudioRecorderViewController *)self recordingDuration];
  v6 = v5;
  audioRecorder = [(WFAudioRecorderViewController *)self audioRecorder];
  if (v6 == 0.0)
  {
    [audioRecorder startRecording];
  }

  else
  {
    [(WFAudioRecorderViewController *)self recordingDuration];
    [audioRecorder recordForDuration:?];
  }
}

- (void)handleTap
{
  audioRecorder = [(WFAudioRecorderViewController *)self audioRecorder];
  isRecording = [audioRecorder isRecording];

  if (isRecording)
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
  statusLabel = [(WFAudioInputViewController *)self statusLabel];
  [statusLabel setText:v3];

  contentView = [(WFAudioInputViewController *)self contentView];
  v6 = [MEMORY[0x277D75220] buttonWithType:1];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v6 setTintColor:whiteColor];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [MEMORY[0x277D79FC8] actionKitImageNamed:@"MicrophoneButton"];
  uIImage = [v8 UIImage];
  [v6 setImage:uIImage forState:0];

  [v6 addTarget:self action:sel_inputButtonTapped forControlEvents:64];
  [contentView addSubview:v6];
  objc_storeWeak(&self->_inputButton, v6);
  v20 = MEMORY[0x277CCAAD0];
  bottomAnchor = [v6 bottomAnchor];
  v21 = contentView;
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-22.0];
  v23[0] = v13;
  trailingAnchor = [v6 trailingAnchor];
  safeAreaLayoutGuide2 = [contentView safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-22.0];
  v23[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v20 activateConstraints:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (WFAudioRecorderViewController)initWithOutputFormat:(int64_t)format destinationURL:(id)l
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = WFAudioRecorderViewController;
  v7 = [(WFAudioRecorderViewController *)&v12 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CE8810]) initWithOutputFormat:format destinationURL:lCopy];
    audioRecorder = v7->_audioRecorder;
    v7->_audioRecorder = v8;

    [(WFAudioRecorder *)v7->_audioRecorder setDelegate:v7];
    v10 = v7;
  }

  return v7;
}

@end