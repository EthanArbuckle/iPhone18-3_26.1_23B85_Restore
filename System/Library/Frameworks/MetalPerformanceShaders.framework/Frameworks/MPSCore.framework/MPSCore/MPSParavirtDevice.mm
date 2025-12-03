@interface MPSParavirtDevice
- (BOOL)supportsFamily:(int64_t)family;
- (MPSParavirtDevice)initWithDevice:(id)device;
@end

@implementation MPSParavirtDevice

- (MPSParavirtDevice)initWithDevice:(id)device
{
  v18.receiver = self;
  v18.super_class = MPSParavirtDevice;
  v4 = [(MPSParavirtDevice *)&v18 init];
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v4->_hostSupportsFamily = 0;
  p_hostSupportsFamilySEL = &v4->_hostSupportsFamilySEL;
  v7 = NSSelectorFromString(&cfstr_Hostsupportsfa.isa);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *p_hostSupportsFamilySEL = v8;
  if (objc_opt_respondsToSelector())
  {
    device = objc_msgSend_performSelector_(device, v9, sel_originalObject, v10, v11);
  }

  if (*p_hostSupportsFamilySEL)
  {
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_9;
    }
  }

  else if (objc_opt_respondsToSelector())
  {
LABEL_9:
    if (*p_hostSupportsFamilySEL)
    {
      v15 = objc_msgSend_methodForSelector_(device, v12, *p_hostSupportsFamilySEL, v13, v14);
    }

    else
    {
      v15 = objc_msgSend_methodForSelector_(device, v12, 0, v13, v14);
    }

    v5->_hostSupportsFamily = v15;
    v5->_device = device;
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  hostSupportsFamily = v5->_hostSupportsFamily;
  v5->_device = device;
  if (!hostSupportsFamily)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (*p_hostSupportsFamilySEL)
  {
    return v5;
  }

LABEL_18:
  if (!MTLReportFailureTypeEnabled())
  {
    return v5;
  }

  MTLReportFailure();
  return v5;
}

- (BOOL)supportsFamily:(int64_t)family
{
  hostSupportsFamilySEL = self->_hostSupportsFamilySEL;
  hostSupportsFamily = self->_hostSupportsFamily;
  device = self->_device;
  if (hostSupportsFamilySEL)
  {
    return hostSupportsFamily(device, hostSupportsFamilySEL, family);
  }

  else
  {
    return hostSupportsFamily(device, 0, family);
  }
}

@end