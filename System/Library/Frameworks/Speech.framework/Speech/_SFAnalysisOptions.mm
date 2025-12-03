@interface _SFAnalysisOptions
- (_SFAnalysisOptions)initWithCoder:(id)coder;
- (_SFAnalysisOptions)initWithPriority:(int64_t)priority aneContext:(id)context cpuContext:(id)cpuContext gpuContext:(id)gpuContext keepANEModelLoaded:(BOOL)loaded;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFAnalysisOptions

- (_SFAnalysisOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _SFAnalysisOptions;
  v5 = [(_SFAnalysisOptions *)&v13 init];
  if (v5)
  {
    v5->_priority = [coderCopy decodeIntegerForKey:@"_priority"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_aneContext"];
    aneContext = v5->_aneContext;
    v5->_aneContext = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_cpuContext"];
    cpuContext = v5->_cpuContext;
    v5->_cpuContext = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_gpuContext"];
    gpuContext = v5->_gpuContext;
    v5->_gpuContext = v10;

    v5->_keepANEModelLoaded = [coderCopy decodeBoolForKey:@"_keepANEModelLoaded"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  priority = self->_priority;
  coderCopy = coder;
  [coderCopy encodeInteger:priority forKey:@"_priority"];
  [coderCopy encodeObject:self->_aneContext forKey:@"_aneContext"];
  [coderCopy encodeObject:self->_cpuContext forKey:@"_cpuContext"];
  [coderCopy encodeObject:self->_gpuContext forKey:@"_gpuContext"];
  [coderCopy encodeBool:self->_keepANEModelLoaded forKey:@"_keepANEModelLoaded"];
}

- (_SFAnalysisOptions)initWithPriority:(int64_t)priority aneContext:(id)context cpuContext:(id)cpuContext gpuContext:(id)gpuContext keepANEModelLoaded:(BOOL)loaded
{
  contextCopy = context;
  cpuContextCopy = cpuContext;
  gpuContextCopy = gpuContext;
  v24.receiver = self;
  v24.super_class = _SFAnalysisOptions;
  v15 = [(_SFAnalysisOptions *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_priority = priority;
    v17 = [contextCopy copy];
    aneContext = v16->_aneContext;
    v16->_aneContext = v17;

    v19 = [cpuContextCopy copy];
    cpuContext = v16->_cpuContext;
    v16->_cpuContext = v19;

    v21 = [gpuContextCopy copy];
    gpuContext = v16->_gpuContext;
    v16->_gpuContext = v21;

    v16->_keepANEModelLoaded = loaded;
  }

  return v16;
}

@end