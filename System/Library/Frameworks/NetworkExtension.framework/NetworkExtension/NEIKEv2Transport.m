@interface NEIKEv2Transport
+ (NEIKEv2Transport)createTransport:(void *)a3 remote:(void *)a4 local:(unsigned int)a5 localPort:(void *)a6 boundInterface:(void *)a7 queue:(void *)a8 socketGetBlock:(void *)a9 packetDelegate:;
+ (__CFString)stringForTransport:(uint64_t)a1;
- (NEIKEv2Transport)init;
- (NSString)description;
- (uint64_t)sendData:(void *)a3 sendCompletionHandler:;
- (uint64_t)setWildcardDelegate:(char)a3 preventsInvalidation:;
- (void)addClient:(void *)a3 delegate:;
- (void)callConnectedBlocks;
- (void)cancelClient:(int)a3 shouldInvalidate:;
- (void)cancelInvalidationTimer;
- (void)dealloc;
- (void)handleConnectionEventWithState:(void *)a3 error:;
- (void)invalidate;
- (void)port;
- (void)readOnConnection;
- (void)receivePacketData:(id)a3;
- (void)reportConnectionError:(void *)a1;
- (void)setRemoteSPI:(void *)a3 forClient:;
- (void)startInvalidationTimer;
- (void)waitForTransport:(uint64_t)a1;
@end

@implementation NEIKEv2Transport

- (void)receivePacketData:(id)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_114;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[NEIKEv2Transport receivePacketData:]";
    v11 = "%s called with null data";
    goto LABEL_10;
  }

  if (!self || !objc_getProperty(self, v4, 72, 1))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_114;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[NEIKEv2Transport receivePacketData:]";
    v11 = "%s called with null self.receiveQueue";
