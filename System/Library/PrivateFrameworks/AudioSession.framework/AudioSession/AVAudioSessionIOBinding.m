@interface AVAudioSessionIOBinding
- (AVAudioSessionIOBinding)initWithSession:(id)a3;
- (AVAudioSessionIOBinding)initWithSession:(id)a3 streams:(id)a4 error:(id *)a5;
- (id)description;
@end

@implementation AVAudioSessionIOBinding

- (AVAudioSessionIOBinding)initWithSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVAudioSessionIOBinding;
  v6 = [(AVAudioSessionIOBinding *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AVAudioSessionIOBinding *)self session];
  v5 = [v3 stringWithFormat:@"<AVAudioSessionIOBinding@%p: session %@>", self, v4];

  return v5;
}

- (AVAudioSessionIOBinding)initWithSession:(id)a3 streams:(id)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (a5)
    {
      v10 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      v15[0] = @"Bad parameter";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *a5 = [v10 errorWithDomain:@"AVAudioSession Error" code:-50 userInfo:v11];

      a5 = 0;
    }
  }

  else
  {
    a5 = [[AVAudioSessionIOBinding alloc] initWithSession:v8];
  }

  v12 = *MEMORY[0x1E69E9840];
  return a5;
}

@end