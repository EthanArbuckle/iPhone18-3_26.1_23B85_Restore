@interface VMAudioRecorderImp
- (BOOL)_buildUndoStackCache;
- (BOOL)_discardAllEdits;
- (BOOL)_editRecording:(id)recording error:(id *)error;
- (BOOL)_restoreMarkedVersion;
- (BOOL)cutRecording:(id)recording error:(id *)error;
- (BOOL)monitorRecordingTime:(double *)time duration:(double *)duration;
- (BOOL)redoEditing;
- (BOOL)shouldWaitForAccessToken;
- (BOOL)startRecording;
- (BOOL)stopRecording;
- (BOOL)stopRecordingAtTime:(double)time;
- (BOOL)trimRecording:(id)recording error:(id *)error;
- (BOOL)undoEditing;
- (NSArray)versions;
- (VMAudioRecorderController)controller;
- (id)_initWithRecordingID:(id)d model:(id)model;
- (id)finishEditing:(BOOL)editing;
- (void)_clearUndoStackCache;
- (void)_commitEditing;
- (void)_discardRedoVersions;
- (void)dealloc;
- (void)markCurrentVersion;
- (void)setController:(id)controller;
- (void)setCurrentState:(int)state;
- (void)setCurrentTime:(double)time;
- (void)setRecordingError:(id)error;
- (void)setRecordingURL:(id)l;
@end

@implementation VMAudioRecorderImp

- (id)_initWithRecordingID:(id)d model:(id)model
{
  dCopy = d;
  modelCopy = model;
  v16.receiver = self;
  v16.super_class = VMAudioRecorderImp;
  v9 = [(VMAudioRecorderImp *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordingID, d);
    if (dCopy)
    {
      v11 = [modelCopy recordingWithUniqueID:dCopy];
      v12 = [v11 url];
      [(VMAudioRecorderImp *)v10 setRecordingURL:v12];
    }

    v10->_markedVersionIndex = -1;
    v13 = objc_alloc_init(_TtC10VoiceMemos18VMRecordingContext);
    context = v10->_context;
    v10->_context = v13;
  }

  return v10;
}

- (void)dealloc
{
  [(VMAudioRecorderImp *)self _commitEditing];
  v3 = +[RCSSavedRecordingService sharedService];
  v4 = self->_recordingAccessToken;
  if (v4)
  {
    v9 = 0;
    v5 = [v3 endAccessSessionWithToken:v4 error:&v9];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      v7 = OSLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001B7D78();
      }
    }
  }

  if (self->_recordingURL)
  {
    [v3 enableOrphanedFragmentCleanupForCompositionAVURL:?];
  }

  v8.receiver = self;
  v8.super_class = VMAudioRecorderImp;
  [(VMAudioRecorderImp *)&v8 dealloc];
}

- (void)setRecordingURL:(id)l
{
  lCopy = l;
  v6 = self->_recordingURL;
  if (([(NSURL *)v6 isEqual:lCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_recordingURL, l);
    v7 = [RCComposition compositionMetadataURLForComposedAVURL:lCopy];
    metadataURL = self->_metadataURL;
    self->_metadataURL = v7;

    v9 = +[RCSSavedRecordingService sharedService];
    v13 = 0;
    v10 = [v9 disableOrphanedFragmentCleanupForCompositionAVURL:lCopy error:&v13];
    v11 = v13;
    if ((v10 & 1) == 0)
    {
      v12 = OSLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "[VMAudioRecorderImp setRecordingURL:]";
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s -- disableError = %@", buf, 0x16u);
      }
    }

    if (v6)
    {
      [v9 enableOrphanedFragmentCleanupForCompositionAVURL:v6];
    }
  }
}

