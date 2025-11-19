@interface MTRFabricInfo
- (MTRFabricInfo)initWithFabricTable:(const void *)a3 fabricInfo:(const void *)a4;
@end

@implementation MTRFabricInfo

- (MTRFabricInfo)initWithFabricTable:(const void *)a3 fabricInfo:(const void *)a4
{
  v34[9] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = MTRFabricInfo;
  v6 = [(MTRFabricInfo *)&v28 init];
  if (!v6)
  {
    goto LABEL_11;
  }

  v33 = &unk_284BB9138;
  if (sub_2394A7848(a4, &v33))
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a4 + 137);
      v9 = sub_2393C9138();
      *buf = 67109378;
      v30 = v8;
      v31 = 2080;
      v32 = v9;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch root public key for fabric index %x: %s", buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      v27 = *(a4 + 137);
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    goto LABEL_11;
  }

  v10 = [MEMORY[0x277CBEA90] dataWithBytes:v34 length:65];
  v11 = *(v6 + 1);
  *(v6 + 1) = v10;

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a4 + 69)];
  v13 = *(v6 + 2);
  *(v6 + 2) = v12;

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a4 + 1)];
  v15 = *(v6 + 3);
  *(v6 + 3) = v14;

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a4];
  v17 = *(v6 + 4);
  *(v6 + 4) = v16;

  v18 = sub_239283EA0(a4);
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v18 length:v19 encoding:4];
  v21 = *(v6 + 5);
  *(v6 + 5) = v20;

  if (!sub_239283EE8(v6 + 6, v6 + 7, a3, *(a4 + 137), sub_2394A7BFC, 0, "root") || !sub_239283EE8(v6 + 8, v6 + 9, a3, *(a4 + 137), sub_2394A8274, 0, "intermediate") || !sub_239283EE8(v6 + 10, v6 + 11, a3, *(a4 + 137), sub_2394A847C, 0, "operational"))
  {
LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a4 + 137)];
  v23 = *(v6 + 12);
  *(v6 + 12) = v22;

  v24 = v6;
LABEL_12:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

@end