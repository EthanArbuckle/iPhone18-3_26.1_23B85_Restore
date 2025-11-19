@interface NSBundle
@end

@implementation NSBundle

void __42__NSBundle_MPAdditions__mediaPlayerBundle__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:NSClassFromString(&cfstr_Mpnowplayingin.isa)];
  v3 = mediaPlayerBundle___mediaPlayerBundle;
  mediaPlayerBundle___mediaPlayerBundle = v2;

  if (!mediaPlayerBundle___mediaPlayerBundle)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"NSBundle_MPAdditions.m" lineNumber:18 description:@"unable to find MediaPlayer bundle"];
  }
}

@end