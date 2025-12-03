@interface _PHValidation
- (BOOL)isValid:(id *)valid;
- (_PHValidation)initWithOptions:(unint64_t)options;
- (void)assert:(BOOL)assert code:(int64_t)code failureType:(unint64_t)type format:(id)format;
- (void)assert:(BOOL)assert error:(id)error;
- (void)validateOption:(unint64_t)option usingBlock:(id)block;
@end

@implementation _PHValidation

- (BOOL)isValid:(id *)valid
{
  v5 = self->_error;
  if (v5)
  {
    if (valid)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if ((self->_requestedOptions & ~self->_validatedOptions) == 0)
  {
    v5 = 0;
    v7 = 1;
    goto LABEL_8;
  }

  v8 = MEMORY[0x1E696ABC0];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_validatedOptions];
  v5 = [v8 ph_genericErrorWithLocalizedDescription:{@"Not all options were validated (%@, %@)", v9, v10}];

  if (!valid)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = v5;
  v7 = 0;
  *valid = v5;
LABEL_8:

  return v7;
}

- (void)assert:(BOOL)assert error:(id)error
{
  errorCopy = error;
  if (!assert && !self->_error)
  {
    v9 = errorCopy;
    v7 = [errorCopy copy];
    error = self->_error;
    self->_error = v7;

    errorCopy = v9;
  }
}

- (void)assert:(BOOL)assert code:(int64_t)code failureType:(unint64_t)type format:(id)format
{
  formatCopy = format;
  if (!assert && !self->_error)
  {
    v11 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, formatCopy, &v14);
    v12 = PHValidatorError(code, type, v11);
    error = self->_error;
    self->_error = v12;
  }
}

- (void)validateOption:(unint64_t)option usingBlock:(id)block
{
  blockCopy = block;
  if (!self->_error && (self->_requestedOptions & option) != 0 && (option & ~self->_validatedOptions) != 0)
  {
    v7 = blockCopy;
    blockCopy[2]();
    blockCopy = v7;
    self->_validatedOptions |= option;
  }
}

- (_PHValidation)initWithOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = _PHValidation;
  result = [(_PHValidation *)&v5 init];
  if (result)
  {
    result->_requestedOptions = options;
  }

  return result;
}

@end