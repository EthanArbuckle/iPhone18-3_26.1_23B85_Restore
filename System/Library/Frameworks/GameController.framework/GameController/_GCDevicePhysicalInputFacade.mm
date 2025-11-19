@interface _GCDevicePhysicalInputFacade
- (GCDevice)device;
- (OS_dispatch_queue)queue;
- (_GCDevicePhysicalInputFacade)initWithParameters:(id)a3;
- (_GCDevicePhysicalInputFacade)initWithTemplate:(id)a3 context:(id)a4;
- (double)lastEventLatency;
- (double)lastEventTimestamp;
- (id)_elementsForProtocol:(id *)result;
- (id)alternatePhysicalInputWithAttribute:(id)a3;
- (id)capture;
- (id)changedElements;
- (id)elementValueDidChangeHandler;
- (id)inputStateAvailableHandler;
- (id)nextInputState;
- (id)nextInputStateNotExceedingTimestamp:(double)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (int64_t)changeForElement:(id)a3;
- (int64_t)inputStateQueueDepth;
- (void)setElementValueDidChangeHandler:(id)a3;
- (void)setInputStateAvailableHandler:(id)a3;
- (void)setInputStateQueueDepth:(int64_t)a3;
- (void)setQueue:(id)a3;
@end

@implementation _GCDevicePhysicalInputFacade

- (_GCDevicePhysicalInputFacade)initWithParameters:(id)a3
{
  v4.receiver = self;
  v4.super_class = _GCDevicePhysicalInputFacade;
  return [(_GCDevicePhysicalInputView *)&v4 initWithParameters:a3];
}

- (_GCDevicePhysicalInputFacade)initWithTemplate:(id)a3 context:(id)a4
{
  v5.receiver = self;
  v5.super_class = _GCDevicePhysicalInputFacade;
  return [(_GCDevicePhysicalInputView *)&v5 initWithTemplate:a3 context:a4];
}

- (GCDevice)device
{
  v2 = [(_GCDevicePhysicalInputView *)self physicalInput];

  return [v2 device];
}

- (double)lastEventTimestamp
{
  v2 = [(_GCDevicePhysicalInputView *)self physicalInput];

  [v2 lastEventTimestamp];
  return result;
}

- (double)lastEventLatency
{
  v2 = [(_GCDevicePhysicalInputView *)self physicalInput];

  [v2 lastEventLatency];
  return result;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = [(_GCDevicePhysicalInputView *)self physicalInput];
  v5 = [_GCDevicePhysicalInputBase elementsForProtocol:v4];

  return [v5 elementForAlias:a3];
}

- (void)setQueue:(id)a3
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    [_GCDevicePhysicalInputFacade setQueue:];
  }

  else
  {
    v5 = [(_GCDevicePhysicalInputView *)self physicalInput];

    [(_GCDevicePhysicalInput *)v5 setQueue:a3];
  }
}

- (void)setElementValueDidChangeHandler:(id)a3
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    [_GCDevicePhysicalInputFacade setElementValueDidChangeHandler:];
  }

  else
  {
    v5 = [(_GCDevicePhysicalInputView *)self physicalInput];

    [(_GCDevicePhysicalInput *)v5 setElementValueDidChangeHandler:a3, v6];
  }
}

- (id)capture
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return self;
  }

  v4 = [(_GCDevicePhysicalInputView *)self physicalInput];
  v5 = [(_GCDevicePhysicalInput *)v4 currentTransaction];

  return [(_GCDevicePhysicalInputBase *)v5 facade];
}

- (void)setInputStateAvailableHandler:(id)a3
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    [_GCDevicePhysicalInputFacade setInputStateAvailableHandler:];
  }

  else
  {
    v5 = [(_GCDevicePhysicalInputView *)self physicalInput];

    [(_GCDevicePhysicalInput *)v5 setInputStateAvailableHandler:a3, v6];
  }
}

