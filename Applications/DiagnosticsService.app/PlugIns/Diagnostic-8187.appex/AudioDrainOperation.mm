@interface AudioDrainOperation
- (AudioDrainOperation)initWithAudioFileURL:(id)l volume:(float)volume responder:(id)responder;
- (DKResponder)responder;
- (void)cancel;
- (void)main;
@end

@implementation AudioDrainOperation

- (AudioDrainOperation)initWithAudioFileURL:(id)l volume:(float)volume responder:(id)responder
{
  lCopy = l;
  responderCopy = responder;
  v14.receiver = self;
  v14.super_class = AudioDrainOperation;
  v11 = [(AudioDrainOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_audioFileURL, l);
    objc_storeWeak(&v12->_responder, responderCopy);
    v12->_requestedVolume = volume;
  }

  return v12;
}

- (void)main
{
  v3 = [AVAudioPlayer alloc];
  audioFileURL = [(AudioDrainOperation *)self audioFileURL];
  v15 = 0;
  v5 = [v3 initWithContentsOfURL:audioFileURL error:&v15];
  v6 = v15;
  [(AudioDrainOperation *)self setAudioPlayer:v5];

  audioPlayer = [(AudioDrainOperation *)self audioPlayer];

  if (audioPlayer)
  {
    if (!v6)
    {
      responder = [(AudioDrainOperation *)self responder];
      [responder enableVolumeHUD:0];

      v9 = +[AVAudioSession sharedInstance];
      [v9 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeRaw options:1 error:0];

      v10 = +[AVSystemController sharedAVSystemController];
      [v10 getActiveCategoryVolume:&self->_originalVolume andName:0];

      v11 = +[AVSystemController sharedAVSystemController];
      [(AudioDrainOperation *)self requestedVolume];
      [v11 setActiveCategoryVolumeTo:?];

      audioPlayer2 = [(AudioDrainOperation *)self audioPlayer];
      [audioPlayer2 setNumberOfLoops:-1];

      audioPlayer3 = [(AudioDrainOperation *)self audioPlayer];
      [audioPlayer3 setDelegate:self];

      audioPlayer4 = [(AudioDrainOperation *)self audioPlayer];
      [audioPlayer4 play];
    }
  }
}

- (void)cancel
{
  audioPlayer = [(AudioDrainOperation *)self audioPlayer];

  if (audioPlayer)
  {
    v4 = +[AVSystemController sharedAVSystemController];
    [(AudioDrainOperation *)self originalVolume];
    [v4 setActiveCategoryVolumeTo:?];

    responder = [(AudioDrainOperation *)self responder];
    [responder enableVolumeHUD:1];

    audioPlayer2 = [(AudioDrainOperation *)self audioPlayer];
    [audioPlayer2 stop];

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