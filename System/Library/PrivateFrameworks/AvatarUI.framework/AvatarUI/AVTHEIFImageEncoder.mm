@interface AVTHEIFImageEncoder
+ (id)HEICSSequenceEncoder;
+ (id)defaultHEICEncoder;
- (id)dataFromImage:(id)image;
- (id)fileExtension;
- (id)imageFromData:(id)data error:(id *)error;
- (id)imageFromURL:(id)l error:(id *)error;
- (id)initUsingHeicsSequence:(BOOL)sequence;
@end

@implementation AVTHEIFImageEncoder

+ (id)HEICSSequenceEncoder
{
  v2 = [[self alloc] initUsingHeicsSequence:1];

  return v2;
}

+ (id)defaultHEICEncoder
{
  v2 = [[self alloc] initUsingHeicsSequence:0];

  return v2;
}

- (id)initUsingHeicsSequence:(BOOL)sequence
{
  v5.receiver = self;
  v5.super_class = AVTHEIFImageEncoder;
  result = [(AVTHEIFImageEncoder *)&v5 init];
  if (result)
  {
    *(result + 8) = sequence;
  }

  return result;
}

- (id)imageFromURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x1E695DEF0];
  lCopy = l;
  v8 = [[v6 alloc] initWithContentsOfURL:lCopy options:1 error:error];

  if (v8)
  {
    v9 = [(AVTHEIFImageEncoder *)self imageFromData:v8 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)imageFromData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([(AVTHEIFImageEncoder *)self useHEICSSequence])
  {
    [MEMORY[0x1E69DCAB8] animatedImageWithHEICSRepresentation:dataCopy];
  }

  else
  {
    [MEMORY[0x1E69DCAB8] animatedImageWithHEICRepresentation:dataCopy];
  }
  v7 = ;

  if (error && !v7)
  {
    *error = [MEMORY[0x1E698E338] errorWithCode:604 userInfo:0];
  }

  return v7;
}

- (id)dataFromImage:(id)image
{
  imageCopy = image;
  if ([(AVTHEIFImageEncoder *)self useHEICSSequence])
  {
    [imageCopy HEICSRepresentation];
  }

  else
  {
    [imageCopy HEICRepresentation];
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