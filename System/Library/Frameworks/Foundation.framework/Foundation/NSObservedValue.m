@interface NSObservedValue
- (NSError)error;
- (id)copyToHeap;
- (id)debugDescription;
- (id)value;
- (void)dealloc;
- (void)setError:(id)a3;
- (void)setFinished:(BOOL)a3;
- (void)setValue:(id)a3;
@end

@implementation NSObservedValue

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSObservedValue;
  [(NSObservedValue *)&v3 dealloc];
}

- (void)setValue:(id)a3
{
  self->_tag = 1;
  contents = self->_contents;
  if (contents != a3)
  {

    self->_contents = a3;
  }
}

- (id)value
{
  if (self->_tag == 1)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setError:(id)a3
{
  self->_tag = 2;
  contents = self->_contents;
  if (contents != a3)
  {

    self->_contents = a3;
  }
}

- (NSError)error
{
  if (self->_tag == 2)
  {
    return self->_contents;
  }

  else
  {
    return 0;
  }
}

- (void)setFinished:(BOOL)a3
{
  self->_tag = 3;

  self->_contents = *MEMORY[0x1E695E4D0];
}

- (id)debugDescription
{
  tag = self->_tag;
  if (tag == 2)
  {
    return [NSString stringWithFormat:@"Error %@ in observed value %p", self->_contents, self];
  }

  if (tag != 1)
  {
    return [NSString stringWithFormat:@"Invalid observed value: %p", self, v6];
  }

  if ([(NSObservedValue *)self _isToManyChangeInformation])
  {
    v4 = @"To-many collection changes %@ in observed value %p";
  }

  else
  {
    v4 = @"Value %@ in observed value wrapper %p";
  }

  return [NSString stringWithFormat:v4, self->_contents, self];
}

- (id)copyToHeap
{
  if (qword_1ED43F6D8 != -1)
  {
    dispatch_once(&qword_1ED43F6D8, &__block_literal_global_13);
  }

  Instance = class_createInstance(qword_1ED43F6D0, 0);
  Instance[6] = self->_tag;
  *(Instance + 1) = self->_contents;
  return Instance;
}

uint64_t __29__NSObservedValue_copyToHeap__block_invoke()
{
  result = objc_opt_class();
  qword_1ED43F6D0 = result;
  return result;
}

@end