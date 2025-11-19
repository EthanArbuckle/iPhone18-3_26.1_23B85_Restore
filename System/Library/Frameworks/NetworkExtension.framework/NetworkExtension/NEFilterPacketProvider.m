@interface NEFilterPacketProvider
- (NEPacket)delayCurrentPacket:(NEFilterPacketContext *)context;
- (void)allowPacket:(NEPacket *)packet;
@end

@implementation NEFilterPacketProvider

- (void)allowPacket:(NEPacket *)packet
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = packet;
  if (v3)
  {
    selfa = v3;
    v5 = objc_getProperty(v3, v4, 48, 1);

    v3 = selfa;
    if (v5)
    {
      v7 = objc_getProperty(selfa, v6, 48, 1);
      v8 = selfa;
      v9 = v8;
      if (v7)
      {
        context = v8->_context;
        if (context)
        {
          os_unfair_lock_lock((v7 + 8));
          v11 = *(v7 + 16);
          v12 = ne_log_obj();
          v13 = v12;
          if (v11)
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v21 = *(context + 4);
              *buf = 138412546;
              v24 = v7;
              v25 = 1024;
              v26 = v21;
              _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "%@: allowPacket: %d bytes", buf, 0x12u);
            }

            v14 = v7;
            v15 = v14;
            v16 = 120;
            if (!*context)
            {
              v16 = 104;
            }

            if (*(context + 3))
            {
              v17 = *&v14[v16];
              if (v17)
              {
                sendDataOnRing(v14, v17, *context);
                v18 = *(v7 + 16);
                if (os_channel_sync())
                {
                  v19 = ne_log_obj();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v24 = v15;
                    _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "%@: allowPacket: failed to sync channel TX", buf, 0xCu);
                  }
                }

                *(context + 3) = 0;
              }
            }

            [(NEFilterPacketInterpose *)v15 deallocateFrame:?];
            v9->_context = 0;
            os_unfair_lock_unlock((v7 + 8));
          }

          else
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v24 = v7;
              _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "%@: allowPacket: no channel", buf, 0xCu);
            }

            [(NEFilterPacketInterpose *)v7 freePacket:v9];
            os_unfair_lock_unlock((v7 + 8));
          }
        }
      }

      v3 = selfa;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (NEPacket)delayCurrentPacket:(NEFilterPacketContext *)context
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = context;
  v5 = v3;
  if (!v3 || !objc_getProperty(v3, v4, 8, 1))
  {
    goto LABEL_21;
  }

  Property = objc_getProperty(v5, v6, 8, 1);
  v8 = Property;
  if (!Property)
  {
    goto LABEL_22;
  }

  os_unfair_lock_lock(Property + 2);
  if (!*&v8[4]._os_unfair_lock_opaque)
  {
    v21 = ne_log_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_20:

      os_unfair_lock_unlock(v8 + 2);
LABEL_21:
      v8 = 0;
      goto LABEL_22;
    }

    LODWORD(v25.receiver) = 138412290;
    *(&v25.receiver + 4) = v8;
    v22 = "%@: delayCurrentPacket: no channel / input_queue";
LABEL_26:
    _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, v22, &v25, 0xCu);
    goto LABEL_20;
  }

  v9 = *&v8[22]._os_unfair_lock_opaque;
  if (!v9)
  {
    v21 = ne_log_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    LODWORD(v25.receiver) = 138412290;
    *(&v25.receiver + 4) = v8;
    v22 = "%@: delayCurrentPacket: no current frame";
    goto LABEL_26;
  }

  v10 = MEMORY[0x1BFAF9060](*MEMORY[0x1E695E480], 40, 0x1030040E36644B0, 0);
  v11 = v10;
  if (v10)
  {
    v12 = *v9;
    v13 = v9[1];
    *(v10 + 32) = *(v9 + 4);
    *v10 = v12;
    *(v10 + 16) = v13;
  }

  *&v8[22]._os_unfair_lock_opaque = 0;
  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:*(v10 + 8) length:*(v10 + 16) freeWhenDone:0];
  v15 = [NEPacket alloc];
  if (*v11)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = v14;
  v18 = v8;
  if (v15)
  {
    v25.receiver = v15;
    v25.super_class = NEPacket;
    v19 = [(NEProvider *)&v25 init];
    v15 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->super.super._defaultPathEvaluator, v14);
      v15->_direction = v16;
      v15->_context = v11;
      objc_storeStrong(&v15->_interpose, v8);
    }
  }

  v20 = ne_log_obj();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v25.receiver) = 138412290;
    *(&v25.receiver + 4) = v18;
    _os_log_debug_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_DEBUG, "%@: delayCurrentPacket: retained packet", &v25, 0xCu);
  }

  os_unfair_lock_unlock(v8 + 2);
  v8 = v15;

LABEL_22:
  v23 = *MEMORY[0x1E69E9840];

  return v8;
}

@end