uint64_t sub_238EE5CCC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_238EE5CEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_238EE5D9C;
  v7[3] = &unk_278A71698;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_238EE5D9C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_238EE5DBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_238EE5E6C;
  v7[3] = &unk_278A71698;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_238EE5E80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238EE5F54;
  block[3] = &unk_278A72D48;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_238EE5F54(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void sub_238EE5F74(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238EE5FFC;
  block[3] = &unk_278A72B88;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

uint64_t sub_238EE5FFC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_238EE6014(void *a1)
{
  v1 = a1[4];
  v2 = sub_23921C1E4(MTRError, a1[5], a1[6]);
  (*(v1 + 16))(v1);
}

uint64_t *sub_238EE6094(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_238EF7260(v2);
    MEMORY[0x23EE77B60](v3, 0x10A1C40EA1D1B5FLL);
  }

  return a1;
}

id sub_238EE60DC(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_2393C5C40(a1);
  v5 = v4;
  if (v4 <= 11)
  {
    if (v4 > 7)
    {
      if (v4 == 8)
      {
        v46[0] = 0;
        if (!sub_2393C5CE4(a1, v46))
        {
          v37 = [MEMORY[0x277CCABB0] numberWithBool:v46[0]];
          v17 = sub_238EE6DE8(@"Boolean", v37, v3);

          goto LABEL_57;
        }

        v15 = sub_2393D9044(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v16;
          _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Error(%s): TLV BOOLean decoding failed", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v4 != 10)
        {
          goto LABEL_52;
        }

        v45 = 0;
        if (!sub_2393C6020(a1, &v45))
        {
          LODWORD(v9) = v45;
          v34 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
          v17 = sub_238EE6DE8(@"Float", v34, v3);

          goto LABEL_57;
        }

        *v46 = 0;
        if (!sub_2393C6064(a1, v46))
        {
          v43 = [MEMORY[0x277CCABB0] numberWithDouble:*v46];
          v17 = sub_238EE6DE8(@"Double", v43, v3);

          goto LABEL_57;
        }

        v10 = sub_2393D9044(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v11;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Error(%s): TLV floating point decoding failed", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0, 1);
        }
      }
    }

    else if (v4)
    {
      if (v4 != 4)
      {
        goto LABEL_52;
      }

      *v46 = 0;
      if (!sub_2393C5F2C(a1, v46))
      {
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v46];
        v17 = sub_238EE6DE8(@"UnsignedInteger", v33, v3);

        goto LABEL_57;
      }

      v7 = sub_2393D9044(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v8;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Error(%s): TLV unsigned integer decoding failed", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
LABEL_51:
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }
    }

    else
    {
      *v46 = 0;
      if (!sub_2393C5DA0(a1, v46))
      {
        v36 = [MEMORY[0x277CCABB0] numberWithLongLong:*v46];
        v17 = sub_238EE6DE8(@"SignedInteger", v36, v3);

        goto LABEL_57;
      }

      v13 = sub_2393D9044(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Error(%s): TLV signed integer decoding failed", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        goto LABEL_51;
      }
    }

LABEL_56:
    v17 = 0;
    goto LABEL_57;
  }

  if (v4 <= 19)
  {
    if (v4 == 12)
    {
      *buf = 0;
      *&buf[8] = 0;
      if (!sub_2393C61E0(a1, buf))
      {
        v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*buf length:*&buf[8] encoding:4];
        if (v38)
        {
          v17 = sub_238EE6DE8(@"UTF8String", v38, v3);
        }

        else
        {
          v44 = sub_2393D9044(0);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *v46 = 136315138;
            *&v46[4] = sub_2393C9138();
            _os_log_impl(&dword_238DAE000, v44, OS_LOG_TYPE_ERROR, "Error(%s): TLV UTF8String value is not actually UTF-8", v46, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(0, 1);
          }

          v17 = 0;
        }

        goto LABEL_57;
      }

      v18 = sub_2393D9044(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v46 = 136315138;
        *&v46[4] = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Error(%s): TLV UTF8String decoding failed", v46, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v4 != 16)
      {
        goto LABEL_52;
      }

      *buf = 0;
      *&buf[8] = 0;
      if (!sub_2393C60CC(a1, buf))
      {
        v35 = [MEMORY[0x277CBEA90] dataWithBytes:*buf length:*&buf[8]];
        v17 = sub_238EE6DE8(@"OctetString", v35, v3);

        goto LABEL_57;
      }

      v12 = sub_2393D9044(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v46 = 136315138;
        *&v46[4] = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Error(%s): TLV ByteString decoding failed", v46, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        goto LABEL_51;
      }
    }

    goto LABEL_56;
  }

  if (v4 == 20)
  {
    v17 = sub_238EE6DE8(@"Null", 0, v3);
    goto LABEL_57;
  }

  if (v4 == 21)
  {
    v6 = @"Structure";
    goto LABEL_47;
  }

  if (v4 != 22)
  {
LABEL_52:
    v21 = sub_2393D9044(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = sub_2393C5C40(a1);
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Error: Unsupported TLV type for conversion: %u", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C5C40(a1);
      sub_2393D5320(0, 1);
    }

    goto LABEL_56;
  }

  v6 = @"Array";
LABEL_47:
  *v46 = 0;
  if (sub_2393C6A2C(a1, v46))
  {
    v19 = sub_2393D9044(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Error(%s): TLV container entering failed", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  while (1)
  {
    v25 = sub_2393C6B34(a1);
    if (v25)
    {
      break;
    }

    v26 = *(a1 + 16);
    v27 = sub_238EE60DC(a1, 0);
    if (!v27)
    {
      v41 = sub_2393D9044(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = [(__CFString *)v6 UTF8String];
        *buf = 136315138;
        *&buf[4] = v42;
        _os_log_impl(&dword_238DAE000, v41, OS_LOG_TYPE_ERROR, "Error when decoding TLV container of type %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        [(__CFString *)v6 UTF8String];
        sub_2393D5320(0, 1);
      }

      goto LABEL_95;
    }

    v28 = [MEMORY[0x277CBEB38] dictionary];
    [v28 setObject:v27 forKey:@"data"];
    if (v5 != 21)
    {
      goto LABEL_68;
    }

    if (v26 < 0x100)
    {
      goto LABEL_67;
    }

    if (HIDWORD(v26))
    {
      v26 ^= 0xFFFFFFFF00000000;
LABEL_67:
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v26];
      [v28 setObject:v29 forKey:@"contextTag"];

LABEL_68:
      [v24 addObject:v28];
      goto LABEL_69;
    }

    v30 = sub_2393D9044(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "Skipping unknown tag type when decoding TLV structure.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

LABEL_69:
  }

  if (v25 != 33)
  {
    v39 = sub_2393D9044(0);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v40;
      _os_log_impl(&dword_238DAE000, v39, OS_LOG_TYPE_ERROR, "Error(%s): TLV container decoding failed", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_95;
    }

LABEL_90:
    sub_2393C9138();
    sub_2393D5320(0, 1);
LABEL_95:
    v17 = 0;
    goto LABEL_96;
  }

  if (sub_2393C6A98(a1, *v46))
  {
    v31 = sub_2393D9044(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v32;
      _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "Error(%s): TLV container exiting failed", buf, 0xCu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_95;
    }

    goto LABEL_90;
  }

  v17 = sub_238EE6DE8(v6, v24, v3);
LABEL_96:

LABEL_57:
  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

id sub_238EE6DE8(void *a1, void *a2, void *a3)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6 && v7)
  {
    v21[0] = @"type";
    v21[1] = @"value";
    v22[0] = v5;
    v22[1] = v6;
    v21[2] = @"dataVersion";
    v22[2] = v7;
    v9 = v21;
    v10 = v22;
    v11 = 3;
    goto LABEL_9;
  }

  if (v6)
  {
    v19[0] = @"type";
    v19[1] = @"value";
    v20[0] = v5;
    v20[1] = v6;
    v9 = v19;
    v10 = v20;
LABEL_8:
    v11 = 2;
    goto LABEL_9;
  }

  if (v7)
  {
    v17[0] = @"type";
    v17[1] = @"dataVersion";
    v18[0] = v5;
    v18[1] = v7;
    v9 = v17;
    v10 = v18;
    goto LABEL_8;
  }

  v15 = @"type";
  v16 = v5;
  v9 = &v15;
  v10 = &v16;
  v11 = 1;
LABEL_9:
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id sub_238EE6F58(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  sub_2393C7B90(v9);
  sub_2393C7BB8(v9, v11, 0x4B0uLL);
  v5 = sub_238EE7070(v3, v9, 0x100uLL);
  if (v5)
  {
    if (a2)
    {
      sub_23921C1E4(MTRError, v5, v4);
      *a2 = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:v10];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

unint64_t sub_238EE7070(void *a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = sub_238EF3570(v5, a2, a3);
  if (v6)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Failed to encode to TLV: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_238EE746C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if ([v5 count])
    {
      v7 = [v5 objectAtIndexedSubscript:0];
      v16 = 0;
      v8 = [[MTRAttributeReport alloc] initWithResponseValue:v7 error:&v16];
      v9 = v16;
      if (v9)
      {
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v11 = [(MTRAttributeReport *)v8 path];
        v12 = [v11 isEqual:*(a1 + 32)];

        v13 = *(a1 + 40);
        if (v12)
        {
          v14 = [(MTRAttributeReport *)v8 value];
          v15 = [(MTRAttributeReport *)v8 error];
          (*(v13 + 16))(v13, v14, v15);
        }

        else
        {
          v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:13 userInfo:0];
          (*(v13 + 16))(v13, 0, v14);
        }
      }
    }

    else
    {
      v10 = *(a1 + 40);
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:13 userInfo:0];
      (*(v10 + 16))(v10, 0, v7);
    }
  }
}

void sub_238EE81C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, void *a61, char a62, uint64_t a63)
{
  sub_238EF673C(&a65, 0);
  sub_238EF9504(&a19, 0);
  sub_238EE8340(&a20);
  sub_239495880(&a28);
  sub_238DCCA48(&a60);
  sub_238DCCA48(&a61);
  sub_238EE8340(&a62);

  sub_238EF79DC(v65);
  _Unwind_Resume(a1);
}

void **sub_238EE82E4(void **a1, size_t a2)
{
  v2 = a2;
  sub_238EF63CC(a1, a2, 0xCuLL);
  if (v2 && *a1)
  {
    v4 = *a1 + 10;
    do
    {
      *(v4 - 10) = -1;
      *(v4 - 1) = -1;
      *v4 = 0;
      v4 += 12;
      --v2;
    }

    while (v2);
  }

  return a1;
}

uint64_t sub_238EE8340(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_238EF79DC(v2);
  }

  return a1;
}

void sub_238EE8378(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isPASEDevice])
  {
    sub_238EF5060(a1, v5);
  }

  else
  {
    v3 = [v5 nodeID];
    v4 = [v5 concreteController];
    sub_238EF5274(a1, v3, v4);
  }
}

void sub_238EE87F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22)
{
  v25 = v22;

  _Unwind_Resume(a1);
}

unint64_t sub_238EE88B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v76 = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = a4;
    v49 = a5;
    v12 = *(a1 + 32);
    v51 = v12;
    v13 = [v12 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v13;
      if ([v13 isEqualToString:@"Array"])
      {
        v14 = [*(a1 + 32) objectForKeyedSubscript:@"value"];
        v46 = v14;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          sub_238EE93F8(&v58, [v14 count]);
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          obj = v14;
          v15 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
          if (v15)
          {
            v16 = *v55;
            while (2)
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v55 != v16)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = *(*(&v54 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v41 = sub_2393D9044(0);
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = obj;
                    _os_log_impl(&dword_238DAE000, v41, OS_LOG_TYPE_ERROR, "Error: Can't encode corrupt list: %@", &buf, 0xCu);
                  }

                  if (sub_2393D5398(1u))
                  {
                    sub_2393D5320(0, 1);
                  }

                  v32 = 0x50500000000;
                  LODWORD(v35) = 47;
                  goto LABEL_52;
                }

                v19 = [v18 objectForKeyedSubscript:@"data"];
                v20 = v19;
                v21 = v59;
                if (v59 >= v60)
                {
                  v23 = (v59 - v58) >> 3;
                  if ((v23 + 1) >> 61)
                  {
                    sub_238DBAEA8();
                  }

                  v24 = (v60 - v58) >> 2;
                  if (v24 <= v23 + 1)
                  {
                    v24 = v23 + 1;
                  }

                  if (v60 - v58 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v25 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v25 = v24;
                  }

                  v75 = &v58;
                  if (v25)
                  {
                    sub_238EFA950(&v58, v25);
                  }

                  *&buf = 0;
                  *(&buf + 1) = 8 * v23;
                  v74 = 0;
                  **(&buf + 1) = v19;
                  v73 = 8 * v23 + 8;
                  sub_238EFA8A0(&v58, &buf);
                  v22 = v59;
                  sub_238EFA998(&buf);
                }

                else
                {
                  *v59 = v19;
                  v22 = v21 + 1;
                }

                v59 = v22;
              }

              v15 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          sub_238DB9BD8(&buf, v58, (v59 - v58) >> 3);
          v26 = [*(a1 + 40) unsignedShortValue];
          v27 = [*(a1 + 48) unsignedLongValue];
          v28 = [*(a1 + 56) unsignedLongValue];
          v66[0] = &unk_284BAA218;
          v66[1] = v48;
          v66[2] = a6;
          v66[3] = v66;
          v65[0] = &unk_284BAA2A8;
          v65[1] = v49;
          v65[2] = a6;
          v65[3] = v65;
          v29 = *(a1 + 64);
          if (v29)
          {
            v52[0] = 1;
            v53 = [v29 unsignedShortValue];
          }

          else
          {
            v52[0] = 0;
          }

          v64 = 0;
          v61[0] = 0;
          v42 = sub_238EE9488(a3, v26, v27, v28, &buf, v66, v65, v52, v63, v61, 0);
          LODWORD(v35) = v42;
          v32 = v42 & 0xFFFFFFFF00000000;
          sub_238EF66BC(v63);
          sub_238EF663C(v65);
          sub_238EF65BC(v66);
LABEL_52:
          *&buf = &v58;
          sub_238EFA820(&buf);
        }

        else
        {
          v40 = sub_2393D9044(0);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v14;
            _os_log_impl(&dword_238DAE000, v40, OS_LOG_TYPE_ERROR, "Error: Object to encode claims to be a list but isn't: %@", &buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(0, 1);
          }

          v32 = 0x4FC00000000;
          LODWORD(v35) = 47;
        }
      }

      else
      {
        v36 = [*(a1 + 40) unsignedShortValue];
        v37 = [*(a1 + 48) unsignedLongValue];
        v38 = [*(a1 + 56) unsignedLongValue];
        *&buf = *(a1 + 32);
        v71[0] = &unk_284BAA218;
        v71[1] = v48;
        v71[2] = a6;
        v71[3] = v71;
        v70[0] = &unk_284BAA2A8;
        v70[1] = v49;
        v70[2] = a6;
        v70[3] = v70;
        v39 = *(a1 + 64);
        if (v39)
        {
          v61[0] = 1;
          v62 = [v39 unsignedShortValue];
        }

        else
        {
          v61[0] = 0;
        }

        v69 = 0;
        LOBYTE(v58) = 0;
        v35 = sub_238EE90EC(a3, v36, v37, v38, &buf, v71, v70, v61, v68, &v58, 0);
        sub_238EF66BC(v68);
        sub_238EF663C(v70);
        sub_238EF65BC(v71);

        v32 = v35 & 0xFFFFFFFF00000000;
      }

      v13 = v47;
    }

    else
    {
      v34 = sub_2393D9044(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "Error: Object to encode is corrupt: %@", &buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1);
      }

      v32 = 0x4ED00000000;
      LODWORD(v35) = 47;
    }

    v33 = v35;
  }

  else
  {
    v30 = sub_2393D9044(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 32);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v31;
      _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "Error: Unsupported object to write as attribute value: %@", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v45 = *(a1 + 32);
      sub_2393D5320(0, 1);
    }

    v32 = 0x4E600000000;
    v33 = 47;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v32 | v33;
}

void sub_238EE8FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_238EF663C(&a37);
  sub_238EF65BC(&a41);
  a32 = &a29;
  sub_238EFA820(&a32);

  _Unwind_Resume(a1);
}

