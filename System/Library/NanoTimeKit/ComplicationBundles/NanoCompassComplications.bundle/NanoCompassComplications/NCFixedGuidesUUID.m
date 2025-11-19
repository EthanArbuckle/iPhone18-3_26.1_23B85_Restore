@interface NCFixedGuidesUUID
+ (void)initialize;
@end

@implementation NCFixedGuidesUUID

+ (void)initialize
{
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = objc_msgSend_initWithUUIDString_(v2, v3, @"00000000-0000-0000-0000-000000000010", v4);
  v6 = qword_27E1C4F20;
  qword_27E1C4F20 = v5;

  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = objc_msgSend_initWithUUIDString_(v7, v8, @"00000000-0000-0000-0000-000000000020", v9);
  v11 = qword_27E1C4F28;
  qword_27E1C4F28 = v10;

  v12 = objc_alloc(MEMORY[0x277CCAD78]);
  v15 = objc_msgSend_initWithUUIDString_(v12, v13, @"00000000-0000-0000-0000-000000000030", v14);
  v16 = qword_27E1C4F30;
  qword_27E1C4F30 = v15;

  v17 = objc_alloc(MEMORY[0x277CCAD78]);
  v20 = objc_msgSend_initWithUUIDString_(v17, v18, @"00000000-0000-0000-0000-000000000040", v19);
  v21 = qword_27E1C4F38;
  qword_27E1C4F38 = v20;

  v22 = objc_alloc(MEMORY[0x277CCAD78]);
  v25 = objc_msgSend_initWithUUIDString_(v22, v23, @"E8B2B4D6-A7C1-4F9E-9B2A-6F7D8C9B0A1B", v24);
  v26 = qword_27E1C4F40;
  qword_27E1C4F40 = v25;

  v27 = objc_alloc(MEMORY[0x277CCAD78]);
  v30 = objc_msgSend_initWithUUIDString_(v27, v28, @"A1B2C3D4-E5F6-4A7B-8C9D-0E1F2A3B4C5D", v29);
  v31 = qword_27E1C4F48;
  qword_27E1C4F48 = v30;

  v32 = objc_alloc(MEMORY[0x277CCAD78]);
  v35 = objc_msgSend_initWithUUIDString_(v32, v33, @"E8A23E33-643A-4E3A-82E8-74529145A361", v34);
  v36 = qword_27E1C4F50;
  qword_27E1C4F50 = v35;

  v37 = objc_alloc(MEMORY[0x277CCAD78]);
  v40 = objc_msgSend_initWithUUIDString_(v37, v38, @"F9B34C48-7758-4C8A-B0A2-4A2D8E6F7B89", v39);
  v41 = qword_27E1C4F58;
  qword_27E1C4F58 = v40;

  v42 = objc_alloc(MEMORY[0x277CCAD78]);
  v45 = objc_msgSend_initWithUUIDString_(v42, v43, @"C1D9F8E7-6A9B-4F1C-9E3D-5B7A0F6E2D10", v44);
  v46 = qword_27E1C4F60;
  qword_27E1C4F60 = v45;

  MEMORY[0x2821F96F8](v45, v46);
}

@end