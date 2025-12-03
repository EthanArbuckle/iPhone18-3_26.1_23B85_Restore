@interface _MTLIOAccelMTLEvent
- (NSString)label;
- (_MTLIOAccelMTLEvent)initWithDevice:(id)device options:(int64_t)options;
- (id)retainedLabel;
- (void)dealloc;
- (void)setLabel:(id)label;
@end

@implementation _MTLIOAccelMTLEvent

- (_MTLIOAccelMTLEvent)initWithDevice:(id)device options:(int64_t)options
{
  v7.receiver = self;
  v7.super_class = _MTLIOAccelMTLEvent;
  v5 = -[IOAccelMTLEvent initWithShared:options:](&v7, sel_initWithShared_options_, [device sharedRef], options);
  if (v5)
  {
    v5->_device = device;
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
  retainedLabel = [(_MTLIOAccelMTLEvent *)self retainedLabel];

  return retainedLabel;
}

- (void)setLabel:(id)label
{
  if (**MEMORY[0x1E69A8488])
  {
    v5 = *(&self->super.super.isa + *MEMORY[0x1E69A8480]);
    labelTraceID = self->_labelTraceID;
    [label cStringUsingEncoding:1];
    self->_labelTraceID = IOAccelDeviceTraceObjectLabel();
  }

  v7 = [label copy];
  os_unfair_lock_lock(&self->_labelLock);
  label = self->_label;
  self->_label = v7;
  os_unfair_lock_unlock(&self->_labelLock);
}

@end