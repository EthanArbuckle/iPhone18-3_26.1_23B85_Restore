@interface _GCHapticSyntheticCommand
- (_GCHapticSyntheticCommand)initWithHapticCommand:(const void *)a3;
- (void)preprocessCommand:(const void *)a3;
@end

@implementation _GCHapticSyntheticCommand

- (_GCHapticSyntheticCommand)initWithHapticCommand:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = _GCHapticSyntheticCommand;
  v4 = [(_GCHapticSyntheticCommand *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v6 = syntheticCommandServerID++;
    v4->_serverID = v6;
    v4->_type = *(a3 + 1);
    v4->_time = *(a3 + 1);
    v4->_channelOrSeqID = *(a3 + 2);
    v4->_identifier = *(a3 + 3);
    [(_GCHapticSyntheticCommand *)v4 preprocessCommand:a3];
  }

  return v5;
}

- (void)preprocessCommand:(const void *)a3
{
  v4 = *(a3 + 1);
  if ((v4 - 1) < 2)
  {
    v7 = [[_GCHapticTokenAndParams alloc] initWithHapticCommand:a3];
    tokenAndParams = self->_tokenAndParams;
    self->_tokenAndParams = v7;
  }

  else
  {
    if (v4 == 3)
    {
      self->_value = *(a3 + 8);
      return;
    }

    if (v4 != 10)
    {
      return;
    }

    v5 = [[_GCHapticParameterCurve alloc] initWithHapticCommand:a3];
    tokenAndParams = self->_parameterCurve;
    self->_parameterCurve = v5;
  }
}

@end