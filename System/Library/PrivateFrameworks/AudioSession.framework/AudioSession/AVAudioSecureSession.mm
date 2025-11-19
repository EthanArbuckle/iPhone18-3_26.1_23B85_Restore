@interface AVAudioSecureSession
- (BOOL)setCategory:(id)a3 mode:(id)a4 options:(unint64_t)a5 error:(id *)a6;
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

- (BOOL)setCategory:(id)a3 mode:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  if (a5)
  {
    if (a6)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
      *a6 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [(AVAudioSession *)self->_innerSession setCategory:v10 mode:v11 options:-1 error:a6];
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