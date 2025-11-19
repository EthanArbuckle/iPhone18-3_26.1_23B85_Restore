@interface FPUIAuthenticationSectionDescriptor
- (FPUIAuthenticationSectionDescriptor)init;
@end

@implementation FPUIAuthenticationSectionDescriptor

- (FPUIAuthenticationSectionDescriptor)init
{
  v3.receiver = self;
  v3.super_class = FPUIAuthenticationSectionDescriptor;
  result = [(FPUIAuthenticationSectionDescriptor *)&v3 init];
  if (result)
  {
    result->_headerHeight = *MEMORY[0x277D76F30];
    *&result->_shouldHighlightRows = 257;
  }

  return result;
}

@end