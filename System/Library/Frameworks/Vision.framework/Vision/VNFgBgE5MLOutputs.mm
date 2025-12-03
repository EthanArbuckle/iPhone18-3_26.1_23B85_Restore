@interface VNFgBgE5MLOutputs
- (VNFgBgE5MLOutputs)initWithOutputs:(id)outputs descriptor:(id)descriptor;
@end

@implementation VNFgBgE5MLOutputs

- (VNFgBgE5MLOutputs)initWithOutputs:(id)outputs descriptor:(id)descriptor
{
  outputsCopy = outputs;
  descriptorCopy = descriptor;
  v34.receiver = self;
  v34.super_class = VNFgBgE5MLOutputs;
  v8 = [(VNFgBgE5MLOutputs *)&v34 init];
  if (v8)
  {
    v33 = 0;
    v9 = [VNFgBgE5MLProcess multiArrayForOutput:@"pred_masks" inNamedObjects:outputsCopy fromFunctionDescriptor:descriptorCopy error:&v33];
    v10 = v33;
    segments = v8->_segments;
    v8->_segments = v9;

    v32 = v10;
    v12 = [VNFgBgE5MLProcess multiArrayForOutput:@"decode_match" inNamedObjects:outputsCopy fromFunctionDescriptor:descriptorCopy error:&v32];
    v13 = v32;

    decodeMatch = v8->_decodeMatch;
    v8->_decodeMatch = v12;

    v31 = v13;
    v15 = [VNFgBgE5MLProcess multiArrayForOutput:@"pred_coco_confidences" inNamedObjects:outputsCopy fromFunctionDescriptor:descriptorCopy error:&v31];
    v16 = v31;

    predictionCocoConfidence = v8->_predictionCocoConfidence;
    v8->_predictionCocoConfidence = v15;

    v30 = v16;
    v18 = [VNFgBgE5MLProcess multiArrayForOutput:@"pred_miyoshi_confidences" inNamedObjects:outputsCopy fromFunctionDescriptor:descriptorCopy error:&v30];
    v19 = v30;

    predictionMiyoshiConfidence = v8->_predictionMiyoshiConfidence;
    v8->_predictionMiyoshiConfidence = v18;

    v29 = v19;
    v21 = [VNFgBgE5MLProcess multiArrayForOutput:@"pred_iou" inNamedObjects:outputsCopy fromFunctionDescriptor:descriptorCopy error:&v29];
    v22 = v29;

    predictionIoU = v8->_predictionIoU;
    v8->_predictionIoU = v21;

    v28 = v22;
    v24 = [VNFgBgE5MLProcess multiArrayForOutput:@"stability_score" inNamedObjects:outputsCopy fromFunctionDescriptor:descriptorCopy error:&v28];
    v25 = v28;

    stabilityScore = v8->_stabilityScore;
    v8->_stabilityScore = v24;
  }

  return v8;
}

@end