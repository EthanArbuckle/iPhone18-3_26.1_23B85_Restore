@interface NEFilterPacketInterpose
- (BOOL)matchFlow:(const unsigned __int8 *)flow flowId:;
- (id)description;
- (void)close;
- (void)close:(os_unfair_lock_s *)close;
- (void)close_nolock:(uint64_t)close_nolock;
- (void)dealloc;
- (void)deallocateFrame:(uint64_t)frame;
- (void)freePacket:(os_unfair_lock_s *)packet;
@end

@implementation NEFilterPacketInterpose

- (id)description
{
  if (self->_channel)
  {
    v3 = MEMORY[0x1E696AEC0];
    name = nw_interface_get_name(self->_interface);
    [v3 stringWithFormat:@"NEFilterPacketInterpose: %s - [%@:%d - fd %d]", name, objc_getProperty(self, v5, 176, 1), self->_nexusPort, self->_channel_fd];
    v7 = LABEL_5:;
    goto LABEL_6;
  }

  interface = self->_interface;
  if (interface)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"NEFilterPacketInterpose: %s", nw_interface_get_name(interface), v9, v10, v11];
    goto LABEL_5;
  }

  v7 = @"NEFilterPacketInterpose";
LABEL_6:

  return v7;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@: dealloc", buf, 0xCu);
  }

  [(NEFilterPacketInterpose *)self close:?];
  context = self->_context;
  self->_context = 0;

  v6.receiver = self;
  v6.super_class = NEFilterPacketInterpose;
  [(NEFilterPacketInterpose *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)close:(os_unfair_lock_s *)close
{
  if (close)
  {
    os_unfair_lock_lock(close + 2);
    [(NEFilterPacketInterpose *)close close_nolock:a2];

    os_unfair_lock_unlock(close + 2);
  }
}

- (void)close_nolock:(uint64_t)close_nolock
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412546;
    close_nolockCopy3 = close_nolock;
    v15 = 1024;
    v16 = a2;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@: close: StopInputOnly %d", &v13, 0x12u);
  }

  if (*(close_nolock + 152))
  {
    *(close_nolock + 153) = 1;
  }

  else
  {
    *(close_nolock + 153) = 0;
    if (*(close_nolock + 192))
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138412290;
        close_nolockCopy3 = close_nolock;
        _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: close channel: cancel input", &v13, 0xCu);
      }

      v6 = *(close_nolock + 192);
      nw_queue_cancel_source();
      *(close_nolock + 192) = 0;
      *(close_nolock + 152) = 0;
    }

    if ((a2 & 1) == 0 && *(close_nolock + 16))
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138412290;
        close_nolockCopy3 = close_nolock;
        _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "%@: close channel: cancel channel", &v13, 0xCu);
      }

      v8 = *(close_nolock + 16);
      os_channel_destroy();
      *(close_nolock + 16) = 0;
      *(close_nolock + 32) = -1;
      objc_setProperty_atomic(close_nolock, v9, 0, 176);
      *(close_nolock + 184) = 0;
      *(close_nolock + 156) = 0;
      *(close_nolock + 160) = 0;
      *(close_nolock + 96) = 0u;
      *(close_nolock + 112) = 0u;
      if (*(close_nolock + 24))
      {
        os_channel_attr_destroy();
        *(close_nolock + 24) = 0;
      }

      *(close_nolock + 88) = 0;
      v10 = *(close_nolock + 128);
      *(close_nolock + 128) = 0;

      v11 = *(close_nolock + 136);
      *(close_nolock + 136) = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)close
{
  if (self)
  {
    os_unfair_lock_lock(self + 2);
    [(NEFilterPacketInterpose *)self close_nolock:?];

    os_unfair_lock_unlock(self + 2);
  }
}

- (BOOL)matchFlow:(const unsigned __int8 *)flow flowId:
{
  v13 = *MEMORY[0x1E69E9840];
  *uu1 = 0;
  v12 = 0;
  *v9 = 0;
  v10 = 0;
  [objc_getProperty(self a2];
  [objc_getProperty(self v6];
  if (uuid_compare(uu1, a2))
  {
    result = 0;
  }

  else
  {
    result = uuid_compare(v9, flow) == 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __40__NEFilterPacketInterpose_createChannel__block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v59 = *(a1 + 32);
    *v72 = 138412290;
    *&v72[4] = v59;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "%@: INPUT SOURCE: READ EVENT", v72, 0xCu);
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
LABEL_8:
    nw_queue_suspend_source();
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_99;
    }

    goto LABEL_9;
  }

  if ((v3[152] & 1) == 0)
  {
    v3[152] = 1;
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 192);
    }

    goto LABEL_8;
  }

  v4 = v3;
