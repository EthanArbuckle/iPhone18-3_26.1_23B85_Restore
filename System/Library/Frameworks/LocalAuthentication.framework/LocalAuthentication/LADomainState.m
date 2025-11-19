@interface LADomainState
- (LADomainState)initWithResult:(id)a3;
- (id)description;
- (void)_resolveCombinedStateHash;
@end

@implementation LADomainState

- (LADomainState)initWithResult:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = LADomainState;
  v5 = [(LADomainState *)&v11 init];
  if (v5)
  {
    v6 = [[LADomainStateBiometry alloc] initWithResult:v4];
    biometry = v5->_biometry;
    v5->_biometry = v6;

    v8 = [[LADomainStateCompanion alloc] initWithResult:v4];
    companion = v5->_companion;
    v5->_companion = v8;

    [(LADomainState *)v5 _resolveCombinedStateHash];
  }

  return v5;
}

- (void)_resolveCombinedStateHash
{
  v3 = [(LADomainStateCompanion *)self->_companion stateHash];
  if (v3 && (v4 = v3, [(LADomainStateBiometry *)self->_biometry stateHash], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v13 = objc_opt_new();
    v6 = [(LADomainStateBiometry *)self->_biometry stateHash];

    if (v6)
    {
      v7 = [(LADomainStateBiometry *)self->_biometry stateHash];
      [v13 appendData:v7];
    }

    v8 = [(LADomainStateCompanion *)self->_companion stateHash];

    if (v8)
    {
      v9 = [(LADomainStateCompanion *)self->_companion stateHash];
      [v13 appendData:v9];
    }

    v10 = [v13 length];
    if (v10)
    {
      v10 = [MEMORY[0x1E69AD258] createHashForDomainState:v13];
    }
  }

  else
  {
    v11 = [(LADomainStateBiometry *)self->_biometry stateHash];
    if (v11)
    {
      v10 = v11;
      stateHash = self->_stateHash;
      v13 = v10;
      goto LABEL_13;
    }

    v13 = 0;
    v10 = [(LADomainStateCompanion *)self->_companion stateHash];
  }

  stateHash = self->_stateHash;
LABEL_13:
  self->_stateHash = v10;
}

- (id)description
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(LADomainState *)self biometry];
  v6 = [v4 stringWithFormat:@"biometry: %@", v5];
  v19[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(LADomainState *)self companion];
  v9 = [v7 stringWithFormat:@"companion: %@", v8];
  v19[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(LADomainState *)self stateHash];
  v12 = [v10 stringWithFormat:@"stateHash: %@", v11];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v18 stringWithFormat:@"<%@ %p %@>", v3, self, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end