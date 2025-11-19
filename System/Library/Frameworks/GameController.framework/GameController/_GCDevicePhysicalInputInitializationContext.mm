@interface _GCDevicePhysicalInputInitializationContext
- (uint64_t)_stateMagic:(uint64_t)result;
- (uint64_t)viewConfiguration;
- (uint64_t)viewProperties;
- (uint64_t)viewState;
- (unint64_t)view:(id)a3 makeReferenceToView:(id)a4;
- (void)dealloc;
- (void)initWithViewConfiguration:(uint64_t)a3 viewProperties:(uint64_t)a4 viewState:;
@end

@implementation _GCDevicePhysicalInputInitializationContext

- (void)dealloc
{
  CFRelease(self->_views);
  self->_views = 0;
  viewConfiguration = self->_viewConfiguration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  self->_viewConfiguration = 0;
  viewProperties = self->_viewProperties;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  self->_viewProperties = 0;
  viewState = self->_viewState;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  self->_viewState = 0;
  self->_implementation = 0;
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputInitializationContext;
  [(_GCDevicePhysicalInputInitializationContext *)&v6 dealloc];
}

- (unint64_t)view:(id)a3 makeReferenceToView:(id)a4
{
  v5 = [objc_opt_class() withTemplate:a4 context:self];
  Count = CFArrayGetCount(self->_views);
  CFArrayAppendValue(self->_views, v5);
  return Count | 0x30000000000;
}

- (void)initWithViewConfiguration:(uint64_t)a3 viewProperties:(uint64_t)a4 viewState:
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = _GCDevicePhysicalInputInitializationContext;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  memset(&callBacks, 0, sizeof(callBacks));
  v7[2] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
  if (a2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (a3)
    {
LABEL_5:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
      }
    }
  }

  else if (a3)
  {
    goto LABEL_5;
  }

  if (a4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }
  }

  if (!a2)
  {
    a2 = objc_opt_new();
  }

  v7[3] = a2;
  if (!a3)
  {
    a3 = objc_opt_new();
  }

  v7[4] = a3;
  if (!a4)
  {
    a4 = objc_opt_new();
  }

  v7[5] = a4;
  return v7;
}

- (uint64_t)viewConfiguration
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)viewProperties
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)viewState
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)_stateMagic:(uint64_t)result
{
  if (result)
  {
    objc_opt_class();
    objc_opt_isKindOfClass();

    return [a2 magic];
  }

  return result;
}

@end