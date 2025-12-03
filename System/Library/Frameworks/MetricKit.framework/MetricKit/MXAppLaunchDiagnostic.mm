@interface MXAppLaunchDiagnostic
- (MXAppLaunchDiagnostic)initWithCoder:(id)coder;
- (MXAppLaunchDiagnostic)initWithMetaData:(id)data applicationVersion:(id)version callStack:(id)stack launchDuration:(id)duration;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXAppLaunchDiagnostic

- (MXAppLaunchDiagnostic)initWithMetaData:(id)data applicationVersion:(id)version callStack:(id)stack launchDuration:(id)duration
{
  stackCopy = stack;
  durationCopy = duration;
  v17.receiver = self;
  v17.super_class = MXAppLaunchDiagnostic;
  v13 = [(MXDiagnostic *)&v17 initWithMetaData:data applicationVersion:version];
  if (v13)
  {
    if (!stackCopy || ([durationCopy doubleValue], v14 <= 0.0))
    {
      v15 = 0;
      goto LABEL_7;
    }

    objc_storeStrong(&v13->_callStackTree, stack);
    objc_storeStrong(&v13->_launchDuration, duration);
  }

  v15 = v13;
LABEL_7:

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MXAppLaunchDiagnostic;
  coderCopy = coder;
  [(MXDiagnostic *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_callStackTree forKey:{@"callStackTree", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_launchDuration forKey:@"launchDuration"];
}

- (MXAppLaunchDiagnostic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MXAppLaunchDiagnostic;
  v5 = [(MXDiagnostic *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callStackTree"];
    callStackTree = v5->_callStackTree;
    v5->_callStackTree = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchDuration"];
    launchDuration = v5->_launchDuration;
    v5->_launchDuration = v8;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16.receiver = self;
  v16.super_class = MXAppLaunchDiagnostic;
  toDictionary = [(MXDiagnostic *)&v16 toDictionary];
  [v3 addEntriesFromDictionary:toDictionary];

  callStackTree = self->_callStackTree;
  if (callStackTree)
  {
    toDictionary2 = [(MXCallStackTree *)callStackTree toDictionary];
    [v3 setObject:toDictionary2 forKey:@"callStackTree"];
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v3 objectForKeyedSubscript:@"diagnosticMetaData"];
  [v7 addEntriesFromDictionary:v8];

  if (self->_launchDuration)
  {
    measurementFormatter = [(MXDiagnostic *)self measurementFormatter];
    launchDuration = self->_launchDuration;
    milliseconds = [MEMORY[0x277CCADD0] milliseconds];
    v12 = [(NSMeasurement *)launchDuration measurementByConvertingToUnit:milliseconds];
    v13 = [measurementFormatter stringFromMeasurement:v12];
    [v7 setObject:v13 forKey:@"launchDuration"];
  }

  if ([v7 count])
  {
    v14 = [v7 copy];
    [v3 setObject:v14 forKey:@"diagnosticMetaData"];
  }

  return v3;
}

@end