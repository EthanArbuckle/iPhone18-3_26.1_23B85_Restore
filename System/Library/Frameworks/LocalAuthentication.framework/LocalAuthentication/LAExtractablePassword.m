@interface LAExtractablePassword
- (BOOL)stashPassword:(id)a3 error:(id *)a4;
- (void)extractPasswordWithCompletion:(id)a3;
- (void)stashPassword:(id)a3 completion:(id)a4;
@end

@implementation LAExtractablePassword

- (void)extractPasswordWithCompletion:(id)a3
{
  password = self->_password;
  v7 = 0;
  v4 = a3;
  v5 = [(LACSExtractablePassword *)password data:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (BOOL)stashPassword:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 length];
  v8 = *MEMORY[0x1E69AD0C0];
  if (v7 >= *MEMORY[0x1E69AD0C0] && (v9 = [v6 length], v9 <= *MEMORY[0x1E69AD0B8]))
  {
    v13 = [objc_alloc(MEMORY[0x1E69AD2D8]) initWithData:v6 error:a4];
    password = self->_password;
    self->_password = v13;

    LOBYTE(a4) = self->_password != 0;
  }

  else if (a4)
  {
    v10 = MEMORY[0x1E69AD268];
    v11 = *MEMORY[0x1E69AD120];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The provided data should have between %d and %d bytes", v8, *MEMORY[0x1E69AD0B8]];
    *a4 = [v10 errorWithCode:v11 debugDescription:v12];

    LOBYTE(a4) = 0;
  }

  return a4;
}

- (void)stashPassword:(id)a3 completion:(id)a4
{
  v8 = 0;
  v6 = a4;
  [(LAExtractablePassword *)self stashPassword:a3 error:&v8];
  v7 = v8;
  v6[2](v6, v7);
}

@end