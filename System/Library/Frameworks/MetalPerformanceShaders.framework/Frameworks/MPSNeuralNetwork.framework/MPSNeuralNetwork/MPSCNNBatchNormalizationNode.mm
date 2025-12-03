@interface MPSCNNBatchNormalizationNode
+ (MPSCNNBatchNormalizationNode)nodeWithSource:(MPSNNImageNode *)source dataSource:(id)dataSource;
- (BOOL)calculateStatistics;
- (MPSCNNBatchNormalizationNode)initWithSource:(MPSNNImageNode *)source dataSource:(id)dataSource;
- (id)resultStates;
- (id)sourceStates;
- (void)dealloc;
- (void)newFilterNode;
@end

@implementation MPSCNNBatchNormalizationNode

+ (MPSCNNBatchNormalizationNode)nodeWithSource:(MPSNNImageNode *)source dataSource:(id)dataSource
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithSource_dataSource_(v6, v7, source, dataSource, v8, v9, v10, v11);

  return v12;
}

- (BOOL)calculateStatistics
{
  if ((self->_flags & 3) != 0)
  {
    LOBYTE(self) = (self->_flags & 3) == 1;
  }

  else
  {
    selfCopy = self;
    self = objc_msgSend_count(self->super._resultStates, a2, v2, v3, v4, v5, v6, v7);
    if (self)
    {
      selfCopy2 = self;
      v16 = 0;
      for (i = objc_msgSend_objectAtIndexedSubscript_(selfCopy->super._resultStates, v9, 0, v10, v11, v12, v13, v14); ; i = objc_msgSend_objectAtIndexedSubscript_(selfCopy->super._resultStates, v18, v16, v19, v20, v21, v22, v23))
      {
        if (i && ((*(i + 33) & 1) != 0 || *(i + 24)))
        {
          LOBYTE(self) = 1;
          return self;
        }

        if (selfCopy2 == ++v16)
        {
          break;
        }
      }

      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (id)sourceStates
{
  v25[1] = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_calculateStatistics(self, a2, v2, v3, v4, v5, v6, v7) & 1) == 0)
  {
    return self->super._sourceStates;
  }

  v17 = objc_msgSend_resultState(self, v9, v10, v11, v12, v13, v14, v15);
  sourceStates = self->super._sourceStates;
  if (sourceStates)
  {

    return MEMORY[0x2821F9670](sourceStates, sel_arrayByAddingObject_, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    v25[0] = v17;
    return objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v25, 1, v19, v20, v21, v22);
  }
}

- (id)resultStates
{
  if (!objc_msgSend_calculateStatistics(self, a2, v2, v3, v4, v5, v6, v7))
  {
    return 0;
  }

  objc_msgSend_resultState(self, v9, v10, v11, v12, v13, v14, v15);
  return self->super._resultStates;
}

- (MPSCNNBatchNormalizationNode)initWithSource:(MPSNNImageNode *)source dataSource:(id)dataSource
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (dataSource)
  {
    v16[0] = source;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v16, 1, v4, v5, v6, v7);
    v15.receiver = self;
    v15.super_class = MPSCNNBatchNormalizationNode;
    result = [(MPSNNFilterNode *)&v15 initWithSourceImages:v10 sourceStates:0 paddingPolicy:0];
    if (result)
    {
      v12 = result;
      v13 = dataSource;
      result = v12;
      v12->_dataSource = v13;
      v12->_flags = 0;
      v12->_trainingStyle = 2;
    }
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v14 = objc_opt_class();
      NSStringFromClass(v14);
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNBatchNormalizationNode;
  [(MPSNNFilterNode *)&v3 dealloc];
}

- (void)newFilterNode
{
  if ((self->_flags & 3) == 0)
  {
    v9 = objc_msgSend_count(self->super._resultStates, a2, v2, v3, v4, v5, v6, v7);
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      for (i = objc_msgSend_objectAtIndexedSubscript_(self->super._resultStates, a2, 0, v3, v4, v5, v6, v7); ; i = objc_msgSend_objectAtIndexedSubscript_(self->super._resultStates, a2, v11, v3, v4, v5, v6, v7))
      {
        if (i)
        {
          if (*(i + 33))
          {
            break;
          }

          ++v11;
          if (*(i + 24) || v11 >= v10)
          {
            break;
          }
        }

        else if (++v11 >= v10)
        {
          break;
        }
      }
    }
  }

  if (objc_msgSend_calculateStatistics(self, a2, v2, v3, v4, v5, v6, v7))
  {
    operator new();
  }

  operator new();
}

@end