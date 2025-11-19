@interface SNClassificationResult
+ (SNClassificationResult)new;
- (BOOL)isEqual:(id)a3;
- (CMTimeRange)timeRange;
- (NSArray)classifications;
- (SNClassification)classificationForIdentifier:(NSString *)identifier;
- (SNClassificationResult)init;
- (SNClassificationResult)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SNClassificationResult)initWithClassificationDictionary:(id)a3;
- (SNClassificationResult)initWithCoder:(id)a3;
- (SNClassificationResult)initWithImpl:(id)a3;
- (id)_initPrivate:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTimeRange:(id *)a3;
@end

@implementation SNClassificationResult

- (NSArray)classifications
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(_SNClassificationResult *)self->_impl classifications];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [[SNClassification alloc] initWithImpl:*(*(&v11 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
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

- (void)setTimeRange:(id *)a3
{
  v3 = *&a3->var0.var3;
  v4[0] = *&a3->var0.var0;
  v4[1] = v3;
  v4[2] = *&a3->var1.var1;
  [(_SNClassificationResult *)self->_impl setTimeRange:v4];
}

- (SNClassificationResult)initWithClassificationDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SNClassificationResult;
  v5 = [(SNClassificationResult *)&v9 init];
  if (v5)
  {
    v6 = [[_SNClassificationResult alloc] initWithClassificationDictionary:v4];
    impl = v5->_impl;
    v5->_impl = v6;

    if (!v5->_impl)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (SNClassificationResult)initWithImpl:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SNClassificationResult;
  v6 = [(SNClassificationResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
  }

  return v7;
}

- (id)_initPrivate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SNClassificationResult;
  v5 = [(SNClassificationResult *)&v9 init];
  if (v5)
  {
    v6 = [[_SNClassificationResult alloc] _initPrivate:v4];
    impl = v5->_impl;
    v5->_impl = v6;

    if (!v5->_impl)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(_SNClassificationResult *)self->_impl copyWithZone:a3];
  v7 = [v5 initWithImpl:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
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

- (SNClassificationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SNClassificationResult;
  v5 = [(SNClassificationResult *)&v10 init];
  v6 = v5;
  if (!v4 || v5 && (v7 = [[_SNClassificationResult alloc] initWithCoder:v4], impl = v6->_impl, v6->_impl = v7, impl, !v6->_impl))
  {

    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if (a3)
  {
    MEMORY[0x1EEE66B58](self->_impl, sel_encodeWithCoder_);
  }
}

- (SNClassificationResult)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = SNClassificationResult;
  v10 = [(SNClassificationResult *)&v14 init];
  if (v10)
  {
    v11 = [[_SNClassificationResult alloc] initWithBinarySampleRepresentation:v8 metadata:v9 timestamp:a5];
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