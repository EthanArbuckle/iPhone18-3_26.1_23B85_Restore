@interface AVCaptureEvent
+ (id)eventWithSource:(unint64_t)source phase:(unint64_t)phase;
+ (id)eventWithSource:(unint64_t)source physicalButton:(unint64_t)button phase:(unint64_t)phase interaction:(id)interaction;
- (BOOL)playSound:(id)sound;
- (BOOL)shouldPlaySound;
- (id)description;
- (void)_playSystemSoundForCaptureType:(int64_t)type;
@end

@implementation AVCaptureEvent

- (id)description
{
  v15 = *MEMORY[0x1E69E9840];
  source = self->_source;
  if (source)
  {
    if (source != 1)
    {
      v12 = _AVLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v14 = source;
        _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "Invalid AVCaptureEventSource %ld.", buf, 0xCu);
      }

      __assert_rtn("NSStringFromAVCaptureEventSource", "AVCaptureEvent.m", 221, "NO");
    }

    v4 = @"secondary";
  }

  else
  {
    v4 = @"primary";
  }

  v5 = v4;
  phase = self->_phase;
  if (phase >= 3)
  {
    v11 = _AVLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = phase;
      _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "Invalid AVCaptureEventPhase %ld.", buf, 0xCu);
    }

    __assert_rtn("NSStringFromAVCaptureEventPhase", "AVCaptureEvent.m", 204, "NO");
  }

  v7 = v5;
  v8 = off_1E7207A88[phase];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{\n\tsource: %@\n\tphase: %@\n}", v7, v8];

  return v9;
}

- (BOOL)playSound:(id)sound
{
  soundCopy = sound;
  shouldPlaySound = [(AVCaptureEvent *)self shouldPlaySound];
  if (shouldPlaySound)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interaction);
    [WeakRetained _playSound:soundCopy];

    self->_didPlaySound = 1;
  }

  return shouldPlaySound;
}

- (void)_playSystemSoundForCaptureType:(int64_t)type
{
  if ((self->_physicalButton & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interaction);
    [WeakRetained _playSystemSoundForCaptureType:type];
  }
}

- (BOOL)shouldPlaySound
{
  v3 = +[AVCaptureEventInteraction defaultCaptureSoundDisabled];
  if (v3)
  {
    [(NSDate *)self->_eventCreationDate timeIntervalSinceNow];
    LOBYTE(v3) = v4 <= 15.0 && (self->_physicalButton & 0xFFFFFFFFFFFFFFFELL) == 6;
  }

  return v3;
}

+ (id)eventWithSource:(unint64_t)source physicalButton:(unint64_t)button phase:(unint64_t)phase interaction:(id)interaction
{
  interactionCopy = interaction;
  v10 = [AVCaptureEvent eventWithSource:source phase:phase];
  *(v10 + 16) = button;
  *(v10 + 24) = 0;
  objc_storeWeak((v10 + 32), interactionCopy);

  date = [MEMORY[0x1E695DF00] date];
  v12 = *(v10 + 40);
  *(v10 + 40) = date;

  return v10;
}

+ (id)eventWithSource:(unint64_t)source phase:(unint64_t)phase
{
  v6 = objc_alloc_init(AVCaptureEvent);
  v6->_phase = phase;
  v6->_source = source;
  v6->_physicalButton = 0;

  return v6;
}

@end