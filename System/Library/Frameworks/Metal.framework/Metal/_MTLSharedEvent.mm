@interface _MTLSharedEvent
- (NSString)label;
- (_MTLSharedEvent)initWithOptions:(int64_t)a3;
- (_MTLSharedEvent)initWithSharedEventHandle:(id)a3;
- (id)newSharedEventHandle;
- (id)retainedLabel;
- (unsigned)encodeConditionalEventAbortCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3;
- (unsigned)encodeKernelSignalEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4;
- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4;
- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4 timeout:(unsigned int)a5;
- (void)dealloc;
- (void)setLabel:(id)a3;
@end

@implementation _MTLSharedEvent

- (unsigned)encodeKernelSignalEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4
{
  a3->var0 = *(&self->super.super.isa + *MEMORY[0x1E696CE18]);
  a3->var3 = a4;
  return 4;
}

- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4
{
  a3->var0 = *(&self->super.super.isa + *MEMORY[0x1E696CE18]);
  a3->var3 = a4;
  return 5;
}

- (unsigned)encodeKernelWaitEventCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3 value:(unint64_t)a4 timeout:(unsigned int)a5
{
  a3->var0 = *(&self->super.super.isa + *MEMORY[0x1E696CE18]);
  a3->var3 = a4;
  if (a5 >= 0xFFFF)
  {
    v5 = -1;
  }

  else
  {
    v5 = a5;
  }

  a3->var2 = v5;
  return 11;
}

- (unsigned)encodeConditionalEventAbortCommandArgs:(IOAccelKernelCommandSignalOrWaitEventArgs *)a3
{
  a3->var0 = *(&self->super.super.isa + *MEMORY[0x1E696CE18]);
  a3->var3 = 0;
  a3->var2 = 0;
  return 13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLSharedEvent;
  [(IOSurfaceSharedEvent *)&v3 dealloc];
}

- (_MTLSharedEvent)initWithSharedEventHandle:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MTLSharedEvent;
  v4 = -[IOSurfaceSharedEvent initWithMachPort:](&v6, sel_initWithMachPort_, [a3 eventPort]);
  if (v4)
  {
    v4->_label = [objc_msgSend(a3 "label")];
    v4->_labelLock._os_unfair_lock_opaque = 0;
    v4->_labelTraceID = [a3 labelTraceID];
  }

  return v4;
}

- (_MTLSharedEvent)initWithOptions:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = _MTLSharedEvent;
  result = [(IOSurfaceSharedEvent *)&v4 initWithOptions:a3];
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
  v2 = [(_MTLSharedEvent *)self retainedLabel];

  return v2;
}

- (void)setLabel:(id)a3
{
  if (MTLTraceEnabledSPI() && **MEMORY[0x1E69A8488])
  {
    v5 = *(&self->super.super.isa + *MEMORY[0x1E696CE20]);
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