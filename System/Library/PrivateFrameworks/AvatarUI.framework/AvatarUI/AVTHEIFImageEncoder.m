@interface AVTHEIFImageEncoder
+ (id)HEICSSequenceEncoder;
+ (id)defaultHEICEncoder;
- (id)dataFromImage:(id)a3;
- (id)fileExtension;
- (id)imageFromData:(id)a3 error:(id *)a4;
- (id)imageFromURL:(id)a3 error:(id *)a4;
- (id)initUsingHeicsSequence:(BOOL)a3;
@end

@implementation AVTHEIFImageEncoder

+ (id)HEICSSequenceEncoder
{
  v2 = [[a1 alloc] initUsingHeicsSequence:1];

  return v2;
}

+ (id)defaultHEICEncoder
{
  v2 = [[a1 alloc] initUsingHeicsSequence:0];

  return v2;
}

- (id)initUsingHeicsSequence:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AVTHEIFImageEncoder;
  result = [(AVTHEIFImageEncoder *)&v5 init];
  if (result)
  {
    *(result + 8) = a3;
  }

  return result;
}

- (id)imageFromURL:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695DEF0];
  v7 = a3;
  v8 = [[v6 alloc] initWithContentsOfURL:v7 options:1 error:a4];

  if (v8)
  {
    v9 = [(AVTHEIFImageEncoder *)self imageFromData:v8 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)imageFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(AVTHEIFImageEncoder *)self useHEICSSequence])
  {
    [MEMORY[0x1E69DCAB8] animatedImageWithHEICSRepresentation:v6];
  }

  else
  {
    [MEMORY[0x1E69DCAB8] animatedImageWithHEICRepresentation:v6];
  }
  v7 = ;

  if (a4 && !v7)
  {
    *a4 = [MEMORY[0x1E698E338] errorWithCode:604 userInfo:0];
  }

  return v7;
}

- (id)dataFromImage:(id)a3
{
  v4 = a3;
  if ([(AVTHEIFImageEncoder *)self useHEICSSequence])
  {
    [v4 HEICSRepresentation];
  }

  else
  {
    [v4 HEICRepresentation];
  }
  v5 = ;

  return v5;
}

- (id)fileExtension
{
  if ([(AVTHEIFImageEncoder *)self useHEICSSequence])
  {
    v2 = @"heics";
  }

  else
  {
    v2 = @"heic";
  }

  return v2;
}

@end