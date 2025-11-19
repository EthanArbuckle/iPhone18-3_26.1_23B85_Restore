@interface _PHValidation
- (BOOL)isValid:(id *)a3;
- (_PHValidation)initWithOptions:(unint64_t)a3;
- (void)assert:(BOOL)a3 code:(int64_t)a4 failureType:(unint64_t)a5 format:(id)a6;
- (void)assert:(BOOL)a3 error:(id)a4;
- (void)validateOption:(unint64_t)a3 usingBlock:(id)a4;
@end

@implementation _PHValidation

- (BOOL)isValid:(id *)a3
{
  v5 = self->_error;
  if (v5)
  {
    if (a3)
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

  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = v5;
  v7 = 0;
  *a3 = v5;
LABEL_8:

  return v7;
}

- (void)assert:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  if (!a3 && !self->_error)
  {
    v9 = v6;
    v7 = [v6 copy];
    error = self->_error;
    self->_error = v7;

    v6 = v9;
  }
}

- (void)assert:(BOOL)a3 code:(int64_t)a4 failureType:(unint64_t)a5 format:(id)a6
{
  v10 = a6;
  if (!a3 && !self->_error)
  {
    v11 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, v10, &v14);
    v12 = PHValidatorError(a4, a5, v11);
    error = self->_error;
    self->_error = v12;
  }
}

- (void)validateOption:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  if (!self->_error && (self->_requestedOptions & a3) != 0 && (a3 & ~self->_validatedOptions) != 0)
  {
    v7 = v6;
    v6[2]();
    v6 = v7;
    self->_validatedOptions |= a3;
  }
}

- (_PHValidation)initWithOptions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _PHValidation;
  result = [(_PHValidation *)&v5 init];
  if (result)
  {
    result->_requestedOptions = a3;
  }

  return result;
}

@end