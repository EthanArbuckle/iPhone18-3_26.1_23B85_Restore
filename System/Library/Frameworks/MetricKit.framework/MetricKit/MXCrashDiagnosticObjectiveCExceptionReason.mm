@interface MXCrashDiagnosticObjectiveCExceptionReason
- (MXCrashDiagnosticObjectiveCExceptionReason)initWithCoder:(id)a3;
- (MXCrashDiagnosticObjectiveCExceptionReason)initWithComposedMessage:(id)a3 formatString:(id)a4 arguments:(id)a5 type:(id)a6 className:(id)a7 exceptionName:(id)a8;
- (NSData)JSONRepresentation;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXCrashDiagnosticObjectiveCExceptionReason

- (MXCrashDiagnosticObjectiveCExceptionReason)initWithComposedMessage:(id)a3 formatString:(id)a4 arguments:(id)a5 type:(id)a6 className:(id)a7 exceptionName:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = MXCrashDiagnosticObjectiveCExceptionReason;
  v18 = [(MXCrashDiagnosticObjectiveCExceptionReason *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_composedMessage, a3);
    objc_storeStrong(&v19->_formatString, a4);
    objc_storeStrong(&v19->_arguments, a5);
    objc_storeStrong(&v19->_exceptionType, a6);
    objc_storeStrong(&v19->_className, a7);
    objc_storeStrong(&v19->_exceptionName, a8);
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  composedMessage = self->_composedMessage;
  v5 = a3;
  [v5 encodeObject:composedMessage forKey:@"composedMessage"];
  [v5 encodeObject:self->_formatString forKey:@"formatString"];
  [v5 encodeObject:self->_arguments forKey:@"arguments"];
  [v5 encodeObject:self->_exceptionType forKey:@"exceptionType"];
  [v5 encodeObject:self->_className forKey:@"className"];
  [v5 encodeObject:self->_exceptionName forKey:@"exceptionName"];
}

- (MXCrashDiagnosticObjectiveCExceptionReason)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MXCrashDiagnosticObjectiveCExceptionReason;
  v5 = [(MXCrashDiagnosticObjectiveCExceptionReason *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"composedMessage"];
    composedMessage = v5->_composedMessage;
    v5->_composedMessage = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formatString"];
    formatString = v5->_formatString;
    v5->_formatString = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"arguments"];
    arguments = v5->_arguments;
    v5->_arguments = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exceptionType"];
    exceptionType = v5->_exceptionType;
    v5->_exceptionType = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"className"];
    className = v5->_className;
    v5->_className = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exceptionName"];
    exceptionName = v5->_exceptionName;
    v5->_exceptionName = v19;
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  composedMessage = self->_composedMessage;
  if (composedMessage)
  {
    [v3 setObject:composedMessage forKey:@"composedMessage"];
  }

  formatString = self->_formatString;
  if (formatString)
  {
    [v4 setObject:formatString forKey:@"formatString"];
  }

  arguments = self->_arguments;
  if (arguments)
  {
    [v4 setObject:arguments forKey:@"arguments"];
  }

  exceptionType = self->_exceptionType;
  if (exceptionType)
  {
    [v4 setObject:exceptionType forKey:@"exceptionType"];
  }

  className = self->_className;
  if (className)
  {
    [v4 setObject:className forKey:@"className"];
  }

  exceptionName = self->_exceptionName;
  if (exceptionName)
  {
    [v4 setObject:exceptionName forKey:@"exceptionName"];
  }

  return v4;
}

- (NSData)JSONRepresentation
{
  v2 = [(MXCrashDiagnosticObjectiveCExceptionReason *)self toDictionary];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v2])
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:1 error:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end