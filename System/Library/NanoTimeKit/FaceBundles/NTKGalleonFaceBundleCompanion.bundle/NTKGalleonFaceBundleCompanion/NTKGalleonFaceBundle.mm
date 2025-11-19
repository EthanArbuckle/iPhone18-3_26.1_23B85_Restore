@interface NTKGalleonFaceBundle
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryEditOptionsForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryPigmentsForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)heroFacesForDevice:(id)a3;
@end

@implementation NTKGalleonFaceBundle

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v8 = objc_msgSend_identifier(v4, v5, v6, v7);
  v9 = objc_opt_class();
  v13 = objc_msgSend_analyticsIdentifier(v9, v10, v11, v12);
  v15 = objc_msgSend_bundledFaceWithIdentifier_analyticsIdentifier_forDevice_initCustomization_(NTKGalleonFace, v14, v8, v13, v3, 0);

  return v15;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = &unk_284EA7FF8;
  v6[0] = &unk_284EA8010;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, &v5, 1);

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKGalleonFaceBundle;
  v3 = [(NTKFaceBundle *)&v7 galleryFacesForDevice:a3];
  objc_msgSend_enumerateObjectsUsingBlock_(v3, v4, &unk_284EA1BB8, v5);

  return v3;
}

- (id)galleryEditOptionsForDevice:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isRunningNapiliGMOrLater(a3, a2, a3, v3))
  {
    v7 = &unk_284EA8028;
    v8[0] = &unk_284EA8208;
    v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v8, &v7, 1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)galleryPigmentsForDevice:(id)a3
{
  if (objc_msgSend_isRunningNapiliGMOrLater(a3, a2, a3, v3))
  {
    return &unk_284EA8220;
  }

  else
  {
    return 0;
  }
}

- (id)heroFacesForDevice:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_supportsPDRCapability_(v4, v5, 3887189377, v6))
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v10 = objc_msgSend_defaultFaceForDevice_(self, v7, v4, v8);
    v11 = objc_alloc(MEMORY[0x277D2C018]);
    v13 = objc_msgSend_initWithFace_priority_(v11, v12, v10, 800);
    v16[0] = v13;
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v16, 1);
  }

  return v9;
}

@end