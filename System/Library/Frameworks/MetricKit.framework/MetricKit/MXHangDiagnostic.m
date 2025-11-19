@interface MXHangDiagnostic
+ (int64_t)_hangTypeForHangTypeString:(id)a3;
- (MXHangDiagnostic)initWithCoder:(id)a3;
- (MXHangDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 callStack:(id)a5 hangDuration:(id)a6;
- (NSString)hangTypeString;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXHangDiagnostic

- (MXHangDiagnostic)initWithMetaData:(id)a3 applicationVersion:(id)a4 callStack:(id)a5 hangDuration:(id)a6
{
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = MXHangDiagnostic;
  v13 = [(MXDiagnostic *)&v17 initWithMetaData:a3 applicationVersion:a4];
  if (v13)
  {
    if (!v11 || ([v12 doubleValue], v14 <= 0.0))
    {
      v15 = 0;
      goto LABEL_7;
    }

    v13->_hangType = 1;
    objc_storeStrong(&v13->_callStackTree, a5);
    objc_storeStrong(&v13->_hangDuration, a6);
  }

  v15 = v13;
LABEL_7:

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MXHangDiagnostic;
  v4 = a3;
  [(MXDiagnostic *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_callStackTree forKey:{@"callStackTree", v6.receiver, v6.super_class}];
  [v4 encodeObject:self->_hangDuration forKey:@"hangDuration"];
  v5 = [(MXHangDiagnostic *)self hangTypeString];
  [v4 encodeObject:v5 forKey:@"hangType"];
}

- (MXHangDiagnostic)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MXHangDiagnostic;
  v5 = [(MXDiagnostic *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callStackTree"];
    callStackTree = v5->_callStackTree;
    v5->_callStackTree = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hangDuration"];
    hangDuration = v5->_hangDuration;
    v5->_hangDuration = v8;

    v10 = objc_opt_class();
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hangType"];
    v5->_hangType = [v10 _hangTypeForHangTypeString:v11];
  }

  return v5;
}

+ (int64_t)_hangTypeForHangTypeString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:@"Unknown"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"Main Runloop Hang"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"Compositor Client Hang"])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)hangTypeString
{
  v2 = [(MXHangDiagnostic *)self hangType];
  v3 = @"Unknown";
  if (v2 == 1)
  {
    v3 = @"Main Runloop Hang";
  }

  if (v2 == 2)
  {
    return @"Compositor Client Hang";
  }

  else
  {
    return &v3->isa;
  }
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14.receiver = self;
  v14.super_class = MXHangDiagnostic;
  v4 = [(MXDiagnostic *)&v14 toDictionary];
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

  if (self->_hangDuration)
  {
    v9 = [(MXDiagnostic *)self measurementFormatter];
    v10 = [v9 stringFromMeasurement:self->_hangDuration];
    [v7 setObject:v10 forKey:@"hangDuration"];
  }

  if ([v7 count])
  {
    v11 = [v7 copy];
    [v3 setObject:v11 forKey:@"diagnosticMetaData"];
  }

  v12 = [(MXHangDiagnostic *)self hangTypeString];
  [v3 setObject:v12 forKeyedSubscript:@"hangType"];

  return v3;
}

@end