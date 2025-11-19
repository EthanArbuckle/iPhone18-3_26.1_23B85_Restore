@interface SHToggleManager
- (SHManagedSession)session;
- (SHToggleManager)init;
- (SHToggleManagerDelegate)delegate;
- (void)finishedManagedSession:(id)a3;
- (void)playStartRecordingSystemSound;
- (void)playStopRecordingSystemSound;
- (void)recognitionDidFinish;
- (void)session:(id)a3 didFindMatch:(id)a4;
- (void)session:(id)a3 didNotFindMatchForSignature:(id)a4 error:(id)a5;
- (void)stop;
- (void)toggleRecognitionState;
- (void)toggleToState:(int64_t)a3;
@end

@implementation SHToggleManager

- (SHToggleManager)init
{
  v3.receiver = self;
  v3.super_class = SHToggleManager;
  result = [(SHToggleManager *)&v3 init];
  if (result)
  {
    result->_toggleState = 1;
  }

  return result;
}

- (void)toggleRecognitionState
{
  v11[1] = *MEMORY[0x29EDCA608];
  [(SHToggleManager *)self setToggleState:[(SHToggleManager *)self isToggleOn]];
  if ([(SHToggleManager *)self isToggleOn])
  {
    [(SHToggleManager *)self playStartRecordingSystemSound];
    v3 = [(SHToggleManager *)self session];
    [v3 matchAmbientAudioSnippet];
  }

  else
  {
    [(SHToggleManager *)self stop];
    [(SHToggleManager *)self playStopRecordingSystemSound];
  }

  v4 = MEMORY[0x29EDC66B0];
  v5 = *MEMORY[0x29EDC66C0];
  v10 = *MEMORY[0x29EDC66C8];
  v6 = [MEMORY[0x29EDBA070] numberWithBool:{-[SHToggleManager isToggleOn](self, "isToggleOn")}];
  v11[0] = v6;
  v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v4 sendEvent:v5 withPayload:v7];

  v8 = [(SHToggleManager *)self delegate];
  [v8 toggleManager:self didToggleToState:{-[SHToggleManager toggleState](self, "toggleState")}];

  v9 = *MEMORY[0x29EDCA608];
}

- (void)toggleToState:(int64_t)a3
{
  if ([(SHToggleManager *)self toggleState]!= a3)
  {
    [(SHToggleManager *)self setToggleState:a3];
    v5 = [(SHToggleManager *)self delegate];
    [v5 toggleManager:self didToggleToState:{-[SHToggleManager toggleState](self, "toggleState")}];
  }
}

- (void)playStartRecordingSystemSound
{
  if (UIAccessibilityIsVoiceOverRunning())
  {

    MEMORY[0x2A1C70FE8](self, sel_playSystemSoundWithID_completion_);
  }
}

- (void)playStopRecordingSystemSound
{
  if (UIAccessibilityIsVoiceOverRunning())
  {

    MEMORY[0x2A1C70FE8](self, sel_playSystemSoundWithID_completion_);
  }
}

- (void)stop
{
  v2 = [(SHToggleManager *)self session];
  [v2 cancel];

  v3 = [MEMORY[0x29EDB9F98] defaultCenter];
  [v3 postNotificationName:@"com.apple.musicrecognition.cancelLiveActivity" object:0];
}

- (void)recognitionDidFinish
{
  if ([(SHToggleManager *)self isToggleOn])
  {
    [(SHToggleManager *)self switchToggleOff];
    v3 = [(SHToggleManager *)self delegate];
    [v3 toggleManager:self didToggleToState:{-[SHToggleManager toggleState](self, "toggleState")}];

    [(SHToggleManager *)self playStopRecordingSystemSound];
  }
}

- (SHManagedSession)session
{
  session = self->_session;
  if (!session)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDBBD38]);
    v5 = self->_session;
    self->_session = v4;

    [(SHManagedSession *)self->_session setEnableLiveActivity:1];
    [(SHManagedSession *)self->_session setDelegate:self];
    session = self->_session;
  }

  return session;
}

- (void)session:(id)a3 didFindMatch:(id)a4
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = a4;
  v6 = shcore_log_object();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_29C9E7000, v6, OS_LOG_TYPE_DEBUG, "SHToggleManager session didFindMatch %@", &v8, 0xCu);
  }

  [(SHToggleManager *)self recognitionDidFinish];
  v7 = *MEMORY[0x29EDCA608];
}

- (void)session:(id)a3 didNotFindMatchForSignature:(id)a4 error:(id)a5
{
  v15 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = a5;
  v9 = shcore_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_29C9E7000, v9, OS_LOG_TYPE_DEBUG, "SHToggleManager session didNotFindMatchForSignature %@ error %@", &v11, 0x16u);
  }

  [(SHToggleManager *)self recognitionDidFinish];
  v10 = *MEMORY[0x29EDCA608];
}

- (void)finishedManagedSession:(id)a3
{
  v4 = shcore_log_object();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_29C9E7000, v4, OS_LOG_TYPE_DEBUG, "SHToggleManager session finishedManagedSession", v5, 2u);
  }

  [(SHToggleManager *)self recognitionDidFinish];
}

- (SHToggleManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end