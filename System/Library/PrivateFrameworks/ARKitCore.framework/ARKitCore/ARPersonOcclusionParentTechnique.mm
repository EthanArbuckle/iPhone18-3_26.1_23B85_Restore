@interface ARPersonOcclusionParentTechnique
- (ARPersonOcclusionParentTechnique)initWithTechniques:(id)techniques delegate:(id)delegate;
- (BOOL)isEqual:(id)equal;
- (id)processData:(id)data;
- (id)techniquesToRunWithForwardedDepth:(BOOL)depth;
- (void)dealloc;
- (void)reconfigureFrom:(id)from;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
- (void)setOptimizationStrategy:(int64_t)strategy;
- (void)setTechniques:(id)techniques;
- (void)submitResultsForTimestamp:(double)timestamp context:(id)context;
- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context;
- (void)updatePersonDetectionTechniques;
- (void)updatePrimaryPersonDetectionTechnique;
@end

@implementation ARPersonOcclusionParentTechnique

- (ARPersonOcclusionParentTechnique)initWithTechniques:(id)techniques delegate:(id)delegate
{
  v39 = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  delegateCopy = delegate;
  if ([techniquesCopy indexOfObjectPassingTest:&__block_literal_global_31] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (ARShouldUseLogTypeError_onceToken_13 != -1)
    {
      [ARPersonOcclusionParentTechnique initWithTechniques:delegate:];
    }

    v8 = ARShouldUseLogTypeError_internalOSVersion_13;
    v9 = _ARLogTechnique_9();
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v32[0] = v14;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v32[1] = v16;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
        *buf = 138543874;
        v34 = v12;
        v35 = 2048;
        selfCopy2 = self;
        v37 = 2112;
        v38 = v17;
        v18 = "%{public}@ <%p>: This parent technique is designed to contain one of the following person detection techniques: %@";
        v19 = v10;
        v20 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_1C241C000, v19, v20, v18, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v12 = NSStringFromClass(v26);
      v27 = objc_opt_class();
      v14 = NSStringFromClass(v27);
      v31[0] = v14;
      v28 = objc_opt_class();
      v16 = NSStringFromClass(v28);
      v31[1] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
      *buf = 138543874;
      v34 = v12;
      v35 = 2048;
      selfCopy2 = self;
      v37 = 2112;
      v38 = v17;
      v18 = "Error: %{public}@ <%p>: This parent technique is designed to contain one of the following person detection techniques: %@";
      v19 = v10;
      v20 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    selfCopy3 = 0;
    goto LABEL_14;
  }

  v30.receiver = self;
  v30.super_class = ARPersonOcclusionParentTechnique;
  v21 = [(ARParentTechnique *)&v30 initWithTechniques:techniquesCopy delegate:delegateCopy];
  if (v21)
  {
    v21->_shouldSkipFramesWhenBusy = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.personocclusion.skipFrameWhenBusy"];
    depthTechniqueProcessingStrategy = v21->_depthTechniqueProcessingStrategy;
    v21->_depthTechniqueProcessingStrategy = 0;

    v21->_detectedPerson = 1;
    v21->_lastDetectedPersonTimeStamp = 0.0;
    v23 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:5];
    personDetectionTechniques = v21->_personDetectionTechniques;
    v21->_personDetectionTechniques = v23;

    [(ARPersonOcclusionParentTechnique *)v21 updatePersonDetectionTechniques];
  }

  self = v21;
  selfCopy3 = self;
LABEL_14:

  return selfCopy3;
}

uint64_t __64__ARPersonOcclusionParentTechnique_initWithTechniques_delegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_placeholderDepthBuffer);
  self->_placeholderDepthBuffer = 0;
  v3.receiver = self;
  v3.super_class = ARPersonOcclusionParentTechnique;
  [(ARPersonOcclusionParentTechnique *)&v3 dealloc];
}

- (void)setOptimizationStrategy:(int64_t)strategy
{
  v14 = *MEMORY[0x1E69E9840];
  self->_optimizationStrategy = strategy;
  v4 = _ARLogGeneral_4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    optimizationStrategy = self->_optimizationStrategy;
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    selfCopy = self;
    v12 = 2048;
    v13 = optimizationStrategy;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: _optimizationStrategy = %ld", &v8, 0x20u);
  }

  [(ARPersonOcclusionParentTechnique *)self updatePrimaryPersonDetectionTechnique];
}

