@interface GCDevicePhysicalInputGroup
@end

@implementation GCDevicePhysicalInputGroup

void __63___GCDevicePhysicalInputGroup__locked_setClientQueue_override___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [(_GCDevicePhysicalInputBase *)a3 facade];
  [v3 willChangeValueForKey:@"queue"];
}

void __63___GCDevicePhysicalInputGroup__locked_setClientQueue_override___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [(_GCDevicePhysicalInputBase *)a3 facade];
  [v3 didChangeValueForKey:@"queue"];
}

unint64_t __52___GCDevicePhysicalInputGroup_transactionQueueDepth__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  result = [(_GCDevicePhysicalInput *)a3 transactionQueueDepth];
  if (v4 <= result)
  {
    v6 = result;
  }

  else
  {
    v6 = v4;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return result;
}

@end