LABEL_9:
  v60 = a1;
  os_unfair_lock_lock(v4 + 2);
  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = v9;
    if (v9)
    {
      v11 = 96;
    }

    else
    {
      v11 = 112;
    }

    v67 = v9;
    if (*&v4[v11])
    {
      v12 = os_channel_available_slot_count();
      if (v12)
      {
        v13 = v12;
        v64 = v8;
        v14 = ne_log_obj();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *v72 = 138412802;
          v51 = "INGRESS";
          if ((v10 & 1) == 0)
          {
            v51 = "EGRESS";
          }

          *&v72[4] = v4;
          *&v72[12] = 2080;
          *&v72[14] = v51;
          *&v72[22] = 1024;
          *&v72[24] = v13;
          v15 = v51;
          _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "%@: receiveFramesfromRings: %s: avail slots %d", v72, 0x1Cu);
        }

        else if (v10)
        {
          v15 = "INGRESS";
        }

        else
        {
          v15 = "EGRESS";
        }

        if (v10)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        v17 = 120;
        if (v10)
        {
          v17 = 104;
        }

        v62 = v17;
        v63 = v16;
        v66 = v15;
        while (1)
        {
          v18 = v4;
          v73 = 0u;
          v74 = 0u;
          memset(v72, 0, sizeof(v72));
          if (!*&v4[v11])
          {
            v26 = ne_log_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v69 = v4;
              v70 = 2080;
              *v71 = v15;
              *&v71[8] = 2112;
              *&v71[10] = @"Bad rx ring";
              v27 = v26;
              goto LABEL_41;
            }

            goto LABEL_42;
          }

          v19 = *&v4[v11];
          next_slot = os_channel_get_next_slot();
          if (!next_slot)
          {
            v26 = ne_log_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v69 = v4;
              v70 = 2080;
              *v71 = v15;
              *&v71[8] = 2112;
              *&v71[10] = @"NULL next slot";
              v27 = v26;
              goto LABEL_41;
            }

            goto LABEL_42;
          }

          if (!*&v72[16])
          {
            v26 = ne_log_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v69 = v4;
              v70 = 2080;
              *v71 = v15;
              *&v71[8] = 2112;
              *&v71[10] = @"NULL prop buf";
              v27 = v26;
              goto LABEL_41;
            }

LABEL_42:

            if (!*(v4 + 2))
            {
              goto LABEL_45;
            }

            goto LABEL_43;
          }

          v21 = next_slot;
          *(v4 + 5) = next_slot;
          packet = os_channel_slot_get_packet();
          if (!packet)
          {
            v26 = ne_log_obj();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v69 = v4;
              v70 = 2080;
              *v71 = v15;
              *&v71[8] = 2112;
              *&v71[10] = @"Bad ptr";
              v27 = v26;
LABEL_41:
              _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "%@: %s - %@", buf, 0x20u);
            }

            goto LABEL_42;
          }

          v23 = packet;
          if (os_channel_slot_detach_packet())
          {
            break;
          }

          next_buflet = os_packet_get_next_buflet();
          if (!next_buflet)
          {
            v24 = ne_log_obj();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_31;
            }

            *buf = 138412802;
            v69 = v4;
            v70 = 2080;
            *v71 = v15;
            *&v71[8] = 2112;
            *&v71[10] = @"Bad buflet";
            v39 = v24;
            goto LABEL_68;
          }

          v31 = next_buflet;
          data_offset = os_buflet_get_data_offset();
          object_address = os_buflet_get_object_address();
          if (object_address)
          {
            v33 = object_address;
            data_length = os_packet_get_data_length();
            v35 = ne_log_obj();
            v61 = data_length;
            if (!data_length)
            {
              v40 = v35;
              v15 = v66;
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v69 = v4;
                v70 = 2080;
                *v71 = v66;
                *&v71[8] = 2112;
                *&v71[10] = @"Bad frame length";
                _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "%@: %s - %@", buf, 0x20u);
              }

              if (!*(v4 + 2))
              {
                v28 = 0;
                goto LABEL_46;
              }

              os_channel_packet_free();
              v41 = *(v4 + 2);
              if (!os_channel_is_defunct())
              {
                goto LABEL_45;
              }

