@interface MPSNNStateNode
- (MPSNNStateNode)initWithParent:(id)a3;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MPSNNStateNode

- (MPSNNStateNode)initWithParent:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSNNStateNode;
  result = [(MPSNNStateNode *)&v5 init];
  if (result)
  {
    result->_handle = 0;
    result->_parent = a3;
    *&result->_synchronize = 0;
    result->_initializedWithParent = a3 != 0;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v26.receiver = self;
  v26.super_class = MPSNNStateNode;
  v4 = [(MPSNNStateNode *)&v26 debugDescription];
  handle = self->_handle;
  parent = self->_parent;
  if (objc_msgSend_label(handle, v7, v8, v9, v10, v11, v12, v13))
  {
    v21 = objc_msgSend_label(self->_handle, v14, v15, v16, v17, v18, v19, v20);
    synchronize = self->_synchronize;
    v23 = self->_handle;
    if (v23)
    {
LABEL_3:
      v24 = objc_msgSend_debugDescription(v23, v14, v15, v16, v17, v18, v19, v20);
      goto LABEL_6;
    }
  }

  else
  {
    v21 = &stru_284CE28E0;
    synchronize = self->_synchronize;
    v23 = self->_handle;
    if (v23)
    {
      goto LABEL_3;
    }
  }

  v24 = @"<no description>";
LABEL_6:
  if (synchronize)
  {
    return objc_msgSend_stringWithFormat_(v3, v14, @"%@\n\tparent filter: %p\n\thandle: <%p> %@\n\tsynchronize: %s\n\t        %@\n", v16, v17, v18, v19, v20, v4, parent, handle, v21, "YES", v24);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v14, @"%@\n\tparent filter: %p\n\thandle: <%p> %@\n\tsynchronize: %s\n\t        %@\n", v16, v17, v18, v19, v20, v4, parent, handle, v21, "NO", v24);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNStateNode;
  [(MPSNNStateNode *)&v3 dealloc];
}

@end