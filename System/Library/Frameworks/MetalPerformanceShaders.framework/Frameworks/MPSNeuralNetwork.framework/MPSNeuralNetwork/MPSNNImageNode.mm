@interface MPSNNImageNode
+ (MPSNNImageNode)exportedNodeWithHandle:(NSObject *)handle;
+ (MPSNNImageNode)nodeWithHandle:(NSObject *)handle;
- (MPSNNImageNode)initWithHandle:(NSObject *)handle;
- (MPSNNImageNode)initWithParent:(id)a3;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MPSNNImageNode

- (MPSNNImageNode)initWithHandle:(NSObject *)handle
{
  v21.receiver = self;
  v21.super_class = MPSNNImageNode;
  result = [(MPSNNImageNode *)&v21 init];
  if (result)
  {
    result->_handle = handle;
    v5 = result;
    v6 = handle;
    v5->_parent = 0;
    v14 = objc_msgSend_defaultAllocator(MEMORY[0x277CD72A8], v7, v8, v9, v10, v11, v12, v13);
    objc_msgSend_setImageAllocator_(v5, v15, v14, v16, v17, v18, v19, v20);
    result = v5;
    v5->_clientCount = 0;
    v5->_format = 0;
    *&v5->_exportFromGraph = 0;
  }

  return result;
}

+ (MPSNNImageNode)nodeWithHandle:(NSObject *)handle
{
  v4 = [a1 alloc];
  v11 = objc_msgSend_initWithHandle_(v4, v5, handle, v6, v7, v8, v9, v10);

  return v11;
}

+ (MPSNNImageNode)exportedNodeWithHandle:(NSObject *)handle
{
  v4 = [a1 alloc];
  result = objc_msgSend_initWithHandle_(v4, v5, handle, v6, v7, v8, v9, v10);
  if (result)
  {
    result->_exportFromGraph = 1;
  }

  return result;
}

- (MPSNNImageNode)initWithParent:(id)a3
{
  v20.receiver = self;
  v20.super_class = MPSNNImageNode;
  result = [(MPSNNImageNode *)&v20 init];
  if (result)
  {
    result->_handle = 0;
    result->_parent = a3;
    v12 = result;
    v13 = objc_msgSend_defaultAllocator(MEMORY[0x277CD72A8], v5, v6, v7, v8, v9, v10, v11);
    objc_msgSend_setImageAllocator_(v12, v14, v13, v15, v16, v17, v18, v19);
    result = v12;
    v12->_clientCount = 0;
    v12->_format = 0;
    *(&v12->_format + 7) = 0;
    v12->_initializedWithParent = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNImageNode;
  [(MPSNNImageNode *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v29.receiver = self;
  v29.super_class = MPSNNImageNode;
  v4 = [(MPSNNImageNode *)&v29 debugDescription];
  format = self->_format;
  handle = self->_handle;
  parent = self->_parent;
  if (objc_msgSend_label(handle, v8, v9, v10, v11, v12, v13, v14))
  {
    v22 = objc_msgSend_label(self->_handle, v15, v16, v17, v18, v19, v20, v21);
    v23 = self->_handle;
    if (v23)
    {
LABEL_3:
      v24 = objc_msgSend_debugDescription(v23, v15, v16, v17, v18, v19, v20, v21);
      goto LABEL_6;
    }
  }

  else
  {
    v22 = &stru_284CE28E0;
    v23 = self->_handle;
    if (v23)
    {
      goto LABEL_3;
    }
  }

  v24 = @"<nil>";
LABEL_6:
  v25 = "NO";
  if (self->_exportFromGraph)
  {
    v26 = "YES";
  }

  else
  {
    v26 = "NO";
  }

  if (self->_synchronize)
  {
    v27 = "YES";
  }

  else
  {
    v27 = "NO";
  }

  if (self->_stopGradient)
  {
    v25 = "YES";
  }

  return objc_msgSend_stringWithFormat_(v3, v15, @"%@\n\tparent filter: %p\n\tformat:          %d\n\thandle:          <%p> %@\n\t                 %@\n\tallocator:       %p\n\texportFromGraph: %s\n\tsynchronize:     %s\n\tstopGradient:    %s\n", v17, v18, v19, v20, v21, v4, parent, format, handle, v22, v24, self->_imageAllocator, v26, v27, v25);
}

@end