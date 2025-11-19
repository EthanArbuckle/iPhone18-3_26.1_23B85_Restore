@interface NWConcrete_nw_txt_record
- (NSString)description;
- (NWConcrete_nw_txt_record)init;
- (void)dealloc;
@end

@implementation NWConcrete_nw_txt_record

- (NWConcrete_nw_txt_record)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_txt_record;
  v2 = [(NWConcrete_nw_txt_record *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_txt_record init]";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v14 = 0;
  if (__nwlog_fault(v7, &type, &v14))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_txt_record init]";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v14 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v11 = type;
      v12 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v18 = "[NWConcrete_nw_txt_record init]";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_txt_record init]";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_txt_record init]";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:

  return v3;
}

- (void)dealloc
{
  v3 = *(self + 1);
  if (v3)
  {
    free(v3);
    *(self + 1) = 0;
  }

  v4.receiver = self;
  v4.super_class = NWConcrete_nw_txt_record;
  [(NWConcrete_nw_txt_record *)&v4 dealloc];
}

- (NSString)description
{
  v3 = *(self + 2);
  v4 = v3 + 2;
  if (v3 == -2)
  {
    v63 = __nwlog_obj();
    os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
    v65 = 12;
    v64 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v64);
    if (result)
    {
      goto LABEL_72;
    }

    free(v64);
    v4 = 0;
  }

  v5 = malloc_type_malloc(v4, 0xFDB87F72uLL);
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    v65 = 12;
    v19 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v19);
    if (!result)
    {
      free(v19);
      if ((*(self + 36) & 1) == 0)
      {
LABEL_4:
        v12 = *(self + 2);
        if (v12 < 1)
        {
LABEL_64:
          v49 = &v5[v12 + 1];
          goto LABEL_65;
        }

        v13 = *(self + 1);
        v14 = &v13->i8[v12];
        if (&v13->i8[v12] <= &v13->i8[1])
        {
          v14 = &v13->i8[1];
        }

        v15 = v14 - v13;
        if (v15 < 8)
        {
          v16 = v5;
          v17 = *(self + 1);
          goto LABEL_59;
        }

        v16 = v5;
        v17 = *(self + 1);
        if ((v5 - v13 + 1) >= 0x20)
        {
          if (v15 < 0x20)
          {
            v48 = 0;
            goto LABEL_54;
          }

          v48 = v15 & 0xFFFFFFFFFFFFFFE0;
          v50 = v13 + 1;
          v51 = (v5 + 17);
          v6.i64[0] = 0x8181818181818181;
          v6.i64[1] = 0x8181818181818181;
          v7.i64[0] = 0xA1A1A1A1A1A1A1A1;
          v7.i64[1] = 0xA1A1A1A1A1A1A1A1;
          v8.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
          v8.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
          v52 = v15 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v53 = v50[-1];
            v11 = vcgtq_u8(v7, vaddq_s8(v53, v6));
            v9 = vbslq_s8(v11, v8, v53);
            v10 = vbslq_s8(vcgtq_u8(v7, vaddq_s8(*v50, v6)), v8, *v50);
            v51[-1] = v9;
            *v51 = v10;
            v50 += 2;
            v51 += 2;
            v52 -= 32;
          }

          while (v52);
          if (v15 == v48)
          {
            goto LABEL_63;
          }

          if ((v15 & 0x18) != 0)
          {
LABEL_54:
            v54 = v15 & 0xFFFFFFFFFFFFFFF8;
            v16 = &v5[v15 & 0xFFFFFFFFFFFFFFF8];
            v55 = v48 - (v15 & 0xFFFFFFFFFFFFFFF8);
            v56 = &v5[v48 + 1];
            v57 = &v13->i8[v48];
            v6.i64[0] = 0x8181818181818181;
            v7.i64[0] = 0xA1A1A1A1A1A1A1A1;
            v8.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
            do
            {
              v58 = *v57++;
              *v10.i8 = vcgt_u8(0xA1A1A1A1A1A1A1A1, vadd_s8(v58, 0x8181818181818181));
              *v9.i8 = vbsl_s8(*v10.i8, 0x2E2E2E2E2E2E2E2ELL, v58);
              *v56 = v9.i64[0];
              v56 += 8;
              v55 += 8;
            }

            while (v55);
            if (v15 != v54)
            {
              v17 = &v13->u8[v54];
              goto LABEL_59;
            }

LABEL_63:
            v12 = *(self + 2);
            goto LABEL_64;
          }

          v17 = &v13->u8[v48];
          v16 = &v5[v48];
        }

LABEL_59:
        v59 = v13->u64 + v12;
        v60 = v16 + 1;
        do
        {
          v62 = *v17++;
          v61 = v62;
          if ((v62 - 127) < 0xFFFFFFA1)
          {
            v61 = 46;
          }

          *v60++ = v61;
        }

        while (v17 < v59);
        goto LABEL_63;
      }

      goto LABEL_11;
    }

