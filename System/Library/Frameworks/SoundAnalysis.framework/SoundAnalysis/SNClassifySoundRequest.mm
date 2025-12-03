@interface SNClassifySoundRequest
+ (SNClassifySoundRequest)new;
- (BOOL)isEqual:(id)equal;
- (CMTime)windowDuration;
- (SNClassifySoundRequest)init;
- (SNClassifySoundRequest)initWithClassifierIdentifier:(SNClassifierIdentifier)classifierIdentifier error:(NSError *)error;
- (SNClassifySoundRequest)initWithCoder:(id)coder;
- (SNClassifySoundRequest)initWithImpl:(id)impl;
- (SNClassifySoundRequest)initWithMLModel:(MLModel *)mlModel error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setOverlapFactor:(double)overlapFactor;
- (void)setWindowDuration:(CMTime *)windowDuration;
@end

@implementation SNClassifySoundRequest

- (void)setOverlapFactor:(double)overlapFactor
{
  impl = self->_impl;
  v7 = 0;
  v4 = [(_SNClassifySoundRequest *)impl setOverlapFactor:&v7 error:overlapFactor];
  v5 = v7;
  if (!v4)
  {
    v6 = [SNError exceptionFromError:v5];
    [v6 raise];
  }
}

- (CMTime)windowDuration
{
  result = self->_impl;
  if (result)
  {
    return MEMORY[0x1EEE66B58](result, sel_windowDuration);
  }

  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  return result;
}

- (void)setWindowDuration:(CMTime *)windowDuration
{
  impl = self->_impl;
  v4 = *windowDuration;
  [(_SNClassifySoundRequest *)impl setWindowDuration:&v4];
}

- (SNClassifySoundRequest)initWithMLModel:(MLModel *)mlModel error:(NSError *)error
{
  v6 = mlModel;
  v11.receiver = self;
  v11.super_class = SNClassifySoundRequest;
  v7 = [(SNClassifySoundRequest *)&v11 init];
  if (v7)
  {
    v8 = [[_SNClassifySoundRequest alloc] initWithMLModel:v6 error:error];
    impl = v7->_impl;
    v7->_impl = v8;

    if (!v7->_impl)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (SNClassifySoundRequest)initWithClassifierIdentifier:(SNClassifierIdentifier)classifierIdentifier error:(NSError *)error
{
  v6 = classifierIdentifier;
  v11.receiver = self;
  v11.super_class = SNClassifySoundRequest;
  v7 = [(SNClassifySoundRequest *)&v11 init];
  if (v7)
  {
    v8 = [[_SNClassifySoundRequest alloc] initWithClassifierIdentifier:v6 error:error];
    impl = v7->_impl;
    v7->_impl = v8;

    if (!v7->_impl)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (SNClassifySoundRequest)initWithImpl:(id)impl
{
  implCopy = impl;
  v9.receiver = self;
  v9.super_class = SNClassifySoundRequest;
  v6 = [(SNClassifySoundRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, impl);
  }

  return v7;
}

- (SNClassifySoundRequest)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-init is not a valid initializer for the class SNClassifySoundRequest" userInfo:0];
  objc_exception_throw(v2);
}

+ (SNClassifySoundRequest)new
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"+new is not a valid class method for the class SNClassifySoundRequest" userInfo:0];
  objc_exception_throw(v2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(_SNClassifySoundRequest *)self->_impl copyWithZone:zone];
  v7 = [v5 initWithImpl:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_SNClassifySoundRequest *)self->_impl isEqual:equalCopy->_impl];
  }

  return v5;
}

- (SNClassifySoundRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SNClassifySoundRequest;
  v5 = [(SNClassifySoundRequest *)&v9 init];
  if (v5)
  {
    v6 = [[_SNClassifySoundRequest alloc] initWithCoder:coderCopy];
    impl = v5->_impl;
    v5->_impl = v6;

    if (!v5->_impl)
    {

      v5 = 0;
    }
  }

  return v5;
}

@end