- (void)setController:(id)controller
{
  controllerCopy = controller;
  controllerObservance = self->_controllerObservance;
  if (controllerObservance)
  {
    [(RCKeyPathObservance *)controllerObservance remove];
    v6 = self->_controllerObservance;
    self->_controllerObservance = 0;
  }

  objc_storeWeak(&self->_controller, controllerCopy);
  if (controllerCopy)
  {
    [controllerCopy targetTime];
    self->_targetTime = v7;
    self->_targetTrackIndex = [controllerCopy targetTrackIndex];
    self->_overdubbing = [controllerCopy overdubbing];
    objc_initWeak(&location, self);
    v8 = [NSString stringWithUTF8String:"targetTime"];
    v17[0] = v8;
    v9 = [NSString stringWithUTF8String:"targetTrackIndex"];
    v17[1] = v9;
    v10 = [NSString stringWithUTF8String:"overdubbing"];
    v17[2] = v10;
    v11 = [NSString stringWithUTF8String:"silencing"];
    v17[3] = v11;
    v12 = [NSArray arrayWithObjects:v17 count:4];

    objc_copyWeak(&v15, &location);
    v13 = RCObserveChangesToKeyPaths();
    v14 = self->_controllerObservance;
    self->_controllerObservance = v13;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (BOOL)monitorRecordingTime:(double *)time duration:(double *)duration
{
  v11 = 0.0;
  currentDuration = self->_currentDuration;
  service = [(VMAudioRecorderImp *)self service];
  v8 = [service sampleRecordingTime:&v11];

  if (v8)
  {
    v9 = v11;
    *time = v11;
    if (v9 < currentDuration)
    {
      v9 = currentDuration;
    }

    *duration = v9;
  }

  return v8;
}

- (void)setCurrentState:(int)state
{
  self->_currentState = state;
  service = [(VMAudioRecorderImp *)self service];
  recordingError = [service recordingError];
  if (recordingError)
  {
    controller = [(VMAudioRecorderImp *)self controller];
    [controller setRecordingError:recordingError];

    [service setRecordingError:0];
  }

  mode = [service mode];
  v9 = state > 1 && mode == 2;
  if ([(VMAudioRecorderImp *)self recording]!= v9)
  {
    [(VMAudioRecorderImp *)self setRecording:v9];
    if (!state)
    {
      AudioServicesPlaySystemSoundWithCompletion(0x45Au, &stru_10028B3C0);
    }
  }
}

- (void)setCurrentTime:(double)time
{
  self->_currentTime = time;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained setCurrentTime:time];
}

- (void)setRecordingError:(id)error
{
  objc_storeStrong(&self->_recordingError, error);
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained setRecordingError:errorCopy];
}

- (BOOL)startRecording
{
  self->_stopRecordingTime = 0.0;
  service = [(VMAudioRecorderImp *)self service];
  v17 = 0;
  v4 = [service isRecordingEnabled:&v17];
  v5 = v17;
  if (v4)
  {
    if ([(VMAudioRecorderImp *)self currentState])
    {
      recordingID = OSLogForCategory();
      if (os_log_type_enabled(recordingID, OS_LOG_TYPE_ERROR))
      {
        sub_1001B7DEC(self, recordingID);
      }
    }

    else
    {
      [(VMAudioRecorderImp *)self setCurrentState:1];
      recordingID = [(VMAudioRecorderImp *)self recordingID];
      if (!self->_overdubbing)
      {
        v8 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
        deviceIsSupported = [v8 deviceIsSupported];

        if (deviceIsSupported)
        {
          v10 = self->_recordingURL;
          if (v10)
          {
            v11 = [AVURLAsset rc_transcriptionDataForURL:self->_recordingURL];
          }

          else
          {
            v11 = 0;
          }

          v12 = [[_TtC10VoiceMemos19RCLiveTranscription alloc] initWith:v11];
          liveTranscription = self->_liveTranscription;
          self->_liveTranscription = v12;
        }
      }

      if (recordingID)
      {
        [(VMAudioRecorderImp *)self _clearUndoStackCache];
        [(VMAudioRecorderImp *)self targetTime];
        [service replaceRecording:recordingID atTime:self controller:?];
      }

      else
      {
        self->_currentDuration = 0.0;
        [service startRecordingWithController:self];
      }
    }

    controller = [(VMAudioRecorderImp *)self controller];
    recordingError = [controller recordingError];
    v7 = recordingError == 0;
  }

  else
  {
    [(VMAudioRecorderImp *)self setRecordingError:v5];
    v7 = 0;
  }

  return v7;
}

- (BOOL)stopRecording
{
  context = [(VMAudioRecorderImp *)self context];
  [context setIsActionButtonInitiated:0];

  if (self->_stopRecordingTime == 0.0)
  {
    RCCurrentMediaTime();
  }

  return [(VMAudioRecorderImp *)self stopRecordingAtTime:?];
}

