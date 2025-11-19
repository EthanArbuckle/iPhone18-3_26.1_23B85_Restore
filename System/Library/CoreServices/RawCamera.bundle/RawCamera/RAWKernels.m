@interface RAWKernels
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)kernelWithName:(id)a3;
+ (id)kernelWithName:(id)a3 group:(id)a4;
+ (id)sharedKernels;
- (RAWKernels)init;
- (id)kernelSourceForGroup:(id)a3;
- (id)kernelWithName:(id)a3 group:(id)a4;
- (id)loadKernelsForGroup:(id)a3;
@end

@implementation RAWKernels

- (RAWKernels)init
{
  v6.receiver = self;
  v6.super_class = RAWKernels;
  v2 = [(RAWKernels *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    priv = v2->priv;
    v2->priv = v3;
  }

  return v2;
}

- (id)kernelSourceForGroup:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"default", v5, v6))
  {
    v10 = 1319;
    v11 = &unk_23390AC29;
    objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v7, 4836, v8, v9);
    goto LABEL_8;
  }

  if (objc_msgSend_isEqualToString_(v3, v7, @"NR", v8, v9))
  {
    v10 = 10736;
    v11 = &unk_23390B150;
    v15 = -28642;
LABEL_5:
    objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v12, v15 | 0x10000u, v13, v14);
    goto LABEL_8;
  }

  if (objc_msgSend_isEqualToString_(v3, v12, @"LC", v13, v14))
  {
    v10 = 1246;
    v11 = &unk_23390DB40;
    objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v16, 8217, v17, v18);
  }

  else
  {
    if (objc_msgSend_isEqualToString_(v3, v16, @"DM", v17, v18))
    {
      v10 = 13404;
      v11 = &unk_23390E01E;
      v15 = 32099;
      goto LABEL_5;
    }

    if (objc_msgSend_isEqualToString_(v3, v12, @"DeFringe", v13, v14))
    {
      v10 = 3299;
      v11 = &unk_23391147A;
      objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v35, 21373, v36, v37);
    }

    else if (objc_msgSend_isEqualToString_(v3, v35, @"GM", v36, v37))
    {
      v10 = 1089;
      v11 = &unk_23391215D;
      objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v38, 5164, v39, v40);
    }

    else if (objc_msgSend_isEqualToString_(v3, v38, @"HM", v39, v40))
    {
      v10 = 345;
      v11 = &unk_23391259E;
      objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v41, 1925, v42, v43);
    }

    else if (objc_msgSend_isEqualToString_(v3, v41, @"Boost", v42, v43))
    {
      v10 = 2121;
      v11 = &unk_2339126F7;
      objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v44, 16155, v45, v46);
    }

    else if (objc_msgSend_isEqualToString_(v3, v44, @"GainMap", v45, v46))
    {
      v10 = 524;
      v11 = &unk_233912F40;
      objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v47, 1410, v48, v49);
    }

    else if (objc_msgSend_isEqualToString_(v3, v47, @"V8LNR", v48, v49))
    {
      v10 = 5068;
      v11 = &unk_23391314C;
      objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v50, 31647, v51, v52);
    }

    else
    {
      if (objc_msgSend_isEqualToString_(v3, v50, @"V8CNR", v51, v52))
      {
        v10 = 5080;
        v11 = &unk_233914518;
        v15 = 21654;
        goto LABEL_5;
      }

      if (objc_msgSend_isEqualToString_(v3, v12, @"V8VIEW", v13, v14))
      {
        v10 = 954;
        v11 = &unk_2339158F0;
        objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v53, 5477, v54, v55);
      }

      else
      {
        if (!objc_msgSend_isEqualToString_(v3, v53, @"LTM", v54, v55))
        {
          v33 = 0;
          goto LABEL_14;
        }

        v10 = 634;
        v11 = &unk_233915CAA;
        objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v56, 1803, v57, v58);
      }
    }
  }

  v19 = LABEL_8:;
  memset(&v59.zalloc, 0, 24);
  v59.avail_in = v10;
  v59.avail_out = objc_msgSend_length(v19, v20, v21, v22, v23, v11, *&v59.avail_in);
  v24 = v19;
  v59.next_out = objc_msgSend_mutableBytes(v24, v25, v26, v27, v28);
  if (inflateInit_(&v59, "1.2.12", 112) || (v29 = inflate(&v59, 0), v29 == -2) || (inflateEnd(&v59), v29 != 1))
  {
    v33 = 0;
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v33 = objc_msgSend_initWithData_encoding_(v30, v31, v19, 4, v32);
  }

LABEL_14:

  return v33;
}

- (id)loadKernelsForGroup:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v9 = objc_msgSend_objectForKeyedSubscript_(v5->priv, v6, v4, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(v5->priv, v10, v4, v11, v12);
  }

  else
  {
    v46 = objc_msgSend_kernelSourceForGroup_(v5, v10, v4, v11, v12);
    v16 = objc_msgSend_kernelsWithString_messageLog_(MEMORY[0x277CBF760], v14, v46, 0, v15);
    v21 = objc_msgSend_count(v16, v17, v18, v19, v20);
    v22 = objc_alloc(MEMORY[0x277CBEB38]);
    v26 = objc_msgSend_initWithCapacity_(v22, v23, v21, v24, v25);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = v16;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v47, v51, 16);
    if (v33)
    {
      v34 = *v48;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v48 != v34)
          {
            objc_enumerationMutation(v27);
          }

          v36 = *(*(&v47 + 1) + 8 * i);
          v37 = objc_msgSend_name(v36, v29, v30, v31, v32);
          objc_msgSend_setObject_forKeyedSubscript_(v26, v38, v36, v37, v39);
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v47, v51, 16);
      }

      while (v33);
    }

    v13 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v40, v26, v41, v42);
    objc_msgSend_setObject_forKeyedSubscript_(v5->priv, v43, v13, v4, v44);
  }

  objc_sync_exit(v5);

  return v13;
}

+ (id)sharedKernels
{
  v2 = a1;
  objc_sync_enter(v2);
  if (!qword_27DE3DE28)
  {
  }

  objc_sync_exit(v2);

  v3 = qword_27DE3DE28;

  return v3;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v4 = a1;
  objc_sync_enter(v4);
  if (qword_27DE3DE28)
  {
    v5 = 0;
  }

  else
  {
    v9.receiver = v4;
    v9.super_class = &OBJC_METACLASS___RAWKernels;
    v6 = objc_msgSendSuper2(&v9, sel_allocWithZone_, a3);
    v7 = qword_27DE3DE28;
    qword_27DE3DE28 = v6;

    v5 = qword_27DE3DE28;
  }

  objc_sync_exit(v4);

  return v5;
}

- (id)kernelWithName:(id)a3 group:(id)a4
{
  v6 = a3;
  v10 = objc_msgSend_loadKernelsForGroup_(self, v7, a4, v8, v9);
  v14 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v6, v12, v13);

  return v14;
}

+ (id)kernelWithName:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_sharedKernels(RAWKernels, v4, v5, v6, v7);
  v11 = objc_msgSend_kernelWithName_group_(v8, v9, v3, @"default", v10);

  return v11;
}

+ (id)kernelWithName:(id)a3 group:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_sharedKernels(RAWKernels, v7, v8, v9, v10);
  v14 = objc_msgSend_kernelWithName_group_(v11, v12, v5, v6, v13);

  return v14;
}

@end