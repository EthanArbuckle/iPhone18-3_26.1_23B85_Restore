@interface _GCGamepadEventKeyboardEventAdapterConfig
- (_GCGamepadEventKeyboardEventAdapterConfig)init;
- (_GCGamepadEventKeyboardEventAdapterConfig)initWithCoder:(id)a3;
- (int64_t)gamepadElementForUsagePage:(int64_t)a3 usage:(int64_t)a4;
- (void)mapUsagePage:(int64_t)a3 usage:(int64_t)a4 toGamepadElement:(int64_t)a5;
@end

@implementation _GCGamepadEventKeyboardEventAdapterConfig

- (_GCGamepadEventKeyboardEventAdapterConfig)init
{
  v3.receiver = self;
  v3.super_class = _GCGamepadEventKeyboardEventAdapterConfig;
  return [(_GCGamepadEventKeyboardEventAdapterConfig *)&v3 init];
}

- (_GCGamepadEventKeyboardEventAdapterConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _GCGamepadEventKeyboardEventAdapterConfig;
  v5 = [(_GCGamepadEventKeyboardEventAdapterConfig *)&v10 init];
  if (v5)
  {
    v9 = 0;
    v6 = [v4 decodeBytesForKey:@"mappings" returnedLength:&v9];
    if (v9 >= 0x2F0)
    {
      v7 = 752;
    }

    else
    {
      v7 = v9;
    }

    memcpy(v5->_mappings, v6, v7);
  }

  return v5;
}

- (void)mapUsagePage:(int64_t)a3 usage:(int64_t)a4 toGamepadElement:(int64_t)a5
{
  if (a5 <= 0x2E)
  {
    v5 = self + 16 * a5;
    *(v5 + 1) = a3;
    *(v5 + 2) = a4;
  }
}

- (int64_t)gamepadElementForUsagePage:(int64_t)a3 usage:(int64_t)a4
{
  result = 0;
  for (i = &self->_mappings[0].usage; *(i - 1) != a3 || *i != a4; i += 2)
  {
    if (++result == 47)
    {
      return -1;
    }
  }

  return result;
}

@end