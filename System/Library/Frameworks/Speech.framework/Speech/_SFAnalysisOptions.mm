@interface _SFAnalysisOptions
- (_SFAnalysisOptions)initWithCoder:(id)a3;
- (_SFAnalysisOptions)initWithPriority:(int64_t)a3 aneContext:(id)a4 cpuContext:(id)a5 gpuContext:(id)a6 keepANEModelLoaded:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFAnalysisOptions

- (_SFAnalysisOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _SFAnalysisOptions;
  v5 = [(_SFAnalysisOptions *)&v13 init];
  if (v5)
  {
    v5->_priority = [v4 decodeIntegerForKey:@"_priority"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_aneContext"];
    aneContext = v5->_aneContext;
    v5->_aneContext = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cpuContext"];
    cpuContext = v5->_cpuContext;
    v5->_cpuContext = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_gpuContext"];
    gpuContext = v5->_gpuContext;
    v5->_gpuContext = v10;

    v5->_keepANEModelLoaded = [v4 decodeBoolForKey:@"_keepANEModelLoaded"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  priority = self->_priority;
  v5 = a3;
  [v5 encodeInteger:priority forKey:@"_priority"];
  [v5 encodeObject:self->_aneContext forKey:@"_aneContext"];
  [v5 encodeObject:self->_cpuContext forKey:@"_cpuContext"];
  [v5 encodeObject:self->_gpuContext forKey:@"_gpuContext"];
  [v5 encodeBool:self->_keepANEModelLoaded forKey:@"_keepANEModelLoaded"];
}

- (_SFAnalysisOptions)initWithPriority:(int64_t)a3 aneContext:(id)a4 cpuContext:(id)a5 gpuContext:(id)a6 keepANEModelLoaded:(BOOL)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = _SFAnalysisOptions;
  v15 = [(_SFAnalysisOptions *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_priority = a3;
    v17 = [v12 copy];
    aneContext = v16->_aneContext;
    v16->_aneContext = v17;

    v19 = [v13 copy];
    cpuContext = v16->_cpuContext;
    v16->_cpuContext = v19;

    v21 = [v14 copy];
    gpuContext = v16->_gpuContext;
    v16->_gpuContext = v21;

    v16->_keepANEModelLoaded = a7;
  }

  return v16;
}

@end