@interface VisionCoreFaceprintInferenceNetworkDescriptor(VNPrivateAdditions)
- (VNFaceprint)VNFaceprintFromData:()VNPrivateAdditions confidence:originatingRequestSpecifier:error:;
- (id)VNFaceprintFromOutputObjects:()VNPrivateAdditions originatingRequestSpecifier:error:;
@end

@implementation VisionCoreFaceprintInferenceNetworkDescriptor(VNPrivateAdditions)

- (VNFaceprint)VNFaceprintFromData:()VNPrivateAdditions confidence:originatingRequestSpecifier:error:
{
  v10 = a4;
  v11 = a5;
  *&v12 = a2;
  if ([VNValidationUtilities validateVNConfidenceRange:a6 error:v12])
  {
    v13 = [a1 faceprintOutput];
    if (v13)
    {
      v29 = 0;
      v30 = 0;
      v28 = 0;
      v14 = [a1 getVNEspressoModelImageprintData:&v28 elementType:&v30 elementCount:&v29 fromTensorData:v10 descriptor:v13 error:a6];
      v15 = v28;
      v16 = v15;
      if (v14)
      {
        v17 = [v15 length];
        std::vector<unsigned char>::vector[abi:ne200100](__p, v17);
        v18 = [v16 bytes];
        v20 = vision::mod::FaceprintAndAttributes::normalizeFacePrintData(v18, v29, 1, __p[0], v19);
        if (v20 == 128)
        {
          v21 = [VNFaceprint alloc];
          *&v22 = a2;
          v23 = [(VNFaceprint *)v21 initWithData:__p[0] elementCount:v29 elementType:v30 lengthInBytes:v17 confidence:v11 originatingRequestSpecifier:v22];
          v24 = v23;
          if (v23)
          {
            v25 = v23;
          }

          else if (a6)
          {
            *a6 = [VNError errorForInternalErrorWithLocalizedDescription:@"unable to create VNFaceprint"];
          }
        }

        else if (a6)
        {
          VNErrorForCVMLStatus(v20);
          *a6 = v24 = 0;
        }

        else
        {
          v24 = 0;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else if (a6)
    {
      [VNError errorForDataUnavailableWithLocalizedDescription:@"could not obtain faceprint descriptor" underlyingError:0];
      *a6 = v24 = 0;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)VNFaceprintFromOutputObjects:()VNPrivateAdditions originatingRequestSpecifier:error:
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 faceprintOutput];
  if (v10)
  {
    v11 = [a1 confidencesOutput];
    if (v11)
    {
      v27 = 0;
      if ([v8 VNGetConfidenceValue:&v27 asTensor:v11 error:a5])
      {
        v21 = 0;
        v22 = &v21;
        v23 = 0x3032000000;
        v24 = __Block_byref_object_copy__28963;
        v25 = __Block_byref_object_dispose__28964;
        v26 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __132__VisionCoreFaceprintInferenceNetworkDescriptor_VNPrivateAdditions__VNFaceprintFromOutputObjects_originatingRequestSpecifier_error___block_invoke;
        aBlock[3] = &unk_1E77B54D8;
        v19 = &v21;
        aBlock[4] = a1;
        v20 = v27;
        v18 = v9;
        v12 = _Block_copy(aBlock);
        v13 = [v10 name];
        v14 = [v8 accessReadOnlyDataForName:v13 usingBlock:v12 error:a5];

        if (v14)
        {
          v15 = v22[5];
        }

        else
        {
          v15 = 0;
        }

        _Block_object_dispose(&v21, 8);
        goto LABEL_14;
      }
    }

    else if (a5)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"confidences output descriptor is not defined"];
      *a5 = v15 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v15 = 0;
    goto LABEL_14;
  }

  if (a5)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"faceprint output descriptor is not defined"];
    *a5 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_15:

  return v15;
}

@end