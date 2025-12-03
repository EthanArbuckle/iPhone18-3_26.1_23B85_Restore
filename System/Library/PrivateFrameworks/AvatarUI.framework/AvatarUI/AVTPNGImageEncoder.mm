@interface AVTPNGImageEncoder
- (id)imageFromData:(id)data error:(id *)error;
- (id)imageFromURL:(id)l error:(id *)error;
@end

@implementation AVTPNGImageEncoder

- (id)imageFromURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x1E695DEF0];
  lCopy = l;
  v8 = [[v6 alloc] initWithContentsOfURL:lCopy options:1 error:error];

  if (v8)
  {
    v9 = [(AVTPNGImageEncoder *)self imageFromData:v8 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)imageFromData:(id)data error:(id *)error
{
  v5 = [MEMORY[0x1E69DCAB8] imageWithData:data];
  v6 = v5;
  if (error && !v5)
  {
    *error = [MEMORY[0x1E698E338] errorWithCode:604 userInfo:0];
  }

  return v6;
}

@end