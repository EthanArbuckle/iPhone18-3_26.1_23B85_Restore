@interface NEIKEv2TrafficSelectorPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)a3;
@end

@implementation NEIKEv2TrafficSelectorPayload

- (BOOL)parsePayloadData:(id)a3
{
  *&v41[9] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length] <= 3)
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v41 = "[NEIKEv2TrafficSelectorPayload parsePayloadData:]";
      _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_payload_ts_hdr_t))", buf, 0xCu);
    }

    v22 = 0;
    goto LABEL_32;
  }

  selfa = self;
  v37 = 0;
  [v4 getBytes:&v37 length:4];
  v35 = v37;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v37];
  v6 = [v4 bytes];
  v36 = v4;
  v7 = [v4 length] - 4;
  if (v7 < 8)
  {
LABEL_26:
    if ([v5 count] != v35)
    {
      v31 = ne_log_obj();
      v4 = v36;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v33 = [v5 count];
        *buf = 134218240;
        *v41 = v33;
        LOWORD(v41[2]) = 1024;
        *(&v41[2] + 2) = v35;
        _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "Failed to process all traffic selectors (%zu/%u)", buf, 0x12u);
      }

      v22 = 0;
      goto LABEL_31;
    }

    v4 = v36;
    if (v7)
    {
      v32 = ne_log_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v41[0] = v7;
        _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, "Ignoring %u remaining bytes in traffic selector payload", buf, 8u);
      }

      if (!selfa)
      {
        goto LABEL_30;
      }
    }

    else if (!selfa)
    {
LABEL_30:
      v22 = [(NEIKEv2TrafficSelectorPayload *)selfa hasRequiredFields];
      goto LABEL_31;
    }

    objc_setProperty_atomic(selfa, v21, v5, 32);
    goto LABEL_30;
  }

  v8 = (v6 + 4);
  while (1)
  {
    v9 = *(v8 + 1);
    v10 = __rev16(v9);
    if (v7 < bswap32(v9) >> 16)
    {
      v25 = ne_log_obj();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v26 = *v8;
      *buf = 67109632;
      v41[0] = v7;
      LOWORD(v41[1]) = 1024;
      *(&v41[1] + 2) = v26;
      HIWORD(v41[2]) = 1024;
      v41[3] = v10;
      v27 = "Not enough bytes remaining (%u) to process traffic selector of type %u length %u";
      v28 = v25;
      v29 = 20;
      goto LABEL_48;
    }

    if (v10 <= 7)
    {
      break;
    }

    v11 = objc_alloc_init(NEIKEv2TrafficSelector);
    [(NEIKEv2TrafficSelector *)v11 setIpProtocol:v8[1]];
    [(NEIKEv2TrafficSelector *)v11 setStartPort:bswap32(*(v8 + 2)) >> 16];
    [(NEIKEv2TrafficSelector *)v11 setEndPort:bswap32(*(v8 + 3)) >> 16];
    v12 = *v8;
    if (v12 == 8)
    {
      if (v9 != 10240)
      {
        v18 = ne_log_obj();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }

        *buf = 67109120;
        v41[0] = v10;
        v19 = v18;
        v20 = "Bad traffic IPv6 traffic selector length (%u)";
        goto LABEL_25;
      }

      memset(v41, 0, 24);
      *buf = 7708;
      *&v41[1] = *(v8 + 8);
      v39[2] = 0;
      v39[1] = 0;
      v39[0] = 0;
      v38 = 7708;
      *(v39 + 4) = *(v8 + 24);
      goto LABEL_12;
    }

    if (v12 == 7)
    {
      if (v9 != 4096)
      {
        v18 = ne_log_obj();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
LABEL_20:

          goto LABEL_21;
        }

        *buf = 67109120;
        v41[0] = v10;
        v19 = v18;
        v20 = "Bad traffic IPv4 traffic selector length (%u)";
LABEL_25:
        _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, v20, buf, 8u);
        goto LABEL_20;
      }

      v41[2] = 0;
      *v41 = 0;
      v13 = *(v8 + 2);
      *buf = 528;
      v41[0] = v13;
      LODWORD(v39[1]) = 0;
      v39[0] = 0;
      v14 = *(v8 + 3);
      v38 = 528;
      LODWORD(v39[0]) = v14;
LABEL_12:
      v15 = [MEMORY[0x1E6977E08] endpointWithAddress:buf];
      [(NEIKEv2TrafficSelector *)v11 setStartAddress:v15];

      v16 = [MEMORY[0x1E6977E08] endpointWithAddress:&v38];
      [(NEIKEv2TrafficSelector *)v11 setEndAddress:v16];
      goto LABEL_15;
    }

    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *v8;
      *buf = 67109120;
      v41[0] = v17;
      _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, "Unknown traffic selector type %u", buf, 8u);
    }

LABEL_15:

    if (v11)
    {
      [v5 addObject:v11];
LABEL_21:
    }

    v7 -= v10;
    v8 += v10;
    if (v7 <= 7)
    {
      goto LABEL_26;
    }
  }

  v25 = ne_log_obj();
  if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_36;
  }

  *buf = 67109120;
  v41[0] = v10;
  v27 = "Traffic selector length %u is too short";
  v28 = v25;
  v29 = 8;
LABEL_48:
  _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
LABEL_36:

  v22 = 0;
  v4 = v36;
LABEL_31:

LABEL_32:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)generatePayloadData
{
  v52 = *MEMORY[0x1E69E9840];
  if (!self || !self->super._payloadDataVector)
  {
    if ([(NEIKEv2TrafficSelectorPayload *)self hasRequiredFields])
    {
      v5 = objc_alloc(MEMORY[0x1E695DF70]);
      if (self)
      {
        Property = objc_getProperty(self, v4, 32, 1);
      }

      else
      {
        Property = 0;
      }

      v8 = [v5 initWithCapacity:{objc_msgSend(Property, "count")}];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v45 = self;
      if (self)
      {
        v9 = objc_getProperty(self, v7, 32, 1);
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v11)
      {
        v13 = v11;
        v14 = *v47;
        *&v12 = 134217984;
        v44 = v12;
        do
        {
          v15 = 0;
          do
          {
            if (*v47 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v46 + 1) + 8 * v15);
            if ([(NEIKEv2TrafficSelector *)v16 type])
            {
              v17 = [(NEIKEv2TrafficSelector *)v16 type];
              v18 = [v16 startAddress];
              v19 = [v16 endAddress];
              v20 = [v18 addressFamily];
              if (v17 == 7)
              {
                if (v20 == 2)
                {
                  if ([v19 addressFamily] == 2)
                  {
                    v21 = [v18 address];
                    v22 = [v19 address];
                    if (v21)
                    {
                      v23 = v22;
                      if (v22)
                      {
                        *buf = 0;
                        *&buf[8] = 0;
                        buf[0] = [(NEIKEv2TrafficSelector *)v16 type];
                        buf[1] = [v16 ipProtocol];
                        *&buf[2] = 4096;
                        *&buf[4] = __rev16([v16 startPort]);
                        if ([v16 endPort])
                        {
                          v24 = __rev16([v16 endPort]);
                        }

                        else
                        {
                          v24 = -1;
                        }

                        *&buf[6] = v24;
                        *&buf[8] = *(v21 + 4);
                        *&buf[12] = *(v23 + 4);
                        v29 = objc_alloc(MEMORY[0x1E695DEF0]);
                        v30 = 16;
                        goto LABEL_34;
                      }

                      v31 = ne_log_obj();
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        v33 = v31;
                        v34 = "IPv4 traffic selector missing end address";
                        goto LABEL_55;
                      }
                    }

                    else
                    {
                      v31 = ne_log_obj();
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        v33 = v31;
                        v34 = "IPv4 traffic selector missing start address";
                        goto LABEL_55;
                      }
                    }

LABEL_35:

                    goto LABEL_36;
                  }

                  v31 = ne_log_obj();
                  if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_35;
                  }

                  v36 = [v19 addressFamily];
                  *buf = v44;
                  *&buf[4] = v36;
                  v33 = v31;
                  v34 = "IPv4 traffic selector end address is wrong family %zu";
                }

                else
                {
                  v31 = ne_log_obj();
                  if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_35;
                  }

                  v32 = [v18 addressFamily];
                  *buf = v44;
                  *&buf[4] = v32;
                  v33 = v31;
                  v34 = "IPv4 traffic selector start address is wrong family %zu";
                }

LABEL_46:
                v38 = 12;
              }

              else
              {
                if (v20 != 30)
                {
                  v31 = ne_log_obj();
                  if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_35;
                  }

                  v35 = [v18 addressFamily];
                  *buf = v44;
                  *&buf[4] = v35;
                  v33 = v31;
                  v34 = "IPv6 traffic selector start address is wrong family %zu";
                  goto LABEL_46;
                }

                if ([v19 addressFamily] != 30)
                {
                  v31 = ne_log_obj();
                  if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_35;
                  }

                  v37 = [v19 addressFamily];
                  *buf = v44;
                  *&buf[4] = v37;
                  v33 = v31;
                  v34 = "IPv6 traffic selector end address is wrong family %zu";
                  goto LABEL_46;
                }

                v25 = [v18 address];
                v26 = [v19 address];
                if (!v25)
                {
                  v31 = ne_log_obj();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    v33 = v31;
                    v34 = "IPv6 traffic selector missing start address";
                    goto LABEL_55;
                  }

                  goto LABEL_35;
                }

                v27 = v26;
                if (v26)
                {
                  memset(buf, 0, 40);
                  buf[0] = [(NEIKEv2TrafficSelector *)v16 type];
                  buf[1] = [v16 ipProtocol];
                  *&buf[2] = 10240;
                  *&buf[4] = __rev16([v16 startPort]);
                  if ([v16 endPort])
                  {
                    v28 = __rev16([v16 endPort]);
                  }

                  else
                  {
                    v28 = -1;
                  }

                  *&buf[6] = v28;
                  *&buf[8] = *(v25 + 8);
                  *&buf[24] = *(v27 + 8);
                  v29 = objc_alloc(MEMORY[0x1E695DEF0]);
                  v30 = 40;
LABEL_34:
                  v31 = [v29 initWithBytes:buf length:{v30, v44}];
                  [v8 addObject:v31];
                  goto LABEL_35;
                }

                v31 = ne_log_obj();
                if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }

                *buf = 0;
                v33 = v31;
                v34 = "IPv6 traffic selector missing end address";
LABEL_55:
                v38 = 2;
              }

              _os_log_error_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_ERROR, v34, buf, v38);
              goto LABEL_35;
            }

            v18 = ne_log_obj();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "Traffic selector invalid", buf, 2u);
            }

LABEL_36:

            ++v15;
          }

          while (v13 != v15);
          v39 = [v10 countByEnumeratingWithState:&v46 objects:v51 count:16];
          v13 = v39;
        }

        while (v39);
      }

      if ([v8 count])
      {
        *buf = 0;
        buf[0] = [v8 count];
        v40 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:4];
        [(NEIKEv2Payload *)v45 setPayloadSubHeader:v40];

        [(NEIKEv2KeyExchangeHandler *)v45 setSharedSecret:v8];
        v3 = 1;
LABEL_63:

        goto LABEL_64;
      }

      v43 = ne_log_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_ERROR, "No valid traffic selectors for payload", buf, 2u);
      }
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Traffic Selector payload missing required fields", buf, 2u);
      }
    }

    v3 = 0;
    goto LABEL_63;
  }

  v3 = 1;
LABEL_64:
  v41 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  return [(NEIKEv2TrafficSelectorPayload *)self count]!= 0;
}

@end