LABEL_10:
    _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, v11, &buf, 0xCu);
    goto LABEL_114;
  }

  Property = objc_getProperty(self, v6, 72, 1);
  dispatch_assert_queue_V2(Property);
  if (!self->_cancelled)
  {
    if (![objc_getProperty(self v8])
    {
      WeakRetained = objc_loadWeakRetained(&self->_wildcardDelegate);

      if (!WeakRetained)
      {
        v9 = ne_log_obj();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_114;
        }

        LOWORD(buf) = 0;
        v10 = "Transport has no clients, ignoring";
        goto LABEL_7;
      }
    }

    v13 = v5;
    objc_opt_self();
    v14 = [v13 length];
    v15 = v14;
    if (v14 <= 0x1B)
    {
      v26 = ne_log_obj();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_111;
      }

      *v90 = 134217984;
      *&v90[4] = v15;
      v68 = "Cannot parse packet, received data length %zu is too short";
    }

    else
    {
      if (v14 < 0x10000)
      {
        v78 = v5;
        v16 = [v13 bytes];
        v17 = v16;
        if (*(v16 + 17) == 32)
        {
          v79 = self;
          v18 = bswap32(*(v16 + 24));
          if (v15 == v18)
          {
            goto LABEL_17;
          }

          v26 = ne_log_obj();
          v73 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
          if (v15 >= v18)
          {
            if (v73)
            {
              *v90 = 134218240;
              *&v90[4] = v15;
              *&v90[12] = 1024;
              *&v90[14] = v18;
              _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, "Data is longer than claimed by header (%zu > %u), ignoring extra bytes", v90, 0x12u);
            }

            v74 = objc_alloc(MEMORY[0x1E695DEF0]);
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v87 = __46__NEIKEv2Packet_createPacketFromReceivedData___block_invoke;
            v88 = &unk_1E7F08698;
            v75 = v13;
            v89 = v75;
            v13 = [v74 initWithBytesNoCopy:v17 length:v18 deallocator:&buf];

LABEL_17:
            v19 = *(v17 + 18);
            if (v19 > 0x24)
            {
              switch(v19)
              {
                case '%':
                  v20 = off_1E7F04AA8;
                  break;
                case '+':
                  v20 = off_1E7F04AD0;
                  break;
                case ',':
                  v20 = off_1E7F049E0;
                  break;
                default:
LABEL_31:
                  v25 = ne_log_obj();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    v66 = *(v17 + 18);
                    *v90 = 67109120;
                    *&v90[4] = v66;
                    _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "Unknown exchange type %u", v90, 8u);
                  }

                  v26 = 0;
                  goto LABEL_34;
              }
            }

            else
            {
              if (v19 == 34)
              {
                v21 = [(NEIKEv2Packet *)[NEIKEv2IKESAInitPacket alloc] initInbound];
                if (v21)
                {
                  v23 = v21;
                  objc_setProperty_atomic(v21, v22, v13, 128);
                  v24 = v23;
LABEL_38:
                  v27 = 0;
                  selfa = v24;
                  *(v24 + 16) = v15;
LABEL_39:
                  v29 = [[NEIKEv2IKESPI alloc] initWithValue:*v17];
                  if ((v27 & 1) == 0)
                  {
                    objc_setProperty_atomic(selfa, v28, v29, 32);
                  }

                  v30 = [[NEIKEv2IKESPI alloc] initWithValue:*(v17 + 8)];
                  v32 = v30;
                  if (v27)
                  {

                    if (([(NEIKEv2Packet *)0 parsePacketData:v13 firstPayloadType:*(v17 + 16) ikeSA:0]& 1) == 0)
                    {
LABEL_110:
                      v5 = v78;
                      v26 = selfa;
                      goto LABEL_111;
                    }

                    if ([selfa encryptPayloads])
                    {
LABEL_45:
                      v34 = ne_log_obj();
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                      {
                        v35 = [(NEIKEv2Packet *)selfa copyShortDescription];
                        *v90 = 138412290;
                        *&v90[4] = v35;
                        v36 = "%@ Cannot parse packet, no encrypted payload found";
LABEL_116:
                        _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, v36, v90, 0xCu);

                        goto LABEL_109;
                      }

                      goto LABEL_109;
                    }

                    goto LABEL_108;
                  }

                  v26 = selfa;
                  objc_setProperty_atomic(selfa, v31, v30, 40);

                  *(selfa + 11) = (*(v17 + 19) & 8) != 0;
                  *(selfa + 10) = (*(v17 + 19) & 0x20) != 0;
                  *(selfa + 7) = bswap32(*(v17 + 20));
                  if (([(NEIKEv2Packet *)selfa parsePacketData:v13 firstPayloadType:*(v17 + 16) ikeSA:0]& 1) != 0)
                  {
                    if ([selfa encryptPayloads])
                    {
                      if (!objc_getProperty(selfa, v33, 48, 1))
                      {
                        goto LABEL_45;
                      }

                      goto LABEL_48;
                    }

                    if (*(selfa + 10))
                    {
LABEL_48:
                      [selfa filloutPayloads];
                      v37 = selfa;

                      v9 = v37;
                      v82 = [v9 exchangeType];
                      v39 = [objc_getProperty(v79 v38];
                      memset(v90, 0, sizeof(v90));
                      v91 = 0u;
                      v92 = 0u;
                      v40 = v39;
                      v41 = [v40 countByEnumeratingWithState:v90 objects:&buf count:16];
                      if (!v41)
                      {

                        v5 = v78;
LABEL_81:
                        v62 = v40;
                        v63 = objc_loadWeakRetained(&v79->_wildcardDelegate);
                        if (v63)
                        {
                          v64 = ne_log_large_obj();
                          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                          {
                            *v84 = 138412290;
                            v85 = v9;
                            _os_log_impl(&dword_1BA83C000, v64, OS_LOG_TYPE_INFO, "No matching clients, trying wildcard for %@", v84, 0xCu);
                          }

                          [v63 receivePacket:v9 transport:v79];
                        }

                        else
                        {
                          v65 = ne_log_obj();
                          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                          {
                            v67 = [(NEIKEv2Packet *)v9 copyShortDescription];
                            *v84 = 138412290;
                            v85 = v67;
                            _os_log_error_impl(&dword_1BA83C000, v65, OS_LOG_TYPE_ERROR, "No matching clients, dropping %@", v84, 0xCu);
                          }
                        }

                        v40 = v62;
LABEL_89:

                        goto LABEL_114;
                      }

                      v43 = v41;
                      v81 = 0;
                      v44 = **&v90[16];
                      obj = v40;
LABEL_50:
                      v45 = 0;
                      while (1)
                      {
                        if (**&v90[16] != v44)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v46 = *(*&v90[8] + 8 * v45);
                        if (v46)
                        {
                          v47 = objc_getProperty(*(*&v90[8] + 8 * v45), v42, 8, 1);
                        }

                        else
                        {
                          v47 = 0;
                        }

                        v49 = v47;
                        if (*(v26 + 11))
                        {
                          v50 = 40;
                        }

                        else
                        {
                          v50 = 32;
                        }

                        v51 = objc_getProperty(v9, v48, v50, 1);
                        v52 = [v49 isEqual:v51];

                        if (v52)
                        {

                          if (!v46)
                          {
                            goto LABEL_72;
                          }
                        }

                        else
                        {
                          if (v82 != 34)
                          {
                            goto LABEL_71;
                          }

                          if (v46)
                          {
                            v55 = objc_getProperty(v46, v53, 16, 1);
                          }

                          else
                          {
                            v55 = 0;
                          }

                          v57 = v55;
                          if (*(v26 + 11))
                          {
                            v58 = 32;
                          }

                          else
                          {
                            v58 = 40;
                          }

                          v59 = objc_getProperty(v9, v56, v58, 1);
                          v60 = [v57 isEqual:v59];

                          if (!v60)
                          {
                            v26 = selfa;
                            goto LABEL_72;
                          }

                          v26 = selfa;
                          if (!v46)
                          {
                            goto LABEL_72;
                          }
                        }

                        v54 = objc_loadWeakRetained(v46 + 3);
                        if (v54)
                        {
                          v51 = v54;
                          [v54 receivePacket:v9];
                          v81 = 1;
LABEL_71:
                        }

LABEL_72:
                        if (v43 == ++v45)
                        {
                          v40 = obj;
                          v61 = [obj countByEnumeratingWithState:v90 objects:&buf count:16];
                          v43 = v61;
                          if (!v61)
                          {

                            v5 = v78;
                            if (v81)
                            {
                              goto LABEL_89;
                            }

                            goto LABEL_81;
                          }

                          goto LABEL_50;
                        }
                      }
                    }

LABEL_108:
                    v34 = ne_log_obj();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                    {
                      v35 = [(NEIKEv2Packet *)selfa copyShortDescription];
                      *v90 = 138412290;
                      *&v90[4] = v35;
                      v36 = "%@ Cannot parse packet, no acceptable payloads found";
                      goto LABEL_116;
                    }

LABEL_109:

                    goto LABEL_110;
                  }

                  goto LABEL_34;
                }

LABEL_117:
                selfa = 0;
                v27 = 1;
                goto LABEL_39;
              }

              if (v19 != 35)
              {
                if (v19 == 36)
                {
                  v20 = off_1E7F04950;
                  goto LABEL_37;
                }

                goto LABEL_31;
              }

              v20 = off_1E7F04A08;
            }

LABEL_37:
            v24 = [(NEIKEv2Packet *)objc_alloc(*v20) initInbound];
            if (v24)
            {
              goto LABEL_38;
            }

            goto LABEL_117;
          }

          if (v73)
          {
            *v90 = 67109376;
            *&v90[4] = v18;
            *&v90[8] = 2048;
            *&v90[10] = v15;
            v70 = "Cannot parse packet, header claims to be longer than data (%u > %zu)";
            v71 = v26;
            v72 = 18;
            goto LABEL_102;
          }
        }

        else
        {
          v26 = ne_log_obj();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v69 = *(v17 + 17);
            *v90 = 67109120;
            *&v90[4] = v69;
            v70 = "Cannot parse packet, unknown version (%x)";
            v71 = v26;
            v72 = 8;
LABEL_102:
            _os_log_error_impl(&dword_1BA83C000, v71, OS_LOG_TYPE_ERROR, v70, v90, v72);
          }
        }

LABEL_34:
        v5 = v78;
