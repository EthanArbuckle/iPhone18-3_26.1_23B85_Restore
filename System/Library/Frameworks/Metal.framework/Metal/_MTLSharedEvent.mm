@interface _MTLSharedEvent
- (NSString)label;
- (_MTLSharedEvent)initWithOptions:(int64_t)options;
- (_MTLSharedEvent)initWithSharedEventHandle:(id)handle;
- (id)newSharedEventHandle;
- (id)retainedLabel;
- (unsigned)encodeConditionalEventAbortCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args;
- (unsigned)encodeKernelSignalEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value;
- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value;
- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value timeout:(unsigned int)timeout;
- (void)dealloc;
- (void)setLabel:(id)label;
@end

@implementation _MTLSharedEvent

- (unsigned)encodeKernelSignalEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value
{
  args->var0 = *(&self->super.super.isa + *MEMORY[0x1E696CE18]);
  args->var3 = value;
  return 4;
}

- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value
{
  args->var0 = *(&self->super.super.isa + *MEMORY[0x1E696CE18]);
  args->var3 = value;
  return 5;
}

- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args value:(unint64_t)value timeout:(unsigned int)timeout
{
  args->var0 = *(&self->super.super.isa + *MEMORY[0x1E696CE18]);
  args->var3 = value;
  if (timeout >= 0xFFFF)
  {
    timeoutCopy = -1;
  }

  else
  {
    timeoutCopy = timeout;
  }

  args->var2 = timeoutCopy;
  return 11;
}

- (unsigned)encodeConditionalEventAbortCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)args
{
  args->var0 = *(&self->super.super.isa + *MEMORY[0x1E696CE18]);
  args->var3 = 0;
  args->var2 = 0;
  return 13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLSharedEvent;
  [(IOSurfaceSharedEvent *)&v3 dealloc];
}

- (_MTLSharedEvent)initWithSharedEventHandle:(id)handle
{
  v6.receiver = self;
  v6.super_class = _MTLSharedEvent;
  v4 = -[IOSurfaceSharedEvent initWithMachPort:](&v6, sel_initWithMachPort_, [handle eventPort]);
  if (v4)
  {
    v4->_label = [objc_msgSend(handle "label")];
    v4->_labelLock._os_unfair_lock_opaque = 0;
    v4->_labelTraceID = [handle labelTraceID];
  }

  return v4;
}

- (_MTLSharedEvent)initWithOptions:(int64_t)options
{
  v4.receiver = self;
  v4.super_class = _MTLSharedEvent;
  result = [(IOSurfaceSharedEvent *)&v4 initWithOptions:options];
  if (result)
  {
    result->_labelLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)newSharedEventHandle
{
  v3 = [MTLSharedEventHandle alloc];

  return [(MTLSharedEventHandle *)v3 initWithSharedEvent:self];
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
  retainedLabel = [(_MTLSharedEvent *)self retainedLabel];

  return retainedLabel;
}

- (void)setLabel:(id)label
{
  if (MTLTraceEnabledSPI() && **MEMORY[0x1E69A8488])
  {
    v5 = *(&self->super.super.isa + *MEMORY[0x1E696CE20]);
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