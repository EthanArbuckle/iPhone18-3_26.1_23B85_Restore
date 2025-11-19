@interface MPSNNScaleNode
+ (MPSNNScaleNode)nodeWithSource:(MPSNNImageNode *)sourceNode outputSize:(MTLSize *)size;
+ (MPSNNScaleNode)nodeWithSource:(MPSNNImageNode *)sourceNode transformProvider:(id)transformProvider outputSize:(MTLSize *)size;
- (MPSNNScaleNode)initWithSource:(MPSNNImageNode *)sourceNode transformProvider:(id)transformProvider outputSize:(MTLSize *)size;
- (id)debugDescription;
- (id)privateInitWithSource:(id)a3 transformProvider:(id)a4 outputSize:(id *)a5;
- (void)dealloc;
@end

@implementation MPSNNScaleNode

- (id)privateInitWithSource:(id)a3 transformProvider:(id)a4 outputSize:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = a3;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v17, 1, a5, v5, v6, v7);
  v16.receiver = self;
  v16.super_class = MPSNNScaleNode;
  result = [(MPSNNFilterNode *)&v16 initWithSourceImages:v11 sourceStates:0 paddingPolicy:0];
  if (result)
  {
    v13 = result;
    v14 = a4;
    result = v13;
    *(v13 + 7) = v14;
    var2 = a5->var2;
    *(v13 + 4) = *&a5->var0;
    *(v13 + 10) = var2;
  }

  return result;
}

+ (MPSNNScaleNode)nodeWithSource:(MPSNNImageNode *)sourceNode transformProvider:(id)transformProvider outputSize:(MTLSize *)size
{
  v8 = [a1 alloc];
  v14 = *size;
  return objc_msgSend_initWithSource_transformProvider_outputSize_(v8, v9, sourceNode, transformProvider, &v14, v10, v11, v12);
}

+ (MPSNNScaleNode)nodeWithSource:(MPSNNImageNode *)sourceNode outputSize:(MTLSize *)size
{
  v6 = [a1 alloc];
  v12 = *size;
  return objc_msgSend_initWithSource_transformProvider_outputSize_(v6, v7, sourceNode, 0, &v12, v8, v9, v10);
}

- (MPSNNScaleNode)initWithSource:(MPSNNImageNode *)sourceNode transformProvider:(id)transformProvider outputSize:(MTLSize *)size
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNScaleNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = MPSNNScaleNode;
  v11 = [(MPSNNFilterNode *)&v15 debugDescription];
  transformProvider = self->_transformProvider;
  if (transformProvider)
  {
    v13 = objc_msgSend_debugDescription(transformProvider, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    v13 = @"use entire image";
  }

  return objc_msgSend_stringWithFormat_(v3, v4, @"%@\n\tregion provider: %@\n\tsize: {%lu, %lu, %lu}\n", v6, v7, v8, v9, v10, v11, v13, self->_size.width, self->_size.height, self->_size.depth);
}

@end