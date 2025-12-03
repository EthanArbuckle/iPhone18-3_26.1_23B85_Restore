@interface NSCloudKitMirroringDelegateWorkBlockContext
- (NSCloudKitMirroringDelegateWorkBlockContext)initWithTransactionLabel:(id)label powerAssertionLabel:(id)assertionLabel;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringDelegateWorkBlockContext

- (void)dealloc
{
  [_PFClassicBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:self->_runtimeVoucher];

  self->_runtimeVoucher = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringDelegateWorkBlockContext;
  [(NSCloudKitMirroringDelegateWorkBlockContext *)&v3 dealloc];
}

- (NSCloudKitMirroringDelegateWorkBlockContext)initWithTransactionLabel:(id)label powerAssertionLabel:(id)assertionLabel
{
  v9.receiver = self;
  v9.super_class = NSCloudKitMirroringDelegateWorkBlockContext;
  v6 = [(NSCloudKitMirroringDelegateWorkBlockContext *)&v9 init];
  if (v6)
  {
    v6->_transactionLabel = label;
    assertionLabelCopy = assertionLabel;
    v6->_powerAssertionLabel = assertionLabelCopy;
    v6->_runtimeVoucher = [_PFClassicBackgroundRuntimeVoucher _beginPowerAssertionNamed:assertionLabelCopy];
  }

  return v6;
}

@end