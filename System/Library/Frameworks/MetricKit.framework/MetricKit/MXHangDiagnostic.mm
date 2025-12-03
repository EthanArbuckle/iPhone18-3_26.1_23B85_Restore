@interface MXHangDiagnostic
+ (int64_t)_hangTypeForHangTypeString:(id)string;
- (MXHangDiagnostic)initWithCoder:(id)coder;
- (MXHangDiagnostic)initWithMetaData:(id)data applicationVersion:(id)version callStack:(id)stack hangDuration:(id)duration;
- (NSString)hangTypeString;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXHangDiagnostic

- (MXHangDiagnostic)initWithMetaData:(id)data applicationVersion:(id)version callStack:(id)stack hangDuration:(id)duration
{
  stackCopy = stack;
  durationCopy = duration;
  v17.receiver = self;
  v17.super_class = MXHangDiagnostic;
  v13 = [(MXDiagnostic *)&v17 initWithMetaData:data applicationVersion:version];
  if (v13)
  {
    if (!stackCopy || ([durationCopy doubleValue], v14 <= 0.0))
    {
      v15 = 0;
      goto LABEL_7;
    }

    v13->_hangType = 1;
    objc_storeStrong(&v13->_callStackTree, stack);
    objc_storeStrong(&v13->_hangDuration, duration);
  }

  v15 = v13;
LABEL_7:

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MXHangDiagnostic;
  coderCopy = coder;
  [(MXDiagnostic *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_callStackTree forKey:{@"callStackTree", v6.receiver, v6.super_class}];
  [coderCopy encodeObject:self->_hangDuration forKey:@"hangDuration"];
  hangTypeString = [(MXHangDiagnostic *)self hangTypeString];
  [coderCopy encodeObject:hangTypeString forKey:@"hangType"];
}

- (MXHangDiagnostic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MXHangDiagnostic;
  v5 = [(MXDiagnostic *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callStackTree"];
    callStackTree = v5->_callStackTree;
    v5->_callStackTree = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hangDuration"];
    hangDuration = v5->_hangDuration;
    v5->_hangDuration = v8;

    v10 = objc_opt_class();
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hangType"];
    v5->_hangType = [v10 _hangTypeForHangTypeString:v11];
  }

  return v5;
}

+ (int64_t)_hangTypeForHangTypeString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && ([stringCopy isEqualToString:@"Unknown"] & 1) == 0)
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
  hangType = [(MXHangDiagnostic *)self hangType];
  v3 = @"Unknown";
  if (hangType == 1)
  {
    v3 = @"Main Runloop Hang";
  }

  if (hangType == 2)
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
  toDictionary = [(MXDiagnostic *)&v14 toDictionary];
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

  if (self->_hangDuration)
  {
    measurementFormatter = [(MXDiagnostic *)self measurementFormatter];
    v10 = [measurementFormatter stringFromMeasurement:self->_hangDuration];
    [v7 setObject:v10 forKey:@"hangDuration"];
  }

  if ([v7 count])
  {
    v11 = [v7 copy];
    [v3 setObject:v11 forKey:@"diagnosticMetaData"];
  }

  hangTypeString = [(MXHangDiagnostic *)self hangTypeString];
  [v3 setObject:hangTypeString forKeyedSubscript:@"hangType"];

  return v3;
}

@end