@interface TrustedPeersHelperEgoPeerStatus
- (TrustedPeersHelperEgoPeerStatus)initWithCoder:(id)coder;
- (TrustedPeersHelperEgoPeerStatus)initWithEgoPeerID:(id)d egoPeerMachineID:(id)iD status:(unint64_t)status viablePeerCountsByModelID:(id)modelID peerCountsByMachineID:(id)machineID isExcluded:(BOOL)excluded isLocked:(BOOL)locked;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TrustedPeersHelperEgoPeerStatus

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  egoPeerID = [(TrustedPeersHelperEgoPeerStatus *)self egoPeerID];
  [coderCopy encodeObject:egoPeerID forKey:@"peerID"];

  egoPeerMachineID = [(TrustedPeersHelperEgoPeerStatus *)self egoPeerMachineID];
  [coderCopy encodeObject:egoPeerMachineID forKey:@"mID"];

  [coderCopy encodeInt64:-[TrustedPeersHelperEgoPeerStatus egoStatus](self forKey:{"egoStatus"), @"egoStatus"}];
  viablePeerCountsByModelID = [(TrustedPeersHelperEgoPeerStatus *)self viablePeerCountsByModelID];
  [coderCopy encodeObject:viablePeerCountsByModelID forKey:@"viablePeerCountsByModelID"];

  peerCountsByMachineID = [(TrustedPeersHelperEgoPeerStatus *)self peerCountsByMachineID];
  [coderCopy encodeObject:peerCountsByMachineID forKey:@"peerCountsByMachineID"];

  [coderCopy encodeBool:-[TrustedPeersHelperEgoPeerStatus isExcluded](self forKey:{"isExcluded"), @"isExcluded"}];
  [coderCopy encodeBool:-[TrustedPeersHelperEgoPeerStatus isLocked](self forKey:{"isLocked"), @"isLocked"}];
}

- (TrustedPeersHelperEgoPeerStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = TrustedPeersHelperEgoPeerStatus;
  v5 = [(TrustedPeersHelperEgoPeerStatus *)&v28 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerID"];
    egoPeerID = v5->_egoPeerID;
    v5->_egoPeerID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mID"];
    egoPeerMachineID = v5->_egoPeerMachineID;
    v5->_egoPeerMachineID = v8;

    v5->_egoStatus = [coderCopy decodeInt64ForKey:@"egoStatus"];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v31[2] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v31 count:3];
    v11 = [NSSet setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"viablePeerCountsByModelID"];
    viablePeerCountsByModelID = v5->_viablePeerCountsByModelID;
    v5->_viablePeerCountsByModelID = v12;

    v5->_numberOfPeersInOctagon = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    allValues = [(NSDictionary *)v5->_viablePeerCountsByModelID allValues];
    v15 = [allValues countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(allValues);
          }

          v5->_numberOfPeersInOctagon += [*(*(&v24 + 1) + 8 * v18) unsignedIntegerValue];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [allValues countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v16);
    }

    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v29[2] = objc_opt_class();
    v19 = [NSArray arrayWithObjects:v29 count:3];
    v20 = [NSSet setWithArray:v19];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"peerCountsByMachineID"];
    peerCountsByMachineID = v5->_peerCountsByMachineID;
    v5->_peerCountsByMachineID = v21;

    v5->_isExcluded = [coderCopy decodeBoolForKey:@"isExcluded"];
    v5->_isLocked = [coderCopy decodeBoolForKey:@"isLocked"];
  }

  return v5;
}

- (id)description
{
  egoPeerID = [(TrustedPeersHelperEgoPeerStatus *)self egoPeerID];
  egoPeerMachineID = [(TrustedPeersHelperEgoPeerStatus *)self egoPeerMachineID];
  v5 = [NSString stringWithFormat:@"<TPHEgoPeerState: %@ (mid:%@)>", egoPeerID, egoPeerMachineID];

  return v5;
}

- (TrustedPeersHelperEgoPeerStatus)initWithEgoPeerID:(id)d egoPeerMachineID:(id)iD status:(unint64_t)status viablePeerCountsByModelID:(id)modelID peerCountsByMachineID:(id)machineID isExcluded:(BOOL)excluded isLocked:(BOOL)locked
{
  dCopy = d;
  iDCopy = iD;
  modelIDCopy = modelID;
  machineIDCopy = machineID;
  v32.receiver = self;
  v32.super_class = TrustedPeersHelperEgoPeerStatus;
  v19 = [(TrustedPeersHelperEgoPeerStatus *)&v32 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_egoPeerID, d);
    objc_storeStrong(&v20->_egoPeerMachineID, iD);
    v20->_egoStatus = status;
    objc_storeStrong(&v20->_viablePeerCountsByModelID, modelID);
    objc_storeStrong(&v20->_peerCountsByMachineID, machineID);
    v20->_numberOfPeersInOctagon = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    allValues = [modelIDCopy allValues];
    v22 = [allValues countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(allValues);
          }

          v20->_numberOfPeersInOctagon += [*(*(&v28 + 1) + 8 * i) unsignedIntegerValue];
        }

        v23 = [allValues countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v23);
    }

    v20->_isExcluded = excluded;
    v20->_isLocked = locked;
  }

  return v20;
}

@end