- (BOOL)stopRecordingAtTime:(double)time
{
  currentState = [(VMAudioRecorderImp *)self currentState];
  v6 = 1;
  if (currentState && currentState != 3)
  {
    service = [(VMAudioRecorderImp *)self service];
    v11 = 0;
    v6 = [service stopRecordingWithController:self atTime:&v11 error:time];
    v8 = v11;

    if ((v6 & 1) == 0)
    {
      controller = [(VMAudioRecorderImp *)self controller];
      [controller setRecordingError:v8];
    }
  }

  return v6;
}

- (BOOL)_editRecording:(id)recording error:(id *)error
{
  recordingCopy = recording;
  [(VMAudioRecorderImp *)self _discardRedoVersions];
  service = [(VMAudioRecorderImp *)self service];
  LOBYTE(error) = recordingCopy[2](recordingCopy, service, error);

  return error;
}

- (BOOL)trimRecording:(id)recording error:(id *)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006A864;
  v5[3] = &unk_10028B3E8;
  v5[4] = self;
  recordingCopy = recording;
  return [(VMAudioRecorderImp *)self _editRecording:v5 error:error];
}

- (BOOL)cutRecording:(id)recording error:(id *)error
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006A948;
  v5[3] = &unk_10028B3E8;
  v5[4] = self;
  recordingCopy = recording;
  return [(VMAudioRecorderImp *)self _editRecording:v5 error:error];
}

- (id)finishEditing:(BOOL)editing
{
  editingCopy = editing;
  service = [(VMAudioRecorderImp *)self service];
  recordingID = [(VMAudioRecorderImp *)self recordingID];
  v7 = [service finalizeRecording:recordingID controller:self saveAsNew:editingCopy];

  return v7;
}

