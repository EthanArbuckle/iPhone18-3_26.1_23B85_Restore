@interface _AFSpeechParametersMutation
- (BOOL)getCensorSpeech;
- (BOOL)getDetectUtterances;
- (BOOL)getFarField;
- (BOOL)getNarrowband;
- (BOOL)getSecureOfflineOnly;
- (BOOL)getShouldStoreAudioOnDevice;
- (_AFSpeechParametersMutation)initWithBase:(id)base;
- (double)getMaximumRecognitionDuration;
- (id)getApplicationName;
- (id)getInputOrigin;
- (id)getInteractionIdentifier;
- (id)getJitGrammar;
- (id)getLanguage;
- (id)getLocation;
- (id)getLoggingContext;
- (id)getModelOverrideURL;
- (id)getOriginalAudioFileURL;
- (id)getOverrides;
- (id)getProfile;
- (id)getTask;
@end

@implementation _AFSpeechParametersMutation

- (id)getJitGrammar
{
  if ((*(&self->_mutationFlags + 2) & 8) != 0)
  {
    jitGrammar = self->_jitGrammar;
  }

  else
  {
    jitGrammar = [(AFSpeechParameters *)self->_base jitGrammar];
  }

  return jitGrammar;
}

- (id)getLocation
{
  if ((*(&self->_mutationFlags + 2) & 4) != 0)
  {
    location = self->_location;
  }

  else
  {
    location = [(AFSpeechParameters *)self->_base location];
  }

  return location;
}

- (id)getInputOrigin
{
  if ((*(&self->_mutationFlags + 2) & 2) != 0)
  {
    inputOrigin = self->_inputOrigin;
  }

  else
  {
    inputOrigin = [(AFSpeechParameters *)self->_base inputOrigin];
  }

  return inputOrigin;
}

- (double)getMaximumRecognitionDuration
{
  if (*(&self->_mutationFlags + 2))
  {
    return self->_maximumRecognitionDuration;
  }

  [(AFSpeechParameters *)self->_base maximumRecognitionDuration];
  return result;
}

- (BOOL)getShouldStoreAudioOnDevice
{
  if ((*(&self->_mutationFlags + 1) & 0x80) != 0)
  {
    return self->_shouldStoreAudioOnDevice;
  }

  else
  {
    return [(AFSpeechParameters *)self->_base shouldStoreAudioOnDevice];
  }
}

- (BOOL)getSecureOfflineOnly
{
  if ((*(&self->_mutationFlags + 1) & 0x40) != 0)
  {
    return self->_secureOfflineOnly;
  }

  else
  {
    return [(AFSpeechParameters *)self->_base secureOfflineOnly];
  }
}

- (BOOL)getFarField
{
  if ((*(&self->_mutationFlags + 1) & 0x20) != 0)
  {
    return self->_farField;
  }

  else
  {
    return [(AFSpeechParameters *)self->_base farField];
  }
}

- (BOOL)getCensorSpeech
{
  if ((*(&self->_mutationFlags + 1) & 0x10) != 0)
  {
    return self->_censorSpeech;
  }

  else
  {
    return [(AFSpeechParameters *)self->_base censorSpeech];
  }
}

- (BOOL)getDetectUtterances
{
  if ((*(&self->_mutationFlags + 1) & 8) != 0)
  {
    return self->_detectUtterances;
  }

  else
  {
    return [(AFSpeechParameters *)self->_base detectUtterances];
  }
}

- (BOOL)getNarrowband
{
  if ((*(&self->_mutationFlags + 1) & 4) != 0)
  {
    return self->_narrowband;
  }

  else
  {
    return [(AFSpeechParameters *)self->_base narrowband];
  }
}

- (id)getOriginalAudioFileURL
{
  if ((*(&self->_mutationFlags + 1) & 2) != 0)
  {
    originalAudioFileURL = self->_originalAudioFileURL;
  }

  else
  {
    originalAudioFileURL = [(AFSpeechParameters *)self->_base originalAudioFileURL];
  }

  return originalAudioFileURL;
}

- (id)getModelOverrideURL
{
  if (*(&self->_mutationFlags + 1))
  {
    modelOverrideURL = self->_modelOverrideURL;
  }

  else
  {
    modelOverrideURL = [(AFSpeechParameters *)self->_base modelOverrideURL];
  }

  return modelOverrideURL;
}

- (id)getOverrides
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    overrides = self->_overrides;
  }

  else
  {
    overrides = [(AFSpeechParameters *)self->_base overrides];
  }

  return overrides;
}

- (id)getProfile
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    profile = self->_profile;
  }

  else
  {
    profile = [(AFSpeechParameters *)self->_base profile];
  }

  return profile;
}

- (id)getApplicationName
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    applicationName = self->_applicationName;
  }

  else
  {
    applicationName = [(AFSpeechParameters *)self->_base applicationName];
  }

  return applicationName;
}

- (id)getLoggingContext
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    loggingContext = self->_loggingContext;
  }

  else
  {
    loggingContext = [(AFSpeechParameters *)self->_base loggingContext];
  }

  return loggingContext;
}

- (id)getTask
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    task = self->_task;
  }

  else
  {
    task = [(AFSpeechParameters *)self->_base task];
  }

  return task;
}

- (id)getInteractionIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    interactionIdentifier = self->_interactionIdentifier;
  }

  else
  {
    interactionIdentifier = [(AFSpeechParameters *)self->_base interactionIdentifier];
  }

  return interactionIdentifier;
}

- (id)getLanguage
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    language = self->_language;
  }

  else
  {
    language = [(AFSpeechParameters *)self->_base language];
  }

  return language;
}

- (_AFSpeechParametersMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFSpeechParametersMutation;
  v6 = [(_AFSpeechParametersMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end