unint64_t sub_238EE90EC(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, void **a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_238EF9534(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_238EF9534(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAA188;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_238EE93B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

void *sub_238EE93F8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_238EFA950(result, a2);
    }

    sub_238DBAEA8();
  }

  return result;
}

void sub_238EE9474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_238EFA998(va);
  _Unwind_Resume(a1);
}

unint64_t sub_238EE9488(uint64_t *a1, __int16 a2, unsigned int a3, unsigned int a4, void *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t a9, char *a10, void *a11)
{
  v36 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = (*(**a1 + 16))(*a1) == 3 || (*(*v19 + 16))(v19) == 4;
  LOBYTE(v32) = v20;
  v31 = sub_238EF95BC(a6, a7, a9, &v32);
  if (v31)
  {
    v21 = *(sub_2394C7C20() + 11);
    v22 = sub_2393D52C4(0x138uLL);
    if (v22)
    {
      v30 = sub_238EF9C64(v22, v21, v31 + 112, a8, 0);
      v23 = *a1;
      if ((*(**a1 + 16))(*a1) == 3 || (*(*v23 + 16))(v23) == 4)
      {
        v32 = __PAIR64__(a4, a3);
        LODWORD(v33) = -1;
        v29[0] = 0;
        v24 = sub_238EFA9EC(v30, &v32, a5, v29);
      }

      else
      {
        v32 = __PAIR64__(a4, a3);
        LOWORD(v33) = a2;
        WORD1(v33) = -1;
        v24 = sub_238EFA9EC(v30, &v32, a5, a10);
      }

      v26 = v24;
      if (v24 || (v26 = sub_2394D2AF4(v30, a1, 0), v26))
      {
        v25 = v26 & 0xFFFFFFFF00000000;
      }

      else
      {
        if (a11)
        {
          v32 = &unk_284BAA338;
          v33 = v31;
          v34 = v30;
          v35 = &v32;
          sub_238EFA218(&v32, a11);
          sub_238EF6944(&v32);
        }

        v25 = 0;
        LODWORD(v26) = 0;
        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v25 = 0x9300000000;
      LODWORD(v26) = 11;
    }

    sub_238EFA47C(&v30, 0);
    v26 = v26;
  }

  else
  {
    v25 = 0x8F00000000;
    v26 = 11;
  }

  sub_238EFA4D8(&v31, 0);
  v27 = *MEMORY[0x277D85DE8];
  return v26 | v25;
}

void sub_238EE9754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void (***)(void));
  sub_238EFA47C(va, 0);
  sub_238EFA4D8(va1, 0);
  _Unwind_Resume(a1);
}

void sub_238EE9794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    *(a1 + 112) = 1;
    v14 = 0;
    if (*(a3 + 4) != *(a1 + 104))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm";
      v9 = 142;
      v10 = 1378;
      goto LABEL_14;
    }

    if (!a5 && *(a3 + 8) != *(a1 + 108))
    {
      v8 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm";
      v9 = 142;
      v10 = 1383;
      goto LABEL_14;
    }

    if (a5)
    {
      v11 = sub_238EFCEC0(&v14, a5);
      v9 = v11;
      v8 = v12;
      v10 = HIDWORD(v11);
      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v8 = 0;
      v10 = 0;
      v9 = 0;
    }

    v13 = *(a1 + 32);
    if (!v13)
    {
      sub_238EF6570();
    }

    (*(*v13 + 48))(v13, a3, a4, &v14);
LABEL_13:
    if (!v9)
    {
LABEL_15:

      return;
    }

LABEL_14:
    sub_238EE98DC(a1 + 40, v9 | (v10 << 32), v8);
    goto LABEL_15;
  }
}

uint64_t sub_238EE98DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_238EF6570();
  }

  return (*(*v3 + 48))(v3, v5);
}

uint64_t sub_238EE9EE0(id *a1, uint64_t a2, uint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([a1[4] isEqualToNumber:&unk_284C3E5E8] && objc_msgSend(a1[5], "isEqualToNumber:", &unk_284C3E600) && (*(**a3 + 16))() == 2)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:sub_239495304(*a3) + 216 length:16];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [a1[6] unsignedShortValue];
  v8 = [a1[4] unsignedLongValue];
  v9 = [a1[5] unsignedLongValue];
  v14 = v7;
  v15 = 0;
  v16 = v8;
  v17 = v9;
  v18 = 1;
  if (sub_2393D52C4(0x78uLL))
  {
    v10 = v6;
    operator new();
  }

  v13 = 0;
  sub_238EFB774(&v13, 0);

  v11 = *MEMORY[0x277D85DE8];
  return 0x5E30000000BLL;
}

void sub_238EEA28C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_238EFB918(va1, 0);
  sub_238EFB774(va, 0);

  _Unwind_Resume(a1);
}

unint64_t sub_238EEA328(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v5[0] = *a4;
  if (v5[0] == 1)
  {
    v6 = *(a4 + 2);
  }

  v7 = 0;
  v8[0] = &unk_284BAA568;
  v8[1] = a3;
  return sub_2394C7280(a1, a2, v8, v5);
}

void sub_238EEA5E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if ([v5 count] != 1)
    {
      v7 = 0;
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:13 userInfo:0];
      goto LABEL_7;
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = [v8 alloc];
      v10 = [v5 objectAtIndexedSubscript:0];
      v11 = 0;
      v7 = [v9 initWithResponseValue:v10 error:&v11];
      v6 = v11;

      goto LABEL_7;
    }

    v6 = 0;
  }

  v7 = 0;
LABEL_7:
  (*(*(a1 + 32) + 16))();
}

void sub_238EEA9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  v25 = v19;

  _Unwind_Resume(a1);
}

void sub_238EEAA28(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v20 = v5;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v11 = [MTRAttributeReport alloc];
          v22 = 0;
          v12 = [(MTRAttributeReport *)v11 initWithResponseValue:v10 error:&v22];
          v13 = v22;
          if (v13)
          {
            (*(*(a1 + 40) + 16))();
          }

          else
          {
            v14 = [(MTRAttributeReport *)v12 path];
            v15 = [v14 isEqual:*(a1 + 32)];

            v16 = *(a1 + 40);
            if (v15)
            {
              v17 = [(MTRAttributeReport *)v12 value];
              v18 = [(MTRAttributeReport *)v12 error];
              (*(v16 + 16))(v16, v17, v18);
            }

            else
            {
              v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:13 userInfo:0];
              (*(v16 + 16))(v16, 0, v17);
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    v6 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_238EEB170(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = 128;
  v4 = 0;
  v2 = sub_23921CB28(MTRError, &v3);
  (*(v1 + 16))(v1, 0, v2);
}

void sub_238EEB1E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x68100000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_238EEB274(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x68B00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_238EEB300(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v119 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = *(a1 + 32);
  v80 = v7;
  if (!v7)
  {
    v11 = v8;
    v71 = MEMORY[0x23EE78590](*(a1 + 72));
    v72 = *(a1 + 32);
    v73 = MEMORY[0x23EE78590](*(a1 + 72));
    v74 = *(a1 + 32);
    v75 = MEMORY[0x23EE78590](*(a1 + 72));
    v76 = *(a1 + 32);
    v77 = MEMORY[0x23EE78590](*(a1 + 80));
    v78 = *(a1 + 32);
    v79 = MEMORY[0x23EE78590](*(a1 + 88));
    v70 = v11;
    v12 = objc_alloc_init(MTRReadClientContainer);
    -[MTRReadClientContainer setDeviceID:](v12, "setDeviceID:", [*(a1 + 40) nodeID]);
    v13 = *(a1 + 48);
    if (v13)
    {
      -[MTRReadClientContainer setPathParams:](v12, "setPathParams:", sub_2393D52D0([v13 count], 0xCuLL));
      if (![(MTRReadClientContainer *)v12 pathParams])
      {
        v58 = *(a1 + 32);
        v101[0] = MEMORY[0x277D85DD0];
        v101[1] = 3221225472;
        v101[2] = sub_238EEBDF4;
        v101[3] = &unk_278A72B88;
        v102 = *(a1 + 72);
        dispatch_async(v58, v101);
        [(MTRReadClientContainer *)v12 cleanup];

        goto LABEL_42;
      }

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v14 = *(a1 + 48);
      v15 = [v14 countByEnumeratingWithState:&v97 objects:v107 count:16];
      v67 = a2;
      v68 = a3;
      v16 = 0;
      if (v15)
      {
        v17 = *v98;
        do
        {
          v18 = 0;
          v19 = 12 * v16;
          do
          {
            if (*v98 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v97 + 1) + 8 * v18) convertToAttributePathParams:{-[MTRReadClientContainer pathParams](v12, "pathParams") + v19}];
            ++v16;
            ++v18;
            v19 += 12;
          }

          while (v15 != v18);
          v15 = [v14 countByEnumeratingWithState:&v97 objects:v107 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v67 = a2;
      v68 = a3;
      v16 = 0;
    }

    v20 = *(a1 + 56);
    if (!v20)
    {
      v22 = 0;
LABEL_25:
      v27 = sub_2394C7C20();
      v28 = sub_238DE36B8(v68);
      sub_238EF34E8(v86, v28);
      [*(a1 + 64) toReadPrepareParams:v86];
      v89 = [(MTRReadClientContainer *)v12 pathParams];
      v90 = v16;
      v87 = [(MTRReadClientContainer *)v12 eventPathParams];
      v88 = v22;
      v29 = v12;
      v30 = [(MTRReadClientContainer *)v29 pathParams];
      v31 = [(MTRReadClientContainer *)v29 eventPathParams];
      v32 = sub_2393D52C4(0x130uLL);
      if (v32)
      {
        v69 = v31;
        v33 = v70;
        v34 = MEMORY[0x23EE78590](v71);
        v118 = 0;
        v117[0] = &unk_284BAA5B0;
        v117[1] = v33;
        v35 = v33;
        v117[2] = MEMORY[0x23EE78590](v34);
        v118 = v117;

        v36 = v72;
        v37 = MEMORY[0x23EE78590](v73);
        v116 = 0;
        v115[0] = &unk_284BAA630;
        v115[1] = v36;
        v38 = v36;
        v115[2] = MEMORY[0x23EE78590](v37);
        v116 = v115;

        v39 = v74;
        v40 = MEMORY[0x23EE78590](v75);
        v114 = 0;
        v113[0] = &unk_284BAA6B0;
        v113[1] = v39;
        v41 = v39;
        v113[2] = MEMORY[0x23EE78590](v40);
        v114 = v113;

        v42 = v29;
        v112[0] = &unk_284BAA730;
        v112[1] = v42;
        v112[3] = v112;
        v43 = v76;
        v44 = MEMORY[0x23EE78590](v77);
        v111 = 0;
        v110[0] = &unk_284BAA7B0;
        v110[1] = v43;
        v45 = v43;
        v110[2] = MEMORY[0x23EE78590](v44);
        v111 = v110;

        v46 = v78;
        v47 = MEMORY[0x23EE78590](v79);
        v109 = 0;
        v108[0] = &unk_284BAA830;
        v108[1] = v46;
        v48 = v46;
        v108[2] = MEMORY[0x23EE78590](v47);
        v109 = v108;

        sub_238EF888C(v32, v30, v16, v69, v22, v117, v115, v113, v112, v110, v108);
        sub_238EF68C4(v108);
        sub_238EF6944(v110);
        sub_238EF69C4(v112);
        sub_238EF6A44(v113);
        sub_238EF6AC4(v115);
        sub_238EF6B44(v117);
      }

      v85 = v32;
      v49 = sub_2393D52C4(0x160uLL);
      v50 = v49;
      if (v49)
      {
        sub_2394D76F4(v49, v27, v67, v32 + 200, 1);
      }

      [(MTRReadClientContainer *)v29 setReadClientPtr:v50];
      v51 = v85;
      v85 = 0;
      [(MTRReadClientContainer *)v29 setCallback:v51];
      if ([*(a1 + 64) shouldResubscribeAutomatically])
      {
        v52 = sub_2394DAA64(v50, v86);
      }

      else
      {
        v52 = sub_2394D80C8(v50, v86);
      }

      v54 = v52;
      v55 = v53;
      if (v52)
      {
        v56 = *(a1 + 32);
        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = sub_238EEBF0C;
        v81[3] = &unk_278A72DC0;
        v82 = *(a1 + 72);
        v83 = v54;
        v84 = v55;
        dispatch_async(v56, v81);
        [(MTRReadClientContainer *)v29 cleanup];
        v57 = v82;
      }

      else
      {
        v59 = [(MTRReadClientContainer *)v29 deviceID];
        v57 = v29;
        if (qword_27DF775A8 != -1)
        {
          sub_23952C3C8();
        }

        v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v59];
        [qword_27DF77598 lock];
        v61 = [qword_27DF775A0 objectForKeyedSubscript:v60];
        v62 = v61 == 0;

        if (v62)
        {
          v63 = [MEMORY[0x277CBEB18] array];
          [qword_27DF775A0 setObject:v63 forKeyedSubscript:v60];
        }

        v64 = [qword_27DF775A0 objectForKeyedSubscript:v60];
        [v64 addObject:v57];

        [qword_27DF77598 unlock];
      }

      sub_238EF9504(&v85, 0);
      sub_239495880(v86);
      goto LABEL_42;
    }

    -[MTRReadClientContainer setEventPathParams:](v12, "setEventPathParams:", sub_2393D52D0([v20 count], 0xCuLL));
    if ([(MTRReadClientContainer *)v12 eventPathParams])
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v21 = *(a1 + 56);
      v22 = 0;
      v23 = [v21 countByEnumeratingWithState:&v91 objects:v106 count:16];
      if (v23)
      {
        v24 = *v92;
        do
        {
          v25 = 0;
          v26 = 12 * v22;
          do
          {
            if (*v92 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [*(*(&v91 + 1) + 8 * v25) convertToEventPathParams:{-[MTRReadClientContainer eventPathParams](v12, "eventPathParams") + v26}];
            ++v22;
            ++v25;
            v26 += 12;
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v91 objects:v106 count:16];
        }

        while (v23);
      }

      goto LABEL_25;
    }

    v65 = *(a1 + 32);
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = sub_238EEBE80;
    v95[3] = &unk_278A72B88;
    v96 = *(a1 + 72);
    dispatch_async(v65, v95);
    [(MTRReadClientContainer *)v12 cleanup];

LABEL_42:
    v10 = v70;
    goto LABEL_43;
  }

  v9 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238EEBDDC;
  block[3] = &unk_278A71698;
  v105 = *(a1 + 72);
  v104 = v9;
  dispatch_async(v8, block);

  v10 = v105;
LABEL_43:

  v66 = *MEMORY[0x277D85DE8];
}

void sub_238EEBC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_238EF9504(&a33, 0);

  sub_239495880(&a34);
  _Unwind_Resume(a1);
}

void sub_238EEBDF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x6F00000000BLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_238EEBE80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x6FF0000000BLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v1 + 16))(v1, 0);
}

void sub_238EEBF0C(void *a1)
{
  v1 = a1[4];
  v2 = sub_23921C1E4(MTRError, a1[5], a1[6]);
  (*(v1 + 16))(v1, 0);
}

void sub_238EEC998(uint64_t a1)
{
  v4 = 1;
  v5 = "dwnfw_open_pairing_window";
  v6 = 3;
  v7 = 3;
  sub_23948BD20(&v4);
  v2 = *(a1 + 32);
  v3 = sub_23921C1E4(MTRError, 0x79D00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v2 + 16))(v2, 0, v3);
}

void sub_238EECA3C(uint64_t a1)
{
  v4 = 1;
  v5 = "dwnfw_open_pairing_window";
  v6 = 3;
  v7 = 3;
  sub_23948BD20(&v4);
  v2 = *(a1 + 32);
  v3 = sub_23921C1E4(MTRError, 0x7A700000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v2 + 16))(v2, 0, v3);
}

void sub_238EECAE0(uint64_t a1)
{
  v4 = 1;
  v5 = "dwnfw_open_pairing_window";
  v6 = 143;
  v7 = 3;
  sub_23948BD20(&v4);
  v2 = *(a1 + 32);
  v3 = sub_23921C1E4(MTRError, 0x7B10000008FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v2 + 16))(v2, 0, v3);
}

