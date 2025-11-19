@interface ASDInstallationEvent
- (ASDInstallationEvent)initWithCoder:(id)a3;
- (ASDInstallationEvent)initWithPhase:(int64_t)a3 commerceTimestamp:(id)a4 purchase:(id)a5 terminalPhase:(int64_t)a6 bundleID:(id)a7 itemID:(id)a8 appType:(int64_t)a9 source:(int64_t)a10 installType:(int64_t)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDInstallationEvent

- (ASDInstallationEvent)initWithPhase:(int64_t)a3 commerceTimestamp:(id)a4 purchase:(id)a5 terminalPhase:(int64_t)a6 bundleID:(id)a7 itemID:(id)a8 appType:(int64_t)a9 source:(int64_t)a10 installType:(int64_t)a11
{
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v25.receiver = self;
  v25.super_class = ASDInstallationEvent;
  v21 = [(ASDInstallationEvent *)&v25 init];
  v22 = v21;
  if (v21)
  {
    v21->_phase = a3;
    objc_storeStrong(&v21->_commerceTimestamp, a4);
    objc_storeStrong(&v22->_purchase, a5);
    v22->_terminalPhase = a6;
    objc_storeStrong(&v22->_bundleID, a7);
    objc_storeStrong(&v22->_itemID, a8);
    v22->_appType = a9;
    v22->_source = a10;
    v22->_installType = a11;
  }

  return v22;
}

- (ASDInstallationEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"_phase"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_commerceTimestamp"];
    v7 = v6;
    if (v5 != 1 || v6)
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_purchase"];
      v9 = v8;
      if ((v5 == 1 || !v8) && (v10 = [v4 decodeIntegerForKey:@"_terminalPhase"]) != 0)
      {
        v11 = v10;
        v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
        if (v12)
        {
          v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemID"];
          if (v13 && (v14 = [v4 decodeIntegerForKey:@"_appType"]) != 0 && (v15 = v14, (v16 = objc_msgSend(v4, "decodeIntegerForKey:", @"_source")) != 0) && (v17 = v16, (v18 = objc_msgSend(v4, "decodeIntegerForKey:", @"_installType")) != 0))
          {
            self = [(ASDInstallationEvent *)self initWithPhase:v5 commerceTimestamp:v7 purchase:v9 terminalPhase:v11 bundleID:v12 itemID:v13 appType:v15 source:v17 installType:v18];
            v5 = self;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  phase = self->_phase;
  v5 = a3;
  [v5 encodeInteger:phase forKey:@"_phase"];
  [v5 encodeObject:self->_commerceTimestamp forKey:@"_commerceTimestamp"];
  [v5 encodeObject:self->_purchase forKey:@"_purchase"];
  [v5 encodeInteger:self->_terminalPhase forKey:@"_terminalPhase"];
  [v5 encodeObject:self->_bundleID forKey:@"_bundleID"];
  [v5 encodeObject:self->_itemID forKey:@"_itemID"];
  [v5 encodeInteger:self->_appType forKey:@"_appType"];
  [v5 encodeInteger:self->_source forKey:@"_source"];
  [v5 encodeInteger:self->_installType forKey:@"_installType"];
}

@end