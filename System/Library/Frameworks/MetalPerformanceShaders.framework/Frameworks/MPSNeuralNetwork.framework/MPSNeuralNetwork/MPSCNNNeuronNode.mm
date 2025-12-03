@interface MPSCNNNeuronNode
+ (MPSCNNNeuronNode)nodeWithSource:(MPSNNImageNode *)sourceNode descriptor:(MPSNNNeuronDescriptor *)descriptor;
- (MPSCNNNeuronNode)initWithSource:(id)source type:(int)type a:(float)a b:(float)b c:(float)c;
- (id)debugDescription;
- (id)descriptor;
@end

@implementation MPSCNNNeuronNode

+ (MPSCNNNeuronNode)nodeWithSource:(MPSNNImageNode *)sourceNode descriptor:(MPSNNNeuronDescriptor *)descriptor
{
  switch(descriptor->_neuronType)
  {
    case 1:
      v8 = MPSCNNNeuronReLUNode;
      goto LABEL_34;
    case 2:
      v11 = MPSCNNNeuronLinearNode;
      goto LABEL_30;
    case 3:
      v9 = MPSCNNNeuronSigmoidNode;

      goto _objc_msgSend$nodeWithSource_;
    case 4:
      v11 = MPSCNNNeuronHardSigmoidNode;
      goto LABEL_30;
    case 5:
      v11 = MPSCNNNeuronTanHNode;
      goto LABEL_30;
    case 6:
      v9 = MPSCNNNeuronAbsoluteNode;

      goto _objc_msgSend$nodeWithSource_;
    case 7:
      v11 = MPSCNNNeuronSoftPlusNode;
      goto LABEL_30;
    case 8:
      v9 = MPSCNNNeuronSoftSignNode;

      goto _objc_msgSend$nodeWithSource_;
    case 9:
      v8 = MPSCNNNeuronELUNode;
LABEL_34:
      objc_msgSend_a(descriptor, a2, sourceNode, descriptor, v4, v5, v6, v7);

      return MEMORY[0x2821F9670](v8, sel_nodeWithSource_a_, sourceNode, v54, v55, v56, v57, v58);
    case 0xA:
      v13 = objc_msgSend_data(descriptor, a2, sourceNode, descriptor, v4, v5, v6, v7);

      return MEMORY[0x2821F9670](MPSCNNNeuronPReLUNode, sel_nodeWithSource_aData_, sourceNode, v13, v14, v15, v16, v17);
    case 0xB:
      v11 = MPSCNNNeuronReLUNNode;
LABEL_30:
      objc_msgSend_a(descriptor, a2, sourceNode, descriptor, v4, v5, v6, v7);
      objc_msgSend_b(descriptor, v41, v42, v43, v44, v45, v46, v47);

      return MEMORY[0x2821F9670](v11, sel_nodeWithSource_a_b_, sourceNode, v48, v49, v50, v51, v52);
    case 0xC:
      v10 = MPSCNNNeuronPowerNode;
      goto LABEL_25;
    case 0xD:
      v10 = MPSCNNNeuronExponentialNode;
      goto LABEL_25;
    case 0xE:
      v10 = MPSCNNNeuronLogarithmNode;
LABEL_25:
      objc_msgSend_a(descriptor, a2, sourceNode, descriptor, v4, v5, v6, v7);
      objc_msgSend_b(descriptor, v20, v21, v22, v23, v24, v25, v26);
      objc_msgSend_c(descriptor, v27, v28, v29, v30, v31, v32, v33);

      result = MEMORY[0x2821F9670](v10, sel_nodeWithSource_a_b_c_, sourceNode, v34, v35, v36, v37, v38);
      break;
    case 0xF:
      v9 = MPSCNNNeuronLogarithmNode;

- (MPSCNNNeuronNode)initWithSource:(id)source type:(int)type a:(float)a b:(float)b c:(float)c
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = source;
  v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v19, 1, v7, v8, v9, v10);
  v18.receiver = self;
  v18.super_class = MPSCNNNeuronNode;
  result = [(MPSNNFilterNode *)&v18 initWithSourceImages:v16 sourceStates:0 paddingPolicy:0];
  if (result)
  {
    result->_type = type;
    result->_a = a;
    result->_b = b;
    result->_c = c;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MPSCNNNeuronNode;
  v4 = [(MPSNNFilterNode *)&v12 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\ta: %f\n\tb: %f\n\tc: %f", v6, v7, v8, v9, v10, v4, self->_a, self->_b, self->_c);
}

- (id)descriptor
{
  *&v7 = self->_a;
  *&v8 = self->_b;
  *&v9 = self->_c;
  return objc_msgSend_cnnNeuronDescriptorWithType_a_b_c_(MPSNNNeuronDescriptor, a2, self->_type, v2, v3, v4, v5, v6, v7, v8, v9);
}

@end