void sub_238EECB88(uint64_t a1)
{
  v4 = 1;
  v5 = "dwnfw_open_pairing_window";
  v6 = 143;
  v7 = 3;
  sub_23948BD20(&v4);
  v2 = *(a1 + 32);
  v3 = sub_23921C1E4(MTRError, 0x7BC0000008FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v2 + 16))(v2, 0, v3);
}

void sub_238EECC30(uint64_t a1)
{
  v4 = 1;
  v5 = "dwnfw_open_pairing_window";
  v6 = 143;
  v7 = 3;
  sub_23948BD20(&v4);
  v2 = *(a1 + 32);
  v3 = sub_23921C1E4(MTRError, 0x7C80000008FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v2 + 16))(v2, 0, v3);
}

void sub_238EECCD8(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238EED024;
  v6[3] = &unk_278A72F00;
  v6[4] = *(a1 + 32);
  v6[5] = *(a1 + 48);
  v2 = MEMORY[0x23EE78590](v6);
  [*(a1 + 40) nodeID];
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = v2;
  operator new();
}

void sub_238EECFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_238EED304(&a29);

  _Unwind_Resume(a1);
}

void sub_238EED024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238EED268;
    block[3] = &unk_278A72DC0;
    v25 = a2;
    v26 = a3;
    v5 = *(a1 + 32);
    v24 = *(a1 + 40);
    dispatch_async(v5, block);
    v6 = v24;
  }

  else
  {
    v8 = [MTRSetupPayload alloc];
    *v16 = *a4;
    *&v16[3] = *(a4 + 3);
    v17 = *(a4 + 7);
    if (v17 == 1)
    {
      v18 = *(a4 + 8);
    }

    v19 = *(a4 + 10);
    v20 = *(a4 + 18);
    sub_238EF5AB4(v21, a4 + 24);
    sub_238EF5F84(v22, a4 + 48);
    v6 = sub_2392E09E0(v8, v16);
    sub_238EF5F20(v22, v22[1]);
    sub_238EF5F20(v21, v21[1]);
    v9 = *(a1 + 32);
    if (v6)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_238EED3E8;
      v11[3] = &unk_278A71698;
      v10 = &v13;
      v13 = *(a1 + 40);
      v12 = v6;
      dispatch_async(v9, v11);
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_238EED340;
      v14[3] = &unk_278A72B88;
      v10 = &v15;
      v15 = *(a1 + 40);
      dispatch_async(v9, v14);
    }
  }
}

void sub_238EED240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_238EED304(va);
  _Unwind_Resume(a1);
}

void sub_238EED268(void *a1)
{
  v4 = 1;
  v5 = "dwnfw_open_pairing_window";
  v6 = *(a1 + 10);
  v7 = 3;
  sub_23948BD20(&v4);
  v2 = a1[4];
  v3 = sub_23921C1E4(MTRError, a1[5], a1[6]);
  (*(v2 + 16))(v2, 0, v3);
}

uint64_t sub_238EED304(uint64_t a1)
{
  sub_238EF5F20(a1 + 48, *(a1 + 56));
  sub_238EF5F20(a1 + 24, *(a1 + 32));
  return a1;
}

void sub_238EED340(uint64_t a1)
{
  v4 = 1;
  v5 = "dwnfw_open_pairing_window";
  v6 = 11;
  v7 = 3;
  sub_23948BD20(&v4);
  v2 = *(a1 + 32);
  v3 = sub_23921C1E4(MTRError, 0x7DD0000000BLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v2 + 16))(v2, 0, v3);
}

uint64_t sub_238EED3E8(uint64_t a1)
{
  v4 = 1;
  v5 = "dwnfw_open_pairing_window";
  v6 = 0;
  v7 = 3;
  sub_23948BD20(&v4);
  v2 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void sub_238EED44C(void *a1)
{
  v4 = 1;
  v5 = "dwnfw_open_pairing_window";
  v6 = *(a1 + 10);
  v7 = 3;
  sub_23948BD20(&v4);
  v2 = a1[4];
  v3 = sub_23921C1E4(MTRError, a1[5], a1[6]);
  (*(v2 + 16))(v2, 0, v3);
}

uint64_t sub_238EED4E8(uint64_t result, uint64_t a2)
{
  *(result + 72) = 0;
  v2 = *(a2 + 72);
  *(result + 72) = v2;
  if (v2 == 1)
  {
    *(result + 76) = *(a2 + 76);
  }

  return result;
}

void sub_238EED50C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_238EED5C0;
  v6[3] = &unk_278A72D98;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t sub_238EED5C0(uint64_t a1)
{
  v2 = sub_23921D408(MTRError, *(a1 + 32));
  v5 = 1;
  v6 = "dwnfw_open_pairing_window";
  v7 = v2;
  v8 = 3;
  sub_23948BD20(&v5);
  v3 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void sub_238EEE18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_238DD2FEC(va);
  sub_238EA1758((v7 - 88));

  _Unwind_Resume(a1);
}

uint64_t sub_238EEE250(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = [a1 objectForKeyedSubscript:v8];
  if (!v10)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s is null when not expected to be", objc_msgSend(v8, "UTF8String")];
    sub_238EEE368(v12, 4, a5);

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_238EEE368(v9, 4, a5);
    goto LABEL_6;
  }

  v11 = 1;
LABEL_7:

  return v11;
}

void sub_238EEE368(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v15 = [v5 UTF8String];
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v7 = v5;
    [v5 UTF8String];
    sub_2393D5320(0, 1);
  }

  if (a3)
  {
    v12 = *MEMORY[0x277CCA470];
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 localizedStringForKey:v5 value:&stru_284BD0DD8 table:0];
    v13 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];

    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:a2 userInfo:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_238EEE54C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = sub_2393D9044(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v12 = [v7 UTF8String];
    v13 = 2080;
    v14 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "%s: %s", buf, 0x16u);
  }

  if (sub_2393D5398(1u))
  {
    v9 = v7;
    [v7 UTF8String];
    sub_2393C9138();
    sub_2393D5320(0, 1);
  }

  if (a4)
  {
    *a4 = sub_23921C1E4(MTRError, a2, a3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_238EEE868(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23921C1E4(MTRError, 0x8CC00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  (*(v1 + 16))(v1, 0);
}

__CFString *sub_238EEEF30(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", objc_msgSend(v1, "unsignedShortValue")];
  }

  else
  {
    v3 = @"wildcard";
  }

  return v3;
}

__CFString *sub_238EEEFC0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [v1 unsignedLongLongValue];
    v5 = [v2 unsignedLongLongValue];
    v6 = MTRClusterNameForID([v2 unsignedLongLongValue]);
    v7 = [v3 stringWithFormat:@"0x%llx (%llu, %@)", v4, v5, v6];
  }

  else
  {
    v7 = @"wildcard";
  }

  return v7;
}

__CFString *sub_238EEF098(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = MEMORY[0x277CCACA8];
    if (v5)
    {
      v9 = [v6 unsignedLongLongValue];
      v10 = [v6 unsignedLongLongValue];
      v11 = v7[2](v7, [v5 unsignedLongLongValue], v6);
      v12 = [v8 stringWithFormat:@"0x%llx (%llu, %@)", v9, v10, v11];
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%llx (%llu)", objc_msgSend(v6, "unsignedLongLongValue"), objc_msgSend(v6, "unsignedLongLongValue")];
    }
  }

  else
  {
    v12 = @"wildcard";
  }

  return v12;
}

id sub_238EEF1EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MTRAttributeNameForID(a2, [v4 unsignedLongLongValue]);

  return v5;
}

id sub_238EEFB04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = MTREventNameForID(a2, [v4 unsignedLongLongValue]);

  return v5;
}

void sub_238EF2598(_Unwind_Exception *a1)
{
  sub_238DCCA48((v7 - 96));
  sub_238EA1758((v7 - 88));

  _Unwind_Resume(a1);
}

uint64_t sub_238EF2604(uint64_t **a1, void **a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a3;
  sub_2393D9C18(0x62FuLL, 0, v25);
  if (*a1)
  {
    sub_2393D96C8(*a1);
  }

  *a1 = v25[0];
  v25[0] = 0;
  sub_238EA1758(v25);
  if (!*a1)
  {
    sub_238EEE54C(@"Unable to allocate encoding buffer", 0xC130000000BLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm", a5);
    v14 = 0;
    goto LABEL_11;
  }

  sub_2393C7B90(v25);
  v27 = 0;
  v28 = 0;
  v26 = &unk_284BB83A8;
  v29 = 0;
  sub_238EA16C4(&v26, a1, 1);
  sub_2393C7BF0(v25, &v26, 0xFFFFFFFF);
  v11 = sub_238EE7070(v9, v25, 0x100uLL);
  if (v11 || (v11 = sub_238DD2EFC(v25, a1), v11))
  {
    v12 = v10;
    v13 = @"Unable to encode data-value to TLV";
  }

  else
  {
    v16 = *a1;
    if (**a1)
    {
      v17 = v16[2];
      sub_238EF63CC(a2, v17, 1uLL);
      if (!*a2)
      {
        sub_238EEE54C(@"Unable to allocate decoding buffer", 0xC2A0000000BLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm", a5);
        goto LABEL_8;
      }

      v18 = 0;
      v19 = @"Encoding buffer size is bigger than it claimed";
      while (1)
      {
        v20 = *a1;
        if (!*a1)
        {
          break;
        }

        v21 = v20[3];
        if (v21 > v17)
        {
          v24 = 0xC3200000003;
          goto LABEL_25;
        }

        memcpy(*a2 + v18, v20[1], v21);
        v22 = (*a1)[3];
        v18 += v22;
        v17 -= v22;
        sub_238EF6350(a1);
      }

      if (v17)
      {
        v24 = 0xC3D00000003;
        v19 = @"Did not copy all data from Encoding buffer for some reason";
LABEL_25:
        sub_238EEE54C(v19, v24, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm", a5);
        goto LABEL_8;
      }

      sub_2393C5ADC(a4, *a2, v18);
    }

    else
    {
      sub_2393C5ADC(a4, v16[1], v16[3]);
    }

    v11 = sub_2393C6FD0(a4, 256);
    if (!v11)
    {
      v14 = 1;
      goto LABEL_9;
    }

    v12 = v23;
    v13 = @"data-value TLV encoding did not create a TLV element";
  }

  sub_238EEE54C(v13, v11, v12, a5);
LABEL_8:
  v14 = 0;
LABEL_9:
  v26 = &unk_284BB83A8;
  sub_238EA1758(&v28);
  sub_238EA1758(&v27);
LABEL_11:

  return v14;
}

void sub_238EF28A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_238DD2FEC(&a9);

  _Unwind_Resume(a1);
}

void sub_238EF3204(_Unwind_Exception *a1)
{
  v10 = v6;

  sub_238DCCA48((v9 - 112));
  sub_238EA1758((v9 - 104));

  _Unwind_Resume(a1);
}

uint64_t sub_238EF336C(uint64_t a1)
{
  sub_238EF6BC4(a1 + 72);
  sub_238EF641C(a1 + 40);
  sub_238EF649C(a1 + 8);
  return a1;
}

void sub_238EF33A8(uint64_t a1)
{
  sub_238EF6BC4(a1 + 72);
  sub_238EF641C(a1 + 40);
  sub_238EF649C(a1 + 8);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EF3404(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 112) & 1) == 0)
  {
    *(result + 112) = 1;
    return sub_238EE98DC(result + 40, a3, a4);
  }

  return result;
}

uint64_t sub_238EF3428(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 112) & 1) == 0)
  {
    *(a1 + 112) = 1;
    sub_238EE98DC(a1 + 40, 0x54500000021, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
  }

  return sub_238EF651C(a1 + 72, a2);
}

void sub_238EF348C()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = qword_27DF775A0;
  qword_27DF775A0 = v0;

  v2 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v3 = qword_27DF77598;
  qword_27DF77598 = v2;
}

uint64_t sub_238EF34E8(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284BBBF18;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 113) = 1;
  *(a1 + 115) = 0;
  sub_239495C6C(a1, a2);
  return a1;
}

unint64_t sub_238EF3570(void *a1, uint64_t a2, unint64_t a3)
{
  v89 = *MEMORY[0x277D85DE8];
  v5 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = sub_2393D9044(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = objc_opt_class();
      v10 = v88;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Error: Unsupported object to encode: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      objc_opt_class();
      sub_2393D5320(0, 1);
    }

    v11 = 0x26A00000000;
    v12 = 47;
    goto LABEL_19;
  }

  v6 = [v5 objectForKeyedSubscript:@"type"];
  v7 = [v5 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = sub_2393D9044(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = v5;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Error: Object to encode has no MTRTypeKey: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    a2 = 0x27000000000;
    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"SignedInteger"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a2)
      {
        v8 = sub_2393C8284(a2, a3, [v7 longLongValue]);
LABEL_54:
        v14 = v8;
LABEL_55:
        a2 = v14;
        goto LABEL_18;
      }

      goto LABEL_74;
    }

    v17 = sub_2393D9044(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = objc_opt_class();
      v18 = v88;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Error: Object to encode has corrupt signed integer type: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      objc_opt_class();
      sub_2393D5320(0, 1);
    }

    a2 = 0x27600000000;
    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"UnsignedInteger"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a2)
      {
        v8 = sub_2393C8154(a2, a3, [v7 unsignedLongLongValue]);
        goto LABEL_54;
      }

LABEL_74:
      LODWORD(v14) = 0;
      goto LABEL_18;
    }

    v20 = sub_2393D9044(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = objc_opt_class();
      v21 = v88;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Error: Object to encode has corrupt unsigned integer type: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      objc_opt_class();
      sub_2393D5320(0, 1);
    }

    a2 = 0x27D00000000;
