@interface MXAppLaunchDiagnostic
- (MXAppLaunchDiagnostic)initWithCoder:(id)a3;
- (MXAppLaunchDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 callStack:(id)a5 launchDuration:(id)a6;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXAppLaunchDiagnostic

- (MXAppLaunchDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 callStack:(id)a5 launchDuration:(id)a6
{
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = MXAppLaunchDiagnostic;
  v13 = [(MXDiagnostic *)&v17 initWithMetaData:a3 applicationVersion:a4];
  if (v13)
  {
    if (!v11 || ([v12 doubleValue], v14 <= 0.0))
    {
      v15 = 0;
      goto LABEL_7;
    }

    objc_storeStrong(&v13->_callStackTree, a5);
    objc_storeStrong(&v13->_launchDuration, a6);
  }

  v15 = v13;
LABEL_7:

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MXAppLaunchDiagnostic;
  v4 = a3;
  [(MXDiagnostic *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_callStackTree forKey:{@"callStackTree", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_launchDuration forKey:@"launchDuration"];
}

- (MXAppLaunchDiagnostic)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MXAppLaunchDiagnostic;
  v5 = [(MXDiagnostic *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callStackTree"];
    callStackTree = v5->_callStackTree;
    v5->_callStackTree = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launchDuration"];
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
  v4 = [(MXDiagnostic *)&v16 toDictionary];
  [v3 addEntriesFromDictionary:v4];

  callStackTree = self->_callStackTree;
  if (callStackTree)
  {
    v6 = [(MXCallStackTree *)callStackTree toDictionary];
    [v3 setObject:v6 forKey:@"callStackTree"];
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [v3 objectForKeyedSubscript:@"diagnosticMetaData"];
  [v7 addEntriesFromDictionary:v8];

  if (self->_launchDuration)
  {
    v9 = [(MXDiagnostic *)self measurementFormatter];
    launchDuration = self->_launchDuration;
    v11 = [MEMORY[0x277CCADD0] milliseconds];
    v12 = [(NSMeasurement *)launchDuration measurementByConvertingToUnit:v11];
    v13 = [v9 stringFromMeasurement:v12];
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