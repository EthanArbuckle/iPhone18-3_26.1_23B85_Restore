@interface _GCGamepadEventKeyboardEventAdapterConfig
- (_GCGamepadEventKeyboardEventAdapterConfig)init;
- (_GCGamepadEventKeyboardEventAdapterConfig)initWithCoder:(id)coder;
- (int64_t)gamepadElementForUsagePage:(int64_t)page usage:(int64_t)usage;
- (void)mapUsagePage:(int64_t)page usage:(int64_t)usage toGamepadElement:(int64_t)element;
@end

@implementation _GCGamepadEventKeyboardEventAdapterConfig

- (_GCGamepadEventKeyboardEventAdapterConfig)init
{
  v3.receiver = self;
  v3.super_class = _GCGamepadEventKeyboardEventAdapterConfig;
  return [(_GCGamepadEventKeyboardEventAdapterConfig *)&v3 init];
}

- (_GCGamepadEventKeyboardEventAdapterConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _GCGamepadEventKeyboardEventAdapterConfig;
  v5 = [(_GCGamepadEventKeyboardEventAdapterConfig *)&v10 init];
  if (v5)
  {
    v9 = 0;
    v6 = [coderCopy decodeBytesForKey:@"mappings" returnedLength:&v9];
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

- (void)mapUsagePage:(int64_t)page usage:(int64_t)usage toGamepadElement:(int64_t)element
{
  if (element <= 0x2E)
  {
    v5 = self + 16 * element;
    *(v5 + 1) = page;
    *(v5 + 2) = usage;
  }
}

- (int64_t)gamepadElementForUsagePage:(int64_t)page usage:(int64_t)usage
{
  result = 0;
  for (i = &self->_mappings[0].usage; *(i - 1) != page || *i != usage; i += 2)
  {
    if (++result == 47)
    {
      return -1;
    }
  }

  return result;
}

@end