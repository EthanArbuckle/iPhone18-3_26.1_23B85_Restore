@interface SNClassificationResult
+ (SNClassificationResult)new;
- (BOOL)isEqual:(id)equal;
- (CMTimeRange)timeRange;
- (NSArray)classifications;
- (SNClassification)classificationForIdentifier:(NSString *)identifier;
- (SNClassificationResult)init;
- (SNClassificationResult)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SNClassificationResult)initWithClassificationDictionary:(id)dictionary;
- (SNClassificationResult)initWithCoder:(id)coder;
- (SNClassificationResult)initWithImpl:(id)impl;
- (id)_initPrivate:(id)private;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setTimeRange:(id *)range;
@end

@implementation SNClassificationResult

- (NSArray)classifications
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  classifications = [(_SNClassificationResult *)self->_impl classifications];
  v5 = [classifications countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(classifications);
        }

        v9 = [[SNClassification alloc] initWithImpl:*(*(&v11 + 1) + 8 * i)];
        [array addObject:v9];
      }

      v6 = [classifications countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (CMTimeRange)timeRange
{
  result = self->_impl;
  if (result)
  {
    return [(CMTimeRange *)result timeRange];
  }

  *&retstr->start.epoch = 0u;
  *&retstr->duration.timescale = 0u;
  *&retstr->start.value = 0u;
  return result;
}

- (SNClassificationResult)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-init is not a valid initializer for the class SNClassificationResult" userInfo:0];
  objc_exception_throw(v2);
}

+ (SNClassificationResult)new
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"+new is not a valid class method for the class SNClassificationResult" userInfo:0];
  objc_exception_throw(v2);
}

- (SNClassification)classificationForIdentifier:(NSString *)identifier
{
  v3 = [(_SNClassificationResult *)self->_impl classificationForIdentifier:identifier];
  if (v3)
  {
    v4 = [[SNClassification alloc] initWithImpl:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTimeRange:(id *)range
{
  v3 = *&range->var0.var3;
  v4[0] = *&range->var0.var0;
  v4[1] = v3;
  v4[2] = *&range->var1.var1;
  [(_SNClassificationResult *)self->_impl setTimeRange:v4];
}

- (SNClassificationResult)initWithClassificationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SNClassificationResult;
  v5 = [(SNClassificationResult *)&v9 init];
  if (v5)
  {
    v6 = [[_SNClassificationResult alloc] initWithClassificationDictionary:dictionaryCopy];
    impl = v5->_impl;
    v5->_impl = v6;

    if (!v5->_impl)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (SNClassificationResult)initWithImpl:(id)impl
{
  implCopy = impl;
  v9.receiver = self;
  v9.super_class = SNClassificationResult;
  v6 = [(SNClassificationResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, impl);
  }

  return v7;
}

- (id)_initPrivate:(id)private
{
  privateCopy = private;
  v9.receiver = self;
  v9.super_class = SNClassificationResult;
  v5 = [(SNClassificationResult *)&v9 init];
  if (v5)
  {
    v6 = [[_SNClassificationResult alloc] _initPrivate:privateCopy];
    impl = v5->_impl;
    v5->_impl = v6;

    if (!v5->_impl)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(_SNClassificationResult *)self->_impl copyWithZone:zone];
  v7 = [v5 initWithImpl:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(_SNClassificationResult *)self->_impl isEqual:v5->_impl];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (SNClassificationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SNClassificationResult;
  v5 = [(SNClassificationResult *)&v10 init];
  v6 = v5;
  if (!coderCopy || v5 && (v7 = [[_SNClassificationResult alloc] initWithCoder:coderCopy], impl = v6->_impl, v6->_impl = v7, impl, !v6->_impl))
  {

    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  if (coder)
  {
    MEMORY[0x1EEE66B58](self->_impl, sel_encodeWithCoder_);
  }
}

- (SNClassificationResult)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  representationCopy = representation;
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = SNClassificationResult;
  v10 = [(SNClassificationResult *)&v14 init];
  if (v10)
  {
    v11 = [[_SNClassificationResult alloc] initWithBinarySampleRepresentation:representationCopy metadata:metadataCopy timestamp:timestamp];
    impl = v10->_impl;
    v10->_impl = v11;

    if (!v10->_impl)
    {

      v10 = 0;
    }
  }

  return v10;
}

@end