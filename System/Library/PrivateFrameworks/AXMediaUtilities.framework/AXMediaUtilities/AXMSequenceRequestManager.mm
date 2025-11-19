@interface AXMSequenceRequestManager
- (VNSequenceRequestHandler)sequenceRequestHandler;
@end

@implementation AXMSequenceRequestManager

- (VNSequenceRequestHandler)sequenceRequestHandler
{
  sequenceRequestHandler = self->_sequenceRequestHandler;
  if (!sequenceRequestHandler)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getVNSequenceRequestHandlerClass_softClass;
    v13 = getVNSequenceRequestHandlerClass_softClass;
    if (!getVNSequenceRequestHandlerClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getVNSequenceRequestHandlerClass_block_invoke;
      v9[3] = &unk_1E7A1C700;
      v9[4] = &v10;
      __getVNSequenceRequestHandlerClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_sequenceRequestHandler;
    self->_sequenceRequestHandler = v6;

    sequenceRequestHandler = self->_sequenceRequestHandler;
  }

  return sequenceRequestHandler;
}

@end