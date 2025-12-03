@interface NEDNSResourceRecord
- (void)initFromByteParser:(void *)parser;
@end

@implementation NEDNSResourceRecord

- (void)initFromByteParser:(void *)parser
{
  v3 = a2;
  if (!parser)
  {
    v14 = 0;
    goto LABEL_29;
  }

  v43 = 1;
  v42.receiver = parser;
  v42.super_class = NEDNSResourceRecord;
  v5 = objc_msgSendSuper2(&v42, sel_init);
  if (!v5)
  {
    goto LABEL_27;
  }

  parseDomainName = [(NEByteParser *)v3 parseDomainName];
  v7 = v5[2];
  v5[2] = parseDomainName;

  if (v5[2])
  {
    v5[1] = [(NEByteParser *)v3 parse16Bits:?];
    if ((v43 & 1) == 0)
    {
      parseDomainName5 = ne_log_obj();
      if (os_log_type_enabled(parseDomainName5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v13 = "Failed to parse RR type";
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v5[3] = [(NEByteParser *)v3 parse16Bits:?];
    if ((v43 & 1) == 0)
    {
      parseDomainName5 = ne_log_obj();
      if (os_log_type_enabled(parseDomainName5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v13 = "Failed to parse RR class";
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v5[4] = [(NEByteParser *)v3 parse32Bits:?];
    if ((v43 & 1) == 0)
    {
      parseDomainName5 = ne_log_obj();
      if (os_log_type_enabled(parseDomainName5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v13 = "Failed to parse RR TTL";
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v8 = [(NEByteParser *)v3 parse16Bits:?];
    v5[5] = v8;
    if ((v43 & 1) == 0)
    {
      parseDomainName5 = ne_log_obj();
      if (os_log_type_enabled(parseDomainName5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v13 = "Failed to parse RR length";
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v9 = v5[1];
    if (v9 <= 5)
    {
      switch(v9)
      {
        case 1:
          if (v8 != 4)
          {
            goto LABEL_27;
          }

          v20 = [(NEByteParser *)v3 parseAddressWithFamily:?];
          v21 = v5[6];
          v5[6] = v20;

          if (!v5[6])
          {
            parseDomainName5 = ne_log_obj();
            if (!os_log_type_enabled(parseDomainName5, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = 0;
            v13 = "Failed to parse RR A address";
            goto LABEL_25;
          }

          break;
        case 2:
          parseDomainName2 = [(NEByteParser *)v3 parseDomainName];
          v38 = v5[6];
          v5[6] = parseDomainName2;

          if (!v5[6])
          {
            parseDomainName5 = ne_log_obj();
            if (!os_log_type_enabled(parseDomainName5, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = 0;
            v13 = "Failed to parse RR NS";
            goto LABEL_25;
          }

          break;
        case 5:
          parseDomainName3 = [(NEByteParser *)v3 parseDomainName];
          v17 = v5[6];
          v5[6] = parseDomainName3;

          if (!v5[6])
          {
            parseDomainName5 = ne_log_obj();
            if (!os_log_type_enabled(parseDomainName5, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = 0;
            v13 = "Failed to parse RR CNAME";
            goto LABEL_25;
          }

          break;
      }

      goto LABEL_58;
    }

    if (v9 > 15)
    {
      if (v9 != 16)
      {
        if (v9 == 28)
        {
          if (v8 != 16)
          {
            goto LABEL_27;
          }

          v18 = [(NEByteParser *)v3 parseAddressWithFamily:?];
          v19 = v5[6];
          v5[6] = v18;

          if (!v5[6])
          {
            parseDomainName5 = ne_log_obj();
            if (!os_log_type_enabled(parseDomainName5, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_26;
            }

            *buf = 0;
            v13 = "Failed to parse RR AAAA address";
            goto LABEL_25;
          }
        }

        goto LABEL_58;
      }

      v35 = [(NEByteParser *)v3 parseBytes:v8];
      if (!v35)
      {
        parseDomainName5 = ne_log_obj();
        if (!os_log_type_enabled(parseDomainName5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        *buf = 0;
        v13 = "Failed to parse RR TXT";
        goto LABEL_25;
      }

      v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v35 length:v5[5] encoding:4];
      parseDomainName5 = v5[6];
      v5[6] = v36;
LABEL_56:

      goto LABEL_58;
    }

    if (v9 != 6)
    {
      if (v9 == 12)
      {
        parseDomainName4 = [(NEByteParser *)v3 parseDomainName];
        v11 = v5[6];
        v5[6] = parseDomainName4;

        if (!v5[6])
        {
          parseDomainName5 = ne_log_obj();
          if (os_log_type_enabled(parseDomainName5, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v13 = "Failed to parse RR PTR";
LABEL_25:
            _os_log_error_impl(&dword_1BA83C000, parseDomainName5, OS_LOG_TYPE_ERROR, v13, buf, 2u);
            goto LABEL_26;
          }

          goto LABEL_26;
        }
      }

LABEL_58:
      v14 = v5;
      goto LABEL_28;
    }

    parseDomainName5 = [(NEByteParser *)v3 parseDomainName];
    if (!parseDomainName5)
    {
      parseDomainName6 = ne_log_obj();
      if (os_log_type_enabled(parseDomainName6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, parseDomainName6, OS_LOG_TYPE_ERROR, "Failed to parse RR SOA main name", buf, 2u);
      }

      goto LABEL_79;
    }

    parseDomainName6 = [(NEByteParser *)v3 parseDomainName];
    if (parseDomainName6)
    {
      v24 = [(NEByteParser *)v3 parse32Bits:?];
      if (v43)
      {
        v25 = v24;
        v26 = [(NEByteParser *)v3 parse32Bits:?];
        if (v43)
        {
          v27 = v26;
          v28 = [(NEByteParser *)v3 parse32Bits:?];
          if (v43)
          {
            v29 = v28;
            v30 = [(NEByteParser *)v3 parse32Bits:?];
            if (v43)
            {
              v31 = v30;
              v32 = [(NEByteParser *)v3 parse32Bits:?];
              if (v43)
              {
                v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@ %u %u %u %u %u", parseDomainName5, parseDomainName6, v25, v27, v29, v31, v32];
                v34 = v5[6];
                v5[6] = v33;

                goto LABEL_56;
              }

              v39 = ne_log_obj();
              if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_78;
              }

              *buf = 0;
              v40 = "Failed to parse RR SOA minimum TTL";
              goto LABEL_77;
            }

            v39 = ne_log_obj();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v40 = "Failed to parse RR SOA expire interval";
              goto LABEL_77;
            }

LABEL_78:

LABEL_79:
            goto LABEL_26;
          }

          v39 = ne_log_obj();
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_78;
          }

          *buf = 0;
          v40 = "Failed to parse RR SOA retry interval";
        }

        else
        {
          v39 = ne_log_obj();
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_78;
          }

          *buf = 0;
          v40 = "Failed to parse RR SOA refresh interval";
        }
      }

      else
      {
        v39 = ne_log_obj();
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_78;
        }

        *buf = 0;
        v40 = "Failed to parse RR SOA serial number";
      }
    }

    else
    {
      v39 = ne_log_obj();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *buf = 0;
      v40 = "Failed to parse RR SOA responsible name";
    }

LABEL_77:
    _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, v40, buf, 2u);
    goto LABEL_78;
  }

  parseDomainName5 = ne_log_obj();
  if (os_log_type_enabled(parseDomainName5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v13 = "Failed to parse RR name";
    goto LABEL_25;
  }

LABEL_26:

LABEL_27:
  v14 = 0;
LABEL_28:

LABEL_29:
  return v14;
}

@end