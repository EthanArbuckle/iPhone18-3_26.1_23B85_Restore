@interface _MTLIOAccelMTLEvent
- (NSString)label;
- (_MTLIOAccelMTLEvent)initWithDevice:(id)a3 options:(int64_t)a4;
- (id)retainedLabel;
- (void)dealloc;
- (void)setLabel:(id)a3;
@end

@implementation _MTLIOAccelMTLEvent

- (_MTLIOAccelMTLEvent)initWithDevice:(id)a3 options:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = _MTLIOAccelMTLEvent;
  v5 = -[IOAccelMTLEvent initWithShared:options:](&v7, sel_initWithShared_options_, [a3 sharedRef], a4);
  if (v5)
  {
    v5->_device = a3;
    v5->_labelLock._os_unfair_lock_opaque = 0;
    v5->_enableBarrier = 1;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLIOAccelMTLEvent;
  [(IOAccelMTLEvent *)&v3 dealloc];
}

- (id)retainedLabel
{
  os_unfair_lock_lock(&self->_labelLock);
  v3 = self->_label;
  os_unfair_lock_unlock(&self->_labelLock);
  return v3;
}

- (NSString)label
{
  v2 = [(_MTLIOAccelMTLEvent *)self retainedLabel];

  return v2;
}

- (void)setLabel:(id)a3
{
  if (**MEMORY[0x1E69A8488])
  {
    v5 = *(&self->super.super.isa + *MEMORY[0x1E69A8480]);
    labelTraceID = self->_labelTraceID;
    [a3 cStringUsingEncoding:1];
    self->_labelTraceID = IOAccelDeviceTraceObjectLabel();
  }

  v7 = [a3 copy];
  os_unfair_lock_lock(&self->_labelLock);
  label = self->_label;
  self->_label = v7;
  os_unfair_lock_unlock(&self->_labelLock);
}

@end