- (void)setInputStateQueueDepth:(int64_t)a3
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    [_GCDevicePhysicalInputFacade setInputStateQueueDepth:];
  }

  else
  {
    if (a3 <= 0)
    {
      [(_GCDevicePhysicalInputFacade *)a2 setInputStateQueueDepth:a3];
    }

    v6 = [(_GCDevicePhysicalInputView *)self physicalInput];

    [(_GCDevicePhysicalInput *)v6 setTransactionQueueDepth:a3];
  }
}

- (id)alternatePhysicalInputWithAttribute:(id)a3
{
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  result = [(_GCDevicePhysicalInputView *)self physicalInput];
  if (result)
  {
    v6 = result;
    v7 = [-[_GCDevicePhysicalInputBase attributes](result) setByAddingObject:a3];
    v8 = [v6 dataSource];
    v9 = [v8 physicalInputWithAttributes:v7];
    v10 = [(_GCDevicePhysicalInputBase *)v9 facade];

    return v10;
  }

  return result;
}

- (id)_elementsForProtocol:(id *)result
{
  if (result)
  {
    v1 = [(_GCDevicePhysicalInputView *)result physicalInput];
    if (v1)
    {

      return [_GCDevicePhysicalInputBase elementsForProtocol:v1];
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

  v3 = [(_GCDevicePhysicalInputView *)self physicalInput];

  return [(_GCDevicePhysicalInput *)v3 queue];
}

- (id)elementValueDidChangeHandler
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return 0;
  }

  v3 = [(_GCDevicePhysicalInputView *)self physicalInput];

  return [(_GCDevicePhysicalInput *)v3 elementValueDidChangeHandler];
}

- (id)inputStateAvailableHandler
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return 0;
  }

  v3 = [(_GCDevicePhysicalInputView *)self physicalInput];

  return [(_GCDevicePhysicalInput *)v3 inputStateAvailableHandler];
}

- (int64_t)inputStateQueueDepth
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return 0;
  }

  v3 = [(_GCDevicePhysicalInputView *)self physicalInput];

  return [(_GCDevicePhysicalInput *)v3 transactionQueueDepth];
}

- (id)nextInputState
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return 0;
  }

  v3 = [-[_GCDevicePhysicalInputView physicalInput](self) popTransaction];
  v4 = [(_GCDevicePhysicalInputBase *)v3 facade];

  return v4;
}

- (id)nextInputStateNotExceedingTimestamp:(double)a3
{
  if ([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot])
  {
    return 0;
  }

  v5 = [-[_GCDevicePhysicalInputView physicalInput](self) popTransactionNotExceedingTimestamp:a3];
  v6 = [(_GCDevicePhysicalInputBase *)v5 facade];

  return v6;
}

- (int64_t)changeForElement:(id)a3
{
  if (![(_GCDevicePhysicalInputView *)self physicalInput])
  {
    return -1;
  }

  if (([-[_GCDevicePhysicalInputView physicalInput](self) isSnapshot] & 1) == 0)
  {
    [(_GCDevicePhysicalInputFacade *)self doesNotRecognizeSelector:a2];
  }

  v6 = [(_GCDevicePhysicalInputView *)self physicalInput];
  v7 = [-[_GCDevicePhysicalInputBase elements](v6) indexOfObject:a3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  v8 = v7;
  v9 = [(_GCDevicePhysicalInputView *)self physicalInput];
  if (![_GCDevicePhysicalInputTransaction updateContextIsValidForElementAtIndex:v9])
  {
    return -1;
  }

  v10 = [(_GCDevicePhysicalInputView *)self physicalInput];
  return [(_GCDevicePhysicalInputTransaction *)v10 updateContextForElementAtIndex:v8 size:0 onlyIfChanged:1]!= 0;
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

    v5 = [(_GCDevicePhysicalInputView *)self physicalInput];

    return [(_GCDevicePhysicalInputTransaction *)v5 changedElements];
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