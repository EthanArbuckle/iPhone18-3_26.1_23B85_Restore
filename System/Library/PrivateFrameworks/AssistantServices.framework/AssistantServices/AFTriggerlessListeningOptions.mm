@interface AFTriggerlessListeningOptions
- (AFTriggerlessListeningOptions)initWithCoder:(id)coder;
- (id)_initWithShowUIDuringListening:(BOOL)listening playAlertBeforeListening:(BOOL)beforeListening;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setShowUIDuringListening:self->_showUIDuringListening];
  [v4 setPlayAlertBeforeListening:self->_playAlertBeforeListening];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  showUIDuringListening = self->_showUIDuringListening;
  coderCopy = coder;
  [coderCopy encodeBool:showUIDuringListening forKey:@"_showUIDuringListening"];
  [coderCopy encodeBool:self->_playAlertBeforeListening forKey:@"_playAlertBeforeListening"];
}

- (AFTriggerlessListeningOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AFTriggerlessListeningOptions *)self init];
  if (v5)
  {
    v5->_showUIDuringListening = [coderCopy decodeBoolForKey:@"_showUIDuringListening"];
    v5->_playAlertBeforeListening = [coderCopy decodeBoolForKey:@"_playAlertBeforeListening"];
  }

  return v5;
}

- (id)_initWithShowUIDuringListening:(BOOL)listening playAlertBeforeListening:(BOOL)beforeListening
{
  result = [(AFTriggerlessListeningOptions *)self init];
  if (result)
  {
    *(result + 8) = listening;
    *(result + 9) = beforeListening;
  }

  return result;
}

@end