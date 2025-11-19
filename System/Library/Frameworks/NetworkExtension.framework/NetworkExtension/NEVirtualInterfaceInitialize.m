@interface NEVirtualInterfaceInitialize
@end

@implementation NEVirtualInterfaceInitialize

uint64_t ____NEVirtualInterfaceInitialize_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __kNEVirtualInterfaceTypeID = result;
  return result;
}

@end