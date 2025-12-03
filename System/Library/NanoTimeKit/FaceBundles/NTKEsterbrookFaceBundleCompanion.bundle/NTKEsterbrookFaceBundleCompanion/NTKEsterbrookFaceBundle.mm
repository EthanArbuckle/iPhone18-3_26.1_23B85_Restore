@interface NTKEsterbrookFaceBundle
- (id)defaultFaceForDevice:(id)device;
- (id)galleryEditOptionsForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryPigmentsForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
@end

@implementation NTKEsterbrookFaceBundle

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_opt_class();
  v8 = objc_msgSend_identifier(v4, v5, v6, v7);
  v9 = objc_opt_class();
  v13 = objc_msgSend_analyticsIdentifier(v9, v10, v11, v12);
  v15 = objc_msgSend_bundledFaceWithIdentifier_analyticsIdentifier_forDevice_initCustomization_(NTKEsterbrookFace, v14, v8, v13, deviceCopy, 0);

  return v15;
}

- (id)heroFacesForDevice:(id)device
{
  v17[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (objc_msgSend_supportsPDRCapability_(deviceCopy, v5, 3669496134, v6))
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = objc_msgSend_defaultFaceForDevice_(self, v7, deviceCopy, v8);
    v11 = objc_alloc(MEMORY[0x277D2C018]);
    v13 = objc_msgSend_initWithFace_priority_(v11, v12, v10, 200);
    v15 = v13;
    if (v13)
    {
      v17[0] = v13;
      v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v17, 1);
    }

    else
    {
      v9 = MEMORY[0x277CBEBF8];
    }
  }

  return v9;
}

- (id)galleryFacesForDevice:(id)device
{
  v17[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (objc_msgSend_isRunningNapiliGMOrLater(deviceCopy, v5, v6, v7))
  {
    v16.receiver = self;
    v16.super_class = NTKEsterbrookFaceBundle;
    v10 = [(NTKFaceBundle *)&v16 galleryFacesForDevice:deviceCopy];

    objc_msgSend_enumerateObjectsUsingBlock_(v10, v11, &unk_284E91450, v12);
  }

  else
  {
    v13 = objc_msgSend_defaultFaceForDevice_(self, v8, deviceCopy, v9);

    v17[0] = v13;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v17, 1);
  }

  return v10;
}

- (id)galleryEditOptionsForDevice:(id)device
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isRunningNapiliGMOrLater(device, a2, device, v3))
  {
    v7 = &unk_284E98A28;
    v8[0] = &unk_284E98AD0;
    v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v8, &v7, 1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)galleryPigmentsForDevice:(id)device
{
  if (objc_msgSend_isRunningNapiliGMOrLater(device, a2, device, v3))
  {
    return &unk_284E98AE8;
  }

  else
  {
    return 0;
  }
}

@end