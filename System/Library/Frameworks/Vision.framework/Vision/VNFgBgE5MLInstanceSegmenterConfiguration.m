@interface VNFgBgE5MLInstanceSegmenterConfiguration
+ (id)configurationForRevision:(unint64_t)a3 error:(id *)a4;
- (CGSize)inputSize;
- (id)initDefaultConfig;
@end

@implementation VNFgBgE5MLInstanceSegmenterConfiguration

- (CGSize)inputSize
{
  objc_copyStruct(v4, &self->_inputSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)initDefaultConfig
{
  v20[2] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = VNFgBgE5MLInstanceSegmenterConfiguration;
  v2 = [(VNFgBgE5MLInstanceSegmenterConfiguration *)&v19 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 88) = xmmword_1A6038ED0;
    *(v2 + 1) = 0x4000000001ELL;
    *(v2 + 4) = 4;
    v4 = *(v2 + 4);
    *(v2 + 3) = 1;
    *(v2 + 4) = @"input";

    v5 = v3[5];
    v3[5] = &unk_1F19C2158;

    v6 = v3[6];
    v3[6] = &unk_1F19C2170;

    v7 = v3[7];
    v3[7] = &unk_1F19C2188;

    v8 = v3[8];
    v3[8] = &unk_1F19C21A0;

    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = MEMORY[0x1E695DFF8];
    v11 = [v9 resourcePath];
    v20[0] = v11;
    v20[1] = @"foregroundbackgroundsegmenter.mlmodelc";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v13 = [v10 fileURLWithPathComponents:v12];

    v14 = v3[9];
    v3[9] = v13;
    v15 = v13;

    v16 = [[VNFgBgE5MLInstanceSegmenterThresholds alloc] initWithRevision:1 error:0];
    v17 = v3[10];
    v3[10] = v16;
  }

  return v3;
}

+ (id)configurationForRevision:(unint64_t)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    v4 = [[a1 alloc] initDefaultConfig];
  }

  else
  {
    if (a4)
    {
      v6 = +[VNFgBgInstanceSegmenterError genericErrorConfigDescription];
      *a4 = [VNFgBgInstanceSegmenterError errorWithCode:-4 description:v6];
    }

    v4 = 0;
  }

  return v4;
}

@end