LABEL_17:
    LODWORD(v14) = 47;
    goto LABEL_18;
  }

  if ([v6 isEqualToString:@"Boolean"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a2)
      {
        v8 = sub_2393C7E38(a2, a3, [v7 BOOLValue]);
        goto LABEL_54;
      }

      goto LABEL_74;
    }

    v23 = sub_2393D9044(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = objc_opt_class();
      v24 = v88;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Error: Object to encode has corrupt BOOLean type: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      objc_opt_class();
      sub_2393D5320(0, 1);
    }

    a2 = 0x28400000000;
    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"Float"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a2)
      {
        [v7 floatValue];
        v8 = sub_2393C8344(a2, a3, v19);
        goto LABEL_54;
      }

      goto LABEL_74;
    }

    v25 = sub_2393D9044(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = objc_opt_class();
      v26 = v88;
      _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "Error: Object to encode has corrupt float type: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      objc_opt_class();
      sub_2393D5320(0, 1);
    }

    a2 = 0x28B00000000;
    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"Double"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a2)
      {
        [v7 doubleValue];
        v8 = sub_2393C8354(a2, a3, v22);
        goto LABEL_54;
      }

      goto LABEL_74;
    }

    v29 = sub_2393D9044(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = objc_opt_class();
      v30 = v88;
      _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "Error: Object to encode has corrupt double type: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      objc_opt_class();
      sub_2393D5320(0, 1);
    }

    a2 = 0x29200000000;
    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"Null"])
  {
    if (a2)
    {
      v8 = sub_2393C8948(a2, a3);
      goto LABEL_54;
    }

    goto LABEL_74;
  }

  if ([v6 isEqualToString:@"UTF8String"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a2)
      {
        v27 = sub_238EF4730(v7);
        v8 = sub_2393C85FC(a2, a3, v27, v28);
        goto LABEL_54;
      }

      goto LABEL_74;
    }

    v43 = sub_2393D9044(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = objc_opt_class();
      v44 = v88;
      _os_log_impl(&dword_238DAE000, v43, OS_LOG_TYPE_ERROR, "Error: Object to encode has corrupt UTF8 string type: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      objc_opt_class();
      sub_2393D5320(0, 1);
    }

    a2 = 0x29C00000000;
    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"OctetString"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a2)
      {
        v31 = sub_238EF479C(v7);
        v8 = sub_2393C8364(a2, a3, v31, v32);
        goto LABEL_54;
      }

      goto LABEL_74;
    }

    v50 = sub_2393D9044(0);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = objc_opt_class();
      v51 = v88;
      _os_log_impl(&dword_238DAE000, v50, OS_LOG_TYPE_ERROR, "Error: Object to encode has corrupt octet string type: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      objc_opt_class();
      sub_2393D5320(0, 1);
    }

    a2 = 0x2A300000000;
    goto LABEL_17;
  }

  if ([v6 isEqualToString:@"Structure"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v84 = -1;
      if (!a2 || (v14 = sub_2393C8CE0(a2, a3, 21, &v84), !v14))
      {
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        obj = v7;
        v33 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
        if (!v33)
        {
          goto LABEL_96;
        }

        v71 = *v81;
LABEL_81:
        v74 = 0;
        v69 = v33;
        while (1)
        {
          if (*v81 != v71)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v80 + 1) + 8 * v74);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v35 = [v34 objectForKeyedSubscript:@"contextTag"];
          v36 = [v34 objectForKeyedSubscript:@"data"];
          v37 = v36;
          if (v35)
          {
            v38 = v36 == 0;
          }

          else
          {
            v38 = 1;
          }

          if (v38)
          {
            v60 = sub_2393D9044(0);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v88 = v34;
              _os_log_impl(&dword_238DAE000, v60, OS_LOG_TYPE_ERROR, "Error: Structure element to encode has corrupt value: %@", buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(0, 1);
            }

            a2 = 0x2B900000000;
LABEL_156:

            goto LABEL_157;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v61 = sub_2393D9044(0);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              v62 = objc_opt_class();
              *buf = 138412290;
              v88 = v62;
              v63 = v62;
              _os_log_impl(&dword_238DAE000, v61, OS_LOG_TYPE_ERROR, "Error: Structure element to encode has corrupt tag type: %@", buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
              objc_opt_class();
              sub_2393D5320(0, 1);
            }

            a2 = 0x2BD00000000;
            goto LABEL_156;
          }

          v39 = [v35 unsignedLongLongValue];
          if (v39 <= 0xFF)
          {
            v40 = v39;
          }

          else
          {
            v40 = v39 ^ 0xFFFFFFFF00000000;
          }

          v41 = v37;
          v14 = sub_238EF3570(v37, a2, v40);

          if (v14)
          {
            a2 = v14;
            goto LABEL_159;
          }

          if (v69 == ++v74)
          {
            v33 = [obj countByEnumeratingWithState:&v80 objects:v86 count:16];
            if (v33)
            {
              goto LABEL_81;
            }

LABEL_96:

            if (a2)
            {
              v42 = sub_2393C8DE0(a2, v84);
              goto LABEL_119;
            }

            goto LABEL_120;
          }
        }

        v57 = sub_2393D9044(0);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = objc_opt_class();
          *buf = 138412290;
          v88 = v58;
          v59 = v58;
          _os_log_impl(&dword_238DAE000, v57, OS_LOG_TYPE_ERROR, "Error: Structure element to encode has corrupt type: %@", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          objc_opt_class();
          sub_2393D5320(0, 1);
        }

        a2 = 0x2B300000000;
LABEL_157:
        LODWORD(v14) = 47;
LABEL_159:

        goto LABEL_18;
      }

      goto LABEL_55;
    }

    v53 = sub_2393D9044(0);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = objc_opt_class();
      v54 = v88;
      _os_log_impl(&dword_238DAE000, v53, OS_LOG_TYPE_ERROR, "Error: Object to encode has corrupt structure type: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      objc_opt_class();
      sub_2393D5320(0, 1);
    }

    a2 = 0x2AA00000000;
    goto LABEL_17;
  }

  if (![v6 isEqualToString:@"Array"])
  {
    v52 = sub_2393D9044(0);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = v6;
      _os_log_impl(&dword_238DAE000, v52, OS_LOG_TYPE_ERROR, "Error: Unsupported type to encode: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    a2 = 0x2EC00000000;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v55 = sub_2393D9044(0);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v88 = objc_opt_class();
      v56 = v88;
      _os_log_impl(&dword_238DAE000, v55, OS_LOG_TYPE_ERROR, "Error: Object to encode has corrupt array type: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      objc_opt_class();
      sub_2393D5320(0, 1);
    }

    a2 = 0x2D400000000;
    goto LABEL_17;
  }

  v84 = -1;
  if (a2)
  {
    v14 = sub_2393C8CE0(a2, a3, 22, &v84);
    if (v14)
    {
      goto LABEL_55;
    }
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v70 = v7;
  v45 = [v70 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (!v45)
  {
    goto LABEL_117;
  }

  v73 = *v77;
  while (2)
  {
    v46 = 0;
    v72 = v45;
    do
    {
      if (*v77 != v73)
      {
        objc_enumerationMutation(v70);
      }

      v47 = *(*(&v76 + 1) + 8 * v46);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v64 = sub_2393D9044(0);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v65 = objc_opt_class();
          *buf = 138412290;
          v88 = v65;
          v66 = v65;
          _os_log_impl(&dword_238DAE000, v64, OS_LOG_TYPE_ERROR, "Error: Array element to encode has corrupt type: %@", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          objc_opt_class();
          sub_2393D5320(0, 1);
        }

        a2 = 0x2DD00000000;
        goto LABEL_170;
      }

      v48 = [v47 objectForKeyedSubscript:@"data"];
      if (!v48)
      {
        v67 = sub_2393D9044(0);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v88 = v47;
          _os_log_impl(&dword_238DAE000, v67, OS_LOG_TYPE_ERROR, "Error: Array element to encode has corrupt value: %@", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1);
        }

        a2 = 0x2E200000000;
LABEL_170:
        LODWORD(v14) = 47;
LABEL_172:

        goto LABEL_18;
      }

      v75 = v46;
      v49 = v48;
      v14 = sub_238EF3570(v48, a2, 256);

      if (v14)
      {
        a2 = v14;
        goto LABEL_172;
      }

      v46 = v75 + 1;
    }

    while (v72 != v75 + 1);
    v45 = [v70 countByEnumeratingWithState:&v76 objects:v85 count:16];
    if (v45)
    {
      continue;
    }

    break;
  }

LABEL_117:

  if (a2)
  {
    v42 = sub_2393C8DE0(a2, v84);
LABEL_119:
    v14 = v42;
    if (v42)
    {
      goto LABEL_55;
    }
  }

LABEL_120:
  LODWORD(v14) = 0;
  a2 = 0;
LABEL_18:

  v11 = a2 & 0xFFFFFFFF00000000;
  v12 = v14;
LABEL_19:

  v15 = *MEMORY[0x277D85DE8];
  return v11 | v12;
}

uint64_t sub_238EF4730(void *a1)
{
  v1 = a1;
  sub_238DB9BD8(&v3, [v1 UTF8String], objc_msgSend(v1, "lengthOfBytesUsingEncoding:", 4));

  return v3;
}

uint64_t sub_238EF479C(void *a1)
{
  v1 = a1;
  sub_238DB6950(&v3, [v1 bytes], objc_msgSend(v1, "length"));

  return v3;
}

uint64_t sub_238EF4810(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a2;
  *(a1 + 16) = 0;
  *a1 = &unk_284BA9BC0;
  *(a1 + 8) = v9;
  v10 = a4;
  *(a1 + 24) = MEMORY[0x23EE78590](a3);
  v11 = MEMORY[0x23EE78590](v10);

  *(a1 + 32) = v11;
  *(a1 + 40) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = sub_238EF4F64;
  return a1;
}

