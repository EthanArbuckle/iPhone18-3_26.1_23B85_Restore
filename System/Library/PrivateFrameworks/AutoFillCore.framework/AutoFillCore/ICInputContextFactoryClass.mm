@interface ICInputContextFactoryClass
@end

@implementation ICInputContextFactoryClass

void __get_ICInputContextFactoryClass_block_invoke(uint64_t a1)
{
  InputContextLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_ICInputContextFactory");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_ICInputContextFactoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __get_ICInputContextFactoryClass_block_invoke_cold_1();
    InputContextLibrary();
  }
}

@end