LABEL_111:

        v76 = ne_log_obj();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf) = 0;
          _os_log_fault_impl(&dword_1BA83C000, v76, OS_LOG_TYPE_FAULT, "[NEIKEv2Packet packetFromReceivedData] failed", &buf, 2u);
        }

        v9 = 0;
        goto LABEL_114;
      }

      v26 = ne_log_obj();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_111;
      }

      *v90 = 134217984;
      *&v90[4] = v15;
      v68 = "Refusing to parse packet, length %zu is unreasonable";
    }

    _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, v68, v90, 0xCu);
    goto LABEL_111;
  }

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    v10 = "Transport cancelled, ignoring";
LABEL_7:
    _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, v10, &buf, 2u);
  }

LABEL_114:

  v77 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    v4 = [NEIKEv2Transport stringForTransport:?];
    WeakRetained = objc_loadWeakRetained(&self->_packetDelegate);
    if (WeakRetained)
    {
      v7 = " PacketDelegate";
    }

    else
    {
      v7 = "";
    }

    v8 = objc_getProperty(self, v5, 16, 1);
    v10 = objc_getProperty(self, v9, 24, 1);
    if (self->_cancelled)
    {
      v11 = " (Closed)";
    }

    else
    {
      v11 = "";
    }
  }

  else
  {
    objc_opt_self();
    v8 = 0;
    WeakRetained = 0;
    v10 = 0;
    v7 = "";
    v4 = @"UDP";
    v11 = "";
  }

  v12 = [v3 initWithFormat:@"<NEIKEv2Transport> %@%s %@ -> %@%s", v4, v7, v8, v10, v11];

  return v12;
}

+ (__CFString)stringForTransport:(uint64_t)a1
{
  objc_opt_self();
  if (a2 >= 4)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown (%u)", a2];
  }

  else
  {
    v3 = off_1E7F08DD0[a2];
  }

  return v3;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = self;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "deallocating %@", buf, 0xCu);
  }

  if (self)
  {
    self->_cancelled = 1;
    objc_storeWeak(&self->_packetDelegate, 0);
    if (objc_getProperty(self, v4, 56, 1))
    {
      Property = objc_getProperty(self, v5, 56, 1);
      nw_connection_cancel(Property);
      objc_setProperty_atomic(self, v7, 0, 56);
    }
  }

  v9.receiver = self;
  v9.super_class = NEIKEv2Transport;
  [(NEIKEv2Transport *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (NEIKEv2Transport)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2Transport;
  v2 = [(NEIKEv2Transport *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[super init] failed", v7, 2u);
    }
  }

  return v3;
}

- (void)startInvalidationTimer
{
  v17 = *MEMORY[0x1E69E9840];
  [(NEIKEv2Transport *)a1 cancelInvalidationTimer];
  Property = objc_getProperty(a1, v3, 72, 1);
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, Property);
  v6 = dispatch_time(0x8000000000000000, 5000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, a1);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __42__NEIKEv2Transport_startInvalidationTimer__block_invoke;
  handler[3] = &unk_1E7F0A020;
  objc_copyWeak(&v13, &location);
  v7 = v5;
  v12 = v7;
  dispatch_source_set_event_handler(v7, handler);
  objc_setProperty_atomic(a1, v8, v7, 96);
  dispatch_activate(v7);
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = a1;
    _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_INFO, "%@ started invalidation timer", buf, 0xCu);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)cancelInvalidationTimer
{
  v10 = *MEMORY[0x1E69E9840];
  if (objc_getProperty(a1, a2, 96, 1))
  {
    Property = objc_getProperty(a1, v3, 96, 1);
    dispatch_source_cancel(Property);
    objc_setProperty_atomic(a1, v5, 0, 96);
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = a1;
      _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "%@ cancelled invalidation timer", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __42__NEIKEv2Transport_startInvalidationTimer__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && (WeakRetained[9] & 1) == 0 && ![objc_getProperty(WeakRetained v3] && objc_getProperty(v4, v5, 96, 1) == *(a1 + 32))
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "%@ has no clients after 5s, invalidating", &v9, 0xCu);
    }

    [(NEIKEv2Transport *)v4 invalidate];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  if (objc_getProperty(a1, a2, 56, 1))
  {
    Property = objc_getProperty(a1, v3, 56, 1);
    nw_connection_cancel(Property);
    objc_setProperty_atomic(a1, v5, 0, 56);
  }

  *(a1 + 9) = 1;
  objc_storeWeak((a1 + 48), 0);
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  [WeakRetained invalidatingTransport:a1];

  objc_storeWeak((a1 + 88), 0);
  [(NEIKEv2Transport *)a1 cancelInvalidationTimer];
  os_unfair_lock_lock(&g_transport_lock);
  [g_transports removeObject:a1];

  os_unfair_lock_unlock(&g_transport_lock);
}

- (void)addClient:(void *)a3 delegate:
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v5)
    {
      v7 = ne_log_obj();
      p_super = v7;
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412802;
          v20 = v6;
          v21 = 2112;
          v22 = v5;
          v23 = 2112;
          v24 = a1;
          _os_log_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_DEFAULT, "NEIKEv2Transport: Adding client %@ with SPI %@ on %@", &v19, 0x20u);
        }

        v9 = objc_alloc_init(NEIKEv2TransportClient);
        if (v9)
        {
          p_super = &v9->super;
          objc_setProperty_atomic(v9, v10, v5, 8);
          objc_storeWeak(&p_super[3].isa, v6);
          if (!objc_getProperty(a1, v11, 80, 1))
          {
            v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            objc_setProperty_atomic(a1, v14, v13, 80);
          }

          [objc_getProperty(a1 v12];
          [(NEIKEv2Transport *)a1 cancelInvalidationTimer];
        }

        else
        {
          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            LOWORD(v19) = 0;
            _os_log_fault_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_FAULT, "[[NEIKEv2TransportClient alloc] init] failed", &v19, 2u);
          }

          p_super = 0;
        }

        goto LABEL_13;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v19 = 136315138;
        v20 = "[NEIKEv2Transport addClient:delegate:]";
        v18 = "%s called with null delegate";
        goto LABEL_19;
      }
    }

    else
    {
      p_super = ne_log_obj();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
      {
        v19 = 136315138;
        v20 = "[NEIKEv2Transport addClient:delegate:]";
        v18 = "%s called with null clientSPI";
LABEL_19:
        _os_log_fault_impl(&dword_1BA83C000, p_super, OS_LOG_TYPE_FAULT, v18, &v19, 0xCu);
      }
    }

