@interface AFTriggerlessListeningOptions
- (AFTriggerlessListeningOptions)initWithCoder:(id)a3;
- (id)_initWithShowUIDuringListening:(BOOL)a3 playAlertBeforeListening:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFTriggerlessListeningOptions

- (id)description
{
  v8.receiver = self;
  v8.super_class = AFTriggerlessListeningOptions;
  v3 = [(AFTriggerlessListeningOptions *)&v8 description];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_showUIDuringListening];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_playAlertBeforeListening];
  v6 = [v3 stringByAppendingFormat:@"showUIBeforeListening: %@, playAlertBeforeListening: %@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setShowUIDuringListening:self->_showUIDuringListening];
  [v4 setPlayAlertBeforeListening:self->_playAlertBeforeListening];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  showUIDuringListening = self->_showUIDuringListening;
  v5 = a3;
  [v5 encodeBool:showUIDuringListening forKey:@"_showUIDuringListening"];
  [v5 encodeBool:self->_playAlertBeforeListening forKey:@"_playAlertBeforeListening"];
}

- (AFTriggerlessListeningOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AFTriggerlessListeningOptions *)self init];
  if (v5)
  {
    v5->_showUIDuringListening = [v4 decodeBoolForKey:@"_showUIDuringListening"];
    v5->_playAlertBeforeListening = [v4 decodeBoolForKey:@"_playAlertBeforeListening"];
  }

  return v5;
}

- (id)_initWithShowUIDuringListening:(BOOL)a3 playAlertBeforeListening:(BOOL)a4
{
  result = [(AFTriggerlessListeningOptions *)self init];
  if (result)
  {
    *(result + 8) = a3;
    *(result + 9) = a4;
  }

  return result;
}

@end