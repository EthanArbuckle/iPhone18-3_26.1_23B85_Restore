@interface AVTPNGImageEncoder
- (id)imageFromData:(id)a3 error:(id *)a4;
- (id)imageFromURL:(id)a3 error:(id *)a4;
@end

@implementation AVTPNGImageEncoder

- (id)imageFromURL:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695DEF0];
  v7 = a3;
  v8 = [[v6 alloc] initWithContentsOfURL:v7 options:1 error:a4];

  if (v8)
  {
    v9 = [(AVTPNGImageEncoder *)self imageFromData:v8 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)imageFromData:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E69DCAB8] imageWithData:a3];
  v6 = v5;
  if (a4 && !v5)
  {
    *a4 = [MEMORY[0x1E698E338] errorWithCode:604 userInfo:0];
  }

  return v6;
}

@end