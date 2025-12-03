@interface _GCHapticSyntheticCommand
- (_GCHapticSyntheticCommand)initWithHapticCommand:(const void *)command;
- (void)preprocessCommand:(const void *)command;
@end

@implementation _GCHapticSyntheticCommand

- (_GCHapticSyntheticCommand)initWithHapticCommand:(const void *)command
{
  v8.receiver = self;
  v8.super_class = _GCHapticSyntheticCommand;
  v4 = [(_GCHapticSyntheticCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = syntheticCommandServerID++;
    v4->_serverID = v6;
    v4->_type = *(command + 1);
    v4->_time = *(command + 1);
    v4->_channelOrSeqID = *(command + 2);
    v4->_identifier = *(command + 3);
    [(_GCHapticSyntheticCommand *)v4 preprocessCommand:command];
  }

  return v5;
}

- (void)preprocessCommand:(const void *)command
{
  v4 = *(command + 1);
  if ((v4 - 1) < 2)
  {
    v7 = [[_GCHapticTokenAndParams alloc] initWithHapticCommand:command];
    tokenAndParams = self->_tokenAndParams;
    self->_tokenAndParams = v7;
  }

  else
  {
    if (v4 == 3)
    {
      self->_value = *(command + 8);
      return;
    }

    if (v4 != 10)
    {
      return;
    }

    v5 = [[_GCHapticParameterCurve alloc] initWithHapticCommand:command];
    tokenAndParams = self->_parameterCurve;
    self->_parameterCurve = v5;
  }
}

@end