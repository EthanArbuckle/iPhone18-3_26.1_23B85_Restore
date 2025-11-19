@interface TKSmartCardUserInteraction
- (TKSmartCardUserInteraction)init;
- (TKSmartCardUserInteraction)initWithCoder:(id)a3;
- (id)delegate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TKSmartCardUserInteraction

- (TKSmartCardUserInteraction)init
{
  v3.receiver = self;
  v3.super_class = TKSmartCardUserInteraction;
  result = [(TKSmartCardUserInteraction *)&v3 init];
  if (result)
  {
    result->_initialTimeout = 0.0;
    result->_interactionTimeout = 0.0;
  }

  return result;
}

- (TKSmartCardUserInteraction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TKSmartCardUserInteraction;
  v5 = [(TKSmartCardUserInteraction *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialTimeout"];
    v5->_initialTimeout = [v6 integerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interactionTimeout"];
    v5->_interactionTimeout = [v7 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  initialTimeout = self->_initialTimeout;
  v6 = a3;
  v7 = [v4 numberWithDouble:initialTimeout];
  [v6 encodeObject:v7 forKey:@"initialTimeout"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_interactionTimeout];
  [v6 encodeObject:v8 forKey:@"interactionTimeout"];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end