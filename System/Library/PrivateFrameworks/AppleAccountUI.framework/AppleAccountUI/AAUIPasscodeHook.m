@interface AAUIPasscodeHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_validatePasscodeWithServerAttributes:(id)a3 completion:(id)a4;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation AAUIPasscodeHook

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"passcode:validate"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKey:*MEMORY[0x1E69C7058]];
  v5 = [v4 isEqualToString:@"passcode:validate"];

  return v5;
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 clientInfo];
  [(AAUIPasscodeHook *)self _validatePasscodeWithServerAttributes:v7 completion:v6];
}

- (void)_validatePasscodeWithServerAttributes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained presentationContextForHook:self];
  objc_opt_class();
  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69C7068]];
  v11 = 0;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  v22 = +[AAUIPasscodeValidateController stingrayControllerWithPresenter:forceInline:](AAUIPasscodeValidateController, "stingrayControllerWithPresenter:forceInline:", v9, [v11 BOOLValue]);

  v12 = v18[5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__AAUIPasscodeHook__validatePasscodeWithServerAttributes_completion___block_invoke;
  v14[3] = &unk_1E820C800;
  v13 = v7;
  v15 = v13;
  v16 = &v17;
  [v12 validatePasscodeStateWithCompletion:v14];

  _Block_object_dispose(&v17, 8);
}

void __69__AAUIPasscodeHook__validatePasscodeWithServerAttributes_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, a2 != 0);
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end