@interface _GCDevicePhysicalInputFacade
- (GCDevice)device;
- (OS_dispatch_queue)queue;
- (_GCDevicePhysicalInputFacade)initWithParameters:(id)parameters;
- (_GCDevicePhysicalInputFacade)initWithTemplate:(id)template context:(id)context;
- (double)lastEventLatency;
- (double)lastEventTimestamp;
- (id)_elementsForProtocol:(id *)result;
- (id)alternatePhysicalInputWithAttribute:(id)attribute;
- (id)capture;
- (id)changedElements;
- (id)elementValueDidChangeHandler;
- (id)inputStateAvailableHandler;
- (id)nextInputState;
- (id)nextInputStateNotExceedingTimestamp:(double)timestamp;
- (id)objectForKeyedSubscript:(id)subscript;
- (int64_t)changeForElement:(id)element;
- (int64_t)inputStateQueueDepth;
- (void)setElementValueDidChangeHandler:(id)handler;
- (void)setInputStateAvailableHandler:(id)handler;
- (void)setInputStateQueueDepth:(int64_t)depth;
- (void)setQueue:(id)queue;
@end

@implementation _GCDevicePhysicalInputFacade

- (_GCDevicePhysicalInputFacade)initWithParameters:(id)parameters
{
  v4.receiver = self;
  v4.super_class = _GCDevicePhysicalInputFacade;
  return [(_GCDevicePhysicalInputView *)&v4 initWithParameters:parameters];
}

- (_GCDevicePhysicalInputFacade)initWithTemplate:(id)template context:(id)context
{
  v5.receiver = self;
  v5.super_class = _GCDevicePhysicalInputFacade;
  return [(_GCDevicePhysicalInputView *)&v5 initWithTemplate:template context:context];
}

- (GCDevice)device
{
  physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];

  return [physicalInput device];
}

- (double)lastEventTimestamp
{
  physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];

  [physicalInput lastEventTimestamp];
  return result;
}

- (double)lastEventLatency
{
  physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];

  [physicalInput lastEventLatency];
  return result;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];
  v5 = [_GCDevicePhysicalInputBase elementsForProtocol:physicalInput];

  return [v5 elementForAlias:subscript];
}

- (void)setQueue:(id)queue
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    [_GCDevicePhysicalInputFacade setQueue:];
  }

  else
  {
    physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];

    [(_GCDevicePhysicalInput *)physicalInput setQueue:queue];
  }
}

- (void)setElementValueDidChangeHandler:(id)handler
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    [_GCDevicePhysicalInputFacade setElementValueDidChangeHandler:];
  }

  else
  {
    physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];

    [(_GCDevicePhysicalInput *)physicalInput setElementValueDidChangeHandler:handler, v6];
  }
}

- (id)capture
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return self;
  }

  physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];
  currentTransaction = [(_GCDevicePhysicalInput *)physicalInput currentTransaction];

  return [(_GCDevicePhysicalInputBase *)currentTransaction facade];
}

- (void)setInputStateAvailableHandler:(id)handler
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    [_GCDevicePhysicalInputFacade setInputStateAvailableHandler:];
  }

  else
  {
    physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];

    [(_GCDevicePhysicalInput *)physicalInput setInputStateAvailableHandler:handler, v6];
  }
}

- (void)setInputStateQueueDepth:(int64_t)depth
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    [_GCDevicePhysicalInputFacade setInputStateQueueDepth:];
  }

  else
  {
    if (depth <= 0)
    {
      [(_GCDevicePhysicalInputFacade *)a2 setInputStateQueueDepth:depth];
    }

    physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];

    [(_GCDevicePhysicalInput *)physicalInput setTransactionQueueDepth:depth];
  }
}

- (id)alternatePhysicalInputWithAttribute:(id)attribute
{
  if (!attribute)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  result = [(_GCDevicePhysicalInputView *)self physicalInput];
  if (result)
  {
    v6 = result;
    v7 = [-[_GCDevicePhysicalInputBase attributes](result) setByAddingObject:attribute];
    dataSource = [v6 dataSource];
    v9 = [dataSource physicalInputWithAttributes:v7];
    facade = [(_GCDevicePhysicalInputBase *)v9 facade];

    return facade;
  }

  return result;
}

- (id)_elementsForProtocol:(id *)result
{
  if (result)
  {
    physicalInput = [(_GCDevicePhysicalInputView *)result physicalInput];
    if (physicalInput)
    {

      return [_GCDevicePhysicalInputBase elementsForProtocol:physicalInput];
    }

    else
    {

      return +[GCPhysicalInputElementCollection collection];
    }
  }

  return result;
}

