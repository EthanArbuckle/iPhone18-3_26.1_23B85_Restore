@interface MutableMechanismRatchetFlowParams
- (BOOL)isEqual:(id)equal;
- (MutableMechanismRatchetFlowParams)initWithStateComposite:(id)composite;
- (NSString)description;
@end

@implementation MutableMechanismRatchetFlowParams

- (MutableMechanismRatchetFlowParams)initWithStateComposite:(id)composite
{
  compositeCopy = composite;
  v9.receiver = self;
  v9.super_class = MutableMechanismRatchetFlowParams;
  v6 = [(MutableMechanismRatchetFlowParams *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stateComposite, composite);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_284B7CBD0])
  {
    v5 = equalCopy;
    stateComposite = [(MutableMechanismRatchetFlowParams *)self stateComposite];
    stateComposite2 = [v5 stateComposite];
    v8 = stateComposite2;
    if (stateComposite == stateComposite2)
    {
    }

    else
    {
      stateComposite3 = [(MutableMechanismRatchetFlowParams *)self stateComposite];
      stateComposite4 = [v5 stateComposite];
      v11 = [stateComposite3 isEqual:stateComposite4];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    handlingBiometryMatchConfirmedRequirement = [(MutableMechanismRatchetFlowParams *)self handlingBiometryMatchConfirmedRequirement];
    if (handlingBiometryMatchConfirmedRequirement == [v5 handlingBiometryMatchConfirmedRequirement])
    {
      skipCountdownUI = [(MutableMechanismRatchetFlowParams *)self skipCountdownUI];
      if (skipCountdownUI == [v5 skipCountdownUI])
      {
        skipBeginSecurityDelayUI = [(MutableMechanismRatchetFlowParams *)self skipBeginSecurityDelayUI];
        if (skipBeginSecurityDelayUI == [v5 skipBeginSecurityDelayUI])
        {
          skipGracePeriodUI = [(MutableMechanismRatchetFlowParams *)self skipGracePeriodUI];
          v12 = skipGracePeriodUI ^ [v5 skipGracePeriodUI] ^ 1;
          goto LABEL_11;
        }
      }
    }

LABEL_10:
    LOBYTE(v12) = 0;
LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v12) = 0;
LABEL_12:

  return v12;
}

- (NSString)description
{
  v25[5] = *MEMORY[0x277D85DE8];
  v24 = MEMORY[0x277CCACA8];
  v23 = objc_opt_class();
  v3 = MEMORY[0x277CCACA8];
  stateComposite = [(MutableMechanismRatchetFlowParams *)self stateComposite];
  v5 = [v3 stringWithFormat:@"stateComposite : %@", stateComposite];
  v25[0] = v5;
  v6 = MEMORY[0x277CCACA8];
  if ([(MutableMechanismRatchetFlowParams *)self handlingBiometryMatchConfirmedRequirement])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v6 stringWithFormat:@"handlingBiometryMatchConfirmedRequirement : %@", v7];
  v25[1] = v8;
  v9 = MEMORY[0x277CCACA8];
  if ([(MutableMechanismRatchetFlowParams *)self skipCountdownUI])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v9 stringWithFormat:@"skipCountdownUI : %@", v10];
  v25[2] = v11;
  v12 = MEMORY[0x277CCACA8];
  if ([(MutableMechanismRatchetFlowParams *)self skipBeginSecurityDelayUI])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = [v12 stringWithFormat:@"skipBeginSecurityDelayUI : %@", v13];
  v25[3] = v14;
  v15 = MEMORY[0x277CCACA8];
  if ([(MutableMechanismRatchetFlowParams *)self skipGracePeriodUI])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [v15 stringWithFormat:@"skipGracePeriodUI : %@", v16];
  v25[4] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];
  v19 = [v18 componentsJoinedByString:@" "];;
  v20 = [v24 stringWithFormat:@"<%@ %p %@>", v23, self, v19];;

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end