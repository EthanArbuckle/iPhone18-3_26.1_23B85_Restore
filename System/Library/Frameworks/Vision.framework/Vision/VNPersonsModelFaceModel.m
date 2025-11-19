@interface VNPersonsModelFaceModel
+ (BOOL)getStoredRepresentationTag:(unsigned int *)a3 forModelVersion:(unint64_t)a4 error:(id *)a5;
+ (id)modelBuiltFromConfiguration:(id)a3 dataProvider:(id)a4 canceller:(id)a5 error:(id *)a6;
- (BOOL)isCompatibleWithConfiguration:(id)a3;
- (VNPersonsModelFaceModel)initWithCoder:(id)a3;
- (id)personPredictionsForFace:(id)a3 withDescriptor:(const void *)a4 limit:(unint64_t)a5 canceller:(id)a6 error:(id *)a7;
- (id)trainingFaceprintsForPersonWithUniqueIdentifier:(id)a3 error:(id *)a4;
@end

@implementation VNPersonsModelFaceModel

- (VNPersonsModelFaceModel)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = VNPersonsModelFaceModel;
  return [(VNPersonsModelFaceModel *)&v4 init];
}

- (id)trainingFaceprintsForPersonWithUniqueIdentifier:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = VNPersonsModelErrorForUnimplementedMethod(self, a2);
  }

  return 0;
}

- (BOOL)isCompatibleWithConfiguration:(id)a3
{
  v3 = [a3 resolvedAlgorithmAndReturnError:0];
  v4 = v3;
  v6 = v3 && (v5 = [v3 faceModelClass]) != 0 && objc_opt_class() == v5;

  return v6;
}

- (id)personPredictionsForFace:(id)a3 withDescriptor:(const void *)a4 limit:(unint64_t)a5 canceller:(id)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = VNPersonsModelErrorForUnimplementedMethod(self, a2);
  }

  return 0;
}

+ (id)modelBuiltFromConfiguration:(id)a3 dataProvider:(id)a4 canceller:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 resolvedAlgorithmAndReturnError:a6];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_7;
  }

  v14 = [v12 faceModelClass];
  if (v14 && [(VisionCoreRuntimeUtilities *)VNRuntimeUtilities item:v14 overridesClassSelector:sel_modelBuiltFromConfiguration_dataProvider_canceller_error_])
  {
    v15 = [v14 modelBuiltFromConfiguration:v9 dataProvider:v10 canceller:v11 error:a6];
    goto LABEL_8;
  }

  if (a6)
  {
    VNPersonsModelErrorForUnsupportedAlgorithm(v13);
    *a6 = v15 = 0;
  }

  else
  {
LABEL_7:
    v15 = 0;
  }

LABEL_8:

  return v15;
}

+ (BOOL)getStoredRepresentationTag:(unsigned int *)a3 forModelVersion:(unint64_t)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = [VNError errorForUnimplementedMethod:a2 ofObject:a1];
  }

  return 0;
}

@end