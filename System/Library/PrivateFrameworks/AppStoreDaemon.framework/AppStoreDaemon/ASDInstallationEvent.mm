@interface ASDInstallationEvent
- (ASDInstallationEvent)initWithCoder:(id)coder;
- (ASDInstallationEvent)initWithPhase:(int64_t)phase commerceTimestamp:(id)timestamp purchase:(id)purchase terminalPhase:(int64_t)terminalPhase bundleID:(id)d itemID:(id)iD appType:(int64_t)type source:(int64_t)self0 installType:(int64_t)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDInstallationEvent

- (ASDInstallationEvent)initWithPhase:(int64_t)phase commerceTimestamp:(id)timestamp purchase:(id)purchase terminalPhase:(int64_t)terminalPhase bundleID:(id)d itemID:(id)iD appType:(int64_t)type source:(int64_t)self0 installType:(int64_t)self1
{
  timestampCopy = timestamp;
  purchaseCopy = purchase;
  dCopy = d;
  iDCopy = iD;
  v25.receiver = self;
  v25.super_class = ASDInstallationEvent;
  v21 = [(ASDInstallationEvent *)&v25 init];
  v22 = v21;
  if (v21)
  {
    v21->_phase = phase;
    objc_storeStrong(&v21->_commerceTimestamp, timestamp);
    objc_storeStrong(&v22->_purchase, purchase);
    v22->_terminalPhase = terminalPhase;
    objc_storeStrong(&v22->_bundleID, d);
    objc_storeStrong(&v22->_itemID, iD);
    v22->_appType = type;
    v22->_source = source;
    v22->_installType = installType;
  }

  return v22;
}

- (ASDInstallationEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = [coderCopy decodeIntegerForKey:@"_phase"];
  if (selfCopy)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_commerceTimestamp"];
    v7 = v6;
    if (selfCopy != 1 || v6)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_purchase"];
      v9 = v8;
      if ((selfCopy == 1 || !v8) && (v10 = [coderCopy decodeIntegerForKey:@"_terminalPhase"]) != 0)
      {
        v11 = v10;
        v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
        if (v12)
        {
          v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemID"];
          if (v13 && (v14 = [coderCopy decodeIntegerForKey:@"_appType"]) != 0 && (v15 = v14, (v16 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"_source")) != 0) && (v17 = v16, (v18 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"_installType")) != 0))
          {
            self = [(ASDInstallationEvent *)self initWithPhase:selfCopy commerceTimestamp:v7 purchase:v9 terminalPhase:v11 bundleID:v12 itemID:v13 appType:v15 source:v17 installType:v18];
            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  phase = self->_phase;
  coderCopy = coder;
  [coderCopy encodeInteger:phase forKey:@"_phase"];
  [coderCopy encodeObject:self->_commerceTimestamp forKey:@"_commerceTimestamp"];
  [coderCopy encodeObject:self->_purchase forKey:@"_purchase"];
  [coderCopy encodeInteger:self->_terminalPhase forKey:@"_terminalPhase"];
  [coderCopy encodeObject:self->_bundleID forKey:@"_bundleID"];
  [coderCopy encodeObject:self->_itemID forKey:@"_itemID"];
  [coderCopy encodeInteger:self->_appType forKey:@"_appType"];
  [coderCopy encodeInteger:self->_source forKey:@"_source"];
  [coderCopy encodeInteger:self->_installType forKey:@"_installType"];
}

@end