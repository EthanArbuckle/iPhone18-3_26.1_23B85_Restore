@interface VNFgBgE5MLInstanceSegmenterThresholds
- (VNFgBgE5MLInstanceSegmenterThresholds)initWithRevision:(unint64_t)revision error:(id *)error;
- (id)initDefaultConfigRevision1;
@end

@implementation VNFgBgE5MLInstanceSegmenterThresholds

- (id)initDefaultConfigRevision1
{
  v3.receiver = self;
  v3.super_class = VNFgBgE5MLInstanceSegmenterThresholds;
  result = [(VNFgBgE5MLInstanceSegmenterThresholds *)&v3 init];
  if (result)
  {
    *(result + 8) = xmmword_1A6038EB0;
    *(result + 24) = xmmword_1A6038EC0;
    *(result + 10) = 981668463;
  }

  return result;
}

- (VNFgBgE5MLInstanceSegmenterThresholds)initWithRevision:(unint64_t)revision error:(id *)error
{
  selfCopy = self;
  if (revision == 1)
  {
    selfCopy = [(VNFgBgE5MLInstanceSegmenterThresholds *)self initDefaultConfigRevision1:1];
    errorCopy = selfCopy;
  }

  else
  {
    errorCopy = error;
    if (error)
    {
      v6 = +[VNFgBgInstanceSegmenterError genericErrorConfigDescription];
      errorCopy->super.isa = [VNFgBgInstanceSegmenterError errorWithCode:-4 description:v6];

      errorCopy = 0;
    }
  }

  return errorCopy;
}

@end