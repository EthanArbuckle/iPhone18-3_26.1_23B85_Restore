@interface SNDSPGraphUtilities
+ (id)actCatchingExceptions:(id)a3 error:(id *)a4;
+ (void)populateClientError:(id *)a3 withDSPGraphException:(void *)a4;
@end

@implementation SNDSPGraphUtilities

+ (id)actCatchingExceptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5[2](v5, a4);

  return v6;
}

+ (void)populateClientError:(id *)a3 withDSPGraphException:(void *)a4
{
  v6 = +[SNUtils isInternalBuild];
  v7 = MEMORY[0x1E696AEC0];
  if (*(a4 + 95) >= 0)
  {
    v8 = a4 + 72;
  }

  else
  {
    v8 = *(a4 + 9);
  }

  if (v6)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*a4 + 16))(a4)];
    if (*(a4 + 39) >= 0)
    {
      v11 = a4 + 16;
    }

    else
    {
      v11 = *(a4 + 2);
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    if (*(a4 + 71) >= 0)
    {
      v13 = a4 + 48;
    }

    else
    {
      v13 = *(a4 + 6);
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    v15 = [MEMORY[0x1E696AD98] numberWithInt:*(a4 + 10)];
    v16 = [v7 stringWithFormat:@"%@ (what: %@ file %@; function %@; line: %@)", v9, v10, v12, v14, v15];;
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*a4 + 16))(a4)];
    v16 = [v7 stringWithFormat:@"%@ (what: %@)", v9, v10];
  }

  [SNError populateClientError:a3 withCode:2 underlyingError:0 message:v16];
}

@end