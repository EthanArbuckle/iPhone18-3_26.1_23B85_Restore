@interface CMProxPDP
- (CMProxPDP)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMProxPDP

- (CMProxPDP)initWithCoder:(id)a3
{
  v26.receiver = self;
  v26.super_class = CMProxPDP;
  v4 = [(CMProxPDP *)&v26 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->fTimestamp = objc_msgSend_decodeObjectOfClass_forKey_(a3, v6, v5, @"kCMProxPDPTimestamp");
    v7 = objc_opt_class();
    v4->fIntensity = objc_msgSend_decodeObjectOfClass_forKey_(a3, v8, v7, @"kCMProxPDPIntensity");
    v9 = objc_opt_class();
    v4->fIntensityCalDelta = objc_msgSend_decodeObjectOfClass_forKey_(a3, v10, v9, @"kCMProxPDPIntensityCalDelta");
    v11 = objc_opt_class();
    v4->fIntensityBaselineDelta = objc_msgSend_decodeObjectOfClass_forKey_(a3, v12, v11, @"kCMProxPDPIntensityBaselineDelta");
    v13 = objc_opt_class();
    v4->fAmbient = objc_msgSend_decodeObjectOfClass_forKey_(a3, v14, v13, @"kCMProxPDPAmbient");
    v15 = objc_opt_class();
    v4->fPocketProbability = objc_msgSend_decodeObjectOfClass_forKey_(a3, v16, v15, @"kCMProxPDPPocketProbability");
    v17 = objc_opt_class();
    v4->fBaselineConfidence = objc_msgSend_decodeObjectOfClass_forKey_(a3, v18, v17, @"kCMProxPDPBaselineConfidence");
    v19 = objc_opt_class();
    v4->fRxNtcC = objc_msgSend_decodeObjectOfClass_forKey_(a3, v20, v19, @"kCMProxPDPRxNtcC");
    v21 = objc_opt_class();
    v4->fScanFlags = objc_msgSend_decodeObjectOfClass_forKey_(a3, v22, v21, @"kCMProxPDPScanFlags");
    v23 = objc_opt_class();
    v4->fPocketFlag = objc_msgSend_decodeObjectOfClass_forKey_(a3, v24, v23, @"kCMProxPDPPocketFlag");
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeObject_forKey_(a3, a2, self->fTimestamp, @"kCMProxPDPTimestamp");
  objc_msgSend_encodeObject_forKey_(a3, v5, self->fIntensity, @"kCMProxPDPIntensity");
  objc_msgSend_encodeObject_forKey_(a3, v6, self->fIntensityCalDelta, @"kCMProxPDPIntensityCalDelta");
  objc_msgSend_encodeObject_forKey_(a3, v7, self->fIntensityBaselineDelta, @"kCMProxPDPIntensityBaselineDelta");
  objc_msgSend_encodeObject_forKey_(a3, v8, self->fAmbient, @"kCMProxPDPAmbient");
  objc_msgSend_encodeObject_forKey_(a3, v9, self->fPocketProbability, @"kCMProxPDPPocketProbability");
  objc_msgSend_encodeObject_forKey_(a3, v10, self->fBaselineConfidence, @"kCMProxPDPBaselineConfidence");
  objc_msgSend_encodeObject_forKey_(a3, v11, self->fRxNtcC, @"kCMProxPDPRxNtcC");
  objc_msgSend_encodeObject_forKey_(a3, v12, self->fScanFlags, @"kCMProxPDPScanFlags");
  fPocketFlag = self->fPocketFlag;

  objc_msgSend_encodeObject_forKey_(a3, v13, fPocketFlag, @"kCMProxPDPPocketFlag");
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v12 = objc_msgSend_init(v7, v8, v9);
  if (v12)
  {
    v12[1] = objc_msgSend_copy(self->fTimestamp, v10, v11);
    v12[2] = objc_msgSend_copy(self->fIntensity, v13, v14);
    v12[3] = objc_msgSend_copy(self->fIntensityCalDelta, v15, v16);
    v12[4] = objc_msgSend_copy(self->fIntensityBaselineDelta, v17, v18);
    v12[5] = objc_msgSend_copy(self->fAmbient, v19, v20);
    v12[6] = objc_msgSend_copy(self->fPocketProbability, v21, v22);
    v12[7] = objc_msgSend_copy(self->fBaselineConfidence, v23, v24);
    v12[8] = objc_msgSend_copy(self->fRxNtcC, v25, v26);
    v12[9] = objc_msgSend_copy(self->fScanFlags, v27, v28);
    v12[10] = objc_msgSend_copy(self->fPocketFlag, v29, v30);
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMProxPDP;
  [(CMProxPDP *)&v3 dealloc];
}

- (id)description
{
  v37 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v36 = NSStringFromClass(v3);
  v6 = objc_msgSend_timestamp(self, v4, v5);
  v9 = objc_msgSend_intensity(self, v7, v8);
  v12 = objc_msgSend_intensityCalDelta(self, v10, v11);
  v15 = objc_msgSend_intensityBaselineDelta(self, v13, v14);
  v18 = objc_msgSend_ambient(self, v16, v17);
  v21 = objc_msgSend_pocketProbability(self, v19, v20);
  v24 = objc_msgSend_baselineConfidence(self, v22, v23);
  v27 = objc_msgSend_rxNtcC(self, v25, v26);
  v30 = objc_msgSend_scanFlags(self, v28, v29);
  v33 = objc_msgSend_pocketFlag(self, v31, v32);
  return objc_msgSend_stringWithFormat_(v37, v34, @"%@, <timestamp %@, intensity %@, intensityCalDelta %@, intensityBaselineDelta %@, ambient %@, pocketProbability %@, baselineConfidence %@, rxNtcC %@, scanFlags %@, pocketFlag %@>", v36, v6, v9, v12, v15, v18, v21, v24, v27, v30, v33);
}

@end