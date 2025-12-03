@interface INStartCallRequestMetadata
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INStartCallRequestMetadata)initWithAppInferred:(BOOL)inferred;
- (INStartCallRequestMetadata)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INStartCallRequestMetadata;
  v6 = [(INStartCallRequestMetadata *)&v11 description];
  _dictionaryRepresentation = [(INStartCallRequestMetadata *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_appInferred];
  [dictionary if_setObjectIfNonNil:v6 forKey:@"appInferred"];

  return dictionary;
}

- (INStartCallRequestMetadata)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"appInferred"];

  return [(INStartCallRequestMetadata *)self initWithAppInferred:v4];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_appInferred == equalCopy->_appInferred;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:self->_appInferred];
  v3 = [v2 hash];

  return v3;
}

- (INStartCallRequestMetadata)initWithAppInferred:(BOOL)inferred
{
  v5.receiver = self;
  v5.super_class = INStartCallRequestMetadata;
  result = [(INStartCallRequestMetadata *)&v5 init];
  if (result)
  {
    result->_appInferred = inferred;
  }

  return result;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"appInferred"];
    bOOLValue = [v7 BOOLValue];

    v9 = [[self alloc] initWithAppInferred:bOOLValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end