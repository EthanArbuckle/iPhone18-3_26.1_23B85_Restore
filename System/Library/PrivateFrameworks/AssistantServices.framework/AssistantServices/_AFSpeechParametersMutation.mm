@interface _AFSpeechParametersMutation
- (BOOL)getCensorSpeech;
- (BOOL)getDetectUtterances;
- (BOOL)getFarField;
- (BOOL)getNarrowband;
- (BOOL)getSecureOfflineOnly;
- (BOOL)getShouldStoreAudioOnDevice;
- (_AFSpeechParametersMutation)initWithBase:(id)a3;
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
    v2 = self->_jitGrammar;
  }

  else
  {
    v2 = [(AFSpeechParameters *)self->_base jitGrammar];
  }

  return v2;
}

- (id)getLocation
{
  if ((*(&self->_mutationFlags + 2) & 4) != 0)
  {
    v2 = self->_location;
  }

  else
  {
    v2 = [(AFSpeechParameters *)self->_base location];
  }

  return v2;
}

- (id)getInputOrigin
{
  if ((*(&self->_mutationFlags + 2) & 2) != 0)
  {
    v2 = self->_inputOrigin;
  }

  else
  {
    v2 = [(AFSpeechParameters *)self->_base inputOrigin];
  }

  return v2;
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
    v2 = self->_originalAudioFileURL;
  }

  else
  {
    v2 = [(AFSpeechParameters *)self->_base originalAudioFileURL];
  }

  return v2;
}

- (id)getModelOverrideURL
{
  if (*(&self->_mutationFlags + 1))
  {
    v2 = self->_modelOverrideURL;
  }

  else
  {
    v2 = [(AFSpeechParameters *)self->_base modelOverrideURL];
  }

  return v2;
}

- (id)getOverrides
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_overrides;
  }

  else
  {
    v2 = [(AFSpeechParameters *)self->_base overrides];
  }

  return v2;
}

- (id)getProfile
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_profile;
  }

  else
  {
    v2 = [(AFSpeechParameters *)self->_base profile];
  }

  return v2;
}

- (id)getApplicationName
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_applicationName;
  }

  else
  {
    v2 = [(AFSpeechParameters *)self->_base applicationName];
  }

  return v2;
}

- (id)getLoggingContext
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_loggingContext;
  }

  else
  {
    v2 = [(AFSpeechParameters *)self->_base loggingContext];
  }

  return v2;
}

- (id)getTask
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_task;
  }

  else
  {
    v2 = [(AFSpeechParameters *)self->_base task];
  }

  return v2;
}

- (id)getInteractionIdentifier
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_interactionIdentifier;
  }

  else
  {
    v2 = [(AFSpeechParameters *)self->_base interactionIdentifier];
  }

  return v2;
}

- (id)getLanguage
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_language;
  }

  else
  {
    v2 = [(AFSpeechParameters *)self->_base language];
  }

  return v2;
}

- (_AFSpeechParametersMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFSpeechParametersMutation;
  v6 = [(_AFSpeechParametersMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end