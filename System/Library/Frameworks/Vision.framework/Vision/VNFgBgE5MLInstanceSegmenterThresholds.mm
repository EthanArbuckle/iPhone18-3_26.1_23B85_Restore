@interface VNFgBgE5MLInstanceSegmenterThresholds
- (VNFgBgE5MLInstanceSegmenterThresholds)initWithRevision:(unint64_t)a3 error:(id *)a4;
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

- (VNFgBgE5MLInstanceSegmenterThresholds)initWithRevision:(unint64_t)a3 error:(id *)a4
{
  v4 = self;
  if (a3 == 1)
  {
    v4 = [(VNFgBgE5MLInstanceSegmenterThresholds *)self initDefaultConfigRevision1:1];
    v5 = v4;
  }

  else
  {
    v5 = a4;
    if (a4)
    {
      v6 = +[VNFgBgInstanceSegmenterError genericErrorConfigDescription];
      v5->super.isa = [VNFgBgInstanceSegmenterError errorWithCode:-4 description:v6];

      v5 = 0;
    }
  }

  return v5;
}

@end