- (NSArray)versions
{
  if (self->_metadataURL)
  {
    v3 = [NSFileVersion otherVersionsOfItemAtURL:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_buildUndoStackCache
{
  if (self->_undoStack)
  {
    return 1;
  }

  metadataURL = self->_metadataURL;
  if (!metadataURL)
  {
    return 1;
  }

  v5 = metadataURL;
  v6 = [NSFileVersion otherVersionsOfItemAtURL:v5];
  v7 = [NSMutableArray arrayWithArray:v6];
  undoStack = self->_undoStack;
  self->_undoStack = v7;

  v15 = 0;
  v9 = [NSFileVersion _addVersionOfItemAtURL:v5 withContentsOfURL:v5 options:0 temporaryStorageIdentifier:0 error:&v15];
  v10 = v15;
  v2 = v9 != 0;
  v11 = self->_undoStack;
  if (v9)
  {
    [(NSMutableArray *)v11 addObject:v9];
    v12 = [(NSMutableArray *)self->_undoStack count];

    self->_versionIndex = v12 - 1;
  }

  else
  {
    self->_undoStack = 0;

    *&self->_versionIndex = xmmword_1002403E0;
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    [WeakRetained setRecordingError:v10];
  }

  return v2;
}

- (BOOL)undoEditing
{
  v3 = self->_metadataURL;
  if (v3 && [(VMAudioRecorderImp *)self _buildUndoStackCache]&& (undoStack = self->_undoStack) != 0 && (versionIndex = self->_versionIndex) != 0)
  {
    self->_versionIndex = versionIndex - 1;
    v6 = [(NSMutableArray *)undoStack objectAtIndexedSubscript:?];
    v12 = 0;
    v7 = [v6 replaceItemAtURL:v3 options:0 error:&v12];
    v8 = v12;
    if (v7 && ([v7 isEqual:v3] & 1) != 0)
    {
      v9 = [(VMAudioService *)self->_service refreshRecording:self->_recordingID controller:self];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_controller);
      [WeakRetained setRecordingError:v8];

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)redoEditing
{
  undoStack = self->_undoStack;
  if (!undoStack)
  {
    return 0;
  }

  versionIndex = self->_versionIndex;
  if (versionIndex >= [(NSMutableArray *)undoStack count]- 1)
  {
    return 0;
  }

  v5 = self->_metadataURL;
  if (v5)
  {
    v6 = self->_undoStack;
    ++self->_versionIndex;
    v7 = [(NSMutableArray *)v6 objectAtIndexedSubscript:?];
    v13 = 0;
    v8 = [v7 replaceItemAtURL:v5 options:0 error:&v13];
    v9 = v13;
    if (v8 && ([v8 isEqual:v5] & 1) != 0)
    {
      v10 = [(VMAudioService *)self->_service refreshRecording:self->_recordingID controller:self];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_controller);
      [WeakRetained setRecordingError:v9];

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_discardAllEdits
{
  v3 = self->_metadataURL;
  if (v3)
  {
    v4 = [NSFileVersion otherVersionsOfItemAtURL:v3];
    firstObject = [v4 firstObject];
    v6 = firstObject;
    if (firstObject)
    {
      v13 = 0;
      v7 = [firstObject replaceItemAtURL:v3 options:1 error:&v13];
      v8 = v13;
      if (v7 && [v7 isEqual:v3])
      {
        [(VMAudioRecorderImp *)self _commitEditing];
        undoStack = self->_undoStack;
        self->_undoStack = 0;

        *&self->_versionIndex = xmmword_1002403E0;
        [(VMAudioService *)self->_service refreshRecording:self->_recordingID controller:self];
        v10 = 1;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_controller);
        [WeakRetained setRecordingError:v8];

        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)markCurrentVersion
{
  if (self->_undoStack || !self->_metadataURL)
  {
    self->_markedVersionIndex = self->_versionIndex;
  }

  else
  {
    v4 = [NSFileVersion otherVersionsOfItemAtURL:?];
    v3 = [v4 count];
    self->_versionIndex = v3;
    self->_markedVersionIndex = v3;
  }
}

- (BOOL)_restoreMarkedVersion
{
  v3 = self->_metadataURL;
  if (v3 && (self->_markedVersionIndex & 0x8000000000000000) == 0 && [(VMAudioRecorderImp *)self _buildUndoStackCache]&& (undoStack = self->_undoStack) != 0)
  {
    self->_versionIndex = self->_markedVersionIndex;
    self->_markedVersionIndex = -1;
    v5 = [(NSMutableArray *)undoStack objectAtIndexedSubscript:?];
    v11 = 0;
    v6 = [v5 replaceItemAtURL:v3 options:0 error:&v11];
    v7 = v11;
    if (v6 && ([v6 isEqual:v3] & 1) != 0)
    {
      v8 = [(VMAudioService *)self->_service refreshRecording:self->_recordingID controller:self];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_controller);
      [WeakRetained setRecordingError:v7];

      [(VMAudioRecorderImp *)self _discardRedoVersions];
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_discardRedoVersions
{
  undoStack = self->_undoStack;
  if (undoStack)
  {
    v4 = self->_versionIndex + 1;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(NSMutableArray *)self->_undoStack subarrayWithRange:v4, [(NSMutableArray *)undoStack count]- v4];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          v15 = 0;
          v11 = [v10 removeAndReturnError:&v15];
          v12 = v15;
          if ((v11 & 1) == 0)
          {
            v13 = OSLogForCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v21 = "[VMAudioRecorderImp _discardRedoVersions]";
              v22 = 2112;
              v23 = v12;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s -- removeError = %@", buf, 0x16u);
            }
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v7);
    }

    v14 = self->_undoStack;
    self->_undoStack = 0;
  }
}

- (void)_clearUndoStackCache
{
  undoStack = self->_undoStack;
  if (undoStack)
  {
    v4 = [(NSMutableArray *)undoStack objectAtIndexedSubscript:self->_versionIndex];
    v9 = 0;
    v5 = [v4 removeAndReturnError:&v9];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      v7 = OSLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001B7E8C();
      }
    }

    [(VMAudioRecorderImp *)self _discardRedoVersions];
    v8 = self->_undoStack;
    self->_undoStack = 0;

    self->_versionIndex = 0;
  }
}

- (void)_commitEditing
{
  v2 = self->_metadataURL;
  if (v2)
  {
    v6 = 0;
    v3 = [NSFileVersion removeOtherVersionsOfItemAtURL:v2 error:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v5 = OSLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1001B7F00();
      }
    }
  }
}

- (BOOL)shouldWaitForAccessToken
{
  v3 = +[VMAudioService sharedInstance];
  LOBYTE(self) = [v3 shouldWaitForAccessTokenBeforeStartingRecording:self];

  return self;
}

- (VMAudioRecorderController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end