@interface NSBundle(AVAdditions)
- (id)URLForMovieResource:()AVAdditions;
- (id)imageForResource:()AVAdditions size:;
@end

@implementation NSBundle(AVAdditions)

- (id)URLForMovieResource:()AVAdditions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    pathExtension = [v4 pathExtension];
    if ([pathExtension length])
    {
      stringByDeletingPathExtension = [v5 stringByDeletingPathExtension];

      v5 = stringByDeletingPathExtension;
    }

    v8 = [self URLForResource:v5 withExtension:pathExtension];
    if (!v8)
    {
      if ([pathExtension length])
      {
        v8 = 0;
      }

      else
      {
        v8 = [self URLForResource:v5 withExtension:@"mov"];
      }
    }

    v9 = 0;
    if ([v8 checkResourceIsReachableAndReturnError:0])
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)imageForResource:()AVAdditions size:
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = MEMORY[0x1E695DEF0];
  v5 = a3;
  v6 = AVBundle();
  v7 = [v6 URLForResource:v5 withExtension:0];

  v8 = [v4 dataWithContentsOfURL:v7];
  v9 = [v3 imageWithData:v8];

  return v9;
}

@end