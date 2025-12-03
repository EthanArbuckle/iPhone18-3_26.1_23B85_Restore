@interface _MTLCommandBufferDescriptor
- (_MTLCommandBufferDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation _MTLCommandBufferDescriptor

- (_MTLCommandBufferDescriptor)init
{
  v3.receiver = self;
  v3.super_class = _MTLCommandBufferDescriptor;
  result = [(_MTLCommandBufferDescriptor *)&v3 init];
  if (result)
  {
    result->_errorOptions = 0;
    result->_retainedReferences = 1;
    result->_captureProgramAddressTable = 0;
    result->_cloneIntersectionFunctionTablesPerDispatch = 0;
    result->_disableFineGrainedComputePreemption = 0;
    result->_deadlineProfile = 0;
    result->_logState = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLCommandBufferDescriptor;
  [(_MTLCommandBufferDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setRetainedReferences:self->_retainedReferences];
    [v5 setErrorOptions:self->_errorOptions];
    [v5 setCaptureProgramAddressTable:self->_captureProgramAddressTable];
    [v5 setCloneIntersectionFunctionTablesPerDispatch:self->_cloneIntersectionFunctionTablesPerDispatch];
    [v5 setDisableFineGrainedComputePreemption:self->_disableFineGrainedComputePreemption];
    [v5 setDeadlineProfile:self->_deadlineProfile];
    [v5 setLogState:self->_logState];
  }

  return v5;
}

@end