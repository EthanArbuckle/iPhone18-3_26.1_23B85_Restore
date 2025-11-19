@interface AAUIFamilySetupPrompter
- (AAUIFamilySetupPrompter)init;
- (AAUIFamilySetupPrompterDelegate)delegate;
- (void)familySetupPrompterDidFinish:(id)a3;
@end

@implementation AAUIFamilySetupPrompter

- (AAUIFamilySetupPrompter)init
{
  v10.receiver = self;
  v10.super_class = AAUIFamilySetupPrompter;
  v2 = [(AAUIFamilySetupPrompter *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v4 = [v3 ams_activeiTunesAccount];

    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v5 = getFAFamilySetupPrompterClass_softClass;
    v15 = getFAFamilySetupPrompterClass_softClass;
    if (!getFAFamilySetupPrompterClass_softClass)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getFAFamilySetupPrompterClass_block_invoke;
      v11[3] = &unk_1E820BE08;
      v11[4] = &v12;
      __getFAFamilySetupPrompterClass_block_invoke(v11);
      v5 = v13[3];
    }

    v6 = v5;
    _Block_object_dispose(&v12, 8);
    v7 = [[v5 alloc] initWithiTunesAccount:v4];
    familySetupPrompter = v2->_familySetupPrompter;
    v2->_familySetupPrompter = v7;

    [(FAFamilySetupPrompter *)v2->_familySetupPrompter setDelegate:v2];
  }

  return v2;
}

- (void)familySetupPrompterDidFinish:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained familySetupPrompterDidFinish:self];
}

- (AAUIFamilySetupPrompterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end