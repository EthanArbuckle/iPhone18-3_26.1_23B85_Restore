@interface APSRateControllerDelegate
- (APSRateControllerDelegate)initWithContext:(void *)context;
- (void)dealloc;
- (void)rateController:(id)controller targetBitrateDidChange:(unsigned int)change rateChangeCounter:(unsigned int)counter;
@end

@implementation APSRateControllerDelegate

- (void)rateController:(id)controller targetBitrateDidChange:(unsigned int)change rateChangeCounter:(unsigned int)counter
{
  if (gLogCategory_APSRateControllerAVCWrapper <= 50 && (gLogCategory_APSRateControllerAVCWrapper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  weakWrapper = self->_weakWrapper;
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    v9 = v8;
    v8[4] = change;
    v10 = v8[5];
    if (v10)
    {
      v10(v8[6]);
    }

    CFRelease(v9);
  }
}

- (void)dealloc
{
  weakWrapper = self->_weakWrapper;
  if (weakWrapper)
  {
    CFRelease(weakWrapper);
  }

  v4.receiver = self;
  v4.super_class = APSRateControllerDelegate;
  [(APSRateControllerDelegate *)&v4 dealloc];
}

- (APSRateControllerDelegate)initWithContext:(void *)context
{
  v5.receiver = self;
  v5.super_class = APSRateControllerDelegate;
  v3 = [(APSRateControllerDelegate *)&v5 init];
  if (v3)
  {
    v3->_weakWrapper = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  return v3;
}

@end