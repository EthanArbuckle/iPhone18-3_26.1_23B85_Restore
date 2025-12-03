@interface AVAudioSecureSession
- (BOOL)setCategory:(id)category mode:(id)mode options:(unint64_t)options error:(id *)error;
- (NSArray)availableCategories;
- (NSArray)availableModes;
@end

@implementation AVAudioSecureSession

- (NSArray)availableCategories
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"AVAudioSessionCategoryRecord";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)setCategory:(id)category mode:(id)mode options:(unint64_t)options error:(id *)error
{
  categoryCopy = category;
  modeCopy = mode;
  if (options)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [(AVAudioSession *)self->_innerSession setCategory:categoryCopy mode:modeCopy options:-1 error:error];
  }

  return v12;
}

- (NSArray)availableModes
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = @"AVAudioSessionModeDefault";
  v5[1] = @"AVAudioSessionModeSpeechRecognition";
  v5[2] = @"AVAudioSessionModeVoiceChat";
  v5[3] = @"AVAudioSessionModeVideoChat";
  v5[4] = @"AVAudioSessionModeGameChat";
  v5[5] = @"AVAudioSessionModeSoundRecognition";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end