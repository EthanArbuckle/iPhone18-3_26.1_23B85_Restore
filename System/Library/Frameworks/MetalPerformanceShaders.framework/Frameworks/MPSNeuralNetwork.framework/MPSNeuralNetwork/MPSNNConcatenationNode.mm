@interface MPSNNConcatenationNode
+ (MPSNNConcatenationNode)nodeWithSource:(id)source;
+ (MPSNNConcatenationNode)nodeWithSources:(NSArray *)sourceNodes;
- (MPSNNConcatenationNode)initWithSource:(id)source;
- (MPSNNConcatenationNode)initWithSources:(NSArray *)sourceNodes;
- (id)gradientFiltersWithSources:(id)sources;
@end

@implementation MPSNNConcatenationNode

+ (MPSNNConcatenationNode)nodeWithSource:(id)source
{
  v4 = [self alloc];
  v11 = objc_msgSend_initWithSource_(v4, v5, source, v6, v7, v8, v9, v10);

  return v11;
}

+ (MPSNNConcatenationNode)nodeWithSources:(NSArray *)sourceNodes
{
  v4 = [self alloc];
  v11 = objc_msgSend_initWithSources_(v4, v5, sourceNodes, v6, v7, v8, v9, v10);

  return v11;
}

- (MPSNNConcatenationNode)initWithSource:(id)source
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (MTLReportFailureTypeEnabled())
  {
    v10 = objc_opt_class();
    v13 = NSStringFromClass(v10);
    MTLReportFailure();
  }

  v15[0] = source;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v15, 1, v6, v7, v8, v9, v13);
  v14.receiver = self;
  v14.super_class = MPSNNConcatenationNode;
  return [(MPSNNFilterNode *)&v14 initWithSourceImages:v11 sourceStates:0 paddingPolicy:0];
}

- (MPSNNConcatenationNode)initWithSources:(NSArray *)sourceNodes
{
  v4.receiver = self;
  v4.super_class = MPSNNConcatenationNode;
  return [(MPSNNFilterNode *)&v4 initWithSourceImages:sourceNodes sourceStates:0 paddingPolicy:0];
}

- (id)gradientFiltersWithSources:(id)sources
{
  v5 = objc_autoreleasePoolPush();
  v13 = objc_msgSend_count(self->super._sourceImages, v6, v7, v8, v9, v10, v11, v12);
  v14 = malloc_type_calloc(v13, 8uLL, 0x80040B8603338uLL);
  v22 = objc_msgSend_resultState(self, v15, v16, v17, v18, v19, v20, v21);
  if (v13)
  {
    v29 = v22;
    for (i = 0; i != v13; ++i)
    {
      v31 = objc_msgSend_objectAtIndexedSubscript_(sources, v23, 0, v24, v25, v26, v27, v28);
      v38 = objc_msgSend_objectAtIndexedSubscript_(self->super._sourceImages, v32, i, v33, v34, v35, v36, v37);
      v14[i] = objc_msgSend_nodeWithSourceGradient_sourceImage_gradientState_(MPSNNConcatenationGradientNode, v39, v31, v38, v29, v40, v41, v42);
    }
  }

  v43 = objc_alloc(MEMORY[0x277CBEA60]);
  v49 = objc_msgSend_initWithObjects_count_(v43, v44, v14, v13, v45, v46, v47, v48);
  free(v14);
  objc_autoreleasePoolPop(v5);

  return v49;
}

@end