- (OS_dispatch_queue)queue
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return 0;
  }

  physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];

  return [(_GCDevicePhysicalInput *)physicalInput queue];
}

- (id)elementValueDidChangeHandler
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return 0;
  }

  physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];

  return [(_GCDevicePhysicalInput *)physicalInput elementValueDidChangeHandler];
}

- (id)inputStateAvailableHandler
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return 0;
  }

  physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];

  return [(_GCDevicePhysicalInput *)physicalInput inputStateAvailableHandler];
}

- (int64_t)inputStateQueueDepth
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return 0;
  }

  physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];

  return [(_GCDevicePhysicalInput *)physicalInput transactionQueueDepth];
}

- (id)nextInputState
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return 0;
  }

  popTransaction = [-[_GCDevicePhysicalInputView physicalInput](self) popTransaction];
  facade = [(_GCDevicePhysicalInputBase *)popTransaction facade];

  return facade;
}

- (id)nextInputStateNotExceedingTimestamp:(double)timestamp
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return 0;
  }

  v5 = [-[_GCDevicePhysicalInputView physicalInput](self) popTransactionNotExceedingTimestamp:timestamp];
  facade = [(_GCDevicePhysicalInputBase *)v5 facade];

  return facade;
}

- (int64_t)changeForElement:(id)element
{
  if (![(_GCDevicePhysicalInputView *)self physicalInput])
  {
    return -1;
  }

  if (([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot] & 1) == 0)
  {
    [(_GCDevicePhysicalInputFacade *)self doesNotRecognizeSelector:a2];
  }

  physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];
  v7 = [-[_GCDevicePhysicalInputBase elements](physicalInput) indexOfObject:element];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  v8 = v7;
  physicalInput2 = [(_GCDevicePhysicalInputView *)self physicalInput];
  if (![_GCDevicePhysicalInputTransaction updateContextIsValidForElementAtIndex:physicalInput2])
  {
    return -1;
  }

  physicalInput3 = [(_GCDevicePhysicalInputView *)self physicalInput];
  return [(_GCDevicePhysicalInputTransaction *)physicalInput3 updateContextForElementAtIndex:v8 size:0 onlyIfChanged:1]!= 0;
}

- (id)changedElements
{
  result = [(_GCDevicePhysicalInputView *)self physicalInput];
  if (result)
  {
    if (([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot] & 1) == 0)
    {
      [(_GCDevicePhysicalInputFacade *)self doesNotRecognizeSelector:a2];
    }

    physicalInput = [(_GCDevicePhysicalInputView *)self physicalInput];

    return [(_GCDevicePhysicalInputTransaction *)physicalInput changedElements];
  }

  return result;
}

- (void)setQueue:.cold.1()
{
  GCRuntimeIssuesLogger = getGCRuntimeIssuesLogger();
  if (OUTLINED_FUNCTION_1_11(GCRuntimeIssuesLogger))
  {
    OUTLINED_FUNCTION_0_19(&dword_1D2CD5000, v1, v2, "Setting a 'queue' on a snapshot is ignored.", v3, v4, v5, v6, 0);
  }
}

- (void)setElementValueDidChangeHandler:.cold.1()
{
  GCRuntimeIssuesLogger = getGCRuntimeIssuesLogger();
  if (OUTLINED_FUNCTION_1_11(GCRuntimeIssuesLogger))
  {
    OUTLINED_FUNCTION_0_19(&dword_1D2CD5000, v1, v2, "Setting a 'elementValueDidChangeHandler' on a snapshot is ignored.", v3, v4, v5, v6, 0);
  }
}

- (void)setInputStateAvailableHandler:.cold.1()
{
  GCRuntimeIssuesLogger = getGCRuntimeIssuesLogger();
  if (OUTLINED_FUNCTION_1_11(GCRuntimeIssuesLogger))
  {
    OUTLINED_FUNCTION_0_19(&dword_1D2CD5000, v1, v2, "Setting a 'inputStateAvailableHandler' on a snapshot is ignored.", v3, v4, v5, v6, 0);
  }
}

- (void)setInputStateQueueDepth:.cold.2()
{
  GCRuntimeIssuesLogger = getGCRuntimeIssuesLogger();
  if (OUTLINED_FUNCTION_1_11(GCRuntimeIssuesLogger))
  {
    OUTLINED_FUNCTION_0_19(&dword_1D2CD5000, v1, v2, "Setting 'inputStateQueueDepth' on a snapshot is ignored.", v3, v4, v5, v6, 0);
  }
}

@end