void sub_238EF48AC(id *a1)
{
  sub_238EF5014(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_238EF48E4(void *a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = MEMORY[0x23EE78590](a1[4]);
  v9 = a1[4];
  a1[4] = 0;

  if (v7)
  {
    sub_238EF4BF8(a1, v7, 0);
  }

  else
  {
    v10 = sub_238DE36B8(a3);
    v12 = (v8)[2](v8, a2, v10, a1[5], a1[6], a1);
    if (v12)
    {
      v13 = v11;
      v14 = sub_2393D9044(9u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = 0x800000023958E733 & 0x7FFFFFFFFFFFFFFFLL;
        v18 = 2080;
        v19 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Failure performing action. C++-mangled success callback type: '%s', error: %s", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(9u, 1);
      }

      sub_238EF4F64(a1, v12, v13);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_238EF4ABC(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = *(a1 + 56);
  *(a1 + 56) = v2;

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response Time: %s+%u", 0x800000023958E733 & 0x7FFFFFFFFFFFFFFFLL, arc4random()];
  v5 = *(a1 + 64);
  *(a1 + 64) = v4;

  v6 = sub_2393D9044(9u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 64) UTF8String];
    *buf = 136315138;
    v11 = v7;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    [*(a1 + 64) UTF8String];
    result = sub_2393D5320(9u, 3);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238EF4BF8(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_238EF4DFC;
      block[3] = &unk_278A715B0;
      v16 = a1;
      v14 = v6;
      v15 = v5;
      dispatch_async(v8, block);
    }

    else
    {
      v9 = sub_2393D9044(9u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(a1 + 64) UTF8String];
        [*(a1 + 56) timeIntervalSinceNow];
        *buf = 136315394;
        v18 = v10;
        v19 = 2048;
        v20 = -v11;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "%s %f seconds: can't dispatch response; no queue", buf, 0x16u);
      }

      if (sub_2393D5398(3u))
      {
        [*(a1 + 64) UTF8String];
        [*(a1 + 56) timeIntervalSinceNow];
        sub_2393D5320(9u, 3);
      }

      if ((*(a1 + 16) & 1) == 0)
      {
        (*(*a1 + 8))(a1);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

_BYTE *sub_238EF4DFC(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1[6] + 64) UTF8String];
    [*(a1[6] + 56) timeIntervalSinceNow];
    *buf = 136315394;
    v9 = v3;
    v10 = 2048;
    v11 = -v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "%s %f seconds", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    [*(a1[6] + 64) UTF8String];
    [*(a1[6] + 56) timeIntervalSinceNow];
    sub_2393D5320(9u, 3);
  }

  v5 = a1[5];
  (*(*(a1[6] + 24) + 16))(*(a1[6] + 24), a1[4]);
  result = a1[6];
  if (result && (result[16] & 1) == 0)
  {
    result = (*(*result + 8))(result);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238EF4F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23921C1E4(MTRError, a2, a3);
  sub_238EF4BF8(a1, v4, 0);
}

void sub_238EF4FDC(id *a1)
{
  sub_238EF5014(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_238EF5060(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*a1 + 24))(a1);
  v4 = [v3 concreteController];
  if (v4)
  {
    v5 = [v3 nodeID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_238EF54BC;
    v8[3] = &unk_278A72F60;
    v8[4] = a1;
    [v4 getSessionForCommissioneeDevice:v5 completion:v8];
  }

  else
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Trying to perform action with PASE device with a non-concrete controller", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    buf[0] = 0;
    v7 = sub_23921C1E4(MTRError, 0x4E00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCallbackBridgeBase.h");
    (*(*a1 + 16))(a1, 0, buf, v7);

    if (buf[0] == 1)
    {
      (*(*v10 + 32))(v10);
    }
  }
}

void sub_238EF5238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  sub_238EA92A0(va);
  _Unwind_Resume(a1);
}

void sub_238EF5274(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  (*(*a1 + 24))(a1);
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_238EF54E4;
    v9[3] = &unk_278A72F60;
    v9[4] = a1;
    [v5 getSessionForNode:a2 completion:v9];
  }

  else
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v11 = a2;
      *&v11[8] = 2048;
      *&v11[10] = a2;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Trying to perform action on node ID 0x%016llX (%llu) with a non-concrete controller", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    buf[0] = 0;
    v7 = sub_23921C1E4(MTRError, 0x5F00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRCallbackBridgeBase.h");
    (*(*a1 + 16))(a1, 0, buf, v7);

    if (buf[0] == 1)
    {
      (*(**&v11[4] + 32))(*&v11[4]);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_238EF5478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_238DC7854(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_238EF550C(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_238EF5580(v5, a2);
  sub_238EF5618(v5, a1);
  sub_238EF6BC4(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_238EF5580(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_238EF5618(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238EF5870(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_238DC7854(a1);
}

void sub_238EF587C(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v5++) cleanup];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  [*(a1 + 32) removeAllObjects];
  v6 = *(a1 + 48);
  if (v6)
  {
    dispatch_async(*(a1 + 40), v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_238EF59A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v9 = *(a1 + 32);
  v4 = v1;
  v5 = v2;
  v6 = v3;
  [qword_27DF77598 lock];
  v7 = [qword_27DF775A0 objectForKeyedSubscript:v4];
  v8 = v7;
  if (v7)
  {
    [v7 addObjectsFromArray:v9];
  }

  else
  {
    [qword_27DF775A0 setObject:v9 forKeyedSubscript:v4];
  }

  [qword_27DF77598 unlock];
  if (v6)
  {
    dispatch_async(v5, v6);
  }
}

void *sub_238EF5AB4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_238EF5B0C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_238EF5B0C(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_238EF5B94(v5, v5 + 1, v4 + 32);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_238EF5B94(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  result = *sub_238EF5C18(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_238EF5DC0();
  }

  return result;
}

uint64_t *sub_238EF5C18(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 32), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 32) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 32))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_238EF5E38(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_238EF5EBC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_238EF5E54(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_238DCEA9C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void sub_238EF5EBC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 71) < 0)
    {
      operator delete(__p[6]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_238EF5F20(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_238EF5F20(a1, *a2);
    sub_238EF5F20(a1, *(a2 + 1));
    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    operator delete(a2);
  }
}

void *sub_238EF5F84(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_238EF5FDC(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_238EF5FDC(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_238EF6064(v5, v5 + 1, v4 + 32);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_238EF6064(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  result = *sub_238EF5C18(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_238EF60E8();
  }

  return result;
}

void sub_238EF6160(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_238EF5EBC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_238EF617C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_238DCEA9C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  return a1;
}

void sub_238EF61F4(uint64_t a1)
{
  (*(*(a1 + 408) + 16))();

  v2 = *(a1 + 384);
  if (v2)
  {
    *(a1 + 384) = 0;
    v2(a1 + 368);
  }

  v3 = *(a1 + 344);
  if (v3)
  {
    *(a1 + 344) = 0;
    v3(a1 + 328);
  }

  v4 = *(a1 + 304);
  if (v4)
  {
    *(a1 + 304) = 0;
    v4(a1 + 288);
  }

  sub_238EF5F20(a1 + 88, *(a1 + 96));
  sub_238EF5F20(a1 + 64, *(a1 + 72));

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EF62BC(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 50) = 0;
  *(result + 52) = 0;
  *(result + 56) = 0;
  *(result + 42) = 0;
  *(result + 72) = 0;
  *(result + 46) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  *(result + 64) = result + 72;
  *(result + 104) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0;
  *(result + 88) = result + 96;
  *(result + 112) = 0;
  *(result + 114) = 0;
  *(result + 232) = 0;
  *(result + 272) = 0;
  *(result + 280) = 0;
  *(result + 125) = 0;
  *(result + 120) = 0;
  *(result + 288) = result + 288;
  *(result + 296) = result + 288;
  *(result + 304) = 0;
  *(result + 312) = result;
  *(result + 320) = sub_23951FE78;
  *(result + 328) = result + 328;
  *(result + 336) = result + 328;
  *(result + 344) = 0;
  *(result + 352) = result;
  *(result + 360) = sub_239520170;
  return result;
}

_WORD **sub_238EF6350(uint64_t **a1)
{
  v2 = *a1;
  v3 = *v2;
  if (*v2)
  {
    sub_2393D9BEC(*v2);
    v2 = *a1;
    v5 = v3;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  sub_2393D96C8(v2);
  v3 = v5;
LABEL_6:
  *a1 = v3;
  v5 = 0;
  return sub_238EA1758(&v5);
}

void sub_238EF63B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_238EA1758(va);
  _Unwind_Resume(a1);
}

void *sub_238EF63CC(void **a1, size_t a2, size_t a3)
{
  v6 = *a1;
  if (v6)
  {
    j__free(v6);
    *a1 = 0;
  }

  result = sub_2393D52D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238EF641C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_238EF649C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_238EF651C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_238EF6570();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_238EF6570()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t sub_238EF65BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_238EF663C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_238EF66BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_238EF673C(void (****a1)(void), void (***a2)(void))
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    j__free(v2);
  }
}

uint64_t sub_238EF679C(uint64_t a1)
{
  sub_238EF673C((a1 + 264), 0);
  sub_238EF673C((a1 + 264), 0);
  *(a1 + 200) = &unk_284BB7D38;
  v3 = (a1 + 232);
  sub_238EF6840(&v3);
  sub_238EF68C4(a1 + 168);
  sub_238EF6944(a1 + 136);
  sub_238EF69C4(a1 + 104);
  sub_238EF6A44(a1 + 72);
  sub_238EF6AC4(a1 + 40);
  sub_238EF6B44(a1 + 8);
  return a1;
}

void sub_238EF6840(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_238EA1758(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_238EF68C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_238EF6944(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_238EF69C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_238EF6A44(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_238EF6AC4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_238EF6B44(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_238EF6BC4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_238EF6C44(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284BB6F78;
  v37 = a11;
  v36 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  *(a1 + 24) = MEMORY[0x23EE78590](a2);
  v26 = MEMORY[0x23EE78590](v25);

  *(a1 + 32) = v26;
  v27 = MEMORY[0x23EE78590](v24);

  *(a1 + 40) = v27;
  v28 = MEMORY[0x23EE78590](v23);

  *(a1 + 48) = v28;
  v29 = MEMORY[0x23EE78590](v22);

  *(a1 + 56) = v29;
  v30 = MEMORY[0x23EE78590](v20);

  *(a1 + 64) = v30;
  v31 = MEMORY[0x23EE78590](v19);

  *(a1 + 72) = v31;
  v32 = MEMORY[0x23EE78590](v36);

  *(a1 + 80) = v32;
  v33 = MEMORY[0x23EE78590](v37);

  *(a1 + 88) = v33;
  *(a1 + 96) = &unk_284BB7D38;
  *(a1 + 104) = 0;
  *(a1 + 106) = 0;
  *(a1 + 120) = 0;
  *(a1 + 108) = 0;
  *(a1 + 115) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v34 = MEMORY[0x23EE78590](v21);

  *(a1 + 184) = v34;
  *(a1 + 192) = 0;
  return a1;
}

void sub_238EF6E28(uint64_t a1)
{
  sub_238EF7260(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_238EF6E64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (a4)
  {
    v6 = sub_23921CB28(MTRError, a4);
LABEL_3:
    v7 = v6;
    v8 = 0;
    goto LABEL_4;
  }

  if (!a3)
  {
    v6 = sub_23921C1E4(MTRError, 0xD4E0000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
    goto LABEL_3;
  }

  v11 = sub_2392D45E0(a2, a3, v15);
  v8 = v11;
  if (LODWORD(v15[0]))
  {
    if (LODWORD(v15[0]) == 182)
    {
LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }

    v7 = sub_23921C1E4(MTRError, v15[0], v15[1]);
    v8 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_4:
  v9 = *(a1 + 16);
  if (!v9)
  {
    sub_239224A20(a1, 0xD5F00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm", 1);
    goto LABEL_14;
  }

  if (!v7)
  {
    v12 = [MTREventReport alloc];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a2 + 16)];
    v14 = [(MTREventReport *)v12 initWithPath:a2 eventNumber:v13 priority:*(a2 + 24) timestamp:a2 + 32 value:v8];
    [v9 addObject:v14];

    goto LABEL_13;
  }

  v10 = [[MTREventReport alloc] initWithPath:a2 error:v7];
  [v9 addObject:v10];

LABEL_14:
}

void sub_238EF7050(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  if (*(a2 + 14) < 2u)
  {
    if (*a4)
    {
      v6 = sub_23921CB28(MTRError, a4);
    }

    else
    {
      if (a3)
      {
        v11 = sub_23929E56C(a2, a3, v12);
        v8 = v11;
        if (LODWORD(v12[0]))
        {
          if (LODWORD(v12[0]) == 181)
          {
            v7 = 0;
LABEL_15:

            return;
          }

          v7 = sub_23921C1E4(MTRError, v12[0], v12[1]);
          v8 = 0;
        }

        else
        {
          v7 = 0;
        }

LABEL_8:
        v9 = *(a1 + 8);
        if (v9)
        {
          v10 = [[MTRAttributeReport alloc] initWithPath:a2 value:v8 error:v7];
          [v9 addObject:v10];
        }

        else
        {
          sub_239224A20(a1, 0xD8C00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm", 1);
        }

        goto LABEL_15;
      }

      v6 = sub_23921C1E4(MTRError, 0xD7B0000002FLL, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm");
    }

    v7 = v6;
    v8 = 0;
    goto LABEL_8;
  }

  sub_239224A20(a1, 0xD7200000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm", 1);
}

uint64_t sub_238EF7260(uint64_t a1)
{
  *a1 = &unk_284BB6F78;
  v2 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    dispatch_block_cancel(v3);
    v4 = *(a1 + 192);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(a1 + 96) = &unk_284BB7D38;
  v8 = (a1 + 128);
  sub_238EF6840(&v8);

  return a1;
}

uint64_t sub_238EF73E4(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  *result = &unk_284BA9CC0;
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 16) = result + 24;
  *(result + 48) = 0;
  *(result + 32) = 0;
  *(result + 40) = result + 48;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  *(result + 64) = result + 72;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 112) = result + 120;
  *(result + 136) = 0;
  *(result + 160) = 0;
  *(result + 152) = result + 160;
  *(result + 168) = 0;
  *(result + 176) = &unk_284BB7D38;
  *(result + 184) = 0;
  *(result + 186) = 0;
  *(result + 200) = 0;
  *(result + 188) = 0;
  *(result + 195) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 232) = result;
  *(result + 240) = -1;
  *(result + 244) = -1;
  *(result + 248) = 1;
  v3 = *a3;
  *(result + 136) = v3;
  if (v3 == 1)
  {
    *(result + 144) = *(a3 + 1);
  }

  return result;
}

uint64_t sub_238EF74BC(uint64_t a1)
{
  *a1 = &unk_284BA9CC0;
  *(a1 + 176) = &unk_284BB7D38;
  v4 = (a1 + 208);
  sub_238EF6840(&v4);
  sub_238EA183C(a1 + 152, *(a1 + 160));
  sub_238EF77DC(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_238EA183C(a1 + 64, *(a1 + 72));
  sub_238EA183C(a1 + 40, *(a1 + 48));
  sub_238EF7838(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_238EF7580(uint64_t a1)
{
  *a1 = &unk_284BA9CC0;
  *(a1 + 176) = &unk_284BB7D38;
  v4 = (a1 + 208);
  sub_238EF6840(&v4);
  sub_238EA183C(a1 + 152, *(a1 + 160));
  sub_238EF77DC(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_238EA183C(a1 + 64, *(a1 + 72));
  sub_238EA183C(a1 + 40, *(a1 + 48));
  sub_238EF7838(a1 + 16, *(a1 + 24));
  return MEMORY[0x23EE77B60](a1, 0x10B1C40036DCBC2);
}

uint64_t sub_238EF76D0(uint64_t a1)
{
  v1 = (a1 + 72);
  sub_238EA183C(a1 + 64, *(a1 + 72));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  v2 = *(**(v1 - 8) + 80);

  return v2();
}

uint64_t sub_238EF7768(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  *a2 = v2;
  if (v2 == 1)
  {
    *(a2 + 8) = *(a1 + 144);
  }

  return 0;
}

void sub_238EF77DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_238EF77DC(a1, *a2);
    sub_238EF77DC(a1, a2[1]);
    sub_238EA1758(a2 + 10);

    operator delete(a2);
  }
}

void sub_238EF7838(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_238EF7838(a1, *a2);
    sub_238EF7838(a1, a2[1]);
    sub_238EF7898((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_238EF7898(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_238EF7898(a1, *a2);
    sub_238EF7898(a1, a2[1]);
    sub_238EF78F8((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_238EF78F8(uint64_t a1, void **a2)
{
  if (a2)
  {
    sub_238EF78F8(a1, *a2);
    sub_238EF78F8(a1, a2[1]);
    if (a2[5] == 1)
    {
      sub_238DCCA48(a2 + 6);
    }

    operator delete(a2);
  }
}

void sub_238EF7980(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284BA9D78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_238EF79DC(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_238EF7A74(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

id sub_238EF7B38(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BA9DC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void sub_238EF7B9C(id *a1)
{

  operator delete(a1);
}

void sub_238EF7BD8(uint64_t a1, uint64_t a2, id *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) == 1 && (v6 = (a2 + 16), *(a2 + 16) == 1))
  {
    v7 = *a3;
    v8 = *(a1 + 8);
    v17 = @"attributePath";
    v9 = [[MTRAttributePath alloc] initWithPath:a2];
    v18 = @"data";
    v19 = v9;
    v10 = [(MTRAttributePath *)v7 objectForKeyedSubscript:@"type"];
    v11 = [(MTRAttributePath *)v7 objectForKeyedSubscript:@"value"];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v6)];
    v13 = sub_238EE6DE8(v10, v11, v12);
    v20 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v17 count:2];
    [v8 addObject:v14];
  }

  else
  {
    v15 = *(a1 + 8);
    v17 = @"attributePath";
    v7 = [[MTRAttributePath alloc] initWithPath:a2];
    v18 = @"data";
    v19 = v7;
    v9 = *a3;
    v20 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v17 count:2];
    [v15 addObject:v10];
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_238EF7E40(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BA9E38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_238EF7E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_238EF7F0C(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

id sub_238EF7FC0(uint64_t a1, void *a2)
{
  *a2 = &unk_284BA9E58;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_238EF8010(id *a1)
{

  operator delete(a1);
}

void sub_238EF804C(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = *(a1 + 8);
  v6 = *a3;
  v5 = [MTRBaseDevice eventReportForHeader:a2 andData:?];
  [v4 addObject:v5];
}

uint64_t sub_238EF80F0(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BA9EC8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238EF813C(uint64_t a1)
{
  *a1 = &unk_284BA9EE8;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_238EF79DC(v2);
  }

  return a1;
}

void sub_238EF8190(uint64_t a1)
{
  *a1 = &unk_284BA9EE8;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_238EF79DC(v2);
  }

  JUMPOUT(0x23EE77B60);
}

id sub_238EF8284(uint64_t a1, void *a2)
{
  *a2 = &unk_284BA9EE8;
  result = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  a2[1] = result;
  a2[2] = v6;
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_238EF82F0(void *a1)
{
  sub_238EF8560(a1 + 8);

  operator delete(a1);
}

void sub_238EF832C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v6 = *a4;
  v5 = a4[1];
  if (*a2)
  {
    v7 = *(a1 + 8);
    v18 = @"attributePath";
    v8 = [[MTRAttributePath alloc] initWithPath:v4];
    v19 = @"error";
    v20 = v8;
    v9 = sub_23921C1E4(MTRError, v6, v5);
    v21 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v18 count:2];
    [v7 addObject:v10];
  }

  else
  {
    v11 = *a3;
    if (*a3)
    {
      v12 = *(a1 + 8);
      v18 = @"eventPath";
      v13 = [[MTREventPath alloc] initWithPath:v11];
      v19 = @"error";
      v20 = v13;
      v14 = sub_23921C1E4(MTRError, v6, v5);
      v21 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v18 count:2];
      [v12 addObject:v15];
    }

    else
    {
      v16 = *(a1 + 16);
      *v16 = v6;
      v16[1] = v5;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_238EF84C0(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_238EF8514(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BA9F58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_238EF8560(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_238EF79DC(v2);
  }

  v3 = *a1;
}

uint64_t sub_238EF85A0(uint64_t a1)
{
  *a1 = &unk_284BA9F78;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_238EF79DC(v2);
  }

  return a1;
}

void sub_238EF85F4(uint64_t a1)
{
  *a1 = &unk_284BA9F78;
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_238EF79DC(v2);
  }

  JUMPOUT(0x23EE77B60);
}

__n128 sub_238EF86F8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BA9F78;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 32);
  v8 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v8;
  return result;
}

void sub_238EF8774(void *a1)
{
  sub_238EF8560(a1 + 8);

  operator delete(a1);
}

void sub_238EF87B0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  if (*v4)
  {
    (*(a1 + 48))(v5, *v4, v4[1]);
  }

  else
  {
    (*(a1 + 40))(v5, *(a1 + 8));
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    j__free(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    j__free(v7);
  }

  if (v3)
  {
    v8 = sub_238EF679C(v3);

    j__free(v8);
  }
}

uint64_t sub_238EF8840(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BA9FE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238EF888C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = &unk_284BAA008;
  v18 = a1 + 40;
  sub_238EF901C(a1 + 8, a6);
  sub_238EF90B4(v18, a7);
  sub_238EF914C(a1 + 72, a8);
  sub_238EF91E4(a1 + 104, a9);
  sub_238EF927C(a1 + 136, a10);
  sub_238EF9314(a1 + 168, a11);
  *(a1 + 200) = &unk_284BB7D38;
  *(a1 + 208) = 0;
  *(a1 + 210) = 0;
  *(a1 + 224) = 0;
  *(a1 + 212) = 0;
  *(a1 + 219) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a1;
  *(a1 + 264) = 0;
  *(a1 + 272) = a2;
  *(a1 + 280) = a4;
  *(a1 + 288) = a3;
  *(a1 + 296) = a5;
  return a1;
}

void sub_238EF8990(_Unwind_Exception *a1)
{
  sub_238EF6944(v1 + 136);
  sub_238EF69C4(v1 + 104);
  sub_238EF6A44(v1 + 72);
  sub_238EF6AC4(v2);
  sub_238EF6B44(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_238EF89E4(uint64_t a1)
{
  sub_238EF679C(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_238EF8A1C(void *a1, unsigned __int16 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v20 = 0;
  if (!a1[8])
  {
    v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm";
    v17 = 0x39700000000;
LABEL_23:
    LODWORD(v10) = 47;
LABEL_24:
    sub_238EF93AC((a1 + 9), 0, a2, v17 | v10, v9);
    goto LABEL_25;
  }

  v6 = a1[35];
  if (!v6)
  {
    v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm";
    v17 = 0x39900000000;
    goto LABEL_23;
  }

  v7 = a1[37];
  if (v7)
  {
    v8 = 12 * v7;
    v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm";
    LODWORD(v10) = 142;
    v11 = a1[35];
    while (1)
    {
      v12 = *(v11 + 8);
      if ((v12 == 0xFFFF || v12 == *a2) && (*v11 == -1 || *v11 == *(a2 + 1)))
      {
        v15 = *(v11 + 4);
        if (v15 == -1 || v15 == *(a2 + 2))
        {
          break;
        }
      }

      v11 += 12;
      v8 -= 12;
      if (!v8)
      {
        v17 = 0x3A000000000;
        goto LABEL_24;
      }
    }
  }

  else
  {
    v11 = a1[35];
  }

  if (v11 == v6 + 12 * v7)
  {
    v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm";
    v17 = 0x3A000000000;
    LODWORD(v10) = 142;
    goto LABEL_24;
  }

  if (a4)
  {
    v10 = sub_2393DD584(a4);
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (!a3)
  {
    v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm";
    v17 = 0x3A400000000;
    goto LABEL_23;
  }

  v10 = sub_238EFCEC0(&v20, a3);
  if (v10)
  {
LABEL_34:
    v9 = v18;
    v17 = v10 & 0xFFFFFFFF00000000;
    goto LABEL_24;
  }

  v19 = a1[8];
  if (!v19)
  {
    sub_238EF6570();
  }

  (*(*v19 + 48))(v19, a2, &v20);
LABEL_25:
}

void sub_238EF8BD4(void *a1, unsigned __int16 *a2, uint64_t a3, unsigned __int8 *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = 0;
  if (!a1[4])
  {
    v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm";
    v17 = 0x37400000000;
LABEL_24:
    LODWORD(v10) = 47;
LABEL_25:
    sub_238EF93AC((a1 + 9), a2, 0, v17 | v10, v7);
    goto LABEL_26;
  }

  v6 = a1[34];
  v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm";
  if (!v6)
  {
    v17 = 0x37600000000;
    goto LABEL_24;
  }

  if (*(a2 + 14) >= 2u)
  {
    v21 = sub_2393D9044(0x1Bu);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm";
      v25 = 1024;
      v26 = 892;
      v27 = 2080;
      v28 = "!aPath.IsListItemOperation()";
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x1Bu, 1);
    }

    abort();
  }

  v8 = a1[36];
  if (v8)
  {
    v9 = 12 * v8;
    LODWORD(v10) = 142;
    v11 = a1[34];
    while (1)
    {
      v12 = *(v11 + 8);
      if ((v12 == 0xFFFF || v12 == *a2) && (*v11 == -1 || *v11 == *(a2 + 1)))
      {
        v15 = *(v11 + 4);
        if (v15 == -1 || v15 == *(a2 + 2))
        {
          break;
        }
      }

      v11 += 12;
      v9 -= 12;
      if (!v9)
      {
        v17 = 0x38200000000;
        goto LABEL_25;
      }
    }
  }

  else
  {
    v11 = a1[34];
  }

  if (v11 == v6 + 12 * v8)
  {
    v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm";
    v17 = 0x38200000000;
    LODWORD(v10) = 142;
    goto LABEL_25;
  }

  if (*a4)
  {
    v10 = sub_2393DD584(a4);
    if (!v10)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

  if (!a3)
  {
    v7 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRBaseDevice.mm";
    v17 = 0x38600000000;
    goto LABEL_24;
  }

  v10 = sub_238EFCEC0(&v22, a3);
  if (v10)
  {
LABEL_35:
    v7 = v19;
    v17 = v10 & 0xFFFFFFFF00000000;
    goto LABEL_25;
  }

  v20 = a1[4];
  if (!v20)
  {
    sub_238EF6570();
  }

  (*(*v20 + 48))(v20, a2, &v22);
LABEL_26:

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t sub_238EF8E7C(uint64_t a1)
{
  result = *(a1 + 160);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

unint64_t sub_238EF8EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = sub_2394DB314(a2, a3);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFF00000000;
  }

  else
  {
    v9 = *(a1 + 192);
    if (v9)
    {
      sub_238EF9314(v14, a1 + 168);
      v10 = sub_23921C1E4(MTRError, a3, a4);
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:sub_2394D7B4C(a2)];
      sub_238EF940C(v14, v10, v11);

      sub_238EF68C4(v14);
      v9 = 0;
    }

    LODWORD(v8) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8 | v9;
}

void sub_238EF8FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_238EF68C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_238EF901C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_238EF90B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_238EF914C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_238EF91E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_238EF927C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_238EF9314(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_238EF93AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a4;
  v9[1] = a5;
  v7 = a3;
  v8 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_238EF6570();
  }

  return (*(*v5 + 48))(v5, &v8, &v7, v9);
}

void sub_238EF940C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_238EF6570();
  }

  (*(*v5 + 48))(v5, &v7, &v6);
}

uint64_t sub_238EF94B0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_238EF6570();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_238EF9504(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_238EF679C(v3);
    j__free(v4);
  }
}

unint64_t sub_238EF9534(uint64_t a1, uint64_t *a2, void **a3, char *a4)
{
  result = sub_2394D2294(a1);
  if (!result)
  {
    v9 = *(a2 + 4);
    v11 = *a2;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *a4;
    if (v14 == 1)
    {
      v15 = *(a4 + 1);
    }

    return sub_238EF9F38(a1, &v9, a3);
  }

  return result;
}

void *sub_238EF95BC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = sub_2393D52C4(0x98uLL);
  if (v8)
  {
    sub_238EF96D0(v13, a1);
    sub_238EF9768(v12, a2);
    sub_238EF9800(v11, a3);
    sub_238EF9898(v8, v13, v12, v11, *a4);
    sub_238EF66BC(v11);
    sub_238EF663C(v12);
    sub_238EF65BC(v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_238EF9694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  sub_238EF66BC(va);
  sub_238EF663C(va1);
  sub_238EF65BC(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_238EF96D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_238EF9768(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_238EF9800(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_238EF9898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = &unk_284BAA0B0;
  v9 = a1 + 40;
  sub_238EF96D0(a1 + 8, a2);
  sub_238EF9768(v9, a3);
  sub_238EF9800(a1 + 72, a4);
  *(a1 + 104) = 0;
  *(a1 + 105) = a5;
  *(a1 + 112) = &unk_284BB7888;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 138) = 0;
  *(a1 + 144) = a1;
  return a1;
}

void sub_238EF9950(_Unwind_Exception *a1)
{
  sub_238EF663C(v2);
  sub_238EF65BC(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_238EF9974(uint64_t a1)
{
  sub_238EF66BC(a1 + 72);
  sub_238EF663C(a1 + 40);
  sub_238EF65BC(a1 + 8);
  return a1;
}

void sub_238EF99B0(uint64_t a1)
{
  sub_238EF66BC(a1 + 72);
  sub_238EF663C(a1 + 40);
  sub_238EF65BC(a1 + 8);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EF9A0C(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v10 = a4;
  v11 = BYTE2(a4);
  if ((*(result + 104) & 1) == 0)
  {
    v5 = result;
    *(result + 104) = 1;
    if (a4)
    {
      v6 = sub_2393DD584(&v10);
      return sub_238EF9BB4(v5 + 40, a3, v6, v7);
    }

    else
    {
      v8 = *(result + 32);
      if (!v8)
      {
        sub_238EF6570();
      }

      v9 = *(*v8 + 48);

      return v9();
    }
  }

  return result;
}

uint64_t sub_238EF9AC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 104) & 1) == 0)
  {
    *(result + 104) = 1;
    return sub_238EF9BB4(result + 40, 0, a3, a4);
  }

  return result;
}

void sub_238EF9AE8(uint64_t a1, void (***a2)(void))
{
  if ((*(a1 + 105) & 1) == 0 && (*(a1 + 104) & 1) == 0)
  {
    *(a1 + 104) = 1;
    sub_238EF9BB4(a1 + 40, 0, 0x6800000021, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/controller/WriteInteraction.h");
  }

  if (*(a1 + 96))
  {
    sub_238EF9C10(a1 + 72, a2);
  }

  if (a2)
  {
    (**a2)(a2);
    j__free(a2);
  }

  sub_238EF66BC(a1 + 72);
  sub_238EF663C(a1 + 40);
  sub_238EF65BC(a1 + 8);

  j__free(a1);
}

uint64_t sub_238EF9BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_238EF6570();
  }

  return (*(*v4 + 48))(v4, &v6, v7);
}

uint64_t sub_238EF9C10(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_238EF6570();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_238EF9C64(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char a5)
{
  *a1 = &unk_284BBDB18;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_284BAA120;
  *(a1 + 24) = a1;
  *(a1 + 32) = 0;
  *(a1 + 40) = a3;
  *(a1 + 48) = 0;
  sub_2393C7B90(a1 + 56);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = &unk_284BB83A8;
  *(a1 + 144) = 0;
  sub_2393DB79C(a1 + 152);
  sub_2393DB79C(a1 + 184);
  sub_2393DB79C(a1 + 216);
  sub_2393DB79C(a1 + 248);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v8 = *a4;
  *(a1 + 288) = v8;
  if (v8 == 1)
  {
    *(a1 + 290) = *(a4 + 1);
  }

  *(a1 + 292) = a5;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 306) = 0;
  sub_23947632C("/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/WriteClient.h", 134);
  return a1;
}

void sub_238EF9D6C(_Unwind_Exception *a1)
{
  sub_238EA1758((v2 + 296));
  sub_238EA1758((v2 + 280));
  sub_238DD2FEC(v2 + 56);
  sub_238EF9EA4(v1);
  _Unwind_Resume(a1);
}

void sub_238EF9DB4(void *a1)
{
  sub_238EF9EA4(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EF9E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    *(v1 + 40) = 0;
    if ((*(v1 + 8) & 0x40) == 0)
    {
      *(a1 + 16) = 0;
    }
  }

  return (*(**(a1 + 8) + 32))();
}

void *sub_238EF9EA4(void *a1)
{
  *a1 = &unk_284BAA120;
  sub_238EF9EEC(a1);
  return a1;
}

void sub_238EF9EEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(v2 + 40) = 0;
    v3 = sub_2394703EC(v2);
    v4 = *(a1 + 16);
    if ((v3 & 1) != 0 || (*(v4 + 8) & 0x40) != 0)
    {
      sub_239470A64(v4);
    }
  }

  *(a1 + 16) = 0;
}

unint64_t sub_238EF9F38(uint64_t a1, unsigned __int16 *a2, void **a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_238EFA004(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_238EFA004(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_238EFA004(uint64_t a1, unsigned __int16 *a2, void **a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v5 = sub_238EE7070(*a3, v8, 2uLL);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = sub_2394D20BC(a1);
    v6 = v5 & 0xFFFFFFFF00000000;
    if (!v5)
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  return v6 | v5;
}

__n128 sub_238EFA104(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAA188;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_238EFA134(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_238EFA1CC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA1F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_238EFA218(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_238EFA470(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_238DC7854(a1);
}

void sub_238EFA47C(void (****a1)(void), void (***a2)(void))
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);
    j__free(v2);
  }
}

void sub_238EFA4D8(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_238EF66BC(v2 + 72);
    sub_238EF663C(v2 + 40);
    sub_238EF65BC(v2 + 8);
    j__free(v2);
  }
}

__n128 sub_238EFA598(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAA218;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_238EFA5C8(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [[MTRAttributePath alloc] initWithPath:a2, @"attributePath"];
  v8 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  (*(a1 + 8))(*(a1 + 16), v5);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_238EFA6D8(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA288))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_238EFA798(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAA2A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_238EFA7D4(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA318))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_238EFA820(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_238EFA8A0(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      v10 = *v4++;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

void sub_238EFA950(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_238DBAFA8();
}

uint64_t sub_238EFA998(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_238EFA9EC(uint64_t a1, uint64_t *a2, void *a3, char *a4)
{
  v16 = *(a2 + 4);
  v12 = *a2;
  v18 = *a2;
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *a4;
  if (v21 == 1)
  {
    v22 = *(a4 + 1);
  }

  v15 = 0;
  v14 = 0;
  v6 = sub_2394D2294(a1);
  if (v6)
  {
    goto LABEL_4;
  }

  if (v12 == 31)
  {
    v6 = sub_238EFAC18(a1, &v16, a3, &v14, &v15);
    if (!v6)
    {
      if (v14 != 1)
      {
        goto LABEL_18;
      }

      v6 = sub_2394D22C8(a1);
      if (!v6)
      {
        v9 = v15;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    v6 = sub_238EFAB4C(a1, &v16, v13);
    if (!v6)
    {
      v9 = 0;
LABEL_13:
      v20 = 4;
      if (a3[1] > v9)
      {
        v10 = v9;
        while (1)
        {
          v11 = sub_238EFAD04(a3, v10);
          v6 = sub_238EF9F38(a1, &v16, v11);
          if (v6)
          {
            break;
          }

          LODWORD(v6) = 0;
          v7 = 0;
          v10 = ++v9;
          if (a3[1] <= v9)
          {
            return v7 | v6;
          }
        }

        goto LABEL_4;
      }

LABEL_18:
      LODWORD(v6) = 0;
      v7 = 0;
      return v7 | v6;
    }
  }

LABEL_4:
  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_238EFAB4C(uint64_t a1, unsigned __int16 *a2, unsigned __int8 **a3)
{
  sub_2393C7B90(&v17);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v19 = v6[2];
  v20 = v7;
  v17 = v9;
  v18 = v8;
  v10 = sub_238EFAD2C(a1, a2, a3);
  if (v10 == 25 || v10 == 11)
  {
    v11 = *(a1 + 200);
    v12 = v17;
    v13 = v18;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    v10 = sub_2394D22C8(a1);
    if (v10)
    {
      goto LABEL_6;
    }

    v10 = sub_238EFAD2C(a1, a2, a3);
  }

  if (!v10)
  {
    v15 = 0;
    LODWORD(v10) = 0;
    return v10 | v15;
  }

LABEL_6:
  v15 = v10 & 0xFFFFFFFF00000000;
  return v10 | v15;
}

unint64_t sub_238EFAC18(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, _WORD *a5)
{
  result = sub_2394D28A4(a1, a2);
  if (!result)
  {
    v10 = sub_2393DA98C(a1 + 184);
    sub_2393C7B90(&v23);
    *a5 = 0;
    v11 = *(a3 + 8);
    if (v11)
    {
      v12 = *a3;
      v13 = 8 * v11;
      while (1)
      {
        v14 = v10[2];
        v15 = v14[3];
        v17 = *v14;
        v16 = v14[1];
        v25 = v14[2];
        v26 = v15;
        v23 = v17;
        v24 = v16;
        result = sub_238EE7070(*v12, v14, 0x100uLL);
        if (result == 25 || result == 11)
        {
          break;
        }

        if (result)
        {
          return result;
        }

        ++*a5;
        ++v12;
        v13 -= 8;
        if (!v13)
        {
          return sub_2394D2A18(a1);
        }
      }

      v19 = v10[2];
      v20 = v23;
      v21 = v24;
      v22 = v26;
      v19[2] = v25;
      v19[3] = v22;
      *v19 = v20;
      v19[1] = v21;
      sub_2393D06DC(v10);
      *a4 = 1;
    }

    return sub_2394D2A18(a1);
  }

  return result;
}

uint64_t sub_238EFAD04(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_23952C3F0();
  }

  return *a1 + 8 * a2;
}

unint64_t sub_238EFAD2C(uint64_t a1, unsigned __int16 *a2, unsigned __int8 **a3)
{
  v5 = sub_2394D1F98(a1, a2);
  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_2394D2114(a1);
  if (!v8)
  {
    v6 = 0x15D00000000;
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v9 = v8;
  v11 = *a3;
  v10 = a3[1];
  v12 = 0;
  v5 = sub_2393C8CE0(v8, 2uLL, 22, &v12);
  if (v5)
  {
    goto LABEL_2;
  }

  if (v10)
  {
    do
    {
      v5 = sub_2393C8140(v9, 0x100uLL, *v11);
      if (v5)
      {
        goto LABEL_2;
      }

      ++v11;
    }

    while (--v10);
  }

  v5 = sub_2393C8DE0(v9, v12);
  if (v5)
  {
LABEL_2:
    v6 = v5 & 0xFFFFFFFF00000000;
    return v6 | v5;
  }

  v5 = sub_2394D20BC(a1);
  v6 = v5 & 0xFFFFFFFF00000000;
  if (!v5)
  {
    LODWORD(v5) = 0;
    v6 = 0;
  }

  return v6 | v5;
}

__n128 sub_238EFAE7C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAA338;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_238EFAEAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (**v2)(*(a1 + 16));
    j__free(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_238EF66BC(v3 + 72);
    sub_238EF663C(v3 + 40);
    sub_238EF65BC(v3 + 8);

    j__free(v3);
  }
}

uint64_t sub_238EFAF44(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA398))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_238EFAFBC(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

id sub_238EFB078(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAA3B8;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void sub_238EFB0D0(id *a1)
{

  operator delete(a1);
}

void sub_238EFB10C(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (*a4)
  {
    v8 = *a4;
    v9 = v8;
    if (*(a1 + 24))
    {
      v10 = [(MTRCommandPath *)v8 objectForKeyedSubscript:@"value"];
      v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count") + 1}];
      [v11 addObjectsFromArray:v10];
      v23[1] = @"data";
      v24[0] = &unk_284C3E648;
      v21[0] = @"type";
      v21[1] = @"value";
      v12 = *(a1 + 24);
      v22[0] = @"OctetString";
      v22[1] = v12;
      v23[0] = @"contextTag";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
      v24[1] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
      [v11 addObject:v14];

      v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[MTRCommandPath count](v9, "count") + 1}];
      [(MTRCommandPath *)v15 addEntriesFromDictionary:v9];
      [(MTRCommandPath *)v15 setObject:v11 forKeyedSubscript:@"value"];
    }

    else
    {
      v15 = v8;
    }

    v19[0] = @"commandPath";
    v16 = [[MTRCommandPath alloc] initWithPath:a2];
    v19[1] = @"data";
    v20[0] = v16;
    v20[1] = v15;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v7 addObject:v17];
  }

  else
  {
    v23[0] = @"commandPath";
    v15 = [[MTRCommandPath alloc] initWithPath:a2];
    v24[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:1];
    [v7 addObject:v16];
  }

  (*(a1 + 8))(*(a1 + 16), v7);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t sub_238EFB444(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA428))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_238EFB504(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284BAA448;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_238EFB544(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA4B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238EFB590(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = &unk_284BA9AD0;
  v11 = a1 + 40;
  sub_238EFB644(a1 + 8, a4);
  sub_238EFB6DC(v11, a5);
  sub_238EF5580(a1 + 72, a6);
  *(a1 + 104) = a2;
  *(a1 + 108) = a3;
  *(a1 + 112) = 0;
  return a1;
}

void sub_238EFB620(_Unwind_Exception *a1)
{
  sub_238EF641C(v2);
  sub_238EF649C(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_238EFB644(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_238EFB6DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_238EFB774(void **a1, void *a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_238EF6BC4(v2 + 72);
    sub_238EF641C(v2 + 40);
    sub_238EF649C(v2 + 8);
    j__free(v2);
  }
}

uint64_t sub_238EFB830(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284BAA4D8;
  a2[1] = v2;
  return result;
}

void sub_238EFB85C(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v3 = sub_2394C5604(*a2);
    j__free(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    sub_238EF6BC4(v4 + 72);
    sub_238EF641C(v4 + 40);
    sub_238EF649C(v4 + 8);

    j__free(v4);
  }
}

uint64_t sub_238EFB8CC(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA548))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_238EFB918(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_2394C5604();
    j__free(v4);
  }
}

void sub_238EFB9C8(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EFBA90(uint64_t a1, void *a2)
{
  *a2 = &unk_284BAA5B0;
  a2[1] = *(a1 + 8);
  result = MEMORY[0x23EE78590](*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_238EFBAE8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_238EFBB24(id *a1)
{

  operator delete(a1);
}

void sub_238EFBB68(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = *a3;
  v6 = *a2;
  v13 = *(a2 + 2);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_238EFBC64;
  v9[3] = &unk_278A72FD8;
  v7 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = v6;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

uint64_t sub_238EFBC18(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA610))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_238EFBC64(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [[MTRAttributePath alloc] initWithPath:a1 + 48, @"attributePath"];
  v7[1] = @"data";
  v8[0] = v3;
  v8[1] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  (*(v2 + 16))(v2, v5, 0);

  v6 = *MEMORY[0x277D85DE8];
}

void sub_238EFBDC4(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EFBE8C(uint64_t a1, void *a2)
{
  *a2 = &unk_284BAA630;
  a2[1] = *(a1 + 8);
  result = MEMORY[0x23EE78590](*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_238EFBEE4(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_238EFBF20(id *a1)
{

  operator delete(a1);
}

void sub_238EFBF64(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = *a3;
  v6 = [MTRBaseDevice eventReportForHeader:a2 andData:v5];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_238EFC090;
  v10[3] = &unk_278A71698;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v11 = v6;
  v12 = v7;
  v9 = v6;
  dispatch_async(v8, v10);
}

uint64_t sub_238EFC044(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA690))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_238EFC090(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v4[0] = *(a1 + 32);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  (*(v1 + 16))(v1, v2, 0);

  v3 = *MEMORY[0x277D85DE8];
}

void sub_238EFC16C(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EFC234(uint64_t a1, void *a2)
{
  *a2 = &unk_284BAA6B0;
  a2[1] = *(a1 + 8);
  result = MEMORY[0x23EE78590](*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_238EFC28C(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_238EFC2C8(id *a1)
{

  operator delete(a1);
}

void sub_238EFC30C(uint64_t a1, uint64_t **a2, uint64_t **a3, uint64_t *a4)
{
  v4 = *a2;
  v6 = *a4;
  v5 = a4[1];
  if (*a2)
  {
    v7 = *v4;
    v21 = *(v4 + 2);
    v20 = v7;
    v8 = *(a1 + 8);
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v9 = sub_238EFC490;
  }

  else
  {
    v10 = *a3;
    if (!*a3)
    {
      v8 = *(a1 + 8);
      block = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v9 = sub_238EFC740;
      v12 = &unk_278A72DC0;
      goto LABEL_6;
    }

    v11 = *v10;
    v21 = *(v10 + 2);
    v20 = v11;
    v8 = *(a1 + 8);
    block = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v9 = sub_238EFC5E8;
  }

  v12 = &unk_278A73000;
LABEL_6:
  v15 = v9;
  v16 = v12;
  v17 = *(a1 + 16);
  v18 = v6;
  v19 = v5;
  dispatch_async(v8, &block);
}

uint64_t sub_238EFC444(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA710))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_238EFC490(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [[MTRAttributePath alloc] initWithPath:a1 + 7, @"attributePath"];
  v8[1] = @"error";
  v9[0] = v3;
  v4 = sub_23921C1E4(MTRError, a1[5], a1[6]);
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  (*(v2 + 16))(v2, v6, 0);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_238EFC5E8(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [[MTREventPath alloc] initWithPath:a1 + 7, @"eventPath"];
  v8[1] = @"error";
  v9[0] = v3;
  v4 = sub_23921C1E4(MTRError, a1[5], a1[6]);
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  (*(v2 + 16))(v2, v6, 0);

  v7 = *MEMORY[0x277D85DE8];
}

void sub_238EFC740(void *a1)
{
  v1 = a1[4];
  v2 = sub_23921C1E4(MTRError, a1[5], a1[6]);
  (*(v1 + 16))(v1, 0);
}

void sub_238EFC7F0(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

id sub_238EFC8A4(uint64_t a1, void *a2)
{
  *a2 = &unk_284BAA730;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_238EFC8F4(id *a1)
{

  operator delete(a1);
}

uint64_t sub_238EFC938(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA790))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_238EFC9B8(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EFCA80(uint64_t a1, void *a2)
{
  *a2 = &unk_284BAA7B0;
  a2[1] = *(a1 + 8);
  result = MEMORY[0x23EE78590](*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_238EFCAD8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_238EFCB14(id *a1)
{

  operator delete(a1);
}

void sub_238EFCB58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_async(*(a1 + 8), v1);
  }
}

uint64_t sub_238EFCB6C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA810))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_238EFCBEC(uint64_t a1)
{

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_238EFCCB4(uint64_t a1, void *a2)
{
  *a2 = &unk_284BAA830;
  a2[1] = *(a1 + 8);
  result = MEMORY[0x23EE78590](*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_238EFCD0C(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_238EFCD48(id *a1)
{

  operator delete(a1);
}

void sub_238EFCD8C(uint64_t a1, id *a2, void **a3)
{
  v4 = *a3;
  v5 = *a2;
  v6 = v4;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_238EFCEA8;
    block[3] = &unk_278A72D48;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

uint64_t sub_238EFCE5C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BAA8A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238EFCEC0(void **a1, uint64_t a2)
{
  v3 = sub_238EE60DC(a2, 0);
  v4 = *a1;
  *a1 = v3;

  v5 = 0;
  v6 = 0;
  if (!*a1)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Error: Failed to get value from TLV data for attribute reading response", v9, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }

    if (*a1)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x32700000000;
    }

    if (*a1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 176;
    }
  }

  return v6 | v5;
}

unint64_t sub_238EFCFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 8);
  if (v5 <= 5)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v8 = (a1 + 162);
        goto LABEL_27;
      }

      if (v5 == 4)
      {
        v8 = (a1 + 164);
        goto LABEL_27;
      }

      a1 += 168;
    }

    else if (v5)
    {
      if (v5 != 1)
      {
        v6 = 0;
        LODWORD(v7) = 0;
        if (v5 == 2)
        {
          v8 = (v4 + 160);
LABEL_27:
          v7 = sub_2393C5F70(a2, v8);
          goto LABEL_28;
        }

        return v7 | v6;
      }

      a1 += 80;
    }

LABEL_25:
    v7 = sub_238F36BB4(a1, a2);
LABEL_28:
    v6 = v7 & 0xFFFFFFFF00000000;
    return v7 | v6;
  }

  if (v5 <= 65530)
  {
    if (v5 == 6)
    {
      a1 += 240;
    }

    else if (v5 == 65528)
    {
      a1 += 320;
    }

    else
    {
      v6 = 0;
      LODWORD(v7) = 0;
      if (v5 != 65529)
      {
        return v7 | v6;
      }

      a1 = v4 + 392;
    }

    goto LABEL_25;
  }

  if (v5 == 65531)
  {
    a1 += 464;
    goto LABEL_25;
  }

  if (v5 == 65532)
  {
    v7 = sub_2393C5FC8(a2, (a1 + 536));
    goto LABEL_28;
  }

  v6 = 0;
  LODWORD(v7) = 0;
  if (v5 == 65533)
  {
    v8 = (v4 + 540);
    goto LABEL_27;
  }

  return v7 | v6;
}

unint64_t sub_238EFD0F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(v5, a2, a3);
  sub_238EFD138(v5, 0, a1);
  return sub_2394C38E0(v5);
}

unint64_t sub_238EFD138(unint64_t result, unsigned int a2, uint64_t a3)
{
  if (!*(result + 8))
  {
    v13 = v3;
    v14 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = *(a3 + 8);
    v12 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v12);
    if (!result)
    {
      if (!v8)
      {
LABEL_8:
        result = sub_2393C8DE0(v6, v12);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v11 = 24 * v8;
      while (1)
      {
        result = sub_238EFDF6C(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 12;
        v11 -= 24;
        if (!v11)
        {
          goto LABEL_8;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238EFD1FC(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_238F36BB4(a1, a2);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238EFD290(unint64_t *a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_2393C8154(v6, 0, *a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238EFD2E8(void *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_2393C5F2C(a2, a1);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

uint64_t sub_238EFD37C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    result = sub_238EFD454(a2, 1uLL, a1);
    if (!result)
    {
      result = sub_238EFD4A8(a2, 2uLL, (a1 + 16));
      if (!result)
      {
        v6 = *(a1 + 20);
        if (v6 == 3)
        {
          return 0x5C00000587;
        }

        else
        {
          result = sub_2393C8140(a2, 3uLL, v6);
          if (!result)
          {
            result = sub_238EFD500(a2, 4uLL, *(a1 + 96), (a1 + 24));
            if (!result)
            {
              result = sub_2393C8140(a2, 0xFEuLL, *(a1 + 96));
              if (!result)
              {
                return sub_2393C8DE0(a2, v7);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238EFD454(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    v3 = *a3;
    if (v3 == -1)
    {
      v5 = 0xD000000000;
      LODWORD(v4) = 1415;
      return v4 | v5;
    }

    v4 = sub_2393C8154(a1, a2, v3);
  }

  else
  {
    v4 = sub_2393C8948(a1, a2);
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

unint64_t sub_238EFD4A8(uint64_t a1, unint64_t a2, unsigned __int16 *a3)
{
  if (a3[1])
  {
    v3 = *a3;
    if (v3 == 0xFFFF)
    {
      v5 = 0xD000000000;
      LODWORD(v4) = 1415;
      return v4 | v5;
    }

    v4 = sub_2393C818C(a1, a2, v3);
  }

  else
  {
    v4 = sub_2393C8948(a1, a2);
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

unint64_t sub_238EFD500(uint64_t a1, unint64_t a2, char a3, unsigned __int8 *a4)
{
  if (a4[64])
  {
    v6[0] = 1;
    v6[1] = a3;
    return sub_238EFE4F4(a4, a1, a2, v6);
  }

  else
  {

    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238EFD564(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 <= 2u)
    {
      if (v8 == 1)
      {
        v4 = sub_238EFD658(a2, a1);
      }

      else if (v8 == 2)
      {
        v4 = sub_238EFD714(a2, (a1 + 16));
      }
    }

    else
    {
      switch(v8)
      {
        case 3u:
          v4 = sub_238EFD7D0(a2, (a1 + 20));
          break;
        case 4u:
          v4 = sub_238EFD828(a2, a1 + 24);
          break;
        case 0xFEu:
          v4 = sub_2393C5ED0(a2, (a1 + 208));
          break;
      }
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238EFD658(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    LODWORD(v4) = 0;
    v5 = 0;
    if (*(a2 + 8) == 1)
    {
      *(a2 + 8) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 1;
    v4 = sub_2393C5F2C(a1, a2);
    if (v4)
    {
      v5 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      if ((*(a2 + 8) & 1) == 0)
      {
        sub_238EA195C();
      }

      if (*a2 == -1)
      {
        LODWORD(v4) = 1415;
      }

      else
      {
        LODWORD(v4) = 0;
      }

      if (*a2 == -1)
      {
        v5 = 0xAF00000000;
      }

      else
      {
        v5 = 0;
      }

      *a2;
    }
  }

  return v5 | v4;
}

unint64_t sub_238EFD714(uint64_t a1, __int16 *a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    LODWORD(v4) = 0;
    v5 = 0;
    if (*(a2 + 2) == 1)
    {
      *(a2 + 2) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 2) = 1;
    v4 = sub_2393C5F70(a1, a2);
    if (v4)
    {
      v5 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      if ((a2[1] & 1) == 0)
      {
        sub_238EA195C();
      }

      v6 = *a2;
      if (v6 == -1)
      {
        LODWORD(v4) = 1415;
      }

      else
      {
        LODWORD(v4) = 0;
      }

      if (v6 == -1)
      {
        v5 = 0xAF00000000;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5 | v4;
}

unint64_t sub_238EFD7D0(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if (v5 >= 3)
    {
      LOBYTE(v5) = 3;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238EFD828(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 176) == 1)
    {
      *(a2 + 176) = 0;
    }
  }

  else
  {
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 176) = 1;
    v6 = sub_238EFE664(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

uint64_t sub_238EFD8D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v7);
  if (!result)
  {
    result = sub_238EFD454(a2, 1uLL, a1);
    if (!result)
    {
      result = sub_238EFD4A8(a2, 2uLL, (a1 + 16));
      if (!result)
      {
        v6 = *(a1 + 20);
        if (v6 == 3)
        {
          return 0x5C00000587;
        }

        else
        {
          result = sub_2393C8140(a2, 3uLL, v6);
          if (!result)
          {
            result = sub_238EFD9AC(a2, 4uLL, *(a1 + 56), a1 + 24);
            if (!result)
            {
              result = sub_2393C8140(a2, 0xFEuLL, *(a1 + 56));
              if (!result)
              {
                return sub_2393C8DE0(a2, v7);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238EFD9AC(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  if (*(a4 + 24))
  {
    v6[0] = 1;
    v6[1] = a3;
    return sub_238EFE8BC(a4, a1, a2, v6);
  }

  else
  {

    return sub_2393C8948(a1, a2);
  }
}

unint64_t sub_238EFDA10(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 <= 2u)
    {
      if (v8 == 1)
      {
        v4 = sub_238EFD658(a2, a1);
      }

      else if (v8 == 2)
      {
        v4 = sub_238EFD714(a2, (a1 + 16));
      }
    }

    else
    {
      switch(v8)
      {
        case 3u:
          v4 = sub_238EFD7D0(a2, (a1 + 20));
          break;
        case 4u:
          v4 = sub_238EFDB04(a2, a1 + 24);
          break;
        case 0xFEu:
          v4 = sub_2393C5ED0(a2, (a1 + 56));
          break;
      }
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238EFDB04(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 24) == 1)
    {
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    v6 = sub_238EFE9C4(a2, a1);
    v5 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }

    if (!v6)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238EFDB9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_2393C8154(a2, 0, *a1);
    if (!result)
    {
      result = sub_238EFDC40(a2, 1uLL, (a1 + 8));
      if (!result)
      {
        result = sub_238EFDC40(a2, 2uLL, (a1 + 32));
        if (!result)
        {
          result = sub_2393C8140(a2, 0xFEuLL, *(a1 + 56));
          if (!result)
          {
            return sub_2393C8DE0(a2, v6);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_238EFDC40(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_2393C85FC(a1, a2, *v5, *(v5 + 1));
}

unint64_t sub_238EFDC98(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 > 1u)
    {
      if (v9 != 2)
      {
        if (v9 == 254)
        {
          v4 = sub_2393C5ED0(a2, (a1 + 56));
        }

        goto LABEL_13;
      }

      *(a1 + 32) = 1;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v5 = (a1 + 40);
      goto LABEL_12;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        *(a1 + 8) = 1;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v5 = (a1 + 16);
LABEL_12:
        v4 = sub_2393C61E0(a2, v5);
      }
    }

    else
    {
      v4 = sub_2393C5F2C(a2, a1);
    }

LABEL_13:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238EFDD84(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v4 = *a1;
    if (v4 == 4)
    {
      v9 = 0x5C00000587;
      v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
    }

    else
    {
      v9 = sub_2393C8140(v8, 0, v4);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F16CC4(v8, 1uLL, (a1 + 4));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238EFDE10(_BYTE *a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      v4 = sub_238EFDEB0(a2, (a1 + 4));
    }

    else if (!v8)
    {
      v4 = sub_238EA4D5C(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238EFDEB0(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    LODWORD(v4) = 0;
    v5 = 0;
    if (*(a2 + 4) == 1)
    {
      *(a2 + 4) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 4) = 1;
    v4 = sub_2393C5FC8(a1, a2);
    if (v4)
    {
      v5 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      if ((*(a2 + 4) & 1) == 0)
      {
        sub_238EA195C();
      }

      if (*a2 == -1)
      {
        LODWORD(v4) = 1415;
      }

      else
      {
        LODWORD(v4) = 0;
      }

      if (*a2 == -1)
      {
        v5 = 0xAF00000000;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5 | v4;
}

unint64_t sub_238EFDF6C(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C818C(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_2393C81D4(v7, 1uLL, *(a1 + 1));
      v9 = v5;
    }
  }

  sub_238EFDFE8(&v7, 2u, (a1 + 4));
  return sub_2394C38E0(&v7);
}

unint64_t sub_238EFDFE8(unint64_t result, unsigned int a2, uint64_t a3)
{
  if (!*(result + 8))
  {
    v13 = v3;
    v14 = v4;
    v5 = result;
    v6 = *result;
    v7 = *a3;
    v8 = *(a3 + 8);
    v12 = 0;
    result = sub_2393C8CE0(v6, a2, 22, &v12);
    if (!result)
    {
      if (!v8)
      {
LABEL_8:
        result = sub_2393C8DE0(v6, v12);
        v10 = result & 0xFFFFFFFF00000000;
        if (!result)
        {
          v9 = 0;
          v10 = 0;
          result = 0;
        }

        goto LABEL_10;
      }

      v11 = 12 * v8;
      while (1)
      {
        result = sub_238EFDD84(v7, v6, 0x100uLL);
        if (result)
        {
          break;
        }

        v7 += 12;
        v11 -= 12;
        if (!v11)
        {
          goto LABEL_8;
        }
      }
    }

    v10 = result & 0xFFFFFFFF00000000;
LABEL_10:
    *(v5 + 8) = result | v10;
    *(v5 + 16) = v9;
  }

  return result;
}

unint64_t sub_238EFE0AC(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    switch(v8)
    {
      case 2:
        v4 = sub_238F36BB4(a1 + 8, a2);
        break;
      case 1:
        v4 = sub_2393C5FC8(a2, (a1 + 4));
        break;
      case 0:
        v4 = sub_2393C5F70(a2, a1);
        break;
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238EFE18C(unsigned __int16 *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (*a4 == 1)
  {
    v8 = *sub_238DE36D8(a4);
    v9 = *(a1 + 24);
    sub_2394C389C(&v14, a2, a3);
    if (v8 != v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_2394C389C(&v14, a2, a3);
  }

  if (!v15)
  {
    v15 = sub_2393C818C(v14, 0, *a1);
    v16 = v10;
    if (!v15)
    {
      v15 = sub_2393C81D4(v14, 1uLL, *(a1 + 1));
      v16 = v11;
    }
  }

  sub_238EFDFE8(&v14, 2u, (a1 + 4));
LABEL_9:
  if (*a4 == 1 && !v15)
  {
    v15 = sub_2393C8140(v14, 0xFEuLL, *(a1 + 24));
    v16 = v12;
  }

  return sub_2394C38E0(&v14);
}

unint64_t sub_238EFE28C(unsigned __int16 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238EFE18C(a1, a2, a3, v5);
}

unint64_t sub_238EFE2BC(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 > 1u)
    {
      if (v8 == 2)
      {
        v4 = sub_238F36BB4(a1 + 8, a2);
      }

      else if (v8 == 254)
      {
        v4 = sub_2393C5ED0(a2, (a1 + 80));
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v4 = sub_2393C5FC8(a2, (a1 + 4));
      }
    }

    else
    {
      v4 = sub_2393C5F70(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238EFE394(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_238F16CC4(v8, 0, a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238EFD4A8(v8, 1uLL, (a1 + 8));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238F16CC4(v8, 2uLL, a1 + 12);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238EFE418(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    switch(v10)
    {
      case 2:
        v6 = a1 + 12;
        v5 = a2;
        goto LABEL_9;
      case 1:
        v4 = sub_238EFD714(a2, (a1 + 8));
        break;
      case 0:
        v5 = a2;
        v6 = a1;
LABEL_9:
        v4 = sub_238EFDEB0(v5, v6);
        break;
    }

    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238EFE4F4(unsigned __int8 *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (*a4 == 1)
  {
    v8 = *sub_238DE36D8(a4);
    v9 = a1[56];
    sub_2394C389C(&v16, a2, a3);
    if (v8 != v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_2394C389C(&v16, a2, a3);
  }

  if (!v17)
  {
    if (!*a1)
    {
      goto LABEL_12;
    }

    v17 = sub_2393C8140(v16, 1uLL, *a1);
    v18 = v10;
    if (v17)
    {
      goto LABEL_13;
    }

    if (!a1[1])
    {
LABEL_12:
      v17 = 0x5C00000587;
      v18 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/app/data-model/Encode.h";
      goto LABEL_13;
    }

    v17 = sub_2393C8140(v16, 2uLL, a1[1]);
    v18 = v11;
    if (!v17)
    {
      v17 = sub_238F36C68(v16, 3uLL, (a1 + 8));
      v18 = v12;
      if (!v17)
      {
        v17 = sub_238F36D08(v16, 4uLL, (a1 + 32));
        v18 = v13;
      }
    }
  }

LABEL_13:
  if (*a4 == 1 && !v17)
  {
    v17 = sub_2393C8140(v16, 0xFEuLL, a1[56]);
    v18 = v14;
  }

  return sub_2394C38E0(&v16);
}

unint64_t sub_238EFE634(unsigned __int8 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238EFE4F4(a1, a2, a3, v5);
}

unint64_t sub_238EFE664(_BYTE *a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 <= 2u)
    {
      if (v8 == 1)
      {
        v4 = sub_238EFE758(a2, a1);
      }

      else if (v8 == 2)
      {
        v4 = sub_238EFE7B0(a2, a1 + 1);
      }
    }

    else
    {
      switch(v8)
      {
        case 3u:
          v4 = sub_238EFE808(a2, (a1 + 8));
          break;
        case 4u:
          v4 = sub_238EFE808(a2, (a1 + 88));
          break;
        case 0xFEu:
          v4 = sub_2393C5ED0(a2, a1 + 168);
          break;
      }
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238EFE758(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if ((v5 - 1) >= 5)
    {
      LOBYTE(v5) = 0;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238EFE7B0(uint64_t a1, _BYTE *a2)
{
  v3 = sub_238EA4DB4(a1, a2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
    v5 = *a2;
    if ((v5 - 1) >= 3)
    {
      LOBYTE(v5) = 0;
    }

    *a2 = v5;
  }

  return v4 | v3;
}

unint64_t sub_238EFE808(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a1) == 20)
  {
    v4 = 0;
    v5 = 0;
    if (*(a2 + 72) == 1)
    {
      *(a2 + 72) = 0;
    }
  }

  else
  {
    v6 = sub_238F36DAC(a2);
    v7 = sub_238F36BB4(v6, a1);
    v5 = v7 & 0xFFFFFFFF00000000;
    if (v7)
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }

    if (!v7)
    {
      v5 = 0;
    }
  }

  return v5 | v4;
}

unint64_t sub_238EFE8BC(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (*a4 == 1)
  {
    v8 = *sub_238DE36D8(a4);
    v9 = *(a1 + 16);
    sub_2394C389C(&v13, a2, a3);
    if (v8 != v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_2394C389C(&v13, a2, a3);
  }

  if (!v14)
  {
    v14 = sub_2393C8364(v13, 1uLL, *a1, *(a1 + 8));
    v15 = v10;
  }

LABEL_7:
  if (*a4 == 1 && !v14)
  {
    v14 = sub_2393C8140(v13, 0xFEuLL, *(a1 + 16));
    v15 = v11;
  }

  return sub_2394C38E0(&v13);
}

unint64_t sub_238EFE994(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5[0] = 1;
  v5[1] = a4;
  return sub_238EFE8BC(a1, a2, a3, v5);
}

unint64_t sub_238EFE9C4(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 254)
    {
      v4 = sub_2393C5ED0(a2, (a1 + 16));
    }

    else if (v8 == 1)
    {
      if (sub_2393C5C40(a2) == 16)
      {
        v4 = sub_2393C60CC(a2, a1);
      }

      else
      {
        v4 = 0x500000002BLL;
      }
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238EFEA98(uint64_t a1, _OWORD *a2)
{
  if (sub_2393C5C40(a1) == 16)
  {
    return sub_2393C60CC(a1, a2);
  }

  else
  {
    return 0x500000002BLL;
  }
}

unint64_t sub_238EFEAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 8);
  if (v4 <= 65530)
  {
    if (v4 != 65528)
    {
      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 != 65529)
      {
        return v6 | v5;
      }

      a1 = v3 + 72;
    }

LABEL_11:
    v6 = sub_238F36BB4(a1, a2);
    goto LABEL_12;
  }

  if (v4 == 65531)
  {
    a1 += 144;
    goto LABEL_11;
  }

  if (v4 == 65532)
  {
    v6 = sub_2393C5FC8(a2, (a1 + 216));
    goto LABEL_12;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  if (v4 == 65533)
  {
    v6 = sub_2393C5F70(a2, (v3 + 220));
LABEL_12:
    v5 = v6 & 0xFFFFFFFF00000000;
  }

  return v6 | v5;
}

unint64_t sub_238EFEBAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_2393C85FC(v6, 0, *a1, *(a1 + 8));
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238EFEC00(_OWORD *a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      v5 = sub_2393C61E0(a2, a1);
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238EFEC94(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2394C389C(&v6, *a2, a3);
  if (!v7)
  {
    v7 = sub_2393C85FC(v6, 0, *a1, *(a1 + 8));
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238EFECEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C85FC(v8, 0, *a1, *(a1 + 8));
    v10 = v4;
    if (!v9)
    {
      v9 = sub_2393C85FC(v8, 1uLL, *(a1 + 16), *(a1 + 24));
      v10 = v5;
      if (!v9)
      {
        v9 = sub_238EFEFB0(v8, 2uLL, (a1 + 32));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238EFED70(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    switch(v10)
    {
      case 2:
        *(a1 + 32) = 1;
        *(a1 + 40) = 0;
        v4 = sub_2393C5F2C(a2, (a1 + 40));
        break;
      case 1:
        v6 = (a1 + 16);
        v5 = a2;
        goto LABEL_8;
      case 0:
        v5 = a2;
        v6 = a1;
LABEL_8:
        v4 = sub_2393C61E0(v5, v6);
        break;
    }

    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238EFEE38(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v6, a2, a3);
  if (!v7)
  {
    v7 = sub_238EFEFB0(v6, 0, a1);
    v8 = v4;
  }

  return sub_2394C38E0(&v6);
}

unint64_t sub_238EFEE8C(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      *a1 = 1;
      *(a1 + 8) = 0;
      v5 = sub_2393C5F2C(a2, (a1 + 8));
      v6 = v5;
      if (v5)
      {
        v7 = v5 & 0xFFFFFFFF00000000;
        return v7 | v6;
      }
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

unint64_t sub_238EFEF34(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a2, a3, 21, &v6);
  if (!result)
  {
    result = sub_238EFEFB0(a2, 0, a1);
    if (!result)
    {
      result = sub_2393C8140(a2, 0xFEuLL, a1[16]);
      if (!result)
      {
        return sub_2393C8DE0(a2, v6);
      }
    }
  }

  return result;
}

unint64_t sub_238EFEFB0(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v5 = sub_238DE36B8(a3);
  return sub_2393C8154(a1, a2, *v5);
}

unint64_t sub_238EFF008(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 254)
    {
      v4 = sub_2393C5ED0(a2, (a1 + 16));
    }

    else if (!v8)
    {
      *a1 = 1;
      *(a1 + 8) = 0;
      v4 = sub_2393C5F2C(a2, (a1 + 8));
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238EFF0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 8);
  if (v4 > 65528)
  {
    if (v4 > 65531)
    {
      if (v4 == 65532)
      {
        v6 = sub_2393C5FC8(a2, (a1 + 376));
        goto LABEL_19;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 65533)
      {
        v6 = sub_2393C5F70(a2, (v3 + 380));
LABEL_19:
        v5 = v6 & 0xFFFFFFFF00000000;
      }
    }

    else
    {
      if (v4 == 65529)
      {
        a1 += 232;
        goto LABEL_18;
      }

      v5 = 0;
      LODWORD(v6) = 0;
      if (v4 == 65531)
      {
        a1 = v3 + 304;
        goto LABEL_18;
      }
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = sub_2393C61E0(a2, (a1 + 144));
      goto LABEL_19;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 65528)
    {
      a1 = v3 + 160;
      goto LABEL_18;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_18;
    }

    v5 = 0;
    LODWORD(v6) = 0;
    if (v4 == 1)
    {
      a1 = v3 + 72;
LABEL_18:
      v6 = sub_238F36BB4(a1, a2);
      goto LABEL_19;
    }
  }

  return v6 | v5;
}

unint64_t sub_238EFF1D8(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v7, a2, a3);
  if (!v8)
  {
    v8 = sub_2393C818C(v7, 0, *a1);
    v9 = v4;
    if (!v8)
    {
      v8 = sub_238F36DFC(v7, 1uLL, a1 + 4);
      v9 = v5;
    }
  }

  return sub_2394C38E0(&v7);
}

unint64_t sub_238EFF244(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v10 = a2;
  while (1)
  {
    v8 = 0;
    v4 = sub_2394C37B8(v9, &v8);
    if (v4)
    {
      break;
    }

    if (v8 == 1)
    {
      *(a1 + 4) = 1;
      *(a1 + 8) = 0;
      v4 = sub_2393C5FC8(a2, (a1 + 8));
    }

    else if (!v8)
    {
      v4 = sub_2393C5F70(a2, a1);
    }

    v5 = v4;
    if (v4)
    {
      v6 = v4 & 0xFFFFFFFF00000000;
      return v6 | v5;
    }
  }

  v6 = v4 & 0xFFFFFFFF00000000;
  v5 = v4;
  if (v4 == 33)
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

unint64_t sub_238EFF2F8(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C818C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F36DFC(v8, 1uLL, a1 + 4);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C818C(v8, 2uLL, a1[6]);
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238EFF37C(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v12 = a2;
  while (1)
  {
    v10 = 0;
    v4 = sub_2394C37B8(v11, &v10);
    if (v4)
    {
      break;
    }

    switch(v10)
    {
      case 2:
        v6 = (a1 + 12);
        v5 = a2;
        goto LABEL_9;
      case 1:
        *(a1 + 4) = 1;
        *(a1 + 8) = 0;
        v4 = sub_2393C5FC8(a2, (a1 + 8));
        break;
      case 0:
        v5 = a2;
        v6 = a1;
LABEL_9:
        v4 = sub_2393C5F70(v5, v6);
        break;
    }

    v7 = v4;
    if (v4)
    {
      v8 = v4 & 0xFFFFFFFF00000000;
      return v8 | v7;
    }
  }

  v8 = v4 & 0xFFFFFFFF00000000;
  v7 = v4;
  if (v4 == 33)
  {
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

unint64_t sub_238EFF444(unsigned __int16 *a1, uint64_t a2, unint64_t a3)
{
  sub_2394C389C(&v8, a2, a3);
  if (!v9)
  {
    v9 = sub_2393C818C(v8, 0, *a1);
    v10 = v4;
    if (!v9)
    {
      v9 = sub_238F36DFC(v8, 1uLL, a1 + 4);
      v10 = v5;
      if (!v9)
      {
        v9 = sub_2393C81D4(v8, 2uLL, *(a1 + 3));
        v10 = v6;
      }
    }
  }

  return sub_2394C38E0(&v8);
}

unint64_t sub_238EFF4C8(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v11 = a2;
  while (1)
  {
    v9 = 0;
    v4 = sub_2394C37B8(v10, &v9);
    if (v4)
    {
      break;
    }

    if (v9 == 2)
    {
      v5 = (a1 + 12);
    }

    else
    {
      if (v9 != 1)
      {
        if (!v9)
        {
          v4 = sub_2393C5F70(a2, a1);
        }

        goto LABEL_10;
      }

      *(a1 + 4) = 1;
      *(a1 + 8) = 0;
      v5 = (a1 + 8);
    }

    v4 = sub_2393C5FC8(a2, v5);
LABEL_10:
    v6 = v4;
    if (v4)
    {
      v7 = v4 & 0xFFFFFFFF00000000;
      return v7 | v6;
    }
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  v6 = v4;
  if (v4 == 33)
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}