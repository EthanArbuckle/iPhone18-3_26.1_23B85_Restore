@interface VN4nFZhnOcBOiJmeVWzBWsv
+ (id)modelPathForConfiguration:(id)a3 error:(id *)a4;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)configureImageAnalyzerOptions:(void *)a3 error:(id *)a4;
- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)a3 processOptions:(id)a4 originatingRequestSpecifier:(id)a5 qosClass:(unsigned int)a6 error:(id *)a7;
@end

@implementation VN4nFZhnOcBOiJmeVWzBWsv

- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)a3 processOptions:(id)a4 originatingRequestSpecifier:(id)a5 qosClass:(unsigned int)a6 error:(id *)a7
{
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  vision::mod::ImageAnalyzer::getSceneRepresentation(v18, a3);
  vision::mod::ImageAnalyzer_Tensor1D<float>::getVectorFromTensor(&v19, v18);
  vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(v18);
  v11 = v19;
  v10 = v20;
  v12 = [VN6Ac6Cyl5O5oK19HboyMBR alloc];
  v13 = v10 - v11;
  v14 = [(VN6Ac6Cyl5O5oK19HboyMBR *)v12 initWithData:v19 elementCount:v13 >> 2 elementType:1 lengthInBytes:v13 imageSignatureprintType:3 originatingRequestSpecifier:v9];
  if (v14)
  {
    v15 = [[VNImageNeuralHashprintObservation alloc] initWithOriginatingRequestSpecifier:v9 imageNeuralHashprint:v14];
    v21[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
LABEL_5:

    goto LABEL_6;
  }

  if (a7)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not create a image signature print from tensor vector with %lu elements (%lu bytes)", v13 >> 2, v13];
    [VNError errorForInvalidOperationWithLocalizedDescription:v15];
    *a7 = v16 = 0;
    goto LABEL_5;
  }

  v16 = 0;
LABEL_6:

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return v16;
}

- (BOOL)configureImageAnalyzerOptions:(void *)a3 error:(id *)a4
{
  v8.receiver = self;
  v8.super_class = VN4nFZhnOcBOiJmeVWzBWsv;
  v5 = [(VNImageAnalyzerBasedDetector *)&v8 configureImageAnalyzerOptions:a3 error:a4];
  if (v5)
  {
    if (*(a3 + 95) < 0)
    {
      *(a3 + 10) = 11;
      v6 = *(a3 + 9);
    }

    else
    {
      v6 = a3 + 72;
      *(a3 + 95) = 11;
    }

    strcpy(v6, "leaf/logits");
  }

  return v5;
}

+ (id)modelPathForConfiguration:(id)a3 error:(id *)a4
{
  v4 = [VNEspressoHelpers pathForEspressoNetworkModelFileWithName:@"NeuralHashv3b_fp16-current.espresso" error:a4];

  return v4;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUAndGPUComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

@end