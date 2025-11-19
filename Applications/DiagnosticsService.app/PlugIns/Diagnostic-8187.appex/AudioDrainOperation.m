@interface AudioDrainOperation
- (AudioDrainOperation)initWithAudioFileURL:(id)a3 volume:(float)a4 responder:(id)a5;
- (DKResponder)responder;
- (void)cancel;
- (void)main;
@end

@implementation AudioDrainOperation

- (AudioDrainOperation)initWithAudioFileURL:(id)a3 volume:(float)a4 responder:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AudioDrainOperation;
  v11 = [(AudioDrainOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_audioFileURL, a3);
    objc_storeWeak(&v12->_responder, v10);
    v12->_requestedVolume = a4;
  }

  return v12;
}

- (void)main
{
  v3 = [AVAudioPlayer alloc];
  v4 = [(AudioDrainOperation *)self audioFileURL];
  v15 = 0;
  v5 = [v3 initWithContentsOfURL:v4 error:&v15];
  v6 = v15;
  [(AudioDrainOperation *)self setAudioPlayer:v5];

  v7 = [(AudioDrainOperation *)self audioPlayer];

  if (v7)
  {
    if (!v6)
    {
      v8 = [(AudioDrainOperation *)self responder];
      [v8 enableVolumeHUD:0];

      v9 = +[AVAudioSession sharedInstance];
      [v9 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeRaw options:1 error:0];

      v10 = +[AVSystemController sharedAVSystemController];
      [v10 getActiveCategoryVolume:&self->_originalVolume andName:0];

      v11 = +[AVSystemController sharedAVSystemController];
      [(AudioDrainOperation *)self requestedVolume];
      [v11 setActiveCategoryVolumeTo:?];

      v12 = [(AudioDrainOperation *)self audioPlayer];
      [v12 setNumberOfLoops:-1];

      v13 = [(AudioDrainOperation *)self audioPlayer];
      [v13 setDelegate:self];

      v14 = [(AudioDrainOperation *)self audioPlayer];
      [v14 play];
    }
  }
}

- (void)cancel
{
  v3 = [(AudioDrainOperation *)self audioPlayer];

  if (v3)
  {
    v4 = +[AVSystemController sharedAVSystemController];
    [(AudioDrainOperation *)self originalVolume];
    [v4 setActiveCategoryVolumeTo:?];

    v5 = [(AudioDrainOperation *)self responder];
    [v5 enableVolumeHUD:1];

    v6 = [(AudioDrainOperation *)self audioPlayer];
    [v6 stop];

    [(AudioDrainOperation *)self setAudioPlayer:0];
  }

  v7.receiver = self;
  v7.super_class = AudioDrainOperation;
  [(DrainOperation *)&v7 cancel];
}

- (DKResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->_responder);

  return WeakRetained;
}

@end