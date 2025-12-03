@interface SNDSPGraphUtilities
+ (id)actCatchingExceptions:(id)exceptions error:(id *)error;
+ (void)populateClientError:(id *)error withDSPGraphException:(void *)exception;
@end

@implementation SNDSPGraphUtilities

+ (id)actCatchingExceptions:(id)exceptions error:(id *)error
{
  exceptionsCopy = exceptions;
  v6 = exceptionsCopy[2](exceptionsCopy, error);

  return v6;
}

+ (void)populateClientError:(id *)error withDSPGraphException:(void *)exception
{
  v6 = +[SNUtils isInternalBuild];
  v7 = MEMORY[0x1E696AEC0];
  if (*(exception + 95) >= 0)
  {
    v8 = exception + 72;
  }

  else
  {
    v8 = *(exception + 9);
  }

  if (v6)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*exception + 16))(exception)];
    if (*(exception + 39) >= 0)
    {
      v11 = exception + 16;
    }

    else
    {
      v11 = *(exception + 2);
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    if (*(exception + 71) >= 0)
    {
      v13 = exception + 48;
    }

    else
    {
      v13 = *(exception + 6);
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    v15 = [MEMORY[0x1E696AD98] numberWithInt:*(exception + 10)];
    v16 = [v7 stringWithFormat:@"%@ (what: %@ file %@; function %@; line: %@)", v9, v10, v12, v14, v15];;
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*exception + 16))(exception)];
    v16 = [v7 stringWithFormat:@"%@ (what: %@)", v9, v10];
  }

  [SNError populateClientError:error withCode:2 underlyingError:0 message:v16];
}

@end