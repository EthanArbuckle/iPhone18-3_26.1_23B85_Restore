@interface MXCrashDiagnosticObjectiveCExceptionReason
- (MXCrashDiagnosticObjectiveCExceptionReason)initWithCoder:(id)coder;
- (MXCrashDiagnosticObjectiveCExceptionReason)initWithComposedMessage:(id)message formatString:(id)string arguments:(id)arguments type:(id)type className:(id)name exceptionName:(id)exceptionName;
- (NSData)JSONRepresentation;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXCrashDiagnosticObjectiveCExceptionReason

- (MXCrashDiagnosticObjectiveCExceptionReason)initWithComposedMessage:(id)message formatString:(id)string arguments:(id)arguments type:(id)type className:(id)name exceptionName:(id)exceptionName
{
  messageCopy = message;
  stringCopy = string;
  argumentsCopy = arguments;
  typeCopy = type;
  nameCopy = name;
  exceptionNameCopy = exceptionName;
  v24.receiver = self;
  v24.super_class = MXCrashDiagnosticObjectiveCExceptionReason;
  v18 = [(MXCrashDiagnosticObjectiveCExceptionReason *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_composedMessage, message);
    objc_storeStrong(&v19->_formatString, string);
    objc_storeStrong(&v19->_arguments, arguments);
    objc_storeStrong(&v19->_exceptionType, type);
    objc_storeStrong(&v19->_className, name);
    objc_storeStrong(&v19->_exceptionName, exceptionName);
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  composedMessage = self->_composedMessage;
  coderCopy = coder;
  [coderCopy encodeObject:composedMessage forKey:@"composedMessage"];
  [coderCopy encodeObject:self->_formatString forKey:@"formatString"];
  [coderCopy encodeObject:self->_arguments forKey:@"arguments"];
  [coderCopy encodeObject:self->_exceptionType forKey:@"exceptionType"];
  [coderCopy encodeObject:self->_className forKey:@"className"];
  [coderCopy encodeObject:self->_exceptionName forKey:@"exceptionName"];
}

- (MXCrashDiagnosticObjectiveCExceptionReason)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = MXCrashDiagnosticObjectiveCExceptionReason;
  v5 = [(MXCrashDiagnosticObjectiveCExceptionReason *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"composedMessage"];
    composedMessage = v5->_composedMessage;
    v5->_composedMessage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formatString"];
    formatString = v5->_formatString;
    v5->_formatString = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"arguments"];
    arguments = v5->_arguments;
    v5->_arguments = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exceptionType"];
    exceptionType = v5->_exceptionType;
    v5->_exceptionType = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"className"];
    className = v5->_className;
    v5->_className = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exceptionName"];
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
  toDictionary = [(MXCrashDiagnosticObjectiveCExceptionReason *)self toDictionary];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:toDictionary])
  {
    v5 = 0;
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:toDictionary options:1 error:&v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end