LABEL_13:
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (uint64_t)setWildcardDelegate:(char)a3 preventsInvalidation:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v9 = v5;
    objc_storeWeak((a1 + 88), v5);
    *(a1 + 10) = a3;
    v5 = [objc_getProperty(a1 v7];
    v6 = v9;
    if (!v5)
    {
      if (v9)
      {
        if (a3)
        {
          [(NEIKEv2Transport *)a1 cancelInvalidationTimer];
        }

        else
        {
          [(NEIKEv2Transport *)a1 startInvalidationTimer];
        }
      }

      else
      {
        [(NEIKEv2Transport *)a1 invalidate];
      }

      v6 = v9;
    }
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setRemoteSPI:(void *)a3 forClient:
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (a1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = objc_getProperty(a1, v6, 80, 1);
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (!v9)
    {
      goto LABEL_19;
    }

    v11 = v9;
    v12 = *v19;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        if (v14)
        {
          if (![objc_getProperty(*(*(&v18 + 1) + 8 * v13) v10] || objc_getProperty(v14, v10, 16, 1))
          {
            goto LABEL_14;
          }

          objc_setProperty_atomic(v14, v10, v5, 16);
        }

        else if (([0 isEqual:v7] & 1) == 0)
        {
          goto LABEL_14;
        }

        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v23 = v14;
          v24 = 2112;
          v25 = a1;
          _os_log_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEFAULT, "Set remote SPI for client %@ on %@", buf, 0x16u);
        }

LABEL_14:
        ++v13;
      }

      while (v11 != v13);
      v16 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
      v11 = v16;
      if (!v16)
      {
LABEL_19:

        break;
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)cancelClient:(int)a3 shouldInvalidate:
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (a1)
  {
    if (a3)
    {
      [(NEIKEv2Transport *)a1 invalidate];
    }

    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "";
      *buf = 136315650;
      if (a3)
      {
        v8 = " and invalidating";
      }

      v34 = v8;
      v35 = 2112;
      v36 = v6;
      v37 = 2112;
      v38 = a1;
      _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling%s client %@ for %@", buf, 0x20u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = objc_getProperty(a1, v9, 80, 1);
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v29;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v28 + 1) + 8 * v15);
          if (v16)
          {
            Property = objc_getProperty(*(*(&v28 + 1) + 8 * v15), v12, 8, 1);
          }

          else
          {
            Property = 0;
          }

          if ([Property isEqual:{v6, v28}])
          {
            v20 = ne_log_obj();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v34 = v16;
              v35 = 2112;
              v36 = a1;
              _os_log_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_INFO, "Removing client %@ for %@", buf, 0x16u);
            }

            v21 = v16;
            if (v16)
            {
              [objc_getProperty(a1 v19];
              goto LABEL_26;
            }

            goto LABEL_25;
          }

          ++v15;
        }

        while (v13 != v15);
        v18 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        v13 = v18;
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:
    v21 = 0;
LABEL_26:
    if ((*(a1 + 9) & 1) == 0 && ![objc_getProperty(a1 v19])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 88));

      if (WeakRetained)
      {
        if ((*(a1 + 10) & 1) == 0)
        {
          v24 = ne_log_obj();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v34 = a1;
            _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEFAULT, "%@ out of clients, starting invalidation timer", buf, 0xCu);
          }

          [(NEIKEv2Transport *)a1 startInvalidationTimer];
        }
      }

      else
      {
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = a1;
          _os_log_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_DEFAULT, "%@ out of clients, invalidating", buf, 0xCu);
        }

        [(NEIKEv2Transport *)a1 invalidate];
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)port
{
  if (result)
  {
    v2 = result;
    result = [objc_getProperty(result a2];
    if (result)
    {
      return (bswap32(*([objc_getProperty(v2 v3] + 2)) >> 16);
    }
  }

  return result;
}

- (void)readOnConnection
{
  if (self)
  {
    if (*(self + 9))
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v4 = "Transport cancelled, ignoring";
LABEL_16:
        _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, v4, buf, 2u);
      }
    }

    else if (objc_getProperty(self, a2, 56, 1))
    {
      if ([objc_getProperty(self v5] || (WeakRetained = objc_loadWeakRetained(self + 11), WeakRetained, WeakRetained))
      {
        os_unfair_lock_lock(&g_transport_lock);
        v7 = [g_transports containsObject:self];
        os_unfair_lock_unlock(&g_transport_lock);
        if (v7)
        {
          Property = objc_getProperty(self, v8, 56, 1);
          completion[0] = MEMORY[0x1E69E9820];
          completion[1] = 3221225472;
          completion[2] = __36__NEIKEv2Transport_readOnConnection__block_invoke;
          completion[3] = &unk_1E7F08D60;
          completion[4] = self;
          nw_connection_receive_message(Property, completion);
          return;
        }

        v3 = ne_log_obj();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_17;
        }

        *buf = 0;
        v4 = "Transport not found in list, ignoring";
        goto LABEL_16;
      }

      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v4 = "Transport has no clients, ignoring";
        goto LABEL_16;
      }
    }

    else
    {
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v4 = "Transport connection invalid, ignoring";
        goto LABEL_16;
      }
    }

LABEL_17:
  }
}

