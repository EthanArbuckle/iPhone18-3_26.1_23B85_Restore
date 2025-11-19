@interface INConnectedCall
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INConnectedCall)initWithAudioRoute:(int64_t)a3;
- (INConnectedCall)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INConnectedCall;
  v6 = [(INConnectedCall *)&v11 description];
  v7 = [(INConnectedCall *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
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
  [v5 if_setObjectIfNonNil:v10 forKey:@"audioRoute"];

  return v5;
}

- (INConnectedCall)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"audioRoute"];

  return [(INConnectedCall *)self initWithAudioRoute:v4];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_audioRoute == v4->_audioRoute;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:self->_audioRoute];
  v3 = [v2 hash];

  return v3;
}

- (INConnectedCall)initWithAudioRoute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = INConnectedCall;
  result = [(INConnectedCall *)&v5 init];
  if (result)
  {
    result->_audioRoute = a3;
  }

  return result;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"audioRoute"];
    v8 = INCallAudioRouteWithString(v7);

    v9 = [[a1 alloc] initWithAudioRoute:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end