LABEL_44:
              os_unfair_lock_lock(v4 + 2);
              [(NEFilterPacketInterpose *)v18 close_nolock:?];
              os_unfair_lock_unlock(v4 + 2);
              goto LABEL_45;
            }

            v36 = v35;
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v69 = v4;
              v70 = 1024;
              *v71 = v61;
              *&v71[4] = 2080;
              *&v71[6] = v66;
              _os_log_debug_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_DEBUG, "%@: receiveDatafromRing: read %u bytes on %s rx ring", buf, 0x1Cu);
            }

            *(v4 + 5) = v21;
            if (!os_channel_advance_slot())
            {
              v42 = v33 + data_offset;
              v4[48] = v64;
              *(v4 + 7) = v42;
              *(v4 + 16) = v61;
              *(v4 + 9) = v23;
              *(v4 + 10) = v31;
              *(v4 + 11) = v4 + 48;
              v43 = *(v4 + 18);
              if (v43)
              {
                objc_setProperty_atomic(v43, v37, v18, 8);
              }

              os_unfair_lock_unlock(v4 + 2);
              v44 = [*(v4 + 16) packetHandler];
              v45 = v44[2](v44, *(v4 + 18), *(v4 + 17), v63, v42, v61);

              os_unfair_lock_lock(v4 + 2);
              v47 = *(v4 + 18);
              if (v47)
              {
                objc_setProperty_atomic(v47, v46, 0, 8);
              }

              if (!*(v4 + 2))
              {
                v28 = 0;
                v15 = v66;
                goto LABEL_46;
              }

              v48 = ne_log_obj();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v69 = v4;
                v70 = 2048;
                *v71 = v45;
                _os_log_debug_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_DEBUG, "%@: receiveDatafromRing: verdict %ld", buf, 0x16u);
              }

              if (v45 != 2)
              {
                v15 = v66;
                if (!v45)
                {
                  v49 = *&v4[v62];
                  if (v49)
                  {
                    sendDataOnRing(v18, v49, v64);
                    v28 = 1;
                    goto LABEL_46;
                  }
                }

                goto LABEL_86;
              }

              v15 = v66;
              if (*(v4 + 11))
              {
                v50 = ne_log_obj();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v69 = v4;
                  _os_log_error_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_ERROR, "%@: receiveDatafromRing: returned Delay verdict but packet hasn't been delayed", buf, 0xCu);
                }

                *(v4 + 11) = 0;
LABEL_86:
                if (*(v4 + 2))
                {
                  os_channel_packet_free();
                }

                goto LABEL_45;
              }

              goto LABEL_45;
            }

            v38 = ne_log_obj();
            v15 = v66;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v69 = v4;
              v70 = 2080;
              *v71 = v66;
              *&v71[8] = 2112;
              *&v71[10] = @"Failed to advance slot";
              _os_log_error_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_ERROR, "%@: %s - %@", buf, 0x20u);
            }

            if (!*(v4 + 2))
            {
              goto LABEL_45;
            }

            goto LABEL_32;
          }

          v24 = ne_log_obj();
          v15 = v66;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v69 = v4;
            v70 = 2080;
            *v71 = v66;
            *&v71[8] = 2112;
            *&v71[10] = @"Bad address";
            v39 = v24;
LABEL_68:
            _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, "%@: %s - %@", buf, 0x20u);
          }

LABEL_31:

          if (!*(v4 + 2))
          {
            goto LABEL_45;
          }

LABEL_32:
          os_channel_packet_free();
          v25 = *(v4 + 2);
LABEL_43:
          if (os_channel_is_defunct())
          {
            goto LABEL_44;
          }

LABEL_45:
          v28 = 0;
LABEL_46:

          v7 += v28;
          v29 = *&v4[v11];
          if (!os_channel_available_slot_count())
          {
            goto LABEL_88;
          }
        }

        v24 = ne_log_obj();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        *buf = 138412802;
        v69 = v4;
        v70 = 2080;
        *v71 = v15;
        *&v71[8] = 2112;
        *&v71[10] = @"Bad detach";
        v39 = v24;
        goto LABEL_68;
      }
    }

LABEL_88:
    v9 = 0;
    v8 = 1;
  }

  while ((v67 & 1) != 0);
  if (v7)
  {
    v52 = *(v4 + 2);
    if (os_channel_sync())
    {
      v53 = ne_log_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *v72 = 138412290;
        *&v72[4] = v4;
        _os_log_error_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_ERROR, "%@: receiveFramesfromRings: failed to sync channel TX", v72, 0xCu);
      }
    }
  }

  os_unfair_lock_unlock(v4 + 2);

  a1 = v60;
LABEL_99:
  v54 = *(a1 + 32);
  if (*(v54 + 152))
  {
    *(v54 + 152) = 0;
    v55 = *(a1 + 32);
    if (v55)
    {
      v56 = *(v55 + 192);
    }

    nw_queue_resume_source();
    v54 = *(a1 + 32);
  }

  os_unfair_lock_lock((v54 + 8));
  v57 = *(a1 + 32);
  if (*(v57 + 153) == 1)
  {
    [(NEFilterPacketInterpose *)v57 close_nolock:?];
    v57 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v57 + 8));
  v58 = *MEMORY[0x1E69E9840];
}

- (void)freePacket:(os_unfair_lock_s *)packet
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (packet)
  {
    if (v3)
    {
      v5 = v3[5];
      if (v5)
      {
        os_unfair_lock_lock(packet + 2);
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(v5 + 16);
          v9 = 138412546;
          packetCopy = packet;
          v11 = 1024;
          v12 = v8;
          _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@: freePacket: %d bytes", &v9, 0x12u);
        }

        [(NEFilterPacketInterpose *)packet deallocateFrame:v5];
        v4[5] = 0;
        os_unfair_lock_unlock(packet + 2);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)deallocateFrame:(uint64_t)frame
{
  if (*(frame + 16) && ptr[3])
  {
    os_channel_packet_free();
  }

  ptr[1] = 0;
  ptr[3] = 0;
  ptr[4] = 0;
  v3 = *MEMORY[0x1E695E480];

  CFAllocatorDeallocate(v3, ptr);
}

@end