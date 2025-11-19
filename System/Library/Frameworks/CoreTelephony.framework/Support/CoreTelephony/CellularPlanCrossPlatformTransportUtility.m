@interface CellularPlanCrossPlatformTransportUtility
- (CFSharedRef<const)serializeDeviceInfo:(const void *)a3;
- (CellularPlanCrossPlatformTransportUtility)init;
- (CellularPlanTransferDeviceInfo)getTransferDeviceInfoFromProfileResponse:(CellularPlanTransferDeviceInfo *__return_ptr)retstr;
- (CellularPlanTransferDeviceInfo)getTransferDeviceInfoFromSessionResponse:(CellularPlanTransferDeviceInfo *__return_ptr)retstr;
- (CellularPlanTransferDeviceInfo)parseTransferItem:(CellularPlanTransferDeviceInfo *__return_ptr)retstr hasToken:(CellularPlanCrossPlatformTransportUtility *)self withStream:;
- (id)findHighestMatchingVersionFrom:(id)a3 to:(id)a4;
- (int64_t)convertPendingStateToTransferStatus:(unsigned __int8)a3;
- (void)dumpData:(id)a3 withLabel:(id)a4;
@end

@implementation CellularPlanCrossPlatformTransportUtility

- (CellularPlanCrossPlatformTransportUtility)init
{
  v3.receiver = self;
  v3.super_class = CellularPlanCrossPlatformTransportUtility;
  if ([(CellularPlanCrossPlatformTransportUtility *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (id)findHighestMatchingVersionFrom:(id)a3 to:(id)a4
{
  v5 = a3;
  v20 = a4;
  v18 = v5;
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = [v5 count];
  v7 = 0;
  if (!v20 || !v6)
  {
    goto LABEL_25;
  }

  if (![v20 count])
  {
LABEL_24:
    v7 = 0;
    goto LABEL_25;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v7 = 0;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = v20;
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          v14 = *v22;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v12);
              }

              if ([v11 isEqualToString:*(*(&v21 + 1) + 8 * j)] && (!v7 || objc_msgSend(v11, "compare:options:", v7, 64) == 1))
              {
                v16 = v11;

                v7 = v16;
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v13);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

LABEL_25:

  return v7;
}

- (CellularPlanTransferDeviceInfo)parseTransferItem:(CellularPlanTransferDeviceInfo *__return_ptr)retstr hasToken:(CellularPlanCrossPlatformTransportUtility *)self withStream:
{
  v6 = v4;
  v77 = v3;
  v8 = v2;
  v70 = v6;
  v9 = sub_10000C030(v6 + 16);
  v71 = [v8 iccid];
  strlen([v71 UTF8String]);
  v10 = sub_10000C030(v9);
  v11 = sub_10000C030(v10);
  v12 = sub_10000C030(v11);
  v76 = [v8 mcc];
  v13 = v76;
  strlen([v76 UTF8String]);
  v14 = sub_10000C030(v12);
  v15 = sub_10000C030(v14);
  v16 = sub_10000C030(v15);
  v75 = [v8 mnc];
  v17 = v75;
  strlen([v75 UTF8String]);
  v18 = sub_10000C030(v16);
  v19 = sub_10000C030(v18);
  v20 = sub_10000C030(v19);
  v74 = [v8 gid1];
  v21 = v74;
  strlen([v74 UTF8String]);
  v22 = sub_10000C030(v20);
  v23 = sub_10000C030(v22);
  v24 = sub_10000C030(v23);
  v73 = [v8 gid2];
  v25 = v73;
  strlen([v73 UTF8String]);
  v26 = sub_10000C030(v24);
  LOBYTE(v80[0]) = 36;
  v27 = sub_10000C030(v26);
  v28 = sub_10000C030(v27);
  v72 = [v8 imsi];
  if (v72)
  {
    v69 = [v8 imsi];
    v29 = v69;
    v30 = [v69 UTF8String];
  }

  else
  {
    v30 = "";
  }

  strlen(v30);
  v31 = sub_10000C030(v28);
  LOBYTE(v80[0]) = 36;
  v32 = sub_10000C030(v31);
  v33 = sub_10000C030(v32);
  if (v77)
  {
    v66 = [v8 token];
    v67 = [v66 token];
    v34 = v67;
    v35 = [v67 UTF8String];
  }

  else
  {
    v35 = "";
  }

  strlen(v35);
  v36 = sub_10000C030(v33);
  v37 = sub_10000C030(v36);
  v38 = sub_10000C030(v37);
  v39 = sub_10000C030(v38);
  LOBYTE(v80[0]) = 36;
  v40 = sub_10000C030(v39);
  v41 = sub_10000C030(v40);
  v42 = [v8 imei];
  if (v42)
  {
    v68 = [v8 imei];
    v43 = v68;
    v44 = [v68 UTF8String];
  }

  else
  {
    v44 = "";
  }

  strlen(v44);
  v45 = sub_10000C030(v41);
  LOBYTE(v80[0]) = 36;
  v46 = sub_10000C030(v45);
  v47 = sub_10000C030(v46);
  v48 = [v8 phoneNumber];
  if (v48)
  {
    v44 = [v8 phoneNumber];
    v49 = v44;
    v50 = [v44 UTF8String];
  }

  else
  {
    v50 = "";
  }

  strlen(v50);
  v51 = sub_10000C030(v47);
  LOBYTE(v80[0]) = 36;
  v52 = sub_10000C030(v51);
  v53 = sub_10000C030(v52);
  if (v77)
  {
    v50 = [v8 token];
    v5 = [v50 tokenExpiry];
    v54 = v5;
    v55 = [v5 UTF8String];
  }

  else
  {
    v55 = "";
  }

  strlen(v55);
  v56 = sub_10000C030(v53);
  LOBYTE(v80[0]) = 36;
  v57 = sub_10000C030(v56);
  v58 = sub_10000C030(v57);
  v59 = [v8 carrierName];
  v60 = v59;
  strlen([v59 UTF8String]);
  sub_10000C030(v58);

  if (v77)
  {
  }

  if (v48)
  {
  }

  if (v42)
  {
  }

  if (v77)
  {
  }

  v61 = v72;
  if (v72)
  {

    v61 = v72;
  }

  v81 = 0u;
  memset(v80, 0, sizeof(v80));
  v62 = sub_10000D79C(v70 + 24);
  if (v63 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v64 = v63;
  if (v63 >= 0x17)
  {
    operator new();
  }

  v79 = v63;
  if (v63)
  {
    memmove(&__dst, v62, v63);
  }

  *(&__dst + v64) = 0;
  sub_100318244(v80);
  if (v79 < 0)
  {
    operator delete(__dst);
  }

  if (BYTE8(v81) == 1)
  {
    sub_10031A3B0(retstr, v80);
    sub_10027F834(retstr[1].var0.var0.var1.var1.var0.__rep_.__s.__data_, (&v80[15] + 8));
    retstr[2].var0.var0.var1.var1.var0.__rep_.__l.__size_ = v81;
    if (BYTE8(v81))
    {
      sub_100111C2C(v80);
    }
  }

  else
  {
    retstr[2].var0.var0.var1.var1.var0.__rep_.__l.__size_ = 0;
    *(&retstr[2].var0.var0.var5 + 5) = 0u;
    *(&retstr[2].var0.var0.var5 + 6) = 0u;
    *(&retstr[2].var0.var0.var5 + 3) = 0u;
    *(&retstr[2].var0.var0.var5 + 4) = 0u;
    *(&retstr[2].var0.var0.var5.__rep_.__l + 1) = 0u;
    *(&retstr[2].var0.var0.var5 + 2) = 0u;
    *&retstr[1].var1.var0 = 0u;
    *&retstr[2].var0.var0.var0 = 0u;
    *(&retstr[1].var0.var0.var5 + 6) = 0u;
    *(&retstr[1].var0.var0.var5 + 7) = 0u;
    *(&retstr[1].var0.var0.var5 + 4) = 0u;
    *(&retstr[1].var0.var0.var5 + 5) = 0u;
    *(&retstr[1].var0.var0.var5 + 2) = 0u;
    *(&retstr[1].var0.var0.var5 + 3) = 0u;
    *&retstr[1].var0.var0.var0 = 0u;
    *(&retstr[1].var0.var0.var5.__rep_.__l + 1) = 0u;
    *(&retstr->var0.var0.var5 + 7) = 0u;
    *&retstr->var1.var0 = 0u;
    *(&retstr->var0.var0.var5 + 5) = 0u;
    *(&retstr->var0.var0.var5 + 6) = 0u;
    *(&retstr->var0.var0.var5 + 3) = 0u;
    *(&retstr->var0.var0.var5 + 4) = 0u;
    *(&retstr->var0.var0.var5.__rep_.__l + 1) = 0u;
    *(&retstr->var0.var0.var5 + 2) = 0u;
    *&retstr->var0.var0.var0 = 0u;
  }

  return result;
}

- (CellularPlanTransferDeviceInfo)getTransferDeviceInfoFromSessionResponse:(CellularPlanTransferDeviceInfo *__return_ptr)retstr
{
  v5 = v2;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v6 = [v5 items];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 items];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = [v9 token];

    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    *v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    memset(v36, 0, sizeof(v36));
    v34 = 0u;
    sub_10000C320(&v34);
    v11 = sub_10000C030(&v35);
    v12 = sub_10000C030(v11);
    v13 = sub_10000C030(v12);
    LOBYTE(__p) = 36;
    v14 = sub_10000C030(v13);
    v15 = sub_10000C030(v14);
    v51[0] = 0;
    v51[1] = 0;
    p_p = &__p;
    sub_100922314(v51, v17, &__p);
    v18 = sub_10000C030(v15);
    v50 = 36;
    v19 = sub_10000C030(v18);
    v20 = sub_10000C030(v19);
    v50 = 36;
    v21 = sub_10000C030(v20);
    v22 = sub_10000C030(v21);
    v23 = sub_10000C030(v22);
    v50 = 36;
    v24 = sub_10000C030(v23);
    v25 = sub_10000C030(v24);
    v26 = [v5 friendlyDeviceName];
    if (v26)
    {
      p_p = [v5 friendlyDeviceName];
      v27 = p_p;
      v28 = [p_p UTF8String];
    }

    else
    {
      v28 = "";
    }

    strlen(v28);
    v29 = sub_10000C030(v25);
    v50 = 36;
    sub_10000C030(v29);
    if (v26)
    {
    }

    if (v33 < 0)
    {
      operator delete(__p);
    }

    [(CellularPlanCrossPlatformTransportUtility *)self parseTransferItem:v9 hasToken:v10 != 0 withStream:&v34];
    *&v35 = v30;
    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37[1]);
    }

    std::locale::~locale(v36);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  else
  {
    sub_10031B678(retstr, v52);
    sub_10027F834(retstr[1].var0.var0.var1.var1.var0.__rep_.__s.__data_, &v52[31]);
    retstr[2].var0.var0.var1.var1.var0.__rep_.__l.__size_ = v53;
  }

  sub_100111C2C(v52);

  return result;
}

- (CellularPlanTransferDeviceInfo)getTransferDeviceInfoFromProfileResponse:(CellularPlanTransferDeviceInfo *__return_ptr)retstr
{
  v5 = v2;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v6 = [v5 item];
  v7 = [v6 token];

  if (v7 && (([v5 item], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "simType"), v8, objc_msgSend(v5, "sourceEID"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v5, "sourceEID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v10, v12) || v9 == 1))
  {
    __dst = 0uLL;
    v54 = 0;
    v13 = [v5 sourceEID];
    v14 = [v13 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v54) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    *(&__dst + v16) = 0;

    v18 = HIBYTE(v54);
    v19 = SHIBYTE(v54);
    if (v54 < 0)
    {
      v18 = *(&__dst + 1);
    }

    if (!v18)
    {
      v55[0] = 0;
      v55[1] = 0;
      sub_100922314(v55, v17, &v37);
      if (v19 < 0)
      {
        operator delete(__dst);
      }

      __dst = v37;
      v54 = v38;
    }

    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    *__p = 0u;
    v41 = 0u;
    v38 = 0u;
    memset(v39, 0, sizeof(v39));
    v37 = 0u;
    sub_10000C320(&v37);
    v20 = sub_10000C030(&v38);
    LOBYTE(v55[0]) = 36;
    v21 = sub_10000C030(v20);
    v22 = sub_10000C030(v21);
    LOBYTE(v55[0]) = 36;
    v23 = sub_10000C030(v22);
    v24 = sub_10000C030(v23);
    v25 = sub_10000C030(v24);
    LOBYTE(v55[0]) = 36;
    v26 = sub_10000C030(v25);
    v27 = sub_10000C030(v26);
    v28 = sub_10000C030(v27);
    LOBYTE(v55[0]) = 36;
    v29 = sub_10000C030(v28);
    v30 = sub_10000C030(v29);
    v31 = sub_10000C030(v30);
    LOBYTE(v55[0]) = 36;
    v32 = sub_10000C030(v31);
    v33 = sub_10000C030(v32);
    v34 = sub_10000C030(v33);
    LOBYTE(v55[0]) = 36;
    sub_10000C030(v34);
    [(CellularPlanCrossPlatformTransportUtility *)self parseTransferItem:v6 hasToken:1 withStream:&v37];
    *&v38 = v35;
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[1]);
    }

    std::locale::~locale(v39);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    sub_10031B678(retstr, v56);
    sub_10027F834(retstr[1].var0.var0.var1.var1.var0.__rep_.__s.__data_, (&v56[15] + 8));
    retstr[2].var0.var0.var1.var1.var0.__rep_.__l.__size_ = v57;
  }

  sub_100111C2C(v56);
  return result;
}

- (CFSharedRef<const)serializeDeviceInfo:(const void *)a3
{
  v4 = v3;
  if (*(a3 + 240))
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    PB::Writer::Writer(&v23);
    memset(v22, 0, sizeof(v22));
    sub_1006E0F18(v22);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sub_10027F834(__dst, (a3 + 248));
    v18 = 1;
    v6 = sub_100832314(a3, __dst, v22);
    if (v18 != 1)
    {
      goto LABEL_12;
    }

    v26 = &v17;
    sub_100111D64(&v26);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }

    if (v8 < 0)
    {
      operator delete(__dst[0]);
      if (v6)
      {
LABEL_13:
        sub_1006E1A2C(v22, &v23);
        sub_10018A52C(&v19, v24, v23, v23 - v24);
        sub_10091E26C(&v19, v4);
        if (v19)
        {
          v20 = v19;
          operator delete(v19);
        }

        goto LABEL_18;
      }
    }

    else
    {
LABEL_12:
      if (v6)
      {
        goto LABEL_13;
      }
    }

    *v4 = 0;
LABEL_18:
    sub_1006E1008(v22);
    PB::Writer::~Writer(&v23);
    return self;
  }

  *v3 = 0;
  return self;
}

- (int64_t)convertPendingStateToTransferStatus:(unsigned __int8)a3
{
  if ((a3 - 2) > 0xE)
  {
    return 2;
  }

  else
  {
    return qword_1017FB078[(a3 - 2)];
  }
}

- (void)dumpData:(id)a3 withLabel:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ((atomic_load_explicit(&qword_101FBA2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA2C8))
  {
    sub_1000CE0A8(&__p);
    sub_1000DF10C(&qword_101FBA2B8, &__p);
    v11 = __p;
    __p = 0;
    if (v11)
    {
      sub_1000DF0B0(&__p, v11);
    }

    __cxa_atexit(sub_1000D6624, &qword_101FBA2B8, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA2C8);
  }

  if (qword_101FBA2B8)
  {
    v7 = [v5 bytes];
    v8 = qword_101FBA2B8;
    v9 = [v6 UTF8String];
    v10 = [v5 length];
    __p = 0;
    v13 = 0;
    v14 = 0;
    sub_1000DCF88(&__p, v7, v10 + v7, v10);
    sub_1009A2010(v8, v9);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }
}

@end