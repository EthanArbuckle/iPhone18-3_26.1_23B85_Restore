@interface INConnectedCall
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INConnectedCall)initWithAudioRoute:(int64_t)route;
- (INConnectedCall)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
@end

@implementation INConnectedCall

- (id)_dictionaryRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"audioRoute";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_audioRoute];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INConnectedCall;
  v6 = [(INConnectedCall *)&v11 description];
  _dictionaryRepresentation = [(INConnectedCall *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  audioRoute = self->_audioRoute;
  v7 = @"heySiriAudioRoute";
  v8 = @"unknown";
  if (audioRoute == 2)
  {
    v8 = @"bluetoothAudioRoute";
  }

  if (audioRoute != 1000)
  {
    v7 = v8;
  }

  if (audioRoute == 1)
  {
    v9 = @"speakerphoneAudioRoute";
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;
  [dictionary if_setObjectIfNonNil:v10 forKey:@"audioRoute"];

  return dictionary;
}

- (INConnectedCall)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"audioRoute"];

  return [(INConnectedCall *)self initWithAudioRoute:v4];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_audioRoute == equalCopy->_audioRoute;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_audioRoute];
  v3 = [v2 hash];

  return v3;
}

- (INConnectedCall)initWithAudioRoute:(int64_t)route
{
  v5.receiver = self;
  v5.super_class = INConnectedCall;
  result = [(INConnectedCall *)&v5 init];
  if (result)
  {
    result->_audioRoute = route;
  }

  return result;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"audioRoute"];
    v8 = INCallAudioRouteWithString(v7);

    v9 = [[self alloc] initWithAudioRoute:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end