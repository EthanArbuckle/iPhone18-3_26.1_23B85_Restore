@interface VSFailable
+ (id)decodableClasses;
+ (id)failableWithError:(id)error;
+ (id)failableWithObject:(id)object;
- (VSFailable)init;
- (VSFailable)initWithCoder:(id)coder;
- (VSFailable)initWithError:(id)error;
- (VSFailable)initWithObject:(id)object;
- (id)description;
- (id)unwrappedWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)unwrapObject:(id)object error:(id)error;
@end

@implementation VSFailable

+ (id)decodableClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
}

+ (id)failableWithObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithObject:objectCopy];

  return v5;
}

+ (id)failableWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] initWithError:errorCopy];

  return v5;
}

- (VSFailable)initWithObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The object parameter must not be nil."];
  }

  v9.receiver = self;
  v9.super_class = VSFailable;
  v6 = [(VSFailable *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_kind = 0;
    objc_storeStrong(&v6->_object, object);
  }

  return v7;
}

- (VSFailable)initWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The error parameter must not be nil."];
  }

  v10.receiver = self;
  v10.super_class = VSFailable;
  v5 = [(VSFailable *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_kind = 1;
    v7 = [errorCopy copy];
    error = v6->_error;
    v6->_error = v7;
  }

  return v6;
}

- (VSFailable)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (void)unwrapObject:(id)object error:(id)error
{
  objectCopy = object;
  errorCopy = error;
  if (objectCopy)
  {
    if (errorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The objectHandler parameter must not be nil."];
    if (errorCopy)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorHandler parameter must not be nil."];
LABEL_3:
  kind = [(VSFailable *)self kind];
  if (kind == 1)
  {
    error = [(VSFailable *)self error];
    v9 = errorCopy[2];
  }

  else
  {
    if (kind)
    {
      goto LABEL_10;
    }

    error = [(VSFailable *)self object];
    v9 = objectCopy[2];
  }

  v9();

LABEL_10:
}

- (id)unwrappedWithError:(id *)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__VSFailable_unwrappedWithError___block_invoke;
  v6[3] = &unk_278B73A80;
  v6[4] = &v7;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__VSFailable_unwrappedWithError___block_invoke_2;
  v5[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v5[4] = error;
  [(VSFailable *)self unwrapObject:v6 error:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

id __33__VSFailable_unwrappedWithError___block_invoke_2(uint64_t a1, id a2)
{
  result = a2;
  **(a1 + 32) = a2;
  return result;
}

- (VSFailable)initWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  v13.receiver = self;
  v13.super_class = VSFailable;
  v5 = [(VSFailable *)&v13 init];
  if (v5)
  {
    v5->_kind = [coderCopy decodeIntegerForKey:@"VSFailableKindKey"];
    decodableClasses = [objc_opt_class() decodableClasses];
    v7 = [coderCopy decodeObjectOfClasses:decodableClasses forKey:@"VSFailableObjectKey"];
    object = v5->_object;
    v5->_object = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VSFailableErrorKey"];
    v10 = [v9 copy];
    error = v5->_error;
    v5->_error = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  VSRequireKeyedCoder(coderCopy);
  [coderCopy encodeInteger:-[VSFailable kind](self forKey:{"kind"), @"VSFailableKindKey"}];
  object = [(VSFailable *)self object];
  [coderCopy encodeObject:object forKey:@"VSFailableObjectKey"];

  error = [(VSFailable *)self error];
  [coderCopy encodeObject:error forKey:@"VSFailableErrorKey"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  kind = [(VSFailable *)self kind];
  if (kind == 1)
  {
    v5 = @"error";
  }

  else
  {
    v5 = 0;
  }

  if (!kind)
  {
    v5 = @"object";
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = %@", @"kind", v5];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  object = [(VSFailable *)self object];
  v9 = [v7 stringWithFormat:@"%@ = %@", @"object", object];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  error = [(VSFailable *)self error];
  v12 = [v10 stringWithFormat:@"%@ = %@", @"error", error];
  [v3 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  v18.receiver = self;
  v18.super_class = VSFailable;
  v14 = [(VSFailable *)&v18 description];
  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [v13 stringWithFormat:@"<%@ %@>", v14, v15];

  return v16;
}

@end