void __36__NEIKEv2Transport_readOnConnection__block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (!v11)
  {
    if (v9 && a4)
    {
      v13 = v9;
      if ([v13 length] == 1 && (v17 = 0, objc_msgSend(v13, "getBytes:length:", &v17, 1), v17 == 255))
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, "Ignoring keepalive packet", buf, 2u);
        }
      }

      else
      {
        [*(a1 + 32) receivePacketData:v13];
      }
    }

    goto LABEL_12;
  }

  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    *buf = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v15;
    _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Connection receive error %@ for %@", buf, 0x16u);
  }

  [(NEIKEv2Transport *)*(a1 + 32) reportConnectionError:v11];
  if (nw_error_get_error_code(v11) != 89)
  {
LABEL_12:
    [(NEIKEv2Transport *)*(a1 + 32) readOnConnection];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)reportConnectionError:(void *)a1
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    error_code = nw_error_get_error_code(error);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [objc_getProperty(a1 v4];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          if (v10)
          {
            WeakRetained = objc_loadWeakRetained((v10 + 24));
            if (WeakRetained)
            {
              v12 = WeakRetained;
              [WeakRetained reportError:{error_code, v14}];
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)callConnectedBlocks
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  if (v1)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v10 + 1) + 8 * v7) + 16))(*(*(&v10 + 1) + 8 * v7));
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [*(a1 + 64) removeAllObjects];
    v8 = *(a1 + 64);
    *(a1 + 64) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)handleConnectionEventWithState:(void *)a3 error:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a1 && objc_getProperty(a1, v5, 56, 1))
  {
    if (a2 == 4)
    {
      a1[8] = 0;
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412546;
        v21 = v6;
        v22 = 2112;
        v23 = a1;
        _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "Connection failed with error %@ for %@", &v20, 0x16u);
      }

      [(NEIKEv2Transport *)a1 reportConnectionError:v6];
      [(NEIKEv2Transport *)a1 callConnectedBlocks];
    }

    else if (a2 == 3)
    {
      a1[8] = 1;
      objc_getProperty(a1, v7, 56, 1);
      v8 = nw_connection_copy_connected_path();
      v9 = v8;
      if (v8)
      {
        v10 = nw_path_copy_effective_local_endpoint(v8);
        if (v10)
        {
          v11 = [MEMORY[0x1E6977E20] endpointWithCEndpoint:v10];
          objc_setProperty_atomic(a1, v12, v11, 16);
        }

        v13 = nw_path_copy_interface();
        if (v13)
        {
          v14 = [objc_alloc(MEMORY[0x1E6977E30]) initWithInterfaceIndex:nw_interface_get_index(v13)];
          objc_setProperty_atomic(a1, v15, v14, 32);
        }
      }

      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = a1;
        _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEFAULT, "Connection ready for %@", &v20, 0xCu);
      }

      [(NEIKEv2Transport *)a1 callConnectedBlocks];
      [(NEIKEv2Transport *)a1 readOnConnection];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (NEIKEv2Transport)createTransport:(void *)a3 remote:(void *)a4 local:(unsigned int)a5 localPort:(void *)a6 boundInterface:(void *)a7 queue:(void *)a8 socketGetBlock:(void *)a9 packetDelegate:
{
  v197 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v173 = a8;
  v17 = a9;
  objc_opt_self();
  v18 = ne_log_obj();
  v19 = v18;
  if (!(v13 | v17))
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *v190 = 136315138;
      *v191 = "+[NEIKEv2Transport createTransport:remote:local:localPort:boundInterface:queue:socketGetBlock:packetDelegate:]";
      _os_log_fault_impl(&dword_1BA83C000, &v19->super, OS_LOG_TYPE_FAULT, "%s called with null remote", v190, 0xCu);
    }

    goto LABEL_165;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v85 = [NEIKEv2Transport stringForTransport:a2];
    *v190 = 138413314;
    *v191 = v85;
    *&v191[8] = 2112;
    *&v191[10] = v14;
    *&v191[18] = 1024;
    *&v191[20] = a5;
    *&v191[24] = 2112;
    *&v191[26] = v13;
    v192 = 2112;
    v193 = v15;
    _os_log_debug_impl(&dword_1BA83C000, &v19->super, OS_LOG_TYPE_DEBUG, "Creating %@ transport %@(%u) to %@ on %@", v190, 0x30u);
  }

  v20 = v13;
  v21 = v14;
  v181 = v15;
  v22 = v17;
  objc_opt_self();
  newValue = v20;
  if (!a5 && !v17)
  {
    v23 = 0;
    goto LABEL_92;
  }

  v182 = v22;
  v176 = v21;
  v165 = v16;
  os_unfair_lock_lock(&g_transport_lock);
  memset(v186, 0, sizeof(v186));
  v24 = g_transports;
  v25 = [v24 countByEnumeratingWithState:v186 objects:v190 count:16];
  if (!v25)
  {
    v23 = 0;
    goto LABEL_91;
  }

  v27 = v25;
  v162 = v15;
  v28 = **&v186[1];
  *&v26 = 136315138;
  v158 = v26;
  v29 = a2;
  v167 = v14;
LABEL_9:
  v30 = 0;
  while (1)
  {
    if (**&v186[1] != v28)
    {
      objc_enumerationMutation(v24);
    }

    v31 = *(*(&v186[0] + 1) + 8 * v30);
    if (!v31)
    {
      if (v17)
      {
        v33 = 0;
        v29 = a2;
LABEL_15:
        if (v33 == v182)
        {
          v23 = v31;

          goto LABEL_89;
        }

        goto LABEL_73;
      }

      v35 = 0;
      v29 = a2;
      goto LABEL_20;
    }

    WeakRetained = objc_loadWeakRetained((v31 + 48));
    v33 = WeakRetained;
    v34 = *(v31 + 9);
    if (!v17)
    {
      break;
    }

    if ((v34 ^ 1))
    {
      goto LABEL_15;
    }

LABEL_73:

    if (++v30 == v27)
    {
      v66 = [v24 countByEnumeratingWithState:v186 objects:v190 count:16];
      v27 = v66;
      if (!v66)
      {
        v23 = 0;
        goto LABEL_89;
      }

      goto LABEL_9;
    }
  }

  if ((v34 & 1) != 0 || WeakRetained)
  {
    goto LABEL_73;
  }

  v35 = *(v31 + 40);
