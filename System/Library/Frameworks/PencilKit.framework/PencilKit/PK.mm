@interface PK
@end

@implementation PK

void __PK_UIApplicationIsSystemShell_block_invoke()
{
  v0 = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    LOBYTE(v0) = [v0 isFrontBoard];
    v1 = v2;
  }

  PK_UIApplicationIsSystemShell___result = v0;
}

@end