LABEL_72:
    __break(1u);
    return result;
  }

  if ((*(self + 36) & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_11:
  v21 = *(self + 2);
  if (v21 == 1)
  {
    v22 = &stru_1EEFDE910;
    if (v5)
    {
      goto LABEL_66;
    }

    goto LABEL_67;
  }

  if (v21 < 1)
  {
    goto LABEL_49;
  }

  v23 = *(self + 1);
  v24 = &v23[v21];
  v6.i64[0] = 0x8181818181818181;
  v7.i64[0] = 0xA1A1A1A1A1A1A1A1;
  v8.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
  v9.i64[0] = 0x8181818181818181;
  v9.i64[1] = 0x8181818181818181;
  v10.i64[0] = 0xA1A1A1A1A1A1A1A1;
  v10.i64[1] = 0xA1A1A1A1A1A1A1A1;
  v11.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
  v11.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
  v25 = v5;
  do
  {
    *v25 = 10;
    v27 = *v23;
    if (!*v23)
    {
      v26 = 1;
      goto LABEL_17;
    }

    v26 = v27 + 1;
    if (v27 < 8 || (v25 - v23) <= 0x1F)
    {
      v29 = 1;
      goto LABEL_40;
    }

    if (v27 < 0x20)
    {
      v30 = 0;
LABEL_35:
      v38 = v27 & 0xF8;
      v39 = v30 - v38;
      v40 = &v25[v30 + 1];
      v41 = &v23[v30 + 1];
      do
      {
        v42 = *v41++;
        *v40++ = vbsl_s8(vcgt_u8(0xA1A1A1A1A1A1A1A1, vadd_s8(v42, 0x8181818181818181)), 0x2E2E2E2E2E2E2E2ELL, v42);
        v39 += 8;
      }

      while (v39);
      if (v38 == v27)
      {
        goto LABEL_17;
      }

      v29 = v38 | 1;
      goto LABEL_40;
    }

    v30 = v27 & 0xE0;
    v31 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 17), v9)), v11, *(v23 + 17));
    *(v25 + 1) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 1), v9)), v11, *(v23 + 1));
    *(v25 + 17) = v31;
    if (v30 != 32)
    {
      v32 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 49), v9)), v11, *(v23 + 49));
      *(v25 + 33) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 33), v9)), v11, *(v23 + 33));
      *(v25 + 49) = v32;
      if (v30 != 64)
      {
        v33 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 81), v9)), v11, *(v23 + 81));
        *(v25 + 65) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 65), v9)), v11, *(v23 + 65));
        *(v25 + 81) = v33;
        if (v30 != 96)
        {
          v34 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 113), v9)), v11, *(v23 + 113));
          *(v25 + 97) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 97), v9)), v11, *(v23 + 97));
          *(v25 + 113) = v34;
          if (v30 != 128)
          {
            v35 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 145), v9)), v11, *(v23 + 145));
            *(v25 + 129) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 129), v9)), v11, *(v23 + 129));
            *(v25 + 145) = v35;
            if (v30 != 160)
            {
              v36 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 177), v9)), v11, *(v23 + 177));
              *(v25 + 161) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 161), v9)), v11, *(v23 + 161));
              *(v25 + 177) = v36;
              if (v30 != 192)
              {
                v37 = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 209), v9)), v11, *(v23 + 209));
                *(v25 + 193) = vbslq_s8(vcgtq_u8(v10, vaddq_s8(*(v23 + 193), v9)), v11, *(v23 + 193));
                *(v25 + 209) = v37;
              }
            }
          }
        }
      }
    }

    if (v30 != v27)
    {
      if ((v27 & 0x18) != 0)
      {
        goto LABEL_35;
      }

      v29 = v30 | 1;
LABEL_40:
      v43 = v27 - v29 + 1;
      v44 = &v25[v29];
      v45 = &v23[v29];
      do
      {
        v47 = *v45++;
        v46 = v47;
        if ((v47 - 127) < 0xFFFFFFA1)
        {
          v46 = 46;
        }

        *v44++ = v46;
        --v43;
      }

      while (v43);
    }

LABEL_17:
    v23 += v26;
    v25 += v26;
  }

  while (v23 < v24);
  v21 = *(self + 2);
LABEL_49:
  v49 = &v5[v21];
LABEL_65:
  *v49 = 0;
  v22 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s", *v6.i64, *v7.i64, *v8.i64, *v9.i64, *v10.i64, *v11.i64, v5 + 1, v65);
LABEL_66:
  free(v5);
LABEL_67:

  return v22;
}

@end