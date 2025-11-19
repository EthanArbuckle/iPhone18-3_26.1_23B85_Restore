@interface INStartCallRequestMetadata
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INStartCallRequestMetadata)initWithAppInferred:(BOOL)a3;
- (INStartCallRequestMetadata)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation INStartCallRequestMetadata

- (id)_dictionaryRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"appInferred";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:self->_appInferred];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INStartCallRequestMetadata;
  v6 = [(INStartCallRequestMetadata *)&v11 description];
  v7 = [(INStartCallRequestMetadata *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_appInferred];
  [v5 if_setObjectIfNonNil:v6 forKey:@"appInferred"];

  return v5;
}

- (INStartCallRequestMetadata)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"appInferred"];

  return [(INStartCallRequestMetadata *)self initWithAppInferred:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_appInferred == v4->_appInferred;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:self->_appInferred];
  v3 = [v2 hash];

  return v3;
}

- (INStartCallRequestMetadata)initWithAppInferred:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = INStartCallRequestMetadata;
  result = [(INStartCallRequestMetadata *)&v5 init];
  if (result)
  {
    result->_appInferred = a3;
  }

  return result;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"appInferred"];
    v8 = [v7 BOOLValue];

    v9 = [[a1 alloc] initWithAppInferred:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end