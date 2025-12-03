@interface ANSTVideoMaskRefineAlgorithm
+ (Class)_concreteClassOfVersion:(unint64_t)version;
+ (id)new;
+ (id)supportedSemanticCategoriesOfVersion:(unint64_t)version;
- (ANSTVideoMaskRefineAlgorithm)init;
- (ANSTVideoMaskRefineAlgorithm)initWithConfiguration:(id)configuration;
- (id)resultForPixelBuffer:(__CVBuffer *)buffer coarseSegementationMasks:(id)masks error:(id *)error;
@end

@implementation ANSTVideoMaskRefineAlgorithm

+ (id)supportedSemanticCategoriesOfVersion:(unint64_t)version
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (version == 0x10000)
  {
    v6[0] = @"Person";
    v6[1] = @"Skin";
    v6[2] = @"Hair";
    v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v6, 3);
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTVideoMaskRefineAlgorithm)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (Class)_concreteClassOfVersion:(unint64_t)version
{
  if (version == 0x10000)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ANSTVideoMaskRefineAlgorithm)initWithConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = ANSTVideoMaskRefineAlgorithm;
  return [(ANSTAlgorithm *)&v4 initWithConfiguration:configuration];
}

- (id)resultForPixelBuffer:(__CVBuffer *)buffer coarseSegementationMasks:(id)masks error:(id *)error
{
  masksCopy = masks;
  result = objc_msgSend_doesNotRecognizeSelector_(self, v8, a2);
  __break(1u);
  return result;
}

@end