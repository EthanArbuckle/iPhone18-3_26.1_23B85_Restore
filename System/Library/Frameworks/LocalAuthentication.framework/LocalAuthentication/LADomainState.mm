@interface LADomainState
- (LADomainState)initWithResult:(id)result;
- (id)description;
- (void)_resolveCombinedStateHash;
@end

@implementation LADomainState

- (LADomainState)initWithResult:(id)result
{
  resultCopy = result;
  v11.receiver = self;
  v11.super_class = LADomainState;
  v5 = [(LADomainState *)&v11 init];
  if (v5)
  {
    v6 = [[LADomainStateBiometry alloc] initWithResult:resultCopy];
    biometry = v5->_biometry;
    v5->_biometry = v6;

    v8 = [[LADomainStateCompanion alloc] initWithResult:resultCopy];
    companion = v5->_companion;
    v5->_companion = v8;

    [(LADomainState *)v5 _resolveCombinedStateHash];
  }

  return v5;
}

- (void)_resolveCombinedStateHash
{
  stateHash = [(LADomainStateCompanion *)self->_companion stateHash];
  if (stateHash && (v4 = stateHash, [(LADomainStateBiometry *)self->_biometry stateHash], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v13 = objc_opt_new();
    stateHash2 = [(LADomainStateBiometry *)self->_biometry stateHash];

    if (stateHash2)
    {
      stateHash3 = [(LADomainStateBiometry *)self->_biometry stateHash];
      [v13 appendData:stateHash3];
    }

    stateHash4 = [(LADomainStateCompanion *)self->_companion stateHash];

    if (stateHash4)
    {
      stateHash5 = [(LADomainStateCompanion *)self->_companion stateHash];
      [v13 appendData:stateHash5];
    }

    stateHash7 = [v13 length];
    if (stateHash7)
    {
      stateHash7 = [MEMORY[0x1E69AD258] createHashForDomainState:v13];
    }
  }

  else
  {
    stateHash6 = [(LADomainStateBiometry *)self->_biometry stateHash];
    if (stateHash6)
    {
      stateHash7 = stateHash6;
      stateHash = self->_stateHash;
      v13 = stateHash7;
      goto LABEL_13;
    }

    v13 = 0;
    stateHash7 = [(LADomainStateCompanion *)self->_companion stateHash];
  }

  stateHash = self->_stateHash;
LABEL_13:
  self->_stateHash = stateHash7;
}

- (id)description
{
  v19[3] = *MEMORY[0x1E69E9840];
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  biometry = [(LADomainState *)self biometry];
  v6 = [v4 stringWithFormat:@"biometry: %@", biometry];
  v19[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  companion = [(LADomainState *)self companion];
  v9 = [v7 stringWithFormat:@"companion: %@", companion];
  v19[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  stateHash = [(LADomainState *)self stateHash];
  v12 = [v10 stringWithFormat:@"stateHash: %@", stateHash];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v18 stringWithFormat:@"<%@ %p %@>", v3, self, v14];;

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end