- (void)setTechniques:(id)techniques
{
  v8.receiver = self;
  v8.super_class = ARPersonOcclusionParentTechnique;
  techniquesCopy = techniques;
  [(ARParentTechnique *)&v8 setTechniques:techniquesCopy];
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:{&__block_literal_global_12_0, v8.receiver, v8.super_class}];
  v6 = [ARTechnique techniqueMatchingPredicate:v5 inArray:techniquesCopy];

  depthTechnique = self->_depthTechnique;
  self->_depthTechnique = v6;

  [(ARPersonOcclusionParentTechnique *)self updatePrimaryPersonDetectionTechnique];
  [(ARPersonOcclusionParentTechnique *)self updatePersonDetectionTechniques];
}

uint64_t __50__ARPersonOcclusionParentTechnique_setTechniques___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F425FD78])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)techniquesToRunWithForwardedDepth:(BOOL)depth
{
  if (self->_detectedPerson || !self->_optimizationStrategy)
  {
    v8.receiver = self;
    v8.super_class = ARPersonOcclusionParentTechnique;
    techniques = [(ARParentTechnique *)&v8 techniques];
  }

  else
  {
    depthCopy = depth;
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{self->_primaryPersonDetectionTechnique, 0}];
    techniques = v5;
    if (depthCopy && self->_depthTechnique)
    {
      [v5 addObject:?];
    }
  }

  return techniques;
}

- (void)reconfigureFrom:(id)from
{
  fromCopy = from;
  v7.receiver = self;
  v7.super_class = ARPersonOcclusionParentTechnique;
  [(ARParentTechnique *)&v7 reconfigureFrom:fromCopy];
  if ([fromCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = fromCopy;
    -[ARPersonOcclusionParentTechnique setOptimizationStrategy:](self, "setOptimizationStrategy:", [v5 optimizationStrategy]);
    depthTechniqueProcessingStrategy = [v5 depthTechniqueProcessingStrategy];

    [(ARPersonOcclusionParentTechnique *)self setDepthTechniqueProcessingStrategy:depthTechniqueProcessingStrategy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = ARPersonOcclusionParentTechnique;
  if ([(ARParentTechnique *)&v13 isEqual:equalCopy])
  {
    v5 = equalCopy;
    optimizationStrategy = [(ARPersonOcclusionParentTechnique *)self optimizationStrategy];
    if (optimizationStrategy == [v5 optimizationStrategy])
    {
      depthTechniqueProcessingStrategy = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
      depthTechniqueProcessingStrategy2 = [v5 depthTechniqueProcessingStrategy];
      if (depthTechniqueProcessingStrategy == depthTechniqueProcessingStrategy2)
      {
        v11 = 1;
      }

      else
      {
        depthTechniqueProcessingStrategy3 = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
        depthTechniqueProcessingStrategy4 = [v5 depthTechniqueProcessingStrategy];
        v11 = [depthTechniqueProcessingStrategy3 isEqual:depthTechniqueProcessingStrategy4];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)processData:(id)data
{
  v59 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  techniques = [(ARParentTechnique *)self techniques];
  v6 = [techniques countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(techniques);
        }

        v10 = *(*(&v46 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v10 isBusy])
        {
          v11 = 0;
          goto LABEL_12;
        }
      }

      v7 = [techniques countByEnumeratingWithState:&v46 objects:v58 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_12:

  objc_opt_class();
  v12 = v11 | objc_opt_isKindOfClass();
  depthTechniqueProcessingStrategy = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
  if (depthTechniqueProcessingStrategy)
  {
    depthTechniqueProcessingStrategy2 = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
    v15 = [depthTechniqueProcessingStrategy2 shouldProcessData:dataCopy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(ARPersonOcclusionParentTechnique *)self techniquesToRunWithForwardedDepth:v15];
  if ((v12 & 1) == 0 && self->_shouldSkipFramesWhenBusy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = dataCopy;
      [v17 timestamp];
      kdebug_trace();
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v42 objects:v57 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v43;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v43 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v42 + 1) + 8 * j);
            if ([v23 conformsToProtocol:&unk_1F425EC70])
            {
              v24 = v23;
              [v17 timestamp];
              [v24 pushEmptyResultOnAsynchronousQueueForTimestamp:?];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v42 objects:v57 count:16];
        }

        while (v20);
      }

      v25 = _ARLogGeneral_4();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138543874;
        v52 = v27;
        v53 = 2048;
        selfCopy = self;
        v55 = 2112;
        v56 = v18;
        _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropped frame. Techniques that did not get the image: %@", buf, 0x20u);
      }
    }

    v28 = dataCopy;
    goto LABEL_45;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_44:
    v28 = [(ARParentTechnique *)self processData:dataCopy onTechniques:v16];
LABEL_45:
    v29 = v28;
    goto LABEL_46;
  }

  v29 = dataCopy;
  if (![v29 isDroppedData])
  {

    goto LABEL_44;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  techniques2 = [(ARParentTechnique *)self techniques];
  v31 = [techniques2 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v39;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(techniques2);
        }

        v35 = *(*(&v38 + 1) + 8 * k);
        if ([v35 conformsToProtocol:&unk_1F425EC70])
        {
          v36 = v35;
          [v29 timestamp];
          [v36 pushEmptyResultOnAsynchronousQueueForTimestamp:?];
        }
      }

      v32 = [techniques2 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v32);
  }

LABEL_46:

  return v29;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  contextCopy = context;
  depthTechniqueProcessingStrategy = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
  if (depthTechniqueProcessingStrategy)
  {
    depthTechniqueProcessingStrategy2 = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
    v8 = [depthTechniqueProcessingStrategy2 shouldRequestResultDataAtTimestamp:contextCopy context:timestamp];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(ARPersonOcclusionParentTechnique *)self techniquesToRunWithForwardedDepth:v8];
  [(ARParentTechnique *)self requestResultDataAtTimestamp:contextCopy context:v9 onTechniques:timestamp];
}

- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context
{
  techniqueCopy = technique;
  dataCopy = data;
  contextCopy = context;
  depthTechniqueProcessingStrategy = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
  if (depthTechniqueProcessingStrategy)
  {
    depthTechniqueProcessingStrategy2 = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
    v15 = [depthTechniqueProcessingStrategy2 shouldRequestResultDataAtTimestamp:contextCopy context:timestamp];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(ARPersonOcclusionParentTechnique *)self techniquesToRunWithForwardedDepth:v15];
  if ([(NSHashTable *)self->_personDetectionTechniques containsObject:techniqueCopy])
  {
    if (self->_primaryPersonDetectionTechnique == techniqueCopy)
    {
      if (self->_depthTechnique)
      {
        if (self->_optimizationStrategy)
        {
          if (!self->_detectedPerson)
          {
            if (self->_placeholderDepthBuffer || (CVPixelBufferCreate(0, 1uLL, 1uLL, 0x66646570u, 0, &self->_placeholderDepthBuffer), self->_placeholderDepthBuffer))
            {
              v17 = [(ARMLDepthData *)[ARPlaceholderMLDepthData alloc] initWithTimestamp:self->_placeholderDepthBuffer depthBuffer:[(ARMLDepthDataSourceProvider *)self->_depthTechnique depthDataSource] source:timestamp];
              if (v17)
              {
                v18 = v17;
                v19 = [dataCopy arrayByAddingObject:v17];

                dataCopy = v19;
              }
            }
          }
        }
      }
    }

    [(ARParentTechnique *)&v20 technique:techniqueCopy didOutputResultData:dataCopy timestamp:contextCopy context:v16 onTechniques:timestamp, self, ARPersonOcclusionParentTechnique, v21.receiver, v21.super_class];
  }

  else
  {
    [(ARParentTechnique *)&v21 technique:techniqueCopy didOutputResultData:dataCopy timestamp:contextCopy context:v16 onTechniques:timestamp, v20.receiver, v20.super_class, self, ARPersonOcclusionParentTechnique];
  }
}

- (void)submitResultsForTimestamp:(double)timestamp context:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  gatheredData = [contextCopy gatheredData];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [gatheredData countByEnumeratingWithState:&v27 objects:buf count:16];
  v9 = 0.0;
  if (!v8)
  {
    goto LABEL_22;
  }

  v10 = *v28;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v28 != v10)
      {
        objc_enumerationMutation(gatheredData);
      }

      v12 = *(*(&v27 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v12;
        [v8 timestamp];
        v9 = v13;
        detectedObjects = [v8 detectedObjects];
        LODWORD(v8) = [detectedObjects count] != 0;
LABEL_20:

        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v12;
        [v8 timestamp];
        v9 = v15;
        LODWORD(v8) = [v8 hasSegmentedPeople];
LABEL_21:

        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v12;
        [v8 timestamp];
        v9 = v16;
        detectedObjects = [v8 rawDetectionResult];
        if (detectedObjects)
        {
          LODWORD(v8) = 1;
        }

        else
        {
          alignedDetectionResult = [v8 alignedDetectionResult];
          if (alignedDetectionResult)
          {
            LODWORD(v8) = 1;
          }

          else
          {
            alignedDetectionResult2 = [v8 alignedDetectionResult];
            LODWORD(v8) = alignedDetectionResult2 != 0;
          }
        }

        goto LABEL_20;
      }
    }

    v8 = [gatheredData countByEnumeratingWithState:&v27 objects:buf count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_22:

  lastDetectedPersonTimeStamp = self->_lastDetectedPersonTimeStamp;
  if (lastDetectedPersonTimeStamp == 0.0)
  {
    self->_lastDetectedPersonTimeStamp = v9;
    lastDetectedPersonTimeStamp = v9;
  }

  if (v8)
  {
    if (!self->_detectedPerson)
    {
      v20 = _ARLogGeneral_4();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138543618;
        v32 = v22;
        v33 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "%{public}@ <%p>: detected a person when there were none", buf, 0x16u);
      }
    }

    self->_detectedPerson = 1;
    self->_lastDetectedPersonTimeStamp = v9;
  }

  else if (v9 - lastDetectedPersonTimeStamp > 0.5)
  {
    if (self->_detectedPerson)
    {
      v23 = _ARLogGeneral_4();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138543874;
        v32 = v25;
        v33 = 2048;
        selfCopy2 = self;
        v35 = 2048;
        v36 = 0x3FE0000000000000;
        _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "%{public}@ <%p>: detected no person for %f seconds", buf, 0x20u);
      }
    }

    self->_detectedPerson = 0;
  }

  v26.receiver = self;
  v26.super_class = ARPersonOcclusionParentTechnique;
  [(ARParentTechnique *)&v26 submitResultsForTimestamp:contextCopy context:timestamp];
}

- (void)updatePersonDetectionTechniques
{
  v30 = *MEMORY[0x1E69E9840];
  [(NSHashTable *)self->_personDetectionTechniques removeAllObjects];
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 initWithObjects:{v4, v5, objc_opt_class(), 0}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  obj = [(ARParentTechnique *)self techniques];
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if ([v6 containsObject:objc_opt_class()])
        {
          [(NSHashTable *)selfCopy->_personDetectionTechniques addObject:v11];
        }

        else
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v12 = v6;
          v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v21;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v21 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [v11 techniqueOfClass:*(*(&v20 + 1) + 8 * j)];

                if (v17)
                {
                  [(NSHashTable *)selfCopy->_personDetectionTechniques addObject:v11];
                  goto LABEL_18;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

LABEL_18:
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }
}

- (void)updatePrimaryPersonDetectionTechnique
{
  optimizationStrategy = self->_optimizationStrategy;
  if (optimizationStrategy == 1 || optimizationStrategy == 2)
  {
    v4 = objc_opt_class();
    if (v4)
    {
      techniques = [(ARParentTechnique *)self techniques];
      v4 = [ARTechnique techniqueOfClass:v4 inArray:?];
      v5 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 1;
LABEL_7:
  objc_storeStrong(&self->_primaryPersonDetectionTechnique, v4);
  if ((v5 & 1) == 0)
  {
  }
}

@end