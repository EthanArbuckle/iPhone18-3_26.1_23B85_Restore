@interface LAExtractablePassword
- (BOOL)stashPassword:(id)password error:(id *)error;
- (void)extractPasswordWithCompletion:(id)completion;
- (void)stashPassword:(id)password completion:(id)completion;
@end

@implementation LAExtractablePassword

- (void)extractPasswordWithCompletion:(id)completion
{
  password = self->_password;
  v7 = 0;
  completionCopy = completion;
  v5 = [(LACSExtractablePassword *)password data:&v7];
  v6 = v7;
  completionCopy[2](completionCopy, v5, v6);
}

- (BOOL)stashPassword:(id)password error:(id *)error
{
  passwordCopy = password;
  v7 = [passwordCopy length];
  v8 = *MEMORY[0x1E69AD0C0];
  if (v7 >= *MEMORY[0x1E69AD0C0] && (v9 = [passwordCopy length], v9 <= *MEMORY[0x1E69AD0B8]))
  {
    v13 = [objc_alloc(MEMORY[0x1E69AD2D8]) initWithData:passwordCopy error:error];
    password = self->_password;
    self->_password = v13;

    LOBYTE(error) = self->_password != 0;
  }

  else if (error)
  {
    v10 = MEMORY[0x1E69AD268];
    v11 = *MEMORY[0x1E69AD120];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The provided data should have between %d and %d bytes", v8, *MEMORY[0x1E69AD0B8]];
    *error = [v10 errorWithCode:v11 debugDescription:v12];

    LOBYTE(error) = 0;
  }

  return error;
}

- (void)stashPassword:(id)password completion:(id)completion
{
  v8 = 0;
  completionCopy = completion;
  [(LAExtractablePassword *)self stashPassword:password error:&v8];
  v7 = v8;
  completionCopy[2](completionCopy, v7);
}

@end