@interface NEIKEv2PacketConstructor
- (uint64_t)appendPayloadsToPacket:(unsigned int)a3 withLength:;
@end

@implementation NEIKEv2PacketConstructor

- (uint64_t)appendPayloadsToPacket:(unsigned int)a3 withLength:
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (a1[1] == 0x7FFFFFFFFFFFFFFFLL && !a1[2])
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v25) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "Request to write plaintext with finalized construction state", &v25, 2u);
    }

    goto LABEL_31;
  }

  v7 = objc_getProperty(a1, v5, 24, 1);
  v8 = [v7 count];
  if (a3)
  {
    if (v8)
    {
      v9 = [v7 count]- 1;
      v10 = a1[1];
      if (v10 <= v9)
      {
        v11 = a1[2];
        do
        {
          v12 = [v7 objectAtIndexedSubscript:v10];
          v13 = [v12 length] - v11;
          v14 = [v12 bytes];
          v15 = a3;
          if (v13 > a3)
          {
            [v6 appendBytes:v14 + v11 length:a3];
            v16 = v11 + a3;

            goto LABEL_15;
          }

          [v6 appendBytes:v14 + v11 length:v13];
          a3 -= v13;
          ++v10;

          if (v15 == v13)
          {
            break;
          }

          v11 = 0;
        }

        while (v10 <= v9);
        if (a3)
        {
          goto LABEL_24;
        }

        v16 = 0;
LABEL_15:
        v17 = 0x7FFFFFFFFFFFFFFFLL;
        if (v10 <= v9)
        {
          v17 = v10;
        }

        a1[1] = v17;
        a1[2] = v16;
        goto LABEL_18;
      }

LABEL_24:
      v21 = ne_log_obj();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_30;
      }

      v25 = 67109120;
      v26 = a3;
      v22 = "Ran out of payloads with remaining length %u to write";
      goto LABEL_26;
    }

    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v25 = 67109120;
      v26 = a3;
      v22 = "Request to write plaintext (length %u) with empty payload vector";
LABEL_26:
      v23 = v21;
      v24 = 8;
LABEL_29:
      _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, v22, &v25, v24);
    }

LABEL_30:

LABEL_31:
    v18 = 0;
    goto LABEL_19;
  }

  if (v8)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v25) = 0;
      v22 = "Request to write no plaintext with non-empty payload vector";
      v23 = v21;
      v24 = 2;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  *(a1 + 1) = xmmword_1BAA4E560;
LABEL_18:
  v18 = 1;
LABEL_19:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

@end