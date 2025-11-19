@interface TmpWeights
- (TmpWeights)initWithWeights:(id)a3 useBias:(BOOL)a4 desc:(id)a5;
- (float)biasTerms;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation TmpWeights

- (TmpWeights)initWithWeights:(id)a3 useBias:(BOOL)a4 desc:(id)a5
{
  v10.receiver = self;
  v10.super_class = TmpWeights;
  v8 = [(TmpWeights *)&v10 init];
  if (v8)
  {
    v8->_convDesc = a5;
    v8->_parentObj = a3;
    v8->_hasBias = a4;
  }

  return v8;
}

- (float)biasTerms
{
  if (self->_hasBias)
  {
    return objc_msgSend_biasTerms(self->_parentObj, a2, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TmpWeights;
  [(TmpWeights *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10 = objc_msgSend_copyWithZone_(self->_parentObj, a2, a3, v3, v4, v5, v6, v7);
  v11 = [MPSCNNConvolutionDescriptorNoNeuron alloc];
  v18 = objc_msgSend_initWithConvDescriptor_(v11, v12, self->_convDesc, v13, v14, v15, v16, v17);
  v25 = objc_msgSend_allocWithZone_(TmpWeights, v19, a3, v20, v21, v22, v23, v24);
  v30 = objc_msgSend_initWithWeights_useBias_desc_(v25, v26, v10, self->_hasBias, v18, v27, v28, v29);

  return v30;
}

@end