LABEL_20:
  if (v35 != v29)
  {
    v33 = 0;
    goto LABEL_73;
  }

  v37 = [v181 length];
  if (v37)
  {
    v38 = v31 ? objc_getProperty(v31, v36, 32, 1) : 0;
    v171 = v38;
    v169 = [v171 interfaceName];
    if (![v181 isEqualToString:?])
    {
      goto LABEL_43;
    }
  }

  if (v13)
  {
    if (v31)
    {
      Property = objc_getProperty(v31, v36, 24, 1);
    }

    else
    {
      Property = 0;
    }

    v40 = Property;
    v164 = v40;
    if ([newValue isEqual:v40])
    {
      v42 = [(NEIKEv2Transport *)v31 port];
      v44 = v42 == a5;
      if (!v176 || v42 != a5)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v37)
    {
LABEL_43:
      v47 = v169;
      v48 = v171;
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  v45 = [(NEIKEv2Transport *)v31 port];
  v44 = v45 == a5;
  if (v176 && v45 == a5)
  {
LABEL_35:
    if (v31)
    {
      v46 = objc_getProperty(v31, v43, 16, 1);
    }

    else
    {
      v46 = 0;
    }

    v44 = [v176 isEqual:{v46, v158}];
    if (v13)
    {
LABEL_38:
    }
  }

  if (v37)
  {

    if ((v44 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  else if (!v44)
  {
    goto LABEL_72;
  }

  if (v31)
  {
    v49 = objc_getProperty(v31, v43, 16, 1);
    if (v49)
    {
      v160 = v49;
      v161 = v13;
      v51 = objc_getProperty(v31, v50, 16, 1);
      v53 = [objc_getProperty(v31 v52];
      v54 = v51;
      v47 = v53;
      objc_opt_self();
      v55 = ne_log_obj();
      v56 = v55;
      if (v54)
      {
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v54;
          v195 = 2112;
          v196 = v47;
          _os_log_impl(&dword_1BA83C000, v56, OS_LOG_TYPE_INFO, "check address: address %@ interface %@", buf, 0x16u);
        }

        v14 = v167;
        v159 = [v54 address];
        if (v159)
        {
          *buf = 0;
          if (!getifaddrs(buf))
          {
            v57 = *buf;
            if (*buf)
            {
              while (1)
              {
                if (!v47 || (v58 = v57[1]) != 0 && !strncmp(v58, [v47 UTF8String], 0x10uLL))
                {
                  v59 = v57[3];
                  if (v59)
                  {
                    v60 = *(v59 + 1);
                    if ([v54 addressFamily] == v60)
                    {
                      if ([v54 addressFamily] == 2)
                      {
                        if (*(v57[3] + 4) == *(v159 + 4))
                        {
                          goto LABEL_172;
                        }
                      }

                      else if ([v54 addressFamily] == 30)
                      {
                        v61 = v57[3];
                        v63 = *(v61 + 8);
                        v62 = *(v61 + 16);
                        if (v63 == *(v159 + 8) && v62 == *(v159 + 16))
                        {
LABEL_172:
                          free(*buf);

                          v13 = v161;
                          goto LABEL_173;
                        }
                      }
                    }
                  }
                }

                v57 = *v57;
                if (!v57)
                {
                  v65 = *buf;
                  v14 = v167;
                  goto LABEL_69;
                }
              }
            }

            v65 = 0;
LABEL_69:
            free(v65);
          }

LABEL_70:
          v13 = v161;

          v48 = v160;
LABEL_71:

LABEL_72:
          v33 = 0;
          v29 = a2;
          goto LABEL_73;
        }

        v56 = ne_log_obj();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
        {
          *buf = v158;
          *&buf[4] = "+[NEIKEv2Transport checkAddress:interface:]";
          _os_log_fault_impl(&dword_1BA83C000, v56, OS_LOG_TYPE_FAULT, "%s called with null sa_compare", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          *buf = v158;
          *&buf[4] = "+[NEIKEv2Transport checkAddress:interface:]";
          _os_log_fault_impl(&dword_1BA83C000, v56, OS_LOG_TYPE_FAULT, "%s called with null endpoint", buf, 0xCu);
        }

        v14 = v167;
      }

      goto LABEL_70;
    }
  }

LABEL_173:
  v23 = v31;
  v14 = v167;
LABEL_89:
  v15 = v162;
  v16 = v165;
LABEL_91:

  os_unfair_lock_unlock(&g_transport_lock);
  v20 = newValue;
  v21 = v176;
  v22 = v182;
LABEL_92:

  if (v23)
  {
    v67 = ne_log_obj();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      *v190 = 138412290;
      *v191 = v23;
      _os_log_debug_impl(&dword_1BA83C000, v67, OS_LOG_TYPE_DEBUG, "Found existing transport %@", v190, 0xCu);
    }

    v68 = v23;
    goto LABEL_159;
  }

  v168 = v14;
  v69 = v22;
  v177 = v21;
  v70 = objc_alloc_init(NEIKEv2Transport);
  v19 = v70;
  if (!v70)
  {
LABEL_123:
    v103 = 0;
    v14 = v168;
    goto LABEL_160;
  }

  v72 = a2;
  v70->_transportType = a2;
  objc_setProperty_atomic(v70, v71, newValue, 24);
  if (v21)
  {
    objc_setProperty_atomic(v19, v73, v21, 16);
    v75 = v181;
    if (v181)
    {
      goto LABEL_99;
    }

    goto LABEL_100;
  }

  v75 = v181;
  if ([newValue addressFamily] == 2)
  {
    *&v191[8] = 0;
    *v191 = 0;
    v78 = 528;
    goto LABEL_109;
  }

  if ([newValue addressFamily] != 30)
  {
    v102 = ne_log_obj();
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      v155 = [newValue addressFamily];
      *v190 = 67109120;
      *v191 = v155;
      _os_log_error_impl(&dword_1BA83C000, v102, OS_LOG_TYPE_ERROR, "Invalid address family %u", v190, 8u);
    }

    goto LABEL_123;
  }

  memset(v191, 0, 24);
  v78 = 7708;
LABEL_109:
  *v190 = v78;
  *&v190[2] = __rev16(a5);
  v86 = [MEMORY[0x1E6977E08] endpointWithAddress:{v190, v158}];
  objc_setProperty_atomic(v19, v87, v86, 16);

  v72 = a2;
  if (v181)
  {
LABEL_99:
    v76 = [objc_alloc(MEMORY[0x1E6977E30]) initWithInterfaceName:v75];
    objc_setProperty_atomic(v19, v77, v76, 32);

    v72 = a2;
  }

LABEL_100:
  objc_setProperty_atomic(v19, v74, v16, 72);
  if (!v17)
  {
    if (v72 > 1)
    {
      v88 = v16;
      v89 = *MEMORY[0x1E6977EC0];
      if (v72 == 3)
      {
        v90 = *MEMORY[0x1E6977EB8];
      }

      else
      {
        v90 = *MEMORY[0x1E6977EC0];
      }

      secure_tcp = nw_parameters_create_secure_tcp(v90, *MEMORY[0x1E6977EB8]);
      v92 = nw_parameters_copy_default_protocol_stack(secure_tcp);
      v93 = NEIKEv2TransportCopyTCPFramerDefinition();
      options = nw_framer_create_options(v93);
      nw_protocol_stack_prepend_application_protocol(v92, options);

      v180 = v92;
      v95 = nw_protocol_stack_copy_internet_protocol(v92);
      v96 = v95;
      v14 = v168;
      if (v95)
      {
        MEMORY[0x1BFAFB1C0](v95, 2);
      }

      v183 = v96;
      nw_parameters_set_indefinite();
      if (v75)
      {
        [v75 UTF8String];
        v97 = nw_interface_create_with_name();
        nw_parameters_require_interface(secure_tcp, v97);
      }

      v98 = [newValue copyCEndpoint];
      v99 = nw_connection_create(v98, secure_tcp);
      objc_setProperty_atomic(v19, v100, v99, 56);

      if (objc_getProperty(v19, v101, 56, 1))
      {
        v16 = v88;
        goto LABEL_154;
      }

      v125 = ne_log_obj();
      v16 = v88;
      if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
      {
        *v190 = 0;
        _os_log_fault_impl(&dword_1BA83C000, v125, OS_LOG_TYPE_FAULT, "nw_connection_create failed", v190, 2u);
      }
    }

    else
    {
      newValuea = newValue;
      v180 = v177;
      v79 = v173;
      IKESocket = -1;
      v82 = [objc_getProperty(v19 v80];
      v183 = v79;
      v172 = v82;
      if (v79)
      {
        v170 = [objc_getProperty(v19 v81];
        v84 = [objc_getProperty(v19 v83];
        (v79[2])(v79, v170, v84, [v82 UTF8String], &IKESocket);
      }

      else
      {
        [objc_getProperty(v19 v81];
        [objc_getProperty(v19 v104];
        [v82 UTF8String];
        getpid();
        IKESocket = NEHelperGetIKESocket();
      }

      secure_tcp = newValuea;
      v105 = [newValuea addressFamily];
      v107 = IKESocket;
      v14 = v168;
      if (!v177 && v105 == 2 && IKESocket < 0)
      {
        v188 = [objc_getProperty(v19 v106];
        *buf = 0;
        v108 = nw_nat64_copy_prefixes();
        if (v108 >= 1 && *buf)
        {
          v109 = v108;
          v166 = v16;
          v110 = ne_log_obj();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
          {
            if (v109 == 1)
            {
              v156 = "";
            }

            else
            {
              v156 = "es";
            }

            v157 = objc_getProperty(v19, v111, 32, 1);
            *v190 = 67109634;
            *v191 = v109;
            *&v191[4] = 2080;
            *&v191[6] = v156;
            *&v191[14] = 2112;
            *&v191[16] = v157;
            _os_log_debug_impl(&dword_1BA83C000, v110, OS_LOG_TYPE_DEBUG, "IKEv2 found %u NAT64 prefix%s on interface %@", v190, 0x1Cu);
          }

          memset(v191, 0, 24);
          *v190 = 7708;
          v113 = 0;
          *&v190[2] = *([objc_getProperty(v19 v112] + 2);
          memset(v186 + 4, 0, 24);
          LOWORD(v186[0]) = 7708;
          WORD1(v186[0]) = __rev16(a5);
          while (1)
          {
            [objc_getProperty(v19 v114];
            if (nw_nat64_synthesize_v6())
            {
              v115 = [MEMORY[0x1E6977E08] endpointWithAddress:v190];
              objc_setProperty_atomic(v19, v116, v115, 24);

              v117 = [MEMORY[0x1E6977E08] endpointWithAddress:v186];
              objc_setProperty_atomic(v19, v118, v117, 16);

              v120 = [objc_getProperty(v19 v119];
              [objc_getProperty(v19 v121];
              [objc_getProperty(v19 v122];
              [v120 UTF8String];
              if (v183)
              {
                v183[2]();
                v123 = IKESocket;
              }

              else
              {
                getpid();
                v123 = NEHelperGetIKESocket();
                IKESocket = v123;
              }

              v75 = v181;
              if ((v123 & 0x80000000) == 0)
              {
LABEL_145:
                free(*buf);
                v16 = v166;
                v14 = v168;
                secure_tcp = newValuea;
                break;
              }
            }

            else
            {
              v124 = ne_log_obj();
              if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
              {
                *v187 = 0;
                _os_log_error_impl(&dword_1BA83C000, v124, OS_LOG_TYPE_ERROR, "nw_nat64_synthesize_v6 failed", v187, 2u);
              }
            }

            if (++v113 >= v109)
            {
              goto LABEL_145;
            }
          }
        }

        v107 = IKESocket;
      }

      if ((v107 & 0x80000000) == 0)
      {
        v163 = v15;
        secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x1E6977EC0], *MEMORY[0x1E6977EB8]);
        v127 = nw_parameters_copy_default_protocol_stack(secure_udp);
        if (v19->_transportType == 1)
        {
          v128 = NEIKEv2TransportCopyNATTFramerDefinition();
          v129 = secure_tcp;
          v130 = nw_framer_create_options(v128);
          nw_protocol_stack_prepend_application_protocol(v127, v130);

          secure_tcp = v129;
        }

        nw_parameters_set_indefinite();
        if (objc_getProperty(v19, v131, 32, 1))
        {
          v133 = [objc_getProperty(v19 v132];
          [v133 UTF8String];
          v134 = secure_tcp;
          v135 = nw_interface_create_with_name();
          nw_parameters_require_interface(secure_udp, v135);

          secure_tcp = v134;
        }

        v136 = nw_connection_create_with_connected_socket_and_parameters();
        objc_setProperty_atomic(v19, v137, v136, 56);

        if (!objc_getProperty(v19, v138, 56, 1))
        {
          v154 = ne_log_obj();
          if (os_log_type_enabled(v154, OS_LOG_TYPE_FAULT))
          {
            *v190 = 0;
            _os_log_fault_impl(&dword_1BA83C000, v154, OS_LOG_TYPE_FAULT, "nw_connection_create_with_connected_socket failed", v190, 2u);
          }

          v103 = 0;
          v14 = v168;
          v15 = v163;
          goto LABEL_160;
        }

        v14 = v168;
        v15 = v163;
LABEL_154:

        v140 = objc_getProperty(v19, v139, 56, 1);
        nw_connection_set_queue(v140, v16);
        v142 = objc_getProperty(v19, v141, 56, 1);
        v184[0] = MEMORY[0x1E69E9820];
        v184[1] = 3221225472;
        v184[2] = __110__NEIKEv2Transport_createTransport_remote_local_localPort_boundInterface_queue_socketGetBlock_packetDelegate___block_invoke;
        v184[3] = &unk_1E7F08D88;
        v143 = v19;
        v185 = v143;
        MEMORY[0x1BFAFAEA0](v142, v184);
        v145 = objc_getProperty(v143, v144, 56, 1);
        nw_connection_start(v145);

        goto LABEL_155;
      }

      v152 = ne_log_obj();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
      {
        *v190 = 0;
        _os_log_error_impl(&dword_1BA83C000, v152, OS_LOG_TYPE_ERROR, "Failed to get IKE socket from NEHelper", v190, 2u);
      }
    }

LABEL_165:
    v103 = 0;
    goto LABEL_160;
  }

  [v69 setPacketReceiver:v19];
  objc_storeWeak(&v19->_packetDelegate, v69);
  v19->_connected = 1;
  v14 = v168;
LABEL_155:
  v146 = ne_log_obj();
  if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
  {
    v153 = "";
    *v190 = 138412802;
    *v191 = v19;
    if (!v177)
    {
      v153 = "out";
    }

    *&v191[8] = 2112;
    *&v191[10] = v75;
    *&v191[18] = 2080;
    *&v191[20] = v153;
    _os_log_debug_impl(&dword_1BA83C000, v146, OS_LOG_TYPE_DEBUG, "NEIKEv2Transport: Created %@ on interface %@ with%s local address", v190, 0x20u);
  }

  os_unfair_lock_lock(&g_transport_lock);
  v147 = g_transports;
  if (!g_transports)
  {
    v148 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v149 = g_transports;
    g_transports = v148;

    v147 = g_transports;
  }

  [v147 addObject:{v19, v158}];
  os_unfair_lock_unlock(&g_transport_lock);
  v68 = v19;
LABEL_159:
  v19 = v68;
  v103 = v68;
LABEL_160:

  v150 = *MEMORY[0x1E69E9840];
  return v103;
}

- (void)waitForTransport:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    aBlock = v3;
    if (*(a1 + 8))
    {
      v3[2](v3);
    }

    else
    {
      v4 = *(a1 + 64);
      if (!v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v6 = *(a1 + 64);
        *(a1 + 64) = v5;

        v4 = *(a1 + 64);
      }

      v7 = v4;
      v8 = _Block_copy(aBlock);
      [v7 addObject:v8];
    }

    v3 = aBlock;
  }
}

- (uint64_t)sendData:(void *)a3 sendCompletionHandler:
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_20;
  }

  if (![v5 length])
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v35 = "[NEIKEv2Transport sendData:sendCompletionHandler:]";
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "%s called with null data.length", buf, 0xCu);
    }

    goto LABEL_19;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);

  if (!WeakRetained)
  {
    if (objc_getProperty(a1, v8, 56, 1))
    {
      v12 = 1;
      v16 = objc_getProperty(a1, v15, 56, 1);
      v17 = [v5 _createDispatchData];
      v18 = *MEMORY[0x1E6977E88];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __51__NEIKEv2Transport_sendData_sendCompletionHandler___block_invoke_4;
      v25[3] = &unk_1E7F08DB0;
      v25[4] = a1;
      v26 = v6;
      nw_connection_send(v16, v17, v18, 1, v25);

      v10 = v26;
      goto LABEL_14;
    }

    if (v6)
    {
      Property = objc_getProperty(a1, v15, 72, 1);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __51__NEIKEv2Transport_sendData_sendCompletionHandler___block_invoke_3;
      v27[3] = &unk_1E7F0B600;
      v28 = v6;
      dispatch_async(Property, v27);
      v12 = 0;
      v10 = v28;
      goto LABEL_14;
    }

LABEL_20:
    v12 = 0;
    goto LABEL_15;
  }

  v9 = objc_loadWeakRetained(a1 + 6);
  v10 = v9;
  if (!v9)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "Packet delegate is no longer valid, cannot send", buf, 2u);
    }

    if (v6)
    {
      v21 = objc_getProperty(a1, v20, 72, 1);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __51__NEIKEv2Transport_sendData_sendCompletionHandler___block_invoke;
      v32[3] = &unk_1E7F0B600;
      v14 = &v33;
      v33 = v6;
      dispatch_async(v21, v32);
      v12 = 0;
      goto LABEL_13;
    }

    v10 = 0;
LABEL_19:
    v12 = 0;
    goto LABEL_14;
  }

  v12 = [v9 sendPacketData:v5];
  if (v6)
  {
    v13 = objc_getProperty(a1, v11, 72, 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__NEIKEv2Transport_sendData_sendCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7F0AB40;
    v14 = &v30;
    v30 = v6;
    v31 = v12;
    dispatch_async(v13, block);
LABEL_13:
  }

LABEL_14:

LABEL_15:
  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

void __51__NEIKEv2Transport_sendData_sendCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3 != 0);
  }

  if (v3)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v7;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "Connection send error %@ for %@", &v8, 0x16u);
    }

    [(NEIKEv2Transport *)*(a1 + 32) reportConnectionError:v3];
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end