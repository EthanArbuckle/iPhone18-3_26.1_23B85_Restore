@interface AUiPodEQViewController
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)priv_eventListener:(void *)a3 event:(const AudioUnitEvent *)a4 value:(float)a5;
- (void)synchronizeUIWithParameterValues;
- (void)viewDidLoad;
@end

@implementation AUiPodEQViewController

- (void)viewDidLoad
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 loadNibNamed:@"AUiPodEQViewController" owner:self options:0];
  topLevelObjects = self->super.topLevelObjects;
  self->super.topLevelObjects = v4;

  v6.receiver = self;
  v6.super_class = AUiPodEQViewController;
  [(AUAppleViewControllerBase *)&v6 viewDidLoad];
}

- (void)synchronizeUIWithParameterValues
{
  v14 = *MEMORY[0x277D85DE8];
  outData[0] = 0;
  outData[1] = 0;
  ioDataSize = 16;
  if (!AudioUnitGetProperty(self->super.AU, 0x24u, 0, 0, outData, &ioDataSize))
  {
    [(UIPickerView *)self->picker selectRow:SLODWORD(outData[0]) inComponent:0 animated:1];
  }

  if (self->super.AU && !self->super.eventListener)
  {
    Current = CFRunLoopGetCurrent();
    v4 = AUEventListenerCreate(EventListenerDispatcher, self, Current, *MEMORY[0x277CBF048], 0.05, 0.05, &self->super.eventListener);
    if (v4)
    {
      v5 = v4;
      v6 = +[AUAppleViewControllerBase customViewLogger];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

        return;
      }

      inEvent.mEventType = 67109120;
      *(&inEvent.mEventType + 1) = v5;
      v7 = "Error creating event listener: %d, [AUiPodEQViewController synchronizeUIWIthParameterValues]";
      p_inEvent = &inEvent;
    }

    else
    {
      memset(&inEvent, 0, sizeof(inEvent));
      inEvent.mEventType = kAudioUnitEvent_PropertyChange;
      inEvent.mArgument.mParameter.mAudioUnit = self->super.AU;
      inEvent.mArgument.mParameter.mParameterID = 36;
      inEvent.mArgument.mParameter.mElement = 0;
      if (!AUEventListenerAddEventType(self->super.eventListener, self, &inEvent))
      {
        return;
      }

      v6 = +[AUAppleViewControllerBase customViewLogger];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 67109120;
      v12 = 0;
      v7 = "Error adding event listener for kAudioUnitProperty_PresentPreset: %d, [AUiPodEQViewController synchronizeUIWIthParameterValues]";
      p_inEvent = buf;
    }

    _os_log_impl(&dword_2370FF000, v6, OS_LOG_TYPE_ERROR, v7, p_inEvent, 8u);
    goto LABEL_12;
  }
}

- (void)priv_eventListener:(void *)a3 event:(const AudioUnitEvent *)a4 value:(float)a5
{
  if (a4->mEventType == kAudioUnitEvent_PropertyChange)
  {
    if (a4->mArgument.mParameter.mParameterID == 36)
    {
      outData = 0uLL;
      ioDataSize = 16;
      if (!AudioUnitGetProperty(self->super.AU, 0x24u, 0, 0, &outData, &ioDataSize))
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __57__AUiPodEQViewController_priv_eventListener_event_value___block_invoke;
        block[3] = &unk_278A256A8;
        block[4] = self;
        v8 = outData;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AUiPodEQViewController;
    [AUAppleViewControllerBase priv_eventListener:sel_priv_eventListener_event_value_ event:a3 value:?];
  }
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a4, a5, a4];
  v6 = [AUAppleViewControllerBase getLocalizedString:v5];

  return v6;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v18 = *MEMORY[0x277D85DE8];
  outData = 0;
  ioDataSize = 8;
  if (AudioUnitGetProperty(self->super.AU, 0x18u, 0, 0, &outData, &ioDataSize))
  {
    v7 = 1;
  }

  else
  {
    v7 = outData == 0;
  }

  if (!v7)
  {
    if (CFArrayGetCount(outData) > a4)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(outData, a4);
      if (ValueAtIndex)
      {
        v9 = AudioUnitSetProperty(self->super.AU, 0x24u, 0, 0, ValueAtIndex, 0x10u);
        if (v9)
        {
          v10 = v9;
          v11 = +[AUAppleViewControllerBase customViewLogger];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v15 = a4;
            v16 = 1024;
            v17 = v10;
            _os_log_impl(&dword_2370FF000, v11, OS_LOG_TYPE_ERROR, "Unable to set preset %d: %d, [AUiPodEQViewController pickerView:didSelectRow:inComponent:]", buf, 0xEu);
          }
        }
      }
    }

    CFRelease(outData);
  }
}

@end