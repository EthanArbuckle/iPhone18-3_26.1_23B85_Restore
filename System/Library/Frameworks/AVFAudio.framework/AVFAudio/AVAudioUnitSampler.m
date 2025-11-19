@interface AVAudioUnitSampler
- (AVAudioUnitSampler)init;
- (BOOL)loadAudioFilesAtURLs:(NSArray *)audioFiles error:(NSError *)outError;
- (BOOL)loadInstrumentAtURL:(NSURL *)instrumentURL error:(NSError *)outError;
- (BOOL)loadSoundBankInstrumentAtURL:(NSURL *)bankURL program:(uint8_t)program bankMSB:(uint8_t)bankMSB bankLSB:(uint8_t)bankLSB error:(NSError *)outError;
- (float)globalTuning;
- (float)overallGain;
- (float)stereoPan;
- (void)setGlobalTuning:(float)globalTuning;
@end

@implementation AVAudioUnitSampler

- (void)setGlobalTuning:(float)globalTuning
{
  v4 = globalTuning / 100.0;
  v5 = fmod(globalTuning, 100.0);
  (*(*self->super.super.super._impl + 128))(self->super.super.super._impl, 901, 0, 0, v4);
  v7 = *(*self->super.super.super._impl + 128);

  v6.n128_f32[0] = v5;
  v7(v6);
}

- (float)globalTuning
{
  v4 = 0;
  (*(*self->super.super.super._impl + 136))(self->super.super.super._impl, 902, 0, 0, &v4 + 4);
  (*(*self->super.super.super._impl + 136))(self->super.super.super._impl, 901, 0, 0, &v4);
  return *(&v4 + 1) + (*&v4 * 100.0);
}

- (float)overallGain
{
  v3 = 0.0;
  (*(*self->super.super.super._impl + 136))(self->super.super.super._impl, 900, 0, 0, &v3);
  return v3;
}

- (float)stereoPan
{
  v3 = 0.0;
  (*(*self->super.super.super._impl + 136))(self->super.super.super._impl, 903, 0, 0, &v3);
  return v3;
}

- (BOOL)loadAudioFilesAtURLs:(NSArray *)audioFiles error:(NSError *)outError
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v11, self->super.super.super._impl);
  impl = self->super.super.super._impl;
  v15 = audioFiles;
  v8 = (*(*impl + 160))(impl, 4101, 0, 0, &v15, 8);
  v9 = v8;
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioUnitSampler.mm", 167, "[AVAudioUnitSampler loadAudioFilesAtURLs:error:]", "error", v8, outError);
  if (v14 == 1)
  {
    std::recursive_mutex::unlock(v13);
  }

  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  return v9 == 0;
}

- (BOOL)loadSoundBankInstrumentAtURL:(NSURL *)bankURL program:(uint8_t)program bankMSB:(uint8_t)bankMSB bankLSB:(uint8_t)bankLSB error:(NSError *)outError
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v16, self->super.super.super._impl);
  impl = self->super.super.super._impl;
  v21 = 1;
  v23 = bankLSB;
  v22 = bankMSB;
  v20 = bankURL;
  v24 = program;
  v14 = (*(*impl + 160))(impl, 4102, 0, 0, &v20, 16);
  if (!v14)
  {
    AVAudioUnitSamplerImpl::SetSoundBankURL(impl, bankURL);
  }

  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioUnitSampler.mm", 157, "[AVAudioUnitSampler loadSoundBankInstrumentAtURL:program:bankMSB:bankLSB:error:]", "error", v14, outError);
  if (v19 == 1)
  {
    std::recursive_mutex::unlock(v18);
  }

  if (v17 == 1)
  {
    std::recursive_mutex::unlock(v16);
  }

  return v14 == 0;
}

- (BOOL)loadInstrumentAtURL:(NSURL *)instrumentURL error:(NSError *)outError
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v13, self->super.super.super._impl);
  if ([(NSString *)[(NSURL *)instrumentURL pathExtension] caseInsensitiveCompare:@"aupreset"])
  {
    if ([(NSString *)[(NSURL *)instrumentURL pathExtension] caseInsensitiveCompare:@"exs"])
    {
      if ([(NSString *)[(NSURL *)instrumentURL pathExtension] caseInsensitiveCompare:@"dls"]&& [(NSString *)[(NSURL *)instrumentURL pathExtension] caseInsensitiveCompare:@"sf2"])
      {
        LODWORD(v7) = -50;
        goto LABEL_16;
      }

      v8 = 1;
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 4;
    }
  }

  else
  {
    v8 = 0;
    v9 = 2;
  }

  impl = self->super.super.super._impl;
  (*(*impl + 32))(impl);
  v18 = v9;
  v17 = instrumentURL;
  v19 = 121;
  v20 = 0;
  v7 = (*(*impl + 160))(impl, 4102, 0, 0, &v17, 16);
  if (!v7)
  {
    if (v8)
    {
      AVAudioUnitSamplerImpl::SetSoundBankURL(impl, instrumentURL);
    }

    else
    {
      v11 = *(impl + 23);
      if (v11)
      {
        CFRelease(v11);
        *(impl + 23) = 0;
      }

      *(impl + 176) = 0;
    }
  }

  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioUnitSampler.mm", 144, "[AVAudioUnitSampler loadInstrumentAtURL:error:]", "error", v7, outError);
LABEL_16:
  if (v16 == 1)
  {
    std::recursive_mutex::unlock(v15);
  }

  if (v14 == 1)
  {
    std::recursive_mutex::unlock(v13);
  }

  return v7 == 0;
}

- (AVAudioUnitSampler)init
{
  strcpy(v3, "umuapmaslppa");
  v4 = 0;
  v5 = 0;
  v6 = 0;
  return [(AVAudioUnitSampler *)self initWithAudioComponentDescription:v3];
}

@end