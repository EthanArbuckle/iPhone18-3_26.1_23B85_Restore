@interface SHSignatureGenerator
+ (void)generateSignatureFromAsset:(AVAsset *)asset completionHandler:(void *)completionHandler;
- (BOOL)appendBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)time error:(NSError *)error;
- (BOOL)updateRingBufferDuration:(double)duration error:(id *)error;
- (SHMusicalFeaturesConfiguration)musicalFeaturesConfiguration;
- (SHSignature)signature;
- (SHSignatureGenerator)init;
- (SHSignatureGenerator)initWithMaximumSignatureDuration:(double)duration;
- (SHSignatureGenerator)initWithMutableSignature:(id)signature;
- (double)duration;
- (double)maximumDuration;
- (id)initSignatureRingBufferWithDuration:(double)duration;
- (int64_t)clipStyle;
- (void)disableSpectralOutput;
- (void)enableSpectralOutput;
- (void)reset;
@end

@implementation SHSignatureGenerator

- (SHSignatureGenerator)initWithMaximumSignatureDuration:(double)duration
{
  v8.receiver = self;
  v8.super_class = SHSignatureGenerator;
  v4 = [(SHSignatureGenerator *)&v8 init];
  if (v4)
  {
    v5 = [[SHMutableSignature alloc] initWithMaximumSeconds:0 clipStyle:duration];
    mutableSignature = v4->_mutableSignature;
    v4->_mutableSignature = v5;
  }

  return v4;
}

- (id)initSignatureRingBufferWithDuration:(double)duration
{
  v8.receiver = self;
  v8.super_class = SHSignatureGenerator;
  v4 = [(SHSignatureGenerator *)&v8 init];
  if (v4)
  {
    v5 = [[SHMutableSignature alloc] initWithMaximumSeconds:1 clipStyle:duration];
    mutableSignature = v4->_mutableSignature;
    v4->_mutableSignature = v5;
  }

  return v4;
}

- (SHSignatureGenerator)init
{
  v3 = objc_alloc_init(SHMutableSignature);
  v4 = [(SHSignatureGenerator *)self initWithMutableSignature:v3];

  return v4;
}

- (SHSignatureGenerator)initWithMutableSignature:(id)signature
{
  signatureCopy = signature;
  v9.receiver = self;
  v9.super_class = SHSignatureGenerator;
  v6 = [(SHSignatureGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mutableSignature, signature);
  }

  return v7;
}

- (BOOL)appendBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)time error:(NSError *)error
{
  v8 = time;
  v9 = buffer;
  mutableSignature = [(SHSignatureGenerator *)self mutableSignature];
  v11 = [mutableSignature appendBuffer:v9 atTime:v8 error:error];

  [SHError remapErrorToClientErrorPointer:error];
  return v11;
}

- (SHSignature)signature
{
  mutableSignature = [(SHSignatureGenerator *)self mutableSignature];
  v3 = [mutableSignature copy];

  return v3;
}

- (double)duration
{
  mutableSignature = [(SHSignatureGenerator *)self mutableSignature];
  [mutableSignature duration];
  v4 = v3;

  return v4;
}

- (SHMusicalFeaturesConfiguration)musicalFeaturesConfiguration
{
  mutableSignature = [(SHSignatureGenerator *)self mutableSignature];
  musicalFeaturesConfiguration = [mutableSignature musicalFeaturesConfiguration];
  v4 = [musicalFeaturesConfiguration copy];

  return v4;
}

- (int64_t)clipStyle
{
  mutableSignature = [(SHSignatureGenerator *)self mutableSignature];
  clipStyle = [mutableSignature clipStyle];

  return clipStyle;
}

- (double)maximumDuration
{
  mutableSignature = [(SHSignatureGenerator *)self mutableSignature];
  [mutableSignature maximumSeconds];
  v4 = v3;

  return v4;
}

- (BOOL)updateRingBufferDuration:(double)duration error:(id *)error
{
  mutableSignature = [(SHSignatureGenerator *)self mutableSignature];
  LOBYTE(error) = [mutableSignature updateRingBufferDuration:error error:duration];

  return error;
}

- (void)enableSpectralOutput
{
  mutableSignature = [(SHSignatureGenerator *)self mutableSignature];
  v2 = [[SHSpectralOutputConfiguration alloc] initWithNumberOfBins:8 callbackFrequency:8];
  [mutableSignature setSpectralOutputConfiguration:v2];
}

- (void)disableSpectralOutput
{
  mutableSignature = [(SHSignatureGenerator *)self mutableSignature];
  [mutableSignature disableSpectralOutput];
}

- (void)reset
{
  mutableSignature = [(SHSignatureGenerator *)self mutableSignature];
  [mutableSignature reset];
}

+ (void)generateSignatureFromAsset:(AVAsset *)asset completionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  if (v5)
  {
    v6 = asset;
    v7 = objc_alloc_init(SHMutableSignature);
    v8 = [objc_alloc(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:1 channels:16000.0];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__SHSignatureGenerator_generateSignatureFromAsset_completionHandler___block_invoke;
    v13[3] = &unk_2788F7DF0;
    v14 = v7;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__SHSignatureGenerator_generateSignatureFromAsset_completionHandler___block_invoke_2;
    v10[3] = &unk_2788F7E18;
    v11 = v14;
    v12 = v5;
    v9 = v14;
    [SHAssetUtilities mixedTracksFromAsset:v6 format:v8 accumulator:v13 completionHandler:v10];
  }
}

id __69__SHSignatureGenerator_generateSignatureFromAsset_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v8 = 0;
  v3 = [v2 appendBuffer:a2 atTime:0 error:&v8];
  v4 = v8;
  v5 = v4;
  v6 = 0;
  if ((v3 & 1) == 0)
  {
    v6 = v4;
  }

  return v6;
}

void __69__SHSignatureGenerator_generateSignatureFromAsset_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 0, a2);
  }

  else
  {
    v5 = [*(a1 + 32) copy];
    (*(v2 + 16))(v2, v5, 0);
  }
}

@end