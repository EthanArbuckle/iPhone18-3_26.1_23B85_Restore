@interface NSError(MKErrorInternal)
- (id)_mapkit_error;
@end

@implementation NSError(MKErrorInternal)

- (id)_mapkit_error
{
  v14[1] = *MEMORY[0x1E69E9840];
  domain = [self domain];
  v3 = GEOErrorDomain();
  v4 = [domain isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    selfCopy = self;
    goto LABEL_15;
  }

  code = [self code];
  if (code > -9)
  {
    switch(code)
    {
      case -8:
        v6 = 4;
        goto LABEL_14;
      case -7:
        v6 = 2;
        goto LABEL_14;
      case -3:
        v6 = 3;
        goto LABEL_14;
    }

LABEL_12:
    v6 = 1;
    goto LABEL_14;
  }

  if ((code + 402) >= 2 && code != -10)
  {
    goto LABEL_12;
  }

  v6 = 5;
LABEL_14:
  v8 = MEMORY[0x1E696ABC0];
  v9 = MKErrorDomain;
  v13 = @"MKErrorGEOError";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "code")}];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  selfCopy = [v8 errorWithDomain:v9 code:v6 userInfo:v11];

LABEL_15:

  return selfCopy;
}

@end