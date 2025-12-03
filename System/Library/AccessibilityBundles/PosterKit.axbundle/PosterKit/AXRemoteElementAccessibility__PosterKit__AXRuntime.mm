@interface AXRemoteElementAccessibility__PosterKit__AXRuntime
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityShouldHitTestRemoteElementProcess;
- (BOOL)_axIsKindOfClass:(id)class fromArray:(id)array;
@end

@implementation AXRemoteElementAccessibility__PosterKit__AXRuntime

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PREditingSceneViewController"];
  if (NSClassFromString(&cfstr_Pruisambientpo.isa))
  {
    [validationsCopy validateClass:@"PRUISAmbientPosterViewController"];
  }
}

- (BOOL)_accessibilityShouldHitTestRemoteElementProcess
{
  if (_accessibilityShouldHitTestRemoteElementProcess_onceToken != -1)
  {
    [AXRemoteElementAccessibility__PosterKit__AXRuntime _accessibilityShouldHitTestRemoteElementProcess];
  }

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __101__AXRemoteElementAccessibility__PosterKit__AXRuntime__accessibilityShouldHitTestRemoteElementProcess__block_invoke_2;
  v6[3] = &unk_29F2EBF90;
  v6[4] = self;
  v3 = [(AXRemoteElementAccessibility__PosterKit__AXRuntime *)self _accessibilityFindAncestor:v6 startWithSelf:0];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)_axIsKindOfClass:(id)class fromArray:(id)array
{
  v16 = *MEMORY[0x29EDCA608];
  classCopy = class;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(arrayCopy);
        }

        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [arrayCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end