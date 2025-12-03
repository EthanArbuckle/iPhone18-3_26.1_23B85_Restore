@interface _HKXMLValidator
+ (id)validatorWithPathToXSD:(id)d;
+ (id)validatorWithXSD:(id)d;
- (BOOL)validateXML:(id)l simpleError:(id *)error detailedErrors:(id *)errors;
- (id)_initWithSchema:(_xmlSchema *)schema;
- (void)dealloc;
@end

@implementation _HKXMLValidator

+ (id)validatorWithXSD:(id)d
{
  dCopy = d;
  dCopy2 = d;
  bytes = [dCopy2 bytes];
  v8 = [dCopy2 length];

  v9 = xmlSchemaNewMemParserCtxt(bytes, v8);
  if (v9)
  {
    v10 = v9;
    v11 = xmlSchemaParse(v9);
    xmlSchemaFreeParserCtxt(v10);
    if (v11)
    {
      v9 = [[self alloc] _initWithSchema:v11];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)validatorWithPathToXSD:(id)d
{
  dCopy = d;
  v6 = xmlSchemaNewParserCtxt([d cStringUsingEncoding:4]);
  if (v6)
  {
    v7 = v6;
    v8 = xmlSchemaParse(v6);
    xmlSchemaFreeParserCtxt(v7);
    if (v8)
    {
      v6 = [[self alloc] _initWithSchema:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_initWithSchema:(_xmlSchema *)schema
{
  v5.receiver = self;
  v5.super_class = _HKXMLValidator;
  result = [(_HKXMLValidator *)&v5 init];
  if (result)
  {
    *(result + 1) = schema;
  }

  return result;
}

- (void)dealloc
{
  xsdSchema = self->_xsdSchema;
  if (xsdSchema)
  {
    xmlSchemaFree(xsdSchema);
    self->_xsdSchema = 0;
  }

  v4.receiver = self;
  v4.super_class = _HKXMLValidator;
  [(_HKXMLValidator *)&v4 dealloc];
}

- (BOOL)validateXML:(id)l simpleError:(id *)error detailedErrors:(id *)errors
{
  lCopy = l;
  v9 = objc_alloc_init(_HKValidationErrorTracker);
  bytes = [lCopy bytes];
  v11 = [lCopy length];

  xmlSetGenericErrorFunc(v9, _ValidatorErrorFunc);
  Memory = xmlReadMemory(bytes, v11, "content.xml", 0, 0);
  xmlSetGenericErrorFunc(0, 0);
  if (!Memory)
  {
    v16 = @"Failed to validate XML: unable to read XML content";
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = xmlSchemaNewValidCtxt(self->_xsdSchema);
  if (!v13)
  {
    v16 = @"Failed to validate XML: internal error creating validation context";
    if (!error)
    {
      goto LABEL_8;
    }

LABEL_7:
    v17 = v16;
    *error = v16;
    goto LABEL_8;
  }

  v14 = v13;
  xmlSchemaSetValidErrors(v13, _ValidatorErrorFunc, _ValidatorWarnFunc, v9);
  v15 = xmlSchemaValidateDoc(v14, Memory);
  if (!v15)
  {
    xmlSchemaFreeValidCtxt(v14);
    v16 = 0;
    v18 = 1;
    goto LABEL_14;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to validate XML, error code %d", v15];
  xmlSchemaFreeValidCtxt(v14);
  if (error)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (errors)
  {
    [(_HKValidationErrorTracker *)v9 errorMessage];
    *errors = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_14:

  return v18;
}

@end