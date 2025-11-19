@interface VNFaceCoreExceptionUtils
+ (void)throwInvalidArgumentException:(id)a3;
+ (void)throwRuntimeErrorException:(id)a3;
@end

@implementation VNFaceCoreExceptionUtils

+ (void)throwInvalidArgumentException:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_FacecoreThrowi.isa, v3);
  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, [v3 UTF8String]);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, off_278B7A550, MEMORY[0x277D82610]);
}

+ (void)throwRuntimeErrorException:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_FacecoreThrowi_0.isa, v3);
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x23EE98180](exception, [v3 UTF8String]);
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

@end