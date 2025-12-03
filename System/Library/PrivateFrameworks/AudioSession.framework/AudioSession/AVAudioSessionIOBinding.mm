@interface AVAudioSessionIOBinding
- (AVAudioSessionIOBinding)initWithSession:(id)session;
- (AVAudioSessionIOBinding)initWithSession:(id)session streams:(id)streams error:(id *)error;
- (id)description;
@end

@implementation AVAudioSessionIOBinding

- (AVAudioSessionIOBinding)initWithSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = AVAudioSessionIOBinding;
  v6 = [(AVAudioSessionIOBinding *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  session = [(AVAudioSessionIOBinding *)self session];
  v5 = [v3 stringWithFormat:@"<AVAudioSessionIOBinding@%p: session %@>", self, session];

  return v5;
}

- (AVAudioSessionIOBinding)initWithSession:(id)session streams:(id)streams error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  streamsCopy = streams;
  if (streamsCopy)
  {
    if (error)
    {
      v10 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      v15[0] = @"Bad parameter";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *error = [v10 errorWithDomain:@"AVAudioSession Error" code:-50 userInfo:v11];

      error = 0;
    }
  }

  else
  {
    error = [[AVAudioSessionIOBinding alloc] initWithSession:sessionCopy];
  }

  v12 = *MEMORY[0x1E69E9840];
  return error;
}

@end