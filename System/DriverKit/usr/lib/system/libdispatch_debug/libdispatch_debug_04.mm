void _dispatch_mach_msg_not_sent(uint64_t a1, dispatch_object_s *a2, uint64_t a3)
{
  v41 = dispatch_semaphore_signal;
  v42 = _dispatch_lane_invoke;
  v52 = a2;
  v51 = a1;
  v50 = a3;
  v49 = a2;
  reply_disconnected = 0;
  v47 = 0;
  msg = _dispatch_mach_msg_get_msg(a2);
  v45 = *(v49 + 12);
  v3 = _dispatch_thread_getspecific(0);
  v4 = msg[2];
  v5 = msg[5];
  v6 = *(v49 + 4);
  v7 = msg[4];
  v8 = *(v49 + 13);
  v40 = v35;
  v35[1] = v3;
  v35[2] = v4;
  v35[3] = v5;
  v35[4] = v6;
  v35[5] = v45;
  v35[6] = v7;
  v35[7] = v8;
  _dispatch_log("%u\t%p\tmachport[0x%08x]: not sent msg id 0x%x, ctxt %p, msg_opts 0x%x, kvoucher 0x%08x, reply on 0x%08x", v9, v10, v11, v12, v13, v14, v15, 1030);
  v21 = 0;
  if ((v45 & 2) == 0)
  {
    v21 = 5;
  }

  v44 = v21;
  if ((*(v51 + 116) & 0x10) != 0 && *(v49 + 4))
  {
    v22 = *(v49 + 4);
    v55 = v51;
    v54 = v22;
    v53 = 0;
    v53 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(v22);
    if (!v53)
    {
      v53 = v55;
    }

    v47 = v53;
  }

  v43 = v49;
  if (v50)
  {
    v39 = v50;
  }

  else
  {
    v39 = 0;
  }

  if (v47)
  {
    v23 = 12;
  }

  else
  {
    v23 = 7;
  }

  reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(v43, v39, v23, v16, v17, v18, v19, v20);
  _dispatch_mach_msg_set_reason(v49, 0, v44, v24, v25, v26, v27, v28);
  _dispatch_mach_handle_or_push_received_msg(v51, v49, 0);
  if (reply_disconnected)
  {
    if (v47)
    {
      v63 = v51;
      v62 = reply_disconnected;
      v61 = v47;
      v60 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, v51);
      v59 = v61;
      v58 = v60;
      v67 = v61;
      v66 = v60;
      v65 = 0;
      v64 = 0;
      v70 = v61;
      v69 = v60;
      v36 = *v61;
      v37 = v61;
      v38 = 0;
      if (v36)
      {
        v38 = v36;
      }

      v32 = *(v38 + 72);
      v57 = v61;
      v56 = v60;
      v68 = *(v62 + 7);
      v68 &= 0x3FFF00uLL;
      v68 >>= 8;
      v33 = __clz(__rbit32(v68));
      if (v68)
      {
        v34 = v33 + 1;
      }

      else
      {
        v34 = 0;
      }

      v32(v57, v56, v34, v29, v30, v31);
    }

    else
    {
      _dispatch_mach_handle_or_push_received_msg(v51, reply_disconnected, 0);
    }
  }
}

uint64_t _dispatch_mach_msg_send(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  v136 = v166;
  v182 = a2;
  v181 = a1;
  v180 = a3;
  v179 = a4;
  v178 = a5;
  v177 = *(a1 + 120);
  v176 = a2;
  v135 = 0;
  reply_disconnected = 0;
  v174 = a2[8];
  v173 = 0;
  v137 = 0;
  v172 = 0;
  v171 = 0;
  msg = _dispatch_mach_msg_get_msg(a2);
  v169 = (*msg & 0x1F) == 18;
  v168 = *(v176 + 13);
  memset(v289, 0, sizeof(v289));
  v167 = 0;
  memset(v166, 0, sizeof(v166));
  v165 = 0;
  if (!v169)
  {
    *(v181 + 118) &= ~1u;
    v12 = *(v177 + 48);
    v134 = 0;
    if (v12)
    {
      v134 = v176 != *(v177 + 48);
    }

    if (v134)
    {
      v164 = v177;
      v202 = v177;
      v200 = *(v177 + 16);
      v201 = v200;
      v199 = v200;
      v227 = v200;
      v133 = 0;
      if (v200)
      {
        v133 = _dispatch_thread_getspecific(20) != &_dispatch_mgr_q;
      }

      if (v133)
      {
        *(v181 + 118) |= 1u;
        return v172;
      }

      v13 = *(v177 + 48);
      v238 = v181;
      v237 = v13;
      v236 = 0;
      if ((*(v181 + 116) & 0x10) != 0)
      {
        v235 = v237;
        if (_dispatch_mach_msg_get_reply_port(v237))
        {
          v14 = *(v237 + 32);
          v241 = v238;
          v240 = v14;
          v239 = 0;
          v239 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(v14);
          if (!v239)
          {
            v239 = v241;
          }

          v243 = v239;
          v242 = 1839;
          if (!v239)
          {
            _dispatch_abort(v242, 0, v15, v16, v17, v18, v19, v20);
          }
        }
      }

      if ((v236 & 0x40000) != 0)
      {
        *(v237 + 56) = 0;
      }

      else
      {
        v234 = 1;
        if ((v236 & 4) != 0)
        {
          v234 |= 2u;
        }

        v245 = 0;
        v244 = v234;
        if (v234)
        {
          v247 = _dispatch_thread_getspecific(4);
          v245 = v247;
        }

        v248 = v245;
        v245 &= 0xFFFFFFu;
        if ((v244 & 2) != 0 || (v132 = v245, v252 = 5, v251 = 4096, v245 <= 0x10FF))
        {
          v246 = v245;
        }

        else
        {
          v250 = 5;
          v249 = 4096;
          v246 = 4351;
        }

        *(v237 + 56) = v246;
      }

      v253 = _dispatch_thread_getspecific(28);
      if (v253)
      {
        object = v253;
        os_retain(v253);
      }

      *(v237 + 64) = v253;
      v131 = 0;
      v21 = _dispatch_thread_getspecific(0);
      v22 = *(v237 + 64);
      v103 = v237;
      v102 = v22;
      v101 = v21;
      _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] set", v23, v24, v25, v26, v27, v28, v29, 1856);
      v236 |= _dispatch_mach_send_options();
      *(v237 + 48) = v236;
      v163 = *(v177 + 48);
      if (!_dispatch_mach_msg_send(v181, v163, 0, v179, 0))
      {
        v162 = *(*(v177 + 48) + 64);
        if (v162)
        {
          v228 = v162;
          os_release(v162);
          *(*(v177 + 48) + 64) = 0;
        }

        return v172;
      }

      if ((*(v181 + 116) & 0x20) != 0)
      {
        _dispatch_mach_arm_no_senders(v181, 1);
      }

      *(v177 + 48) = 0;
    }
  }

  error_value = 0;
  v160 = 0;
  v159 = *(v176 + 12);
  if ((v159 & 2) != 0)
  {
    goto LABEL_117;
  }

  v158 = 0;
  v160 = (HIWORD(v159) << 16) | 1;
  if (v169)
  {
LABEL_88:
    if ((v159 & 4) != 0)
    {
      if (*(v180 + 30))
      {
        v160 |= 0x100000u;
        _dispatch_clear_thread_reply_port(v168);
      }

      _dispatch_mach_reply_waiter_register(v181, v180, v168, v176);
    }

    v149 = msg;
    v150 = *(msg + 4);
    *&v289[1] = v150;
    *(v136 + 67) = msg;
    v127 = &v289[1] + 8;
    *&v147 = v166;
    *(&v147 + 1) = 0;
    v128 = v148;
    if (v165)
    {
      v126 = v166[0];
    }

    else
    {
      v126 = 0;
    }

    v64 = v127;
    *v128 = v126;
    v148[1] = 0;
    v65 = v147;
    *(v64 + 2) = v148[0];
    *v64 = v65;
    v66 = *msg;
    v146 = *(msg + 16);
    v145 = v66;
    error_value = mach_msg2(v289, v160 | 0x500000000, &v145, 2u);
    v124 = _dispatch_thread_getspecific(0);
    v121 = v176[4];
    v123 = *(msg + 8);
    v122 = *(msg + 20);
    v120 = v160;
    v119 = v159;
    v118 = *(msg + 16);
    v117 = v168;
    v67 = mach_error_string(error_value);
    v125 = &v100;
    v110 = error_value;
    v109 = v67;
    v108 = v117;
    v107 = v118;
    v106 = v119;
    v105 = v120;
    v104 = v121;
    v103 = v122;
    v102 = v123;
    v101 = v124;
    _dispatch_log("%u\t%p\tmachport[0x%08x]: sent msg id 0x%x, ctxt %p, opts 0x%x, msg_opts 0x%x, kvoucher 0x%08x, reply on 0x%08x: %s - 0x%x", v68, v69, v70, v71, v72, v73, v74, 1202);
    v116 = 0;
    if (error_value)
    {
      v116 = (v159 >> 2) & 1;
    }

    if (v116)
    {
      v144 = 36;
      v215 = v180;
      v214 = 1205;
      if (!v180)
      {
        _dispatch_abort(v214, 0, v6, v7, v8, v9, v10, v11);
      }

      _dispatch_mach_reply_unregister(v181, v180, v144);
    }

    if (v171)
    {
      if (error_value == 268435461 && *(msg + 16))
      {
        v143 = error_value;
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Voucher port corruption";
        qword_E42C0 = error_value;
        __break(1u);
        JUMPOUT(0x79158);
      }

      v142 = 0;
      v233 = msg;
      v232 = 0;
      v231 = HIWORD(*msg) & 0x1F;
      v230 = *(msg + 16);
      v229 = 0;
      if ((v231 == 19 || v231 == 17) && v230)
      {
        v75 = _dispatch_thread_getspecific(0);
        if (v232)
        {
          v83 = "move-send";
        }

        else
        {
          v83 = "copy-send";
        }

        v104 = v83;
        v103 = v233;
        v102 = v230;
        v101 = v75;
        _dispatch_log("%u\t%p\tkvoucher[0x%08x]: msg[%p] clear %s", v76, v77, v78, v79, v80, v81, v82, 520);
        if (v231 == 17)
        {
          if (v232)
          {
            v229 = v230;
          }

          else
          {
            _voucher_dealloc_mach_voucher(v230);
          }
        }

        v233[4] = 0;
        *v233 &= 0xFFE0FFFF;
      }

      v142 = v229;
    }

LABEL_117:
    if (error_value == 268435460 && (v160 & 0x10) != 0)
    {
      if (*(msg + 8) == -1)
      {
        *msg &= 0xFFFFFFE0;
        *msg |= 0x13u;
      }

      if ((v160 & 0x80) != 0)
      {
        _dispatch_mach_notification_set_armed(v177, v5, v6, v7, v8, v9, v10, v11);
      }

      else
      {
        *(v181 + 118) |= 1u;
      }
    }

    else
    {
      v141 = *(v181 + 88);
      if ((v159 & 4) == 0 && !error_value)
      {
        if (v168)
        {
          v140 = v141;
          v190 = v141;
          v188 = *(v141 + 16);
          v189 = v188;
          v187 = v188;
          v224 = v188;
          if (!v188 || *(v141 + 24) != v168)
          {
            _dispatch_mach_reply_kevent_register(v181, v168, v176);
          }
        }
      }

      v115 = 0;
      if (!v169)
      {
        v84 = *(v177 + 48);
        v115 = 0;
        if (v176 == v84)
        {
          v139 = v177;
          v186 = v177;
          v184 = *(v177 + 16);
          v185 = v184;
          v183 = v184;
          v223 = v184;
          v115 = v184 != 0;
        }
      }

      if (v115)
      {
        v275 = v181;
        v274 = 5;
        dispatch_assert_queue_V2(&_dispatch_mgr_q);
        v273 = *(v275 + 120);
        _dispatch_unote_unregister(v273, v274, v85, v86, v87, v88, v89, v90);
        *(*(v275 + 120) + 24) = 0;
      }

      if (error_value)
      {
        if ((*(v181 + 116) & 0x10) != 0 && v176[4])
        {
          v91 = v176[4];
          v205 = v181;
          v204 = v91;
          v203 = 0;
          v203 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(v91);
          if (!v203)
          {
            v203 = v205;
          }

          v173 = v203;
        }

        v138 = v176;
        if (v180)
        {
          v114 = v180;
        }

        else
        {
          v114 = 0;
        }

        if (v173)
        {
          v92 = 12;
        }

        else
        {
          v92 = 7;
        }

        reply_disconnected = _dispatch_mach_msg_create_reply_disconnected(v138, v114, v92, v7, v8, v9, v10, v11);
      }

      _dispatch_mach_msg_set_reason(v176, error_value, 0, v7, v8, v9, v10, v11);
      if (v178 & 8) != 0 && (v159)
      {
        v172 |= 2u;
      }

      else
      {
        _dispatch_mach_handle_or_push_received_msg(v181, v176, 0);
      }

      if (reply_disconnected)
      {
        if (v173)
        {
          v213 = v181;
          v212 = reply_disconnected;
          v211 = v173;
          v210 = _dispatch_mach_msg_async_reply_wrap(reply_disconnected, v181);
          v209 = v211;
          v208 = v210;
          v221 = v211;
          v220 = v210;
          v219 = 0;
          v218 = 0;
          v288 = v211;
          v287 = v210;
          v111 = *v211;
          v112 = v211 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
          v113 = 0;
          if (v111)
          {
            v113 = v111;
          }

          v96 = *(v113 + 72);
          v207 = v211;
          v206 = v210;
          LODWORD(v222) = *(v212 + 7);
          v222 &= 0x3FFF00u;
          v222 >>= 8;
          v97 = __clz(__rbit32(v222));
          if (v222)
          {
            v98 = v97 + 1;
          }

          else
          {
            v98 = 0;
          }

          v96(v207, v206, v98, v93, v94, v95);
        }

        else
        {
          _dispatch_mach_handle_or_push_received_msg(v181, reply_disconnected, 0);
        }
      }

      v172 |= 1u;
    }

    return v172;
  }

  if (v176 != *(v177 + 48))
  {
    *(msg + 8) = *(v177 + 92);
  }

  if (_dispatch_thread_getspecific(20) != &_dispatch_mgr_q)
  {
LABEL_47:
    v160 |= 0x10u;
    if (v174 && *(v174 + 48))
    {
      v42 = v136;
      v165 = 32;
      *&v151 = 59821818;
      *(&v151 + 1) = *(v174 + 48);
      v152 = *(v174 + 56);
      v43 = v151;
      *(v136 + 6) = v152;
      *(v42 + 2) = v43;
    }

    if (v165)
    {
      v166[0] = v165 + 8;
    }

    v44 = _dispatch_thread_getspecific(0);
    v103 = v176;
    v102 = v174;
    v101 = v44;
    _dispatch_log("%u\t%p\tvoucher[%p]: mach-msg[%p] msg_set", v45, v46, v47, v48, v49, v50, v51, 1158);
    v264 = msg;
    v263 = v174;
    if ((*msg & 0x1F0000) != 0)
    {
      v265 = 0;
    }

    else
    {
      mach_voucher = 0;
      if (v263)
      {
        mach_voucher = _voucher_get_mach_voucher(v263);
      }

      else
      {
        v282 = &_voucher_task_mach_voucher_pred;
        v281 = 0;
        v280 = _voucher_task_mach_voucher_init;
        if (_voucher_task_mach_voucher_pred != -1)
        {
          dispatch_once_f(v282, v281, v280);
        }

        mach_voucher = _voucher_task_mach_voucher;
      }

      v278 = v264;
      v277 = mach_voucher;
      v276 = 0;
      if ((*v264 & 0x1F0000) != 0)
      {
        v279 = 0;
      }

      else if (v277)
      {
        v278[4] = v277;
        if (v276)
        {
          v52 = 1114112;
        }

        else
        {
          v52 = 1245184;
        }

        *v278 |= v52;
        v53 = _dispatch_thread_getspecific(0);
        if (v276)
        {
          v61 = "move-send";
        }

        else
        {
          v61 = "copy-send";
        }

        v104 = v61;
        v103 = v278;
        v102 = v277;
        v101 = v53;
        _dispatch_log("%u\t%p\tkvoucher[0x%08x]: msg[%p] set %s", v54, v55, v56, v57, v58, v59, v60, 476);
        v279 = 1;
      }

      else
      {
        v279 = 0;
      }

      v265 = v279;
    }

    v171 = v265;
    v270 = v176;
    v269 = v179;
    v268 = &v160;
    v283 = v179;
    if (v179 > 4)
    {
      v130 = 5;
    }

    else
    {
      v130 = v283;
    }

    v269 = v130;
    if (v130)
    {
      v267 = 0;
      v266 = 0;
      v272 = v270[7];
      v272 &= 0x3FFF00uLL;
      v272 >>= 8;
      v62 = __clz(__rbit32(v272));
      if (v272)
      {
        v63 = v62 + 1;
      }

      else
      {
        v63 = 0;
      }

      v267 = v63;
      v284 = v270[7];
      v286 = v284;
      v129 = 0;
      if ((v284 & 0x22000000) == 0)
      {
        v129 = (v286 & 0x3F00) != 0;
      }

      if (v129)
      {
        v284 = v284;
        v285 = v284 + 1;
      }

      else
      {
        v285 = 0;
      }

      v266 = v285;
      *v268 |= 0x20u;
      v271 = mach_msg_priority_encode_inline(v269, v267, v266);
    }

    else
    {
      v271 = 0;
    }

    v158 = v271;
    if (v168 && (*(v181 + 116) & 0x80) != 0)
    {
      v160 |= 0x200u;
    }

    goto LABEL_88;
  }

  v157 = v177;
  v198 = v177;
  v196 = *(v177 + 16);
  v197 = v196;
  v195 = v196;
  v226 = v196;
  if (!v196)
  {
    v30 = *(msg + 8);
    v259 = v181;
    v258 = v30;
    dispatch_assert_queue_V2(&_dispatch_mgr_q);
    *(*(v259 + 120) + 24) = v258;
    v256 = *(v259 + 120);
    v257 = _dispatch_unote_register(v256, -4, 0x2000000, v31, v32, v33, v34, v35);
    v261 = v257 & 1;
    v260 = 1752;
    if ((v257 & 1) == 0)
    {
      _dispatch_bug(v260, v261, v36, v37, v38, v39, v40, v41);
    }

    v255 = v257 & 1;
    v156 = v177;
    v194 = v177;
    v192 = *(v177 + 16);
    v193 = v192;
    v191 = v192;
    v225 = v192;
    v217 = v192 != 0;
    v216 = 1134;
    if (!v192)
    {
      _dispatch_abort(v216, v217, v36, v37, v38, v39, v40, v41);
    }
  }

  v154 = *(v177 + 30);
  v155 = v154 & 1;
  v153 = v154 & 1;
  if ((v154 & 1) == 0)
  {
    v160 |= 0x80u;
    goto LABEL_47;
  }

  return v172;
}

void _dispatch_mach_push_send_barrier_drain(uint64_t a1, unsigned int a2)
{
  v10 = _dispatch_thread_getspecific(22);
  if (v10)
  {
    _dispatch_thread_setspecific(22, *(v10 + 16));
    v9 = v10;
  }

  else
  {
    v9 = _dispatch_continuation_alloc_from_heap();
  }

  *v9 = &unk_DCCD0;
  v9[4] = 0;
  v9[5] = 0;
  v9[3] = -1;
  v9[1] = -1;
  _dispatch_lane_push(a1, v9, a2, v2, v3, v4, v5, v6);
}

void _dispatch_clear_thread_reply_port(int a1)
{
  v15 = _dispatch_thread_getspecific(8);
  if (a1 == v15)
  {
    _dispatch_thread_setspecific(8, 0);
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: cleared thread sync reply port", v8, v9, v10, v11, v12, v13, v14, 564);
  }

  else if (v15)
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: did not clear thread sync reply port (found 0x%08x)", v1, v2, v3, v4, v5, v6, v7, 557);
  }
}

uint64_t _dispatch_mach_reply_waiter_register(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  *(a2 + 8) = ~a1;
  *(a2 + 28) = -8;
  *(a2 + 24) = a3;
  if ((*(a2 + 30) & 1) == 0)
  {
    if (a4[8])
    {
      v16 = a4[8];
      os_retain(v16);
      *(a2 + 56) = v16;
    }

    *(a2 + 40) = a4[7];
    *(a2 + 48) = a4[4];
  }

  _dispatch_thread_getspecific(0);
  v12 = a4[4];
  _dispatch_log("%u\t%p\tmachport[0x%08x]: registering for sync reply, ctxt %p", v4, v5, v6, v7, v8, v9, v10, 441);
  return _dispatch_mach_reply_list_insert(*(a1 + 120), a2);
}

uint64_t mach_msg2(_DWORD **a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if ((a2 & 0x100000000) != 0)
  {
    v10 = *a1;
  }

  else
  {
    v10 = a1;
  }

  if ((a2 & 1) != 0 && (*v10 & 0x80000000) != 0)
  {
    v9 = v10[6];
  }

  v4 = *a3 | (a4 << 32);
  v5 = a3[2] | (a3[3] << 32);
  v6 = a3[4] | (a3[5] << 32);
  return mach_msg2_internal();
}

void _dispatch_mach_reply_kevent_register(uint64_t a1, unsigned int a2, void *a3)
{
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v34 = off_DD470(&_dispatch_mach_type_reply, a2, 0);
  v50 = *(v34 + 29) & 1;
  v49 = 456;
  if (!v50)
  {
    _dispatch_abort(v49, 0, v3, v4, v5, v6, v7, v8);
  }

  *(v34 + 8) = ~v37;
  if (v35[8])
  {
    v51 = v35[8];
    os_retain(v51);
    *(v34 + 56) = v51;
  }

  *(v34 + 40) = v35[7];
  *(v34 + 48) = v35[4];
  v28 = 0;
  if ((*(v37 + 116) & 0x10) != 0 && v35[4])
  {
    v9 = v35[4];
    v48 = v37;
    v47 = v9;
    v46 = 0;
    v46 = (*(&dword_10 + _dispatch_mach_xpc_hooks))(v9);
    if (!v46)
    {
      v46 = v48;
    }

    v28 = v46;
  }

  if ((*(v37 + 116) & 0x80) != 0)
  {
    *(v34 + 32) |= 0x200u;
  }

  if (!v28 || (v27 = 0, v28 == v37))
  {
    v45 = *(v37 + 88);
    v43 = *(v45 + 16);
    v44 = v43;
    v42 = v43;
    v54 = v43;
    v27 = (v43 & 0xFFFFFFFFFFFFFFFCLL) != 0;
  }

  if (v27)
  {
    v41 = *(v37 + 88);
    v39 = *(v41 + 16);
    v40 = v39;
    v38 = v39;
    v53 = v39;
    v29 = v39 & 0xFFFFFFFFFFFFFFFCLL;
    v32 = *(v37 + 84);
  }

  else
  {
    v26 = 0;
    if (*v28)
    {
      v26 = *v28;
    }

    if ((*(v26 + 16) & 0x10000) != 0)
    {
      v29 = -4;
      v55 = v28;
      v25 = 0;
      if (v28 >= &_dispatch_root_queues)
      {
        v25 = v55 < &unk_E0A80;
      }

      if (v25)
      {
        v32 = *(v28 + 84);
      }

      else
      {
        v32 = 0x2000000;
      }
    }

    else
    {
      v32 = _dispatch_queue_compute_priority_and_wlh(v28, &v29);
      if (!v32)
      {
        v29 = -4;
        v32 = *(v28 + 84);
      }
    }
  }

  v58 = v35[7];
  v57 = 0;
  v60 = (v58 & 0x20000000) == 0;
  v59 = 458;
  if ((v58 & 0x20000000) != 0)
  {
    _dispatch_abort(v59, 0, v3, v4, v5, v6, v7, v8);
  }

  v56 = v58;
  v61 = v58 & 0x3FFF00;
  v61 >>= 8;
  v10 = __clz(__rbit32(v61));
  if (v61)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 0;
  }

  v56 |= v11 << 8;
  v33 = v56;
  v31 = v32 & 0x80000000;
  v52 = v32 & 0xF000;
  v30 = v52 >> 12;
  if ((v32 & 0xFFF) != 0)
  {
    v32 &= 0xFFFu;
    if (v32 < v33)
    {
      v32 = v33;
    }

    v32 |= v31;
  }

  else if (v30 && v33)
  {
    v32 = v33 | v31;
  }

  else if (!v30 || v33)
  {
    v32 = 0x2000000;
    v29 = -4;
  }

  else
  {
    v32 = (v30 << 8) & 0xF00 | 0xFF | v31;
  }

  _dispatch_thread_getspecific(0);
  v24 = v35[4];
  _dispatch_log("%u\t%p\tmachport[0x%08x]: registering for reply, ctxt %p", v12, v13, v14, v15, v16, v17, v18, 504);
  _dispatch_mach_reply_list_insert(*(v37 + 120), v34);
  if ((_dispatch_unote_register(v34, v29, v32, v19, v20, v21, v22, v23) & 1) == 0)
  {
    _dispatch_mach_reply_unregister(v37, v34, 52);
  }
}

uint64_t _dispatch_mach_send_options()
{
  v0 = (_dispatch_thread_getspecific(4) & 0x3FFF00) >> 8;
  v1 = __clz(__rbit32(v0));
  if (v0)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = 0;
  if (v2)
  {
    v4 = v2 <= 2;
  }

  if (v4)
  {
    return 0x40000;
  }

  else
  {
    return 0;
  }
}

uint64_t mach_msg_priority_encode_inline(unsigned __int8 a1, unsigned __int8 a2, char a3)
{
  v4 = 0;
  if (a2 && a2 <= 6u)
  {
    v4 = (a2 << 16) | ((a3 - 1) << 8);
  }

  if (a1 && a1 <= 6u)
  {
    v4 |= a1 << 20;
  }

  return v4;
}

uint64_t _dispatch_mach_reply_list_insert(uint64_t a1, uint64_t a2)
{
  v14 = (a1 + 40);
  v13 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v8 = 0;
  atomic_compare_exchange_strong_explicit(v14, &v8, v13, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    _dispatch_unfair_lock_lock_slow(v14);
  }

  if (*(a2 + 72))
  {
    _dispatch_abort(311, *(a2 + 72) == 0, v2, v3, v4, v5, v6, v7);
  }

  v9 = *(a1 + 56);
  *(a2 + 64) = v9;
  if (v9)
  {
    *(*(a1 + 56) + 72) = a2 + 64;
  }

  *(a1 + 56) = a2;
  *(a2 + 72) = a1 + 56;
  result = _dispatch_thread_getspecific(3);
  v15 = atomic_exchange_explicit((a1 + 40), 0, memory_order_release);
  if (v15 != (result & 0xFFFFFFFC))
  {
    return _dispatch_unfair_lock_unlock_slow(a1 + 40, v15);
  }

  return result;
}

void *_dispatch_mach_msg_async_reply_wrap(uint64_t a1, uint64_t a2)
{
  _dispatch_retain(a2);
  v6 = _dispatch_thread_getspecific(22);
  if (v6)
  {
    _dispatch_thread_setspecific(22, *(v6 + 16));
    v5 = v6;
  }

  else
  {
    v5 = _dispatch_continuation_alloc_from_heap();
  }

  *v5 = &unk_DCD78;
  v5[6] = a1;
  v5[7] = a2;
  v5[1] = -1;
  v5[3] = -1;
  return v5;
}

uint64_t _dispatch_mach_send_push_and_trydrain(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4)
{
  v28 = *(a1 + 120);
  v27 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v22 = 0;
  v21 = 0;
  *(a2 + 16) = 0;
  _dispatch_thread_setspecific(122, v28 + 72);
  v20 = atomic_exchange_explicit((v28 + 72), a2, memory_order_release);
  if (v20)
  {
    *(v20 + 16) = a2;
  }

  else
  {
    _dispatch_retain_2(a1);
    v22 = 0xA000000000;
    v21 = 3;
    *(v28 + 80) = a2;
  }

  _dispatch_thread_setspecific(122, 0);
  v19 = 1;
  if (!*(v28 + 88))
  {
    v19 = (*(a1 + 80) & 0x10000000) != 0;
  }

  if (v19)
  {
    v25 = *(v28 + 64);
    do
    {
      v36 = v25;
      if ((v25 & 0x700000000) < a3 << 32)
      {
        v36 = v25 & 0xFFFFFFF8FFFFFFFFLL | (a3 << 32) | 0x2800000000;
      }

      v9 = v25;
      v10 = v25;
      atomic_compare_exchange_strong_explicit((v28 + 64), &v10, v36 | v22, memory_order_release, memory_order_relaxed);
      if (v10 != v9)
      {
        v25 = v10;
      }
    }

    while (v10 != v9);
    if (((v25 ^ (v36 | v22)) & 0x8000000000) != 0)
    {
      v21 &= ~1u;
    }

    v18 = 0;
    if (*a1)
    {
      v18 = *a1;
    }

    (*(v18 + 64))(a1, a3, v21);
    v33 = 0;
  }

  else if (v22)
  {
    v26 = *(v28 + 64);
    do
    {
      v35 = v26;
      if ((v26 & 0x700000000) < a3 << 32)
      {
        v35 = v26 & 0xFFFFFFF8FFFFFFFFLL | (a3 << 32) | 0x2800000000;
      }

      v23 = v35 | v22;
      if ((v26 & 0x10FFFFFFFFLL) == 0)
      {
        v23 = (v23 | v27) & 0xFFFFFFC7FFFFFFFFLL;
      }

      v11 = v26;
      v12 = v26;
      atomic_compare_exchange_strong((v28 + 64), &v12, v23);
      if (v12 != v11)
      {
        v26 = v12;
      }
    }

    while (v12 != v11);
    if (((v26 ^ v23) & 0x8000000000) != 0)
    {
      v21 &= ~1u;
    }

LABEL_40:
    if ((v26 & 0xFFFFFFFC) != 0)
    {
      v37 = v26 | 3;
    }

    else
    {
      v37 = 0;
    }

    if (v37)
    {
      if (v26 & 0x700000000) < a3 << 32 && (_dispatch_set_qos_class_enabled)
      {
        _pthread_workqueue_override_start_direct_check_owner();
      }

      if (v21)
      {
        _dispatch_release_2(a1);
      }

      v33 = 0;
    }

    else if ((v26 & 0x1000000000) != 0)
    {
      v17 = 0;
      if (*a1)
      {
        v17 = *a1;
      }

      (*(v17 + 64))(a1, a3, v21);
      v33 = 0;
    }

    else
    {
      v16 = 0;
      if (v21)
      {
        v16 = a2 == *(v28 + 80);
      }

      if (!v16)
      {
        a4 &= ~8u;
      }

      if (v21)
      {
        _dispatch_release_2_no_dispose(a1);
      }

      v33 = _dispatch_mach_send_drain(a1, 0, a4, v4, v5, v6, v7, v8) & 1;
    }
  }

  else
  {
    v26 = *(v28 + 64);
    while (1)
    {
      v34 = v26;
      if ((v26 & 0x700000000) < a3 << 32)
      {
        v34 = v26 & 0xFFFFFFF8FFFFFFFFLL | (a3 << 32) | 0x2800000000;
      }

      v24 = v34;
      if (v34 == v26)
      {
        break;
      }

      if ((v26 & 0x10FFFFFFFFLL) == 0)
      {
        v24 = (v34 | v27) & 0xFFFFFFC7FFFFFFFFLL;
      }

      v13 = v26;
      v14 = v26;
      atomic_compare_exchange_strong_explicit((v28 + 64), &v14, v24, memory_order_acquire, memory_order_acquire);
      if (v14 != v13)
      {
        v26 = v14;
      }

      if (v14 == v13)
      {
        goto LABEL_40;
      }
    }

    v33 = 0;
  }

  return v33 & 1;
}

uint64_t _dispatch_get_thread_reply_port()
{
  v16 = _dispatch_thread_getspecific(8);
  if (v16)
  {
    special_reply_port = v16;
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: borrowed thread sync reply port", v0, v1, v2, v3, v4, v5, v6, 535);
  }

  else
  {
    special_reply_port = thread_get_special_reply_port();
    _dispatch_thread_setspecific(8, special_reply_port);
    v15 = 0;
    if (special_reply_port)
    {
      v15 = special_reply_port != -1;
    }

    if (!v15)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to allocate reply port, possible port leak";
      __break(1u);
      JUMPOUT(0x7B458);
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: allocated thread sync reply port", v7, v8, v9, v10, v11, v12, v13, 544);
  }

  return special_reply_port;
}

uint64_t __copy_assignment_8_8_S_pa2_27361_0_tv64w64_tv128w64_tv192w32_tv224w8_tv232w1_tv233w1_tv234w1_tv235w1_tv236w1_tv237w1_tv238w1_tv239w1_tv240w8_tv248w8_tv256w32_tv288w32_tv320w32_tv384w64_tv448w64_tv512w128_tv640w32(uint64_t a1, uint64_t a2)
{
  result = __copy_assignment_8_8_pa2_27361_0_tv64w64_tv128w64_tv192w32_tv224w8_tv232w1_tv233w1_tv234w1_tv235w1_tv236w1_tv237w1_tv238w1_tv239w1_tv240w8_tv248w8_tv256w32_tv288w32_tv320w32_tv384w64_tv448w64_tv512w128(a1, a2);
  *(a1 + 80) = *(a2 + 80);
  return result;
}

uint64_t __copy_assignment_8_8_pa2_27361_0_tv64w64_tv128w64_tv192w32_tv224w8_tv232w1_tv233w1_tv234w1_tv235w1_tv236w1_tv237w1_tv238w1_tv239w1_tv240w8_tv248w8_tv256w32_tv288w32_tv320w32_tv384w64_tv448w64_tv512w128(uint64_t result, unint64_t *a2)
{
  v4 = 0;
  if (*a2)
  {
    v4 = *a2;
  }

  *result = v4;
  *(result + 8) = a2[1];
  v2 = atomic_load(a2 + 2);
  atomic_store(v2, (result + 16));
  *(result + 24) = *(a2 + 6);
  *(result + 28) = *(a2 + 28);
  *(result + 29) = *(result + 29) & 0xFE | *(a2 + 29) & 1;
  *(result + 29) = *(result + 29) & 0xFD | (2 * ((*(a2 + 29) & 2) != 0));
  *(result + 29) = *(result + 29) & 0xFB | (4 * ((*(a2 + 29) & 4) != 0));
  *(result + 29) = *(result + 29) & 0xF7 | (8 * ((*(a2 + 29) & 8) != 0));
  *(result + 29) = *(result + 29) & 0xEF | (16 * ((*(a2 + 29) & 0x10) != 0));
  *(result + 29) = *(result + 29) & 0xDF | (32 * ((*(a2 + 29) & 0x20) != 0));
  *(result + 29) = *(result + 29) & 0xBF | (((*(a2 + 29) & 0x40) != 0) << 6);
  *(result + 29) = *(result + 29) & 0x7F | (((*(a2 + 29) & 0x80) != 0) << 7);
  *(result + 30) = *(a2 + 30);
  *(result + 31) = *(a2 + 31);
  *(result + 32) = *(a2 + 8);
  *(result + 36) = *(a2 + 9);
  *(result + 40) = *(a2 + 10);
  *(result + 48) = a2[6];
  *(result + 56) = a2[7];
  v3 = a2[9];
  *(result + 64) = a2[8];
  *(result + 72) = v3;
  return result;
}

void _dispatch_mach_msg_reply_received(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a2;
  v23 = _dispatch_mach_reply_list_tryremove(*(a1 + 120), a2);
  v22 = *(v24 + 24);
  if (v23)
  {
    _dispatch_thread_getspecific(0);
    v19 = *(v24 + 48);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: unregistered for sync reply, ctxt %p", v7, v8, v9, v10, v11, v12, v13, 915);
  }

  if (*(v24 + 30))
  {
    if (v25 != v22 && (v23 || v25 && v25 != -1))
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Reply received on unexpected port";
      qword_E42C0 = v25;
      __break(1u);
      JUMPOUT(0x7B7E0);
    }

    if (v23)
    {
      _dispatch_set_thread_reply_port(v22);
    }

    else
    {
      _dispatch_destruct_reply_port();
    }
  }

  else if (v25 && v25 != -1 && v23)
  {
    v21 = 0;
    v20 = dispatch_mach_msg_create(0, 0x18uLL, 0, &v21, v3, v4, v5, v6);
    *(v21 + 12) = v25;
    *(v20 + 8) = *(v24 + 56);
    *(v24 + 56) = 0;
    *(v20 + 7) = *(v24 + 40);
    *(v20 + 4) = *(v24 + 48);
    _dispatch_mach_msg_set_reason(v20, 0, 9, v14, v15, v16, v17, v18);
    _dispatch_mach_handle_or_push_received_msg(v27, v20, 0);
  }
}

BOOL _dispatch_mach_reply_list_tryremove(uint64_t a1, uint64_t a2)
{
  v15 = (a1 + 40);
  v14 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v9 = 0;
  atomic_compare_exchange_strong_explicit(v15, &v9, v14, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    _dispatch_unfair_lock_lock_slow(v15);
  }

  v11 = *(a2 + 72) != 0;
  if (*(a2 + 72))
  {
    _dispatch_mach_reply_list_remove_locked(a2, v2, v3, v4, v5, v6, v7, v8);
  }

  v16 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v17 = atomic_exchange_explicit((a1 + 40), 0, memory_order_release);
  if (v17 != v16)
  {
    _dispatch_unfair_lock_unlock_slow(a1 + 40, v17);
  }

  return v11;
}

void _dispatch_set_thread_reply_port(unsigned int a1)
{
  if (_dispatch_thread_getspecific(8))
  {
    _dispatch_destruct_reply_port();
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: deallocated sync reply port (found 0x%08x)", v1, v2, v3, v4, v5, v6, v7, 576);
  }

  else
  {
    _dispatch_thread_setspecific(8, a1);
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: restored thread sync reply port", v8, v9, v10, v11, v12, v13, v14, 580);
  }
}

void _dispatch_mach_msg_disconnected(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  v20 = dispatch_mach_msg_create(0, 0x18uLL, 0, &v21, a5, a6, a7, a8);
  if (v23)
  {
    *(v21 + 12) = v23;
  }

  if (v22)
  {
    *(v21 + 8) = v22;
  }

  _dispatch_mach_msg_set_reason(v20, 0, 7, v8, v9, v10, v11, v12);
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tmachport[0x%08x]: %s right disconnected", v13, v14, v15, v16, v17, v18, v19, 964);
  _dispatch_mach_handle_or_push_received_msg(v24, v20, 0);
}

void _dispatch_mach_handle_wlh_change(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = atomic_fetch_or_explicit((a1 + 80), 0x8000000u, memory_order_relaxed);
  if ((v8 & 0x400000) == 0)
  {
    if ((*(a1 + 116) & 0x10) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after xpc connection was activated";
      __break(1u);
      JUMPOUT(0x7BD74);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Changing target queue hierarchy after mach channel was connected";
    __break(1u);
    JUMPOUT(0x7BDA0);
  }

  if ((v8 & 0x8000000) == 0)
  {
    if ((*(a1 + 116) & 0x10) != 0)
    {
      _dispatch_bug_deprecated("Changing target queue hierarchy after xpc connection was activated", a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      _dispatch_bug_deprecated("Changing target queue hierarchy after mach channel was connected", a2, a3, a4, a5, a6, a7, a8);
    }
  }
}

BOOL _dispatch_mach_cancel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = (*(a1 + 118) & 2) != 0;
  if (*(*(a1 + 120) + 88))
  {
    v28 = 0;
  }

  _dispatch_object_debug(a1, "%s", a3, a4, a5, a6, a7, a8, "_dispatch_mach_cancel");
  v27 = 1;
  if ((*(a1 + 80) & 0x40000000) == 0)
  {
    v27 = 3;
  }

  v26 = *(a1 + 128);
  if (v26)
  {
    v25 = *(a1 + 128);
    if ((_dispatch_unote_unregister(v26, v27, v8, v9, v10, v11, v12, v13) & 1) == 0)
    {
      v28 = 0;
    }
  }

  v24 = *(a1 + 88);
  v23 = *(v24 + 24);
  if (v23)
  {
    v22 = *(a1 + 88);
    if (_dispatch_unote_unregister(v24, v27, v8, v9, v10, v11, v12, v13))
    {
      _dispatch_mach_msg_disconnected(a1, v23, 0, v14, v15, v16, v17, v18);
      *(v24 + 24) = 0;
    }

    else
    {
      v28 = 0;
    }
  }

  if (v28)
  {
    for (i = *(a1 + 80); ; i = v20)
    {
      if ((i & 0x3FFFFFFF | 0x80000000) == i)
      {
        v31 = i;
        goto LABEL_19;
      }

      v19 = i;
      v20 = i;
      atomic_compare_exchange_strong_explicit((a1 + 80), &v20, i & 0x3FFFFFFF | 0x80000000, memory_order_relaxed, memory_order_relaxed);
      if (v20 == v19)
      {
        break;
      }
    }

    v31 = i;
LABEL_19:
    if ((v31 & 0xA0000000) != 0)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corrupt channel state";
      qword_E42C0 = v31;
      __break(1u);
      JUMPOUT(0x7C0CCLL);
    }

    _dispatch_release_no_dispose(a1);
  }

  else
  {
    atomic_fetch_or_explicit((a1 + 80), 0x40000000u, memory_order_relaxed);
  }

  return v28;
}

uint64_t _dispatch_mach_cancel_invoke(uint64_t a1, int a2)
{
  v5 = *(a1 + 88);
  v4 = 0;
  if ((a2 & 0x1000000) != 0)
  {
    v4 = _dispatch_autorelease_pool_push();
  }

  if (((*(a1 + 116) >> 2) & 1) == 0)
  {
    _dispatch_mach_connect_invoke(a1);
  }

  v3 = 0;
  if (*(v5 + 40))
  {
    v3 = *(v5 + 40);
  }

  result = _dispatch_client_callout4(*(v5 + 48), 8, 0, 0, v3);
  if (v4)
  {
    result = _dispatch_autorelease_pool_pop(v4);
  }

  *(a1 + 116) = *(a1 + 116) & 0xFFF7 | 8;
  return result;
}

uint64_t _dispatch_unote_create_with_handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return _dispatch_unote_create(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t _dispatch_unote_create(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a3;
  if ((a3 & ~*(a1 + 20)) != 0)
  {
    return 0;
  }

  if (*(a1 + 20) && (*(a1 + 10) & 4) == 0 && !a3)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if ((*(a1 + 12) & 0x100) != 0)
  {
    v6 = _dispatch_calloc_typed();
  }

  else
  {
    v6 = _dispatch_calloc_typed() + 24;
  }

  v5 = 0;
  if (a1)
  {
    v5 = a1;
  }

  *v6 = v5;
  *(v6 + 29) = *(v6 + 29) & 0xDF | (32 * (*(a1 + 10) & 1));
  *(v6 + 24) = a2;
  *(v6 + 28) = *(a1 + 8);
  *(v6 + 32) = v7;
  if ((*(a1 + 12) & 0x100) != 0)
  {
    *(v6 + 29) = *(v6 + 29) & 0xFE | 1;
  }

  return v6;
}

uint64_t _dispatch_unote_create_without_handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return _dispatch_unote_create(a1, 0, a3);
  }
}

void _dispatch_unote_dispose(uint64_t a1, char a2)
{
  if ((*(a1 + 29) & 0x40) != 0)
  {
    _Block_release(*(a1 + 48));
  }

  if ((*(a1 + 29) & 2) != 0)
  {
    v2 = 1;
    if (*(a1 + 112) == -1)
    {
      v2 = *(a1 + 116) != -1;
    }

    if (v2)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Disposing of timer still in its heap";
      __break(1u);
      JUMPOUT(0x7C620);
    }

    if (*(a1 + 104))
    {
      free(*(a1 + 104));
      *(a1 + 104) = 0;
    }
  }

  else
  {
    if ((*(a1 + 29) & 1) == 0)
    {
      free((a1 - 24));
      return;
    }

    if (a2 & 1) != 0 && (*(a1 + 29))
    {
      _dispatch_unote_dispose_defer(a1);
      return;
    }
  }

  free(a1);
}

uint64_t _dispatch_unote_register(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a3;
  v10 = 1;
  if ((*(a1 + 29) & 2) == 0)
  {
    v10 = *(a1 + 16) == 0;
  }

  if (!v10)
  {
    _dispatch_abort(134, v10, a3, a4, a5, a6, a7, a8);
  }

  v11 = a3 & 0x4600FFFF;
  v9 = 1;
  if (a2 != -4)
  {
    v9 = v11 != 0;
  }

  if (!v9)
  {
    _dispatch_abort(143, v9, a3, a4, a5, a6, a7, a8);
  }

  if (v11 == 67125248)
  {
    v16 = ~*(a1 + 8);
    if (MEMORY[0xFFFFFC100])
    {
      kdebug_trace();
    }
  }

  *(a1 + 36) = v12;
  if ((*(a1 + 28) + 23) > 2)
  {
    if ((*(a1 + 29) & 2) != 0)
    {
      _dispatch_timer_unote_register(a1, a2, v12, a4, a5, a6, a7, a8);
      v15 = 1;
    }

    else if (*(a1 + 29))
    {
      v15 = _dispatch_unote_register_direct(a1, a2);
    }

    else
    {
      v15 = _dispatch_unote_register_muxed(a1, a2, a3, a4, a5, a6, a7, a8) & 1;
    }
  }

  else
  {
    *(a1 + 16) = -3;
    v15 = 1;
  }

  return v15 & 1;
}

void _dispatch_timer_unote_register(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = (a3 & 0xF00) >> 8;
  v8 = 0;
  if (v12)
  {
    v8 = v12 <= 2;
  }

  if (v8)
  {
    if (*(a1 + 30))
    {
      v11 = ~*(a1 + 8);
      if (MEMORY[0xFFFFFC100])
      {
        kdebug_trace();
      }
    }

    else
    {
      *(a1 + 30) |= 2u;
      v14 = _dispatch_timer_flags_to_clock(*(a1 + 30));
      v13 = *(a1 + 30) & 3;
      if (v13 >= 3)
      {
        _dispatch_abort(788, v13 < 3, a3, a4, a5, a6, a7, a8);
      }

      *(a1 + 24) = 3 * v14 + v13;
    }
  }

  if ((*(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL) != a2)
  {
    if ((*(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL) != 0)
    {
      _dispatch_abort(860, (*(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL) == 0, a3, a4, a5, a6, a7, a8);
    }

    *(a1 + 16) = -4;
  }

  if (*(a1 + 104))
  {
    _dispatch_timer_unote_configure(a1);
  }
}

void _dispatch_unote_resume(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 1;
  if ((*(a1 + 29) & 2) == 0)
  {
    v10 = *(a1 + 16);
    v8 = 0;
    if (v10)
    {
      v11 = *(a1 + 16);
      v8 = 0;
      if ((v10 & 1) == 0)
      {
        v12 = *(a1 + 16);
        v8 = (v10 & 2) == 0;
      }
    }

    v9 = v8;
  }

  if ((v9 & 1) == 0)
  {
    _dispatch_abort(173, v9 & 1, a3, a4, a5, a6, a7, a8);
  }

  if ((*(a1 + 29) & 2) != 0)
  {
    _dispatch_timer_unote_resume(a1);
  }

  else if (*(a1 + 29))
  {
    _dispatch_unote_resume_direct(a1);
  }

  else
  {
    _dispatch_unote_resume_muxed(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void _dispatch_timer_unote_resume(uint64_t a1)
{
  if ((*(55 - *(a1 + 8)) & 0xFF80000000000000) != 0)
  {
    v22 = 0;
  }

  else
  {
    v15 = 0;
    if (*(a1 + 24) != -1)
    {
      v15 = *(a1 + 80) < 0x7FFFFFFFFFFFFFFFuLL;
    }

    v22 = v15;
  }

  v18 = (*(a1 + 16) & 1) != 0;
  v21 = _dispatch_timer_flags_to_clock(*(a1 + 30));
  v20 = *(a1 + 30) & 3;
  if (v20 >= 3)
  {
    _dispatch_abort(788, v20 < 3, v1, v2, v3, v4, v5, v6);
  }

  v17 = 3 * v21 + v20;
  v16 = _dispatch_timer_unote_heap(a1);
  v14 = 0;
  if (v18)
  {
    v13 = 1;
    if (v22)
    {
      v13 = *(a1 + 24) != v17;
    }

    v14 = v13;
  }

  if (v14)
  {
    _dispatch_timer_unote_disarm(a1, v16, v7, v8, v9, v10, v11, v12);
  }

  if (v22)
  {
    if (!v18)
    {
      _dispatch_retain_2(~*(a1 + 8));
    }

    _dispatch_timer_unote_arm(a1, v16, v17);
  }

  else if (v18)
  {
    _dispatch_release_2_tailcall(~*(a1 + 8));
  }
}

uint64_t _dispatch_unote_unregister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 16))
  {
    if ((*(a1 + 28) + 23) > 2)
    {
      if ((*(a1 + 29) & 2) != 0)
      {
        _dispatch_timer_unote_unregister(a1);
        v9 = 1;
      }

      else if (*(a1 + 29))
      {
        v9 = _dispatch_unote_unregister_direct(a1, a2) & 1;
      }

      else
      {
        if ((a2 & 1) == 0)
        {
          _dispatch_abort(208, a2 & 1, a3, a4, a5, a6, a7, a8);
        }

        v9 = _dispatch_unote_unregister_muxed(a1, a2, a3, a4, a5, a6, a7, a8) & 1;
      }
    }

    else
    {
      *(a1 + 16) = 0;
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

void _dispatch_timer_unote_unregister(uint64_t a1)
{
  v7 = _dispatch_timer_unote_heap(a1);
  if (*(a1 + 16))
  {
    _dispatch_timer_unote_disarm(a1, v7, v1, v2, v3, v4, v5, v6);
    _dispatch_release_2_no_dispose(~*(a1 + 8));
  }

  v10 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  if (v10)
  {
    if (v10 != -4)
    {
      v9 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = atomic_fetch_add_explicit((v10 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
      if (v11 < 0)
      {
        if (v11 <= -2)
        {
          qword_E4290 = "API MISUSE: Over-release of an object";
          __break(1u);
          JUMPOUT(0x7D4A8);
        }

        *(v10 + 56) = 0xDEAD000000000000;
        _dispatch_object_dealloc(v10);
      }
    }
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
}

uint64_t _dispatch_source_data_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 || a3)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v6 = _dispatch_calloc_typed();
  v5 = 0;
  if (a1)
  {
    v5 = a1;
  }

  *v6 = v5;
  *(v6 + 28) = *(a1 + 8);
  *(v6 + 29) = *(v6 + 29) & 0xFE | 1;
  return v6;
}

uint64_t _dispatch_source_signal_create(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 0x20)
  {
    return _dispatch_unote_create_with_handle(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

void _dispatch_timer_unote_configure(uint64_t a1)
{
  v2 = __swp(0, (a1 + 104));
  v1 = v2[6];
  if (v1 != _dispatch_timer_flags_to_clock(*(a1 + 30)))
  {
    *(a1 + 30) &= 0xF3u;
    *(a1 + 30) |= _dispatch_timer_flags_from_clock(v2[6]);
  }

  *(a1 + 80) = *v2;
  *(a1 + 96) = *(v2 + 2);
  free(v2);
  *(a1 + 72) = 0;
  if (*(a1 + 16))
  {
    _dispatch_timer_unote_resume(a1);
  }
}

uint64_t _dispatch_source_timer_create(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v14 = a1;
  v13 = a3;
  if (a3)
  {
    v13 = a3 & 0xFFFFFFFD;
  }

  if ((v13 & ~*(a1 + 20)) != 0)
  {
    return 0;
  }

  if ((*(a1 + 11) & 0x10) != 0)
  {
    if (!a2)
    {
      return 0;
    }
  }

  else if (*(a1 + 8) == -20)
  {
    if (a2)
    {
      return 0;
    }
  }

  else if (a2)
  {
    switch(a2)
    {
      case 1:
        v14 = &_dispatch_source_type_timer_with_clock;
        break;
      case 2:
        v14 = &_dispatch_source_type_timer_with_clock;
        LOBYTE(v13) = v13 | 4;
        break;
      case 3:
        v14 = &_dispatch_source_type_timer_with_clock;
        LOBYTE(v13) = v13 | 8;
        break;
      default:
        return 0;
    }
  }

  v3 = *(v14 + 6);
  v12 = _dispatch_calloc_typed();
  v11 = 0;
  if (v14)
  {
    v11 = v14;
  }

  *v12 = v11;
  *(v12 + 28) = *(v14 + 8);
  *(v12 + 29) = *(v12 + 29) & 0xFD | 2;
  *(v12 + 30) |= v13 | *(v14 + 11);
  v17 = _dispatch_timer_flags_to_clock(*(v12 + 30));
  v16 = *(v12 + 30) & 3;
  if (v16 >= 3)
  {
    _dispatch_abort(788, v16 < 3, v4, v5, v6, v7, v8, v9);
  }

  *(v12 + 24) = 3 * v17 + v16;
  *(v12 + 80) = -1;
  *(v12 + 88) = -1;
  *(v12 + 96) = -1;
  *(v12 + 112) = -1;
  *(v12 + 116) = -1;
  return v12;
}

void _dispatch_event_loop_drain_timers(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  v12 = a2;
  memset(v11, 0, sizeof(v11));
  do
  {
    for (i = 0; i < v12; ++i)
    {
      _dispatch_timers_run(v13, i, v11, a4, a5, a6, a7, a8);
    }

    v8 = *(v13 + 6) & 7;
    *(v13 + 6) = 0;
    for (j = 0; j < v12; ++j)
    {
      if ((*(v13 + 32 * j + 7) & 2) != 0)
      {
        _dispatch_timers_program(v13, j, v11, a4, a5, a6, a7, a8);
      }
    }
  }

  while (*(v13 + 6));
}

void _dispatch_timers_run(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  while (1)
  {
    v14 = *(a1 + 32 * a2 + 8);
    if (!v14)
    {
      break;
    }

    v11 = *(v14 + 24);
    if (v11 != a2)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: tidx";
      qword_E42C0 = v11;
      __break(1u);
      JUMPOUT(0x7DD74);
    }

    if (!*(v14 + 80))
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: missing target";
      qword_E42C0 = 0;
      __break(1u);
      JUMPOUT(0x7DDC8);
    }

    if (!*(a3 + 8 * (a2 / 3)))
    {
      mach_get_times();
      *(a3 + 16) = 0;
    }

    v12 = *(a3 + 8 * (a2 / 3));
    if (*(v14 + 80) > v12)
    {
      break;
    }

    if ((*(v14 + 30) & 0x40) != 0)
    {
      _dispatch_timer_unote_disarm(v14, a1, a3, a4, a5, a6, a7, a8);
      v19 = *(v14 + 16) & 0xFFFFFFFFFFFFFFFCLL;
      if (v19)
      {
        if (v19 != -4)
        {
          v20 = atomic_fetch_add_explicit((v19 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
          if (v20 < 0)
          {
            if (v20 <= -2)
            {
              qword_E4290 = "API MISUSE: Over-release of an object";
              __break(1u);
              JUMPOUT(0x7DFD8);
            }

            *(v19 + 56) = 0xDEAD000000000000;
            _dispatch_object_dealloc(v19);
          }
        }
      }

      *(v14 + 16) = 0;
      *(v14 + 72) = 2;
      v10 = 0;
      if (*v14)
      {
        v10 = *v14;
      }

      (*(v10 + 48))(v14, 16, 0);
    }

    else if (*(v14 + 104))
    {
      _dispatch_timer_unote_configure(v14);
    }

    else
    {
      if (*(v14 + 72))
      {
        _dispatch_timer_unote_disarm(v14, a1, a3, a4, a5, a6, a7, a8);
        atomic_fetch_or_explicit((v14 + 72), 1uLL, memory_order_relaxed);
      }

      else
      {
        v22 = (v12 - *(v14 + 80)) / *(v14 + 96) + 1;
        if (v22 < 0)
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (*(v14 + 96) > 0x7FFFFFFFFFFFFFFEuLL)
        {
          *(v14 + 80) = -1;
          *(v14 + 88) = -1;
        }

        else
        {
          v21 = v22 * *(v14 + 96);
          *(v14 + 80) += v21;
          *(v14 + 88) += v21;
        }

        v13 = 2 * v22;
        if ((*(55 - *(v14 + 8)) & 0xFF80000000000000) != 0)
        {
          if (MEMORY[0xFFFFFC100])
          {
            kdebug_trace();
          }

          v18 = 0;
        }

        else
        {
          v9 = 0;
          if (*(v14 + 24) != -1)
          {
            v9 = *(v14 + 80) < 0x7FFFFFFFFFFFFFFFuLL;
          }

          v18 = v9;
        }

        if (v18)
        {
          _dispatch_retain_2(~*(v14 + 8));
          _dispatch_timer_unote_arm(v14, a1, a2);
          *(v14 + 72) = v13;
        }

        else
        {
          _dispatch_timer_unote_disarm(v14, a1, a3, a4, a5, a6, a7, a8);
          atomic_store(v13 | 1, (v14 + 72));
        }
      }

      v8 = 0;
      if (*v14)
      {
        v8 = *v14;
      }

      (*(v8 + 48))(v14, 16, 0);
    }
  }
}

void _dispatch_timers_program(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2 % 3;
  v20 = a2 % 3;
  if (*(a1 + 32 * a2 + 8))
  {
    v18 = *(*(a1 + 32 * a2 + 8) + 80);
    v17 = *(*(a1 + 32 * a2 + 16) + 88);
    v10 = 0;
    if (v18 <= v17)
    {
      v10 = v18 < 0x7FFFFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      _dispatch_abort(1148, v10, a3, a4, a5, a6, a7, a8);
    }

    v25 = a2 / 3;
    if (!*(a3 + 8 * (a2 / 3)))
    {
      mach_get_times();
      *(a3 + 16) = 0;
    }

    v16 = *(a3 + 8 * v25);
    if (v18 > v16)
    {
      if (v20 < 3 && *(a1 + 32 * a2) > 2u)
      {
        v15 = _dispatch_kevent_coalescing_window[v20];
        if (v18 + v15 < v17)
        {
          v18 = _dispatch_timer_heap_max_target_before(a1 + 32 * a2, v17 - v15);
        }
      }

      if (v18 - v16 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v18 - v16;
      }

      v23 = v9;
      if (v17 - v18 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v17 - v18;
      }

      v24 = v8;
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }
  }

  else
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    if (v23 < 0x7FFFFFFFFFFFFFFFLL)
    {
      _dispatch_trace_next_timer[v11] = *(a1 + 32 * a2 + 8);
      v26 = _dispatch_trace_next_timer[v11];
      _dispatch_event_loop_timer_arm(a1, a2, v23, v24, a3);
      *(a1 + 32 * a2 + 7) = *(a1 + 32 * a2 + 7) & 0xFE | 1;
      *(a1 + 32 * a2 + 7) &= ~2u;
      return;
    }
  }

  else
  {
    *(a1 + 6) |= (1 << (a2 % 3)) | 0x80;
  }

  _dispatch_trace_next_timer[v11] = 0;
  if (*(a1 + 32 * a2 + 7))
  {
    _dispatch_event_loop_timer_delete(a1, a2);
  }

  *(a1 + 32 * a2 + 7) &= ~1u;
  *(a1 + 32 * a2 + 7) &= ~2u;
}

void *_dispatch_timer_unote_heap(uint64_t a1)
{
  v2 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL;
  if (v2 == -4)
  {
    return &_dispatch_timers_heap;
  }

  else
  {
    return *(v2 + 48);
  }
}

void _dispatch_timer_unote_disarm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a1 + 24);
  if ((*(a1 + 16) & 1) == 0)
  {
    _dispatch_abort(800, (*(a1 + 16) & 1) != 0, a3, a4, a5, a6, a7, a8);
  }

  _dispatch_timer_heap_remove(a2 + 32 * v17, a1);
  *(a2 + 6) |= (1 << (v17 % 3)) | 0x80;
  *(a1 + 16) &= ~1uLL;
  _dispatch_thread_getspecific(0);
  v15 = ~*(a1 + 8);
  v16 = *(a1 + 24);
  _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { ident = 0x%x }", v8, v9, v10, v11, v12, v13, v14, 804);
}

uint64_t _dispatch_timer_unote_arm(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 16))
  {
    v24 = *(a1 + 24);
    if (v24 != a3)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: tidx";
      qword_E42C0 = v24;
      __break(1u);
      JUMPOUT(0x7F358);
    }

    v28 = a2 + 32 * a3;
    if (*(a1 + 112) == -1)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: target idx";
      qword_E42C0 = 0xFFFFFFFFLL;
      __break(1u);
      JUMPOUT(0x7F3C4);
    }

    if (*(a1 + 116) == -1)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: deadline idx";
      qword_E42C0 = 0xFFFFFFFFLL;
      __break(1u);
      JUMPOUT(0x7F414);
    }

    _dispatch_timer_heap_resift(v28, a1, *(a1 + 112));
    _dispatch_timer_heap_resift(v28, a1, *(a1 + 116));
    _dispatch_thread_getspecific(0);
    v21 = *(a1 + 24);
    v19 = ~*(a1 + 8);
    _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { ident = 0x%x }", v3, v4, v5, v6, v7, v8, v9, 814);
  }

  else
  {
    *(a1 + 24) = a3;
    v32 = a2 + 32 * a3;
    v10 = *v32;
    *v32 += 2;
    v31 = v10;
    v30 = *(a1 + 112);
    if (v30 != -1)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: target idx";
      qword_E42C0 = v30;
      __break(1u);
      JUMPOUT(0x7F518);
    }

    v29 = *(a1 + 116);
    if (v29 != -1)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: deadline idx";
      qword_E42C0 = v29;
      __break(1u);
      JUMPOUT(0x7F568);
    }

    if ((*(a1 + 36) & 0xF00u) >> 8 > (*(a1 + 36) & 0xF000u) >> 12)
    {
      v23 = (*(a1 + 36) & 0xF00u) >> 8;
    }

    else
    {
      v23 = (*(a1 + 36) & 0xF000u) >> 12;
    }

    if (*(v32 + 5) < v23)
    {
      *(v32 + 5) = v23;
      *(v32 + 7) |= 2u;
    }

    if (v10)
    {
      if (*(v32 + 4))
      {
        v33 = (8 << (*(v32 + 4) - 1)) - (*(v32 + 4) - 1) + 2;
      }

      else
      {
        v33 = 2;
      }

      if (v10 + 2 > v33)
      {
        _dispatch_timer_heap_grow(v32);
      }

      _dispatch_timer_heap_resift(v32, a1, v31);
      _dispatch_timer_heap_resift(v32, a1, v31 + 1);
    }

    else
    {
      *(v32 + 7) |= 2u;
      *(a1 + 112) = 0;
      *(a1 + 116) = 1;
      *(v32 + 16) = a1;
      *(v32 + 8) = a1;
    }

    *(a1 + 16) |= 1uLL;
    _dispatch_thread_getspecific(0);
    v22 = *(a1 + 24);
    v20 = ~*(a1 + 8);
    _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { ident = 0x%x }", v11, v12, v13, v14, v15, v16, v17, 819);
  }

  result = 2863311531;
  *(a2 + 6) |= (1 << (a3 % 3)) | 0x80;
  return result;
}

void _dispatch_timer_heap_remove(uint64_t a1, uint64_t a2)
{
  v2 = *a1 - 2;
  *a1 = v2;
  v7 = v2;
  if (*(a2 + 112) == -1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: target idx";
    qword_E42C0 = 0xFFFFFFFFLL;
    __break(1u);
    JUMPOUT(0x7F8F8);
  }

  if (*(a2 + 116) == -1)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: deadline idx";
    qword_E42C0 = 0xFFFFFFFFLL;
    __break(1u);
    JUMPOUT(0x7F950);
  }

  if (v2)
  {
    for (i = 0; i <= 1; ++i)
    {
      v13 = v7 + i;
      v11 = *(a1 + 4);
      if (v7 + i > 1)
      {
        v14 = v13 - 2;
        v12 = 29 - __clz(v14 | 7);
        if (v12 + 1 == v11)
        {
          v10 = *(a1 + 24);
        }

        else
        {
          v10 = *(*(a1 + 24) + 8 * (~v12 + (8 << (v11 - 2))));
        }

        if (v12)
        {
          v14 -= 8 << (v12 - 1);
        }

        v15 = (v10 + 8 * v14);
      }

      else
      {
        v15 = (a1 + 8 * v13 + 8);
      }

      v3 = *v15;
      *v15 = 0;
      if (v3 != a2)
      {
        _dispatch_timer_heap_resift(a1, v3, *(a2 + 4 * i + 112));
      }
    }

    if (*(a1 + 4) == 1)
    {
      v16 = 2;
    }

    else
    {
      v16 = (8 << (*(a1 + 4) - 2)) - (*(a1 + 4) - 2) + 2;
    }

    if (v7 <= v16)
    {
      _dispatch_timer_heap_shrink(a1);
    }
  }

  else
  {
    v6 = *(a1 + 8);
    if (v6 != a2)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: target slot";
      qword_E42C0 = v6;
      __break(1u);
      JUMPOUT(0x7F9B8);
    }

    v5 = *(a1 + 16);
    if (v5 != a2)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Timer: deadline slot";
      qword_E42C0 = v5;
      __break(1u);
      JUMPOUT(0x7FA14);
    }

    *(a1 + 7) |= 2u;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
  }

  *(a2 + 112) = -1;
  *(a2 + 116) = -1;
}

uint64_t _dispatch_timer_heap_resift(uint64_t result, uint64_t a2, unsigned int a3)
{
  v16 = a3;
  v11 = *result;
  v9 = 0;
  v34 = *(result + 4);
  if (a3 >= 2)
  {
    v36 = a3 - 2;
    v3 = __clz((a3 - 2) | 7);
    v35 = 29 - v3;
    if (30 - v3 == v34)
    {
      v33 = *(result + 24);
    }

    else
    {
      v33 = *(*(result + 24) + 8 * ((8 << (v34 - 2)) - v35 - 1));
    }

    if (v35)
    {
      v36 -= 8 << (28 - v3);
    }

    v37 = v33 + 8 * v36;
  }

  else
  {
    v37 = result + 8 + 8 * a3;
  }

  v10 = v37;
  while (v16 >= 2)
  {
    v30 = ((v16 - 2) / 2) & 0xFFFFFFFE | v16 & 1;
    v28 = *(result + 4);
    if (v30 >= 2)
    {
      v31 = v30 - 2;
      v4 = __clz(v31 | 7);
      v29 = 29 - v4;
      if (30 - v4 == v28)
      {
        v27 = *(result + 24);
      }

      else
      {
        v27 = *(*(result + 24) + 8 * ((8 << (v28 - 2)) - v29 - 1));
      }

      if (v29)
      {
        v31 -= 8 << (28 - v4);
      }

      v32 = (v27 + 8 * v31);
    }

    else
    {
      v32 = (result + 8 + 8 * v30);
    }

    v15 = *v32;
    if (*(*v32 + 80 + 8 * (a3 & 1)) <= *(a2 + 80 + 8 * (a3 & 1)))
    {
      break;
    }

    v5 = *v32;
    *v10 = v15;
    *(v15 + 112 + 4 * (v16 & 1)) = v16;
    v10 = v32;
    v16 = ((v16 - 2) / 2) & 0xFFFFFFFE | v16 & 1;
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    while (1)
    {
      v12 = 2 * v16 + 2 - (v16 & 1);
      if (v12 >= v11)
      {
        break;
      }

      v8 = v12 + 2;
      v23 = *(result + 4);
      if (v12 >= 2)
      {
        v25 = 2 * v16 - (v16 & 1);
        v6 = __clz(v25 | 7);
        v24 = 29 - v6;
        if (30 - v6 == v23)
        {
          v22 = *(result + 24);
        }

        else
        {
          v22 = *(*(result + 24) + 8 * ((8 << (v23 - 2)) - v24 - 1));
        }

        if (v24)
        {
          v25 -= 8 << (28 - v6);
        }

        v26 = (v22 + 8 * v25);
      }

      else
      {
        v26 = (result + 8 + 8 * v12);
      }

      v14 = v26;
      v13 = *v26;
      if (v8 < v11)
      {
        v18 = *(result + 4);
        if (v8 >= 2)
        {
          v20 = 2 * v16 + 2 - (v16 & 1);
          v7 = __clz(v12 | 7);
          v19 = 29 - v7;
          if (30 - v7 == v18)
          {
            v17 = *(result + 24);
          }

          else
          {
            v17 = *(*(result + 24) + 8 * ((8 << (v18 - 2)) - v19 - 1));
          }

          if (v19)
          {
            v20 = v12 - (8 << (28 - v7));
          }

          v21 = (v17 + 8 * v20);
        }

        else
        {
          v21 = (result + 8 + 8 * v8);
        }

        if (*(v13 + 80 + 8 * (a3 & 1)) > *(*v21 + 80 + 8 * (a3 & 1)))
        {
          v12 += 2;
          v13 = *v21;
          v14 = v21;
        }
      }

      if (*(a2 + 80 + 8 * (a3 & 1)) <= *(v13 + 80 + 8 * (a3 & 1)))
      {
        break;
      }

      if (v16 < 2)
      {
        *(result + 7) = *(result + 7) & 0xFD | 2;
      }

      *v10 = v13;
      *(v13 + 112 + 4 * (v16 & 1)) = v16;
      v10 = v14;
      v16 = v12;
    }
  }

  if (v16 < 2)
  {
    *(result + 7) = *(result + 7) & 0xFD | 2;
  }

  *v10 = a2;
  *(a2 + 112 + 4 * (v16 & 1)) = v16;
  return result;
}

void _dispatch_timer_heap_shrink(uint64_t a1)
{
  v1 = *(a1 + 4);
  *(a1 + 4) = v1 - 1;
  v4 = (v1 - 1);
  v3 = *(a1 + 24);
  v2 = 0;
  if (v1 != 1)
  {
    v2 = v3[(8 << (v1 - 2)) - v4];
  }

  if (v4 > 1)
  {
    __memcpy_chk();
  }

  *(a1 + 24) = v2;
  free(v3);
}

uint64_t _dispatch_timer_heap_grow(uint64_t a1)
{
  v6 = 8;
  v1 = *(a1 + 4);
  *(a1 + 4) = v1 + 1;
  v5 = v1;
  v3 = *(a1 + 24);
  if (v1)
  {
    v6 = 8 << (v1 - 1);
  }

  result = _dispatch_calloc_typed();
  v4 = result;
  if (v5 > 1)
  {
    result = __memcpy_chk();
  }

  if (v5)
  {
    *(v4 + 8 * (v6 - v5)) = v3;
  }

  *(a1 + 24) = v4;
  return result;
}

unint64_t _dispatch_timer_heap_max_target_before(uint64_t a1, unint64_t a2)
{
  v9 = 2;
  v8 = *a1;
  v6 = *(*(a1 + 8) + 80);
  while (v9 < v8)
  {
    v11 = *(a1 + 4);
    if (v9 >= 2)
    {
      v13 = v9 - 2;
      v2 = __clz((v9 - 2) | 7);
      v12 = 29 - v2;
      if (30 - v2 == v11)
      {
        v10 = *(a1 + 24);
      }

      else
      {
        v10 = *(*(a1 + 24) + 8 * ((8 << (v11 - 2)) - v12 - 1));
      }

      if (v12)
      {
        v13 -= 8 << (28 - v2);
      }

      v14 = v10 + 8 * v13;
    }

    else
    {
      v14 = a1 + 8 + 8 * v9;
    }

    v7 = *(*v14 + 80);
    if (v7 <= a2)
    {
      if (v7 > v6)
      {
        v6 = *(*v14 + 80);
      }

      if (2 * v9 + 2 - (v9 & 1) >= v8)
      {
        v18 = v9 - (v9 & 1);
        if (v18 + 2 == v8)
        {
          v18 = ((v18 - 2) / 2) & 0xFFFFFFFE | v18 & 1;
        }

        v19 = (v18 + 3) >> __clz(__rbit32(~(v18 + 3)));
        if (v19)
        {
          v4 = 2 * v19 + (v9 & 1);
        }

        else
        {
          v4 = -1;
        }

        v17 = v4;
      }

      else
      {
        v17 = 2 * v9 + 2 - (v9 & 1);
      }

      v9 = v17;
    }

    else
    {
      v15 = v9 - (v9 & 1);
      if (v15 + 2 == v8)
      {
        v15 = ((v15 - 2) / 2) & 0xFFFFFFFE | v15 & 1;
      }

      v16 = (v15 + 3) >> __clz(__rbit32(~(v15 + 3)));
      if (v16)
      {
        v5 = 2 * v16 + (v9 & 1);
      }

      else
      {
        v5 = -1;
      }

      v9 = v5;
    }
  }

  return v6;
}

uint64_t _dispatch_sync_ipc_handoff_begin(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v5[0] = a2;
  v5[1] = 655343;
  v5[2] = a1;
  v5[3] = 2147483904;
  v6 = 0uLL;
  v7 = a3;
  v8 = -1;
  v9 = a1;
  result = _dispatch_kq_immediate_update(a1, v5);
  v4 = 0;
  if (result)
  {
    v4 = result != 2;
  }

  if (v4)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
    qword_E42C0 = result;
    __break(1u);
    JUMPOUT(0x80C1CLL);
  }

  return result;
}

uint64_t _dispatch_kq_immediate_update(uint64_t a1, uint64_t a2)
{
  v12 = _dispatch_thread_getspecific(29);
  if (v12)
  {
    _dispatch_abort(453, (v12 & 1) == 0, v2, v3, v4, v5, v6, v7);
  }

  if (v12 && *(v12 + 24) == a1)
  {
    v14 = *(v12 + 40);
      ;
    }

    if (i < *(v12 + 48))
    {
      v8 = *(v12 + 48);
      *(v12 + 48) = v8 - 1;
      if (i != (v8 - 1))
      {
        memcpy((*(v12 + 40) + 72 * i), (*(v12 + 40) + 72 * (v8 - 1)), 0x48uLL);
      }
    }
  }

  return _dispatch_kq_drain(a1, a2, 1, 3u);
}

void _dispatch_sync_ipc_handoff_end(uint64_t a1, unsigned int a2)
{
  v11 = a2;
  __b = a2;
  v3 = -17;
  v4 = 7;
  v5 = 0;
  v6 = 0x80000000;
  v7 = 0;
  v8 = 0;
  v9 = 0u;
  v10 = 0u;
  _dispatch_kq_deferred_update(a1, &__b);
}

void _dispatch_kq_deferred_update(uint64_t a1, uint64_t a2)
{
  v27 = _dispatch_thread_getspecific(29);
  if (v27)
  {
    _dispatch_abort(453, (v27 & 1) == 0, v2, v3, v4, v5, v6, v7);
  }

  if (v27 && *(v27 + 24) == a1 && *(v27 + 50))
  {
    v29 = *(v27 + 40);
      ;
    }

    v32 = i;
    if (a1 != -4)
    {
      _dispatch_thread_setspecific(5, 1);
    }

    if (i == *(v27 + 50))
    {
      v31 = *(v27 + 48);
      *(v27 + 48) = 1;
      v30 = *(v27 + 32);
      *(v27 + 32) = 0;
      _dispatch_kq_drain(a1, *(v27 + 40), v31, 3u);
      if (*(v27 + 48) != 1)
      {
        _dispatch_abort(959, *(v27 + 48) == 1, v8, v9, v10, v11, v12, v13);
      }

      if (*(v27 + 32))
      {
        _dispatch_abort(960, *(v27 + 32) == 0, v8, v9, v10, v11, v12, v13);
      }

      v35 = v30;
      v34 = 0;
      while (v35)
      {
        v33 = v35[1];
        free(v35);
        ++v34;
        v35 = v33;
      }

      if (v34)
      {
        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\tfreed %d deferred unotes", v14, v15, v16, v17, v18, v19, v20, 920);
      }

      if (v34 >= 0x11u)
      {
        qword_E4290 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
        qword_E42C0 = v34;
        __break(1u);
        JUMPOUT(0x81274);
      }

      v32 = 0;
    }

    else if (i == *(v27 + 48))
    {
      ++*(v27 + 48);
    }

    v24 = *(v27 + 40) + 72 * v32;
    *v24 = *a2;
    v21 = *(a2 + 16);
    v22 = *(a2 + 32);
    v23 = *(a2 + 48);
    *(v24 + 64) = *(a2 + 64);
    *(v24 + 48) = v23;
    *(v24 + 32) = v22;
    *(v24 + 16) = v21;
    if (*(a2 + 8) != -10)
    {
      dispatch_kevent_debug("deferred", a2, 0, 0, "_dispatch_kq_deferred_update", 0x3E1u);
    }
  }

  else
  {
    _dispatch_kq_drain(a1, a2, 1, 3u);
  }
}

uint64_t _dispatch_unote_register_muxed(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *(a1 + 6);
  if (*(a1 + 28) == -24 || *(a1 + 28) == -8)
  {
    v38 >>= 8;
  }

  v36 = &_dispatch_sources + 8 * (v38 & 0x3F);
  v34 = 1;
    ;
  }

  v35 = i;
  if (i)
  {
    v33 = a1[4] & ~*(i + 48);
    if (v33)
    {
      *(i + 48) |= v33;
      v31 = 0;
      if (*a1)
      {
        v31 = *a1;
      }

      if (*(v31 + 40))
      {
        v30 = 0;
        if (*a1)
        {
          v30 = *a1;
        }

        v34 = (*(v30 + 40))(i);
      }

      else
      {
        v34 = _dispatch_kq_immediate_update(-4, i + 24) == 0;
      }

      if ((v34 & 1) == 0)
      {
        *(i + 48) &= ~v33;
      }
    }

    goto LABEL_45;
  }

  v35 = _dispatch_calloc_typed();
  v46 = a1;
  v45 = (v35 + 24);
  v44 = 5;
  v43 = a1;
  v29 = 0;
  if (*a1)
  {
    v29 = *a1;
  }

  v42 = v29;
  v41 = *(v29 + 12) | v44;
  if ((v41 & 0x200) != 0 && (v41 & 1) == 0)
  {
    v41 &= ~0x200u;
  }

  __src[0] = v43[6];
  LOWORD(__src[1]) = *(v42 + 8);
  WORD1(__src[1]) = v41;
  v60 = v43[9];
  v59 = 0;
  v58 = 0;
  if ((v60 & 0x4000000) != 0)
  {
    v58 = v60 & 0x8E000000 | 0xFFLL;
    v64 = v60 & 0xF000;
    v59 = v64 >> 12;
    v63 = v64 >> 12 != 0;
    v62 = 523;
    if (!(v64 >> 12))
    {
      _dispatch_abort(v62, v63, v8, v9, v10, v11, v12, v13);
    }

    goto LABEL_32;
  }

  v58 = v60 & 0x8E0000FF;
  v65 = v60 & 0xF00;
  v59 = v65 >> 8;
  if (v65 >> 8)
  {
LABEL_32:
    v61 = v58 | (1 << (v59 + 7));
    goto LABEL_33;
  }

  v61 = v58;
LABEL_33:
  HIDWORD(__src[1]) = v61;
  __src[2] = v43;
  __src[3] = v43[8] | *(v42 + 16);
  __src[4] = *(v42 + 14);
  memset(&__src[5], 0, 32);
  memcpy(v45, __src, 0x48uLL);
  *(v35 + 36) = 0x2000000;
  *(v35 + 40) = v35 | 1;
  v28 = 0;
  if (*a1)
  {
    v28 = *a1;
  }

  if (*(v28 + 40))
  {
    v27 = 0;
    if (*a1)
    {
      v27 = *a1;
    }

    v34 = (*(v27 + 40))(v35);
  }

  else
  {
    v34 = _dispatch_kq_immediate_update(-4, v35 + 24) == 0;
  }

  if (v34)
  {
    *(v35 + 34) &= 0xFDFEu;
    v14 = *v36;
    *v35 = *v36;
    if (v14)
    {
      *(*v36 + 8) = v35;
    }

    *v36 = v35;
    *(v35 + 8) = v36;
  }

  else
  {
    free(v35);
  }

LABEL_45:
  if (v34)
  {
    v47 = a1;
    v15 = (*(a1 + 29) & 1) == 0;
    v57 = v15;
    v56 = 622;
    if (!v15)
    {
      _dispatch_abort(v56, v57, a3, a4, a5, a6, a7, a8);
    }

    v32 = v47 - 3;
    v16 = *(v35 + 16);
    *(v47 - 3) = v16;
    if (v16)
    {
      *(*(v35 + 16) + 8) = v32;
    }

    *(v35 + 16) = v32;
    v32[1] = v35 + 16;
    if (*(a1 + 28) == -24)
    {
      *(a1 + 30) = *(v35 + 64) != 0;
    }

    v32[2] = v35;
    v50 = a1;
    v49 = -4;
    v48 = 1;
    v55 = a1;
    v54 = -3;
    v53 = -3;
    v52 = -3;
    a1[2] = -3;
    v51 = v53;
    _dispatch_thread_getspecific(0);
    v25 = ~a1[1];
    _evfiltstr(*(a1 + 28));
    v26 = *(a1 + 6);
    _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", v17, v18, v19, v20, v21, v22, v23, 1229);
  }

  return v34 & 1;
}

const char *_evfiltstr(__int16 a1)
{
  switch(a1)
  {
    case -24:
      v2 = "DISPATCH_EVFILT_MACH_NOTIFICATION";
      break;
    case -23:
      v2 = "DISPATCH_EVFILT_CUSTOM_REPLACE";
      break;
    case -22:
      v2 = "DISPATCH_EVFILT_CUSTOM_OR";
      break;
    case -21:
      v2 = "DISPATCH_EVFILT_CUSTOM_ADD";
      break;
    case -20:
      v2 = "DISPATCH_EVFILT_TIMER_WITH_CLOCK";
      break;
    case -19:
      v2 = "DISPATCH_EVFILT_TIMER";
      break;
    case -18:
      v2 = "EVFILT_EXCLAVES_NOTIFICATION";
      break;
    case -17:
      v2 = "EVFILT_WORKLOOP";
      break;
    case -14:
      v2 = "EVFILT_MEMORYSTATUS";
      break;
    case -13:
      v2 = "EVFILT_SOCK";
      break;
    case -10:
      v2 = "EVFILT_USER";
      break;
    case -9:
      v2 = "EVFILT_FS";
      break;
    case -8:
      v2 = "EVFILT_MACHPORT";
      break;
    case -7:
      v2 = "EVFILT_TIMER";
      break;
    case -6:
      v2 = "EVFILT_SIGNAL";
      break;
    case -5:
      v2 = "EVFILT_PROC";
      break;
    case -4:
      v2 = "EVFILT_VNODE";
      break;
    case -3:
      v2 = "EVFILT_AIO";
      break;
    case -2:
      v2 = "EVFILT_WRITE";
      break;
    case -1:
      v2 = "EVFILT_READ";
      break;
    default:
      v2 = "EVFILT_missing";
      break;
  }

  return v2;
}

void _dispatch_unote_resume_muxed(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1[2] |= 1uLL;
  v9 = 0;
  if (*a1)
  {
    v9 = *a1;
  }

  if (*(v9 + 40))
  {
    if (*(a1 + 29))
    {
      _dispatch_abort(622, (*(a1 + 29) & 1) == 0, a3, a4, a5, a6, a7, a8);
    }

    v8 = 0;
    if (*a1)
    {
      v8 = *a1;
    }

    (*(v8 + 40))(*(a1 - 1));
  }

  else
  {
    if (*(a1 + 29))
    {
      _dispatch_abort(622, (*(a1 + 29) & 1) == 0, a3, a4, a5, a6, a7, a8);
    }

    _dispatch_kq_deferred_update(-4, *(a1 - 1) + 24);
  }
}

uint64_t _dispatch_unote_unregister_muxed(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a1;
  if (*(a1 + 29))
  {
    _dispatch_abort(622, (*(a1 + 29) & 1) == 0, a3, a4, a5, a6, a7, a8);
  }

  v31 = a1 - 3;
  v30 = *(a1 - 1);
  v29 = 0;
  v28 = 0;
  if (v30[16] == -24)
  {
    *(a1 + 30) = 0;
  }

  a1[2] = 0;
  if (*v31)
  {
    *(*(a1 - 3) + 8) = *(a1 - 2);
  }

  **(a1 - 2) = *(a1 - 3);
  *v31 = -1;
  *(a1 - 2) = -1;
  *v31 = -1;
  *(a1 - 2) = -1;
  *(a1 - 1) = 0;
  if (*(v30 + 2))
  {
    v26 = 0;
    if (*a1)
    {
      v26 = *a1;
    }

    v27 = *(v26 + 16);
    for (i = *(v30 + 2); i; i = *i)
    {
      v33 = i + 3;
      v27 |= *(i + 14);
    }

    if ((*(v30 + 12) & ~v27) != 0)
    {
      *(v30 + 12) &= v27;
      v29 = 1;
    }
  }

  else
  {
    v28 = 1;
    v29 = (v30[17] & 2) == 0;
    v30[17] |= 2u;
  }

  if (v29)
  {
    v25 = 0;
    if (*v33)
    {
      v25 = *v33;
    }

    if (*(v25 + 40))
    {
      v24 = 0;
      if (*v33)
      {
        v24 = *v33;
      }

      if (((*(v24 + 40))(v30) & 1) == 0)
      {
        _dispatch_bug(1282, 0, v8, v9, v10, v11, v12, v13);
      }
    }

    else
    {
      _dispatch_kq_deferred_update(-4, v30 + 12);
    }
  }

  if (v28)
  {
    if (*v30)
    {
      *(*v30 + 8) = *(v30 + 1);
    }

    **(v30 + 1) = *v30;
    *v30 = -1;
    *(v30 + 1) = -1;
    free(v30);
  }

  _dispatch_thread_getspecific(0);
  v22 = ~v33[1];
  _evfiltstr(*(v33 + 28));
  v23 = *(v33 + 6);
  _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", v14, v15, v16, v17, v18, v19, v20, 1291);
  return 1;
}

BOOL _dispatch_kq_unote_update(uint64_t a1, uint64_t *a2, __int16 a3)
{
  v86 = a2;
  v85 = a1;
  v84 = a3;
  v124 = _dispatch_thread_getspecific(29);
  v132 = (v124 & 1) == 0;
  v131 = 453;
  if (v124)
  {
    _dispatch_abort(v131, v132, v3, v4, v5, v6, v7, v8);
  }

  v83 = v124;
  v82 = v86;
  v81 = 0;
  v80 = 0;
  if (v84)
  {
    v171 = v85;
    if (v85)
    {
      if (v171 != -4)
      {
        v170 = v171;
        v215 = v171;
        v212 = 1;
        v211 = 1;
        v213 = 1;
        v207 = 1;
        v206 = 1;
        v208 = 1;
        add_explicit = atomic_fetch_add_explicit((v171 + 96), 1u, memory_order_relaxed);
        v209 = add_explicit;
        v204 = add_explicit;
        v210 = add_explicit + 1;
        v214 = add_explicit + 1;
        if ((add_explicit + 1) <= 0)
        {
          qword_E4290 = "API MISUSE: Resurrection of an object";
          __break(1u);
          JUMPOUT(0x82680);
        }
      }
    }

    v79 = v82;
    v108 = v82;
    v107 = v85;
    v106 = 1;
    v113 = v82;
    v112 = v85 | 1;
    v111 = v85 | 1;
    v110 = v85 | 1;
    *(v82 + 2) = v85 | 1;
    v109 = v111;
  }

  if (v83 && *(v83 + 24) == v85)
  {
    v9 = *(v82 + 28);
    v10 = v82[6];
    v130 = v83;
    v129 = v9;
    v128 = v10;
    v127 = v82;
    v126 = *(v83 + 40);
      ;
    }

    v78 = i;
    if (i < *(v83 + 48))
    {
      v84 |= *(*(v83 + 40) + 72 * v78 + 10) & 4;
    }

    if ((v84 & 1) == 0 && (v84 & 4) != 0)
    {
      v142 = v85;
      v141 = v83;
      v140 = v78;
      if (v85 != -4)
      {
        _dispatch_thread_setspecific(5, 1);
      }

      if (v140 == *(v141 + 50))
      {
        v139 = *(v141 + 48);
        *(v141 + 48) = 1;
        v138 = *(v141 + 32);
        *(v141 + 32) = 0;
        v11 = *(v141 + 40);
        v153 = v142;
        v152 = v11;
        v151 = v139;
        _dispatch_kq_drain(v142, v11, v139, 3);
        v12 = *(v141 + 48) == 1;
        v150 = *(v141 + 48) == 1;
        v149 = 959;
        if (!v12)
        {
          _dispatch_abort(v149, v150, v3, v4, v5, v6, v7, v8);
        }

        v13 = *(v141 + 32) == 0;
        v148 = *(v141 + 32) == 0;
        v147 = 960;
        if (!v13)
        {
          _dispatch_abort(v147, v148, v3, v4, v5, v6, v7, v8);
        }

        v146 = v138;
        v145 = 0;
        while (v146)
        {
          v144 = *(v146 + 1);
          free(v146);
          ++v145;
          v146 = v144;
        }

        if (v145)
        {
          _dispatch_thread_getspecific(0);
          _dispatch_log("%u\t%p\tfreed %d deferred unotes", v14, v15, v16, v17, v18, v19, v20, 920);
        }

        if (v145 >= 0x11u)
        {
          v143 = v145;
          qword_E4290 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
          qword_E42C0 = v145;
          __break(1u);
          JUMPOUT(0x82A54);
        }

        v140 = 0;
      }

      else if (v140 == *(v141 + 48))
      {
        ++*(v141 + 48);
      }

      v81 = (*(v141 + 40) + 72 * v140);
      v77 = v82;
      v105 = v82;
      v104 = v81;
      v103 = v84;
      v102 = v82;
      v74 = 0;
      if (*v82)
      {
        v74 = *v82;
      }

      v101 = v74;
      v100 = *(v74 + 12) | v103;
      if ((v100 & 0x200) != 0 && (v100 & 1) == 0)
      {
        v100 &= ~0x200u;
      }

      v73 = v104;
      *&v97 = v102[6];
      WORD4(v97) = *(v101 + 8);
      WORD5(v97) = v100;
      v156 = v102[9];
      v155 = 0;
      v154 = 0;
      if ((v156 & 0x4000000) != 0)
      {
        v154 = v156 & 0x8E000000 | 0xFFLL;
        v167 = v156 & 0xF000;
        v155 = v167 >> 12;
        v159 = v167 >> 12 != 0;
        v158 = 523;
        if (!(v167 >> 12))
        {
          _dispatch_abort(v158, v159, v3, v4, v5, v6, v7, v8);
        }
      }

      else
      {
        v154 = v156 & 0x8E0000FF;
        v169 = v156 & 0xF00;
        v155 = v169 >> 8;
        if (!(v169 >> 8))
        {
          v157 = v154;
LABEL_50:
          HIDWORD(v97) = v157;
          *&v98 = v102;
          *(&v98 + 1) = v102[8] | *(v101 + 16);
          *v99 = *(v101 + 14);
          memset(&v99[8], 0, 32);
          *v104 = v97;
          v21 = v98;
          v22 = *v99;
          v23 = *&v99[16];
          *(v73 + 8) = *&v99[32];
          v73[3] = v23;
          v73[2] = v22;
          v73[1] = v21;
          dispatch_kevent_debug("deferred", v81, 0, 0, "_dispatch_kq_unote_update", 0x43Eu);
          goto LABEL_68;
        }
      }

      v157 = v154 | (1 << (v155 + 7));
      goto LABEL_50;
    }

    v135 = v83;
    v134 = v78;
    if (v78 < *(v83 + 48))
    {
      v24 = *(v135 + 48) - 1;
      *(v135 + 48) = v24;
      v133 = v24;
      if (v134 != v24)
      {
        v25 = *(v135 + 40);
        v26 = v25 + 72 * v134;
        v27 = v25 + 72 * v133;
        *v26 = *v27;
        v28 = *(v27 + 16);
        v29 = *(v27 + 32);
        v30 = *(v27 + 48);
        *(v26 + 64) = *(v27 + 64);
        *(v26 + 48) = v30;
        *(v26 + 32) = v29;
        *(v26 + 16) = v28;
      }
    }
  }

  if (v84)
  {
    v76 = 0;
    memset(v75, 0, sizeof(v75));
    v96 = v82;
    v95 = v75;
    v94 = v84;
    v93 = v82;
    v72 = 0;
    if (*v82)
    {
      v72 = *v82;
    }

    v92 = v72;
    v91 = *(v72 + 12) | v94;
    if ((v91 & 0x200) != 0 && (v91 & 1) == 0)
    {
      v91 &= ~0x200u;
    }

    v71 = v95;
    *&v88 = v93[6];
    WORD4(v88) = *(v92 + 8);
    WORD5(v88) = v91;
    v162 = v93[9];
    v161 = 0;
    v160 = 0;
    if ((v162 & 0x4000000) != 0)
    {
      v160 = v162 & 0x8E000000 | 0xFFLL;
      v166 = v162 & 0xF000;
      v161 = v166 >> 12;
      v165 = v166 >> 12 != 0;
      v164 = 523;
      if (!(v166 >> 12))
      {
        _dispatch_abort(v164, v165, v3, v4, v5, v6, v7, v8);
      }
    }

    else
    {
      v160 = v162 & 0x8E0000FF;
      v168 = v162 & 0xF00;
      v161 = v168 >> 8;
      if (!(v168 >> 8))
      {
        v163 = v160;
LABEL_67:
        HIDWORD(v88) = v163;
        *&v89 = v93;
        *(&v89 + 1) = v93[8] | *(v92 + 16);
        *v90 = *(v92 + 14);
        memset(&v90[8], 0, 32);
        *v95 = v88;
        v31 = v89;
        v32 = *v90;
        v33 = *&v90[16];
        *(v71 + 8) = *&v90[32];
        v71[3] = v33;
        v71[2] = v32;
        v71[1] = v31;
        v137 = v85;
        v136 = v75;
        v80 = _dispatch_kq_drain(v85, v75, 1, 3);
        goto LABEL_68;
      }
    }

    v163 = v160 | (1 << (v161 + 7));
    goto LABEL_67;
  }

LABEL_68:
  if (v84)
  {
    if (v80)
    {
      v188 = v85;
      if (v85)
      {
        if (v188 != -4)
        {
          v187 = v188;
          v201 = v188;
          v198 = 1;
          v197 = 1;
          v199 = 1;
          v193 = 1;
          v192 = 1;
          v194 = 1;
          v191 = atomic_fetch_add_explicit((v188 + 96), 0xFFFFFFFF, memory_order_relaxed);
          v195 = v191;
          v190 = v191;
          v196 = v191 - v199;
          v200 = v191 - v199;
          if (((v191 - v199) & 0x80000000) != 0)
          {
            if (v200 <= -2)
            {
              qword_E4290 = "API MISUSE: Over-release of an object";
              __break(1u);
              JUMPOUT(0x831E8);
            }

            v201[7] = 0xDEAD000000000000;
            v189 = v201;
            _dispatch_object_dealloc(v201);
          }
        }
      }

      v123 = v82;
      v122 = 0;
      v121 = 0;
      v120 = 0;
      *(v82 + 2) = 0;
      v119 = v121;
    }

    else
    {
      _dispatch_thread_getspecific(0);
      v70 = ~*(v82 + 1);
      _evfiltstr(*(v82 + 28));
      v63 = v82[6];
      _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", v34, v35, v36, v37, v38, v39, v40, 1106);
    }

    return v80 == 0;
  }

  else
  {
    if ((v84 & 2) != 0)
    {
      if (v80 == 36)
      {
        _dispatch_thread_getspecific(0);
        v69 = ~*(v82 + 1);
        _evfiltstr(*(v82 + 28));
        v64 = v82[6];
        _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", v41, v42, v43, v44, v45, v46, v47, 1113);
        return 0;
      }

      v173 = v85;
      if (v85)
      {
        if (v173 != -4)
        {
          v172 = v173;
          v186 = v173;
          v183 = 1;
          v182 = 1;
          v184 = 1;
          v178 = 1;
          v177 = 1;
          v179 = 1;
          v176 = atomic_fetch_add_explicit((v173 + 96), 0xFFFFFFFF, memory_order_relaxed);
          v180 = v176;
          v175 = v176;
          v181 = v176 - v184;
          v185 = v176 - v184;
          if (((v176 - v184) & 0x80000000) != 0)
          {
            if (v185 <= -2)
            {
              qword_E4290 = "API MISUSE: Over-release of an object";
              __break(1u);
              JUMPOUT(0x83480);
            }

            v186[7] = 0xDEAD000000000000;
            v174 = v186;
            _dispatch_object_dealloc(v186);
          }
        }
      }

      v118 = v82;
      v117 = 0;
      v116 = 0;
      v115 = 0;
      *(v82 + 2) = 0;
      v114 = v116;
      _dispatch_thread_getspecific(0);
      v68 = ~*(v82 + 1);
      _evfiltstr(*(v82 + 28));
      v65 = v82[6];
      _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", v48, v49, v50, v51, v52, v53, v54, 1118);
    }

    else if ((v84 & 4) != 0)
    {
      _dispatch_thread_getspecific(0);
      v67 = ~*(v82 + 1);
      _evfiltstr(*(v82 + 28));
      v66 = v82[6];
      _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", v55, v56, v57, v58, v59, v60, v61, 1120);
    }

    v203 = v80;
    v202 = 1123;
    if (v80)
    {
      _dispatch_bug(v202, v203, v3, v4, v5, v6, v7, v8);
    }

    return 1;
  }
}

uint64_t _dispatch_unote_unregister_direct(uint64_t a1, char a2)
{
  v21 = *(a1 + 16);
  v20 = v21 & 0xFFFFFFFFFFFFFFFCLL;
  v25 = _dispatch_thread_getspecific(29);
  if (v25)
  {
    _dispatch_abort(453, 0, v2, v3, v4, v5, v6, v7);
  }

  v19 = 2;
  v18 = 0;
  if (v20 != -4)
  {
    v18 = 0;
    if (v25)
    {
      v18 = *(v25 + 24) == v20;
    }
  }

  if (v18)
  {
    v19 = 6;
    a2 |= 5u;
  }

  if (v21 & 2) == 0 || (a2)
  {
    if (v21 == 2)
    {
      *(a1 + 16) = 0;
      _dispatch_thread_getspecific(0);
      v17 = ~*(a1 + 8);
      _evfiltstr(*(a1 + 28));
      v16 = *(a1 + 24);
      _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", v8, v9, v10, v11, v12, v13, v14, 1331);
      return 1;
    }

    if ((v21 & 1) == 0)
    {
      v19 |= 4u;
      a2 |= 4u;
    }

    if (((v19 & 4) != 0 || (a2 & 2) != 0) && _dispatch_kq_unote_update(v20, a1, v19))
    {
      return 1;
    }
  }

  if ((a2 & 4) != 0)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Unregistration failed";
    __break(1u);
    JUMPOUT(0x83A08);
  }

  return 0;
}

void _dispatch_unote_dispose_defer(uint64_t a1)
{
  v18 = _dispatch_thread_getspecific(29);
  if (v18)
  {
    _dispatch_abort(453, (v18 & 1) == 0, v1, v2, v3, v4, v5, v6);
  }

  if (!v18)
  {
    goto LABEL_14;
  }

  v20 = *(v18 + 40);
    ;
  }

  if (i < *(v18 + 48))
  {
    if (((*(*(v18 + 40) + 72 * i + 10) >> 1) & 1) == 0)
    {
      v7 = *(*(v18 + 40) + 72 * i + 10);
      qword_E4290 = "BUG IN LIBDISPATCH: Disposing a direct unote while deferring an event";
      qword_E42C0 = v7;
      __break(1u);
      JUMPOUT(0x83C2CLL);
    }

    *(a1 + 8) = *(v18 + 32);
    *(v18 + 32) = a1;
    _dispatch_thread_getspecific(0);
    v16 = ~*(a1 + 8);
    _evfiltstr(*(a1 + 28));
    v15 = *(a1 + 24);
    _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", v8, v9, v10, v11, v12, v13, v14, 1390);
  }

  else
  {
LABEL_14:
    free(a1);
  }
}

void _dispatch_free_deferred_unotes(void *a1)
{
  v9 = 0;
  while (a1)
  {
    v8 = a1[1];
    free(a1);
    ++v9;
    a1 = v8;
  }

  if (v9)
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tfreed %d deferred unotes", v1, v2, v3, v4, v5, v6, v7, 920);
  }

  if (v9 >= 0x11u)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
    qword_E42C0 = v9;
    __break(1u);
    JUMPOUT(0x83DD0);
  }
}

void _dispatch_event_loop_poke(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  if (a1 == -8)
  {
    v18 = 0;
    v17 = 0u;
    v16 = 0u;
    v15[1] = 65526;
    v15[0] = 1;
    v15[2] = -8;
    v15[3] = 0x1000000;
    _dispatch_kq_deferred_update(-4, v15);
  }

  else
  {
    if (!v21 || v21 == -4)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Unsupported wlh configuration";
      qword_E42C0 = v21;
      __break(1u);
      JUMPOUT(0x84478);
    }

    v31 = v20;
    v30 = (v20 >> 37) & 1;
    v29 = 1989;
    if (!v30)
    {
      _dispatch_abort(v29, 0, a3, a4, a5, a6, a7, a8);
    }

    v32 = v20;
    if ((BYTE4(v20) >> 6))
    {
      v28 = v19 >= 0;
      v27 = 1991;
      if (v19 < 0)
      {
        _dispatch_abort(v27, v28, a3, a4, a5, a6, a7, a8);
      }

      v26 = v19 & 1;
      v25 = 1992;
      if ((v19 & 1) == 0)
      {
        _dispatch_abort(v25, v26, a3, a4, a5, a6, a7, a8);
      }

      v36 = &_dispatch_mgr_q;
      v35 = v21;
      v34 = 0;
      v33 = 0;
      v38 = &_dispatch_mgr_q;
      v37 = v21;
      v14 = 0;
      if (_dispatch_mgr_q)
      {
        v14 = _dispatch_mgr_q;
      }

      (v14[9])(&_dispatch_mgr_q, v21, 0);
    }

    else
    {
      v22 = _dispatch_thread_getspecific(29);
      v24 = (v22 & 1) == 0;
      v23 = 453;
      if (v22)
      {
        _dispatch_abort(v23, v24, v8, v9, v10, v11, v12, v13);
      }

      if (v22 && *(v22 + 24) == v21)
      {
        _dispatch_kevent_workloop_poke_self(v22, v20, v19, v9, v10, v11, v12, v13);
      }

      else
      {
        _dispatch_kevent_workloop_poke(v21, v20, v19, v9, v10, v11, v12, v13);
      }
    }
  }
}

void _dispatch_kevent_workloop_poke_self(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(a1 + 24);
  if ((*(a1 + 53) & 4) != 0)
  {
    if ((*(a1 + 53) & 1) == 0)
    {
      _dispatch_abort(1889, *(a1 + 53) & 1, a3, a4, a5, a6, a7, a8);
    }

    if ((a3 & 0x80000000) != 0)
    {
      _dispatch_kevent_workloop_override_self(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      if ((a2 & 0xFFFFFFFC) != 0)
      {
        _dispatch_abort(1901, (a2 & 0xFFFFFFFC) == 0, a3, a4, a5, a6, a7, a8);
      }

      if ((a2 & 1) == 0)
      {
        _dispatch_abort(1902, (a2 & 1) != 0, a3, a4, a5, a6, a7, a8);
      }

      if ((a3 & 1) == 0)
      {
        _dispatch_abort(1903, a3 & 1, a3, a4, a5, a6, a7, a8);
      }

      v17 = *(a1 + 24);
      _dispatch_release_no_dispose(v18);
      _dispatch_event_loop_leave_deferred(a1, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  else if (*(a1 + 53))
  {
    if ((a3 & 0x80000000) == 0)
    {
      _dispatch_abort(1924, a3 & 0x80000000, a3, a4, a5, a6, a7, a8);
    }

    if (!*(a1 + 8))
    {
      _dispatch_abort(1925, 0, a3, a4, a5, a6, a7, a8);
    }

    if (a3)
    {
      v16 = *(a1 + 24);
      _dispatch_release_2_no_dispose(v18);
    }
  }

  else
  {
    if ((a3 & 0x80000000) != 0)
    {
      if (a3)
      {
        v15 = *(a1 + 24);
        _dispatch_release_no_dispose(v18);
      }

      else
      {
        v14 = *(a1 + 24);
        _dispatch_retain(v18);
      }
    }

    else if ((a3 & 1) == 0)
    {
      _dispatch_abort(1963, a3 & 1, a3, a4, a5, a6, a7, a8);
    }

    if (*(a1 + 8))
    {
      _dispatch_abort(1965, *(a1 + 8) == 0, a3, a4, a5, a6, a7, a8);
    }

    *(a1 + 53) = *(a1 + 53) & 0xFE | 1;
    *(a1 + 53) = *(a1 + 53) & 0xFD | 2;
    *a1 = *(v18 + 24);
    *(a1 + 8) = v18;
    *(a1 + 16) = (a2 & 0x700000000) >> 32;
  }
}

void _dispatch_kevent_workloop_poke(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = 3;
  v17 = 0;
  v16 = 0u;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  v44 = a2;
  v25 = a2 & 1;
  v24 = 1836;
  if ((a2 & 1) == 0)
  {
    _dispatch_abort(v24, 0, a3, a4, a5, a6, a7, a8);
  }

  v26 = v20;
  v23 = (v20 & 0x4000000000) == 0;
  v22 = 1837;
  if ((v20 & 0x4000000000) != 0)
  {
    _dispatch_abort(v22, v23, a3, a4, a5, a6, a7, a8);
  }

  v38 = v20;
  v42 = v20;
  v41 = (v20 >> 37) & 1;
  v40 = 1758;
  if (!v41)
  {
    _dispatch_abort(v40, 0, a3, a4, a5, a6, a7, a8);
  }

  v43 = v38;
  if (v38)
  {
    v45 = v38;
    v46 = v38;
    if ((v38 & 0xFFFFFFFC) != 0)
    {
      v39 = 2;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 3;
  }

  _dispatch_kq_fill_workloop_event(v14, v39, v21, v20, a5, a6, a7, a8);
  if (_dispatch_kq_poll(v21, v14, 1, v14, 1, 0, 0, v18))
  {
    v34 = v14;
    v33 = 0;
    v32 = v15;
    dispatch_kevent_debug("received error", v14, 0, 0, "_dispatch_kevent_workloop_drain_error", 0x690u);
    v37 = *(v34 + 5) & 0x4000;
    v36 = 1681;
    if (!v37)
    {
      _dispatch_abort(v36, 0, v8, v9, v10, v11, v12, v13);
    }

    *(v34 + 5) &= ~0x4000u;
    *(v34 + 7) = v32;
    *(v34 + 4) = 0;
    switch(v32)
    {
      case 2u:
        if ((v33 & 1) == 0 || (*(v34 + 5) & 2) == 0 || (*(v34 + 24) & 8) == 0 || (*(v34 + 24) & 0x20) == 0)
        {
          v31 = *(v34 + 6) << 32;
          v31 |= *(v34 + 5) << 16;
          v31 |= v32;
          v30 = v31;
          qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_E42C0 = v31;
          __break(1u);
          JUMPOUT(0x84B54);
        }

        v35 = 2;
        break;
      case 4u:
        if ((v33 & 4) == 0 || (*(v34 + 24) & 4) == 0)
        {
          goto LABEL_39;
        }

        v35 = 4;
        break;
      case 0x22u:
        v29 = *(v34 + 3);
        qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
        qword_E42C0 = v29;
        __break(1u);
        JUMPOUT(0x84BD8);
      case 0x46u:
        if ((v33 & 2) == 0 || (*(v34 + 25) & 1) != 0 || !*(v34 + 6) || !*(v34 + 7))
        {
          goto LABEL_39;
        }

        v35 = 70;
        break;
      case 0x69u:
        v28 = *(v34 + 8);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_E42C0 = v28;
        __break(1u);
        JUMPOUT(0x84C10);
      default:
LABEL_39:
        v27 = v32;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v32;
        __break(1u);
        JUMPOUT(0x84C48);
    }

    __break(1u);
  }

  if (v19 < 0)
  {
    if (v19)
    {
      _dispatch_release_2_tailcall(v21);
    }
  }

  else
  {
    _dispatch_release_tailcall(v21);
  }
}

void _dispatch_event_loop_drain(unsigned int a1)
{
  v27 = _dispatch_thread_getspecific(29);
  if (v27)
  {
    _dispatch_abort(453, (v27 & 1) == 0, v1, v2, v3, v4, v5, v6);
  }

  v25 = *(v27 + 24);
  do
  {
    if ((*(v27 + 53) & 2) != 0)
    {
      v23 = v25[7];
      if ((*(v27 + 53) & 1) == 0)
      {
        _dispatch_abort(2024, *(v27 + 53) & 1, v1, v2, v3, v4, v5, v6);
      }

      *(v27 + 53) &= ~2u;
      v32 = *(v27 + 40);
        ;
      }

      if (i == *(v27 + 48))
      {
        if (i >= 16)
        {
          _dispatch_abort(1595, 0, v1, v2, v3, v4, v5, v6);
        }

        ++*(v27 + 48);
      }

      _dispatch_kq_fill_workloop_event(*(v27 + 40) + 72 * i, 2u, v25, v23, v3, v4, v5, v6);
    }

    v24 = *(v27 + 48);
    *(v27 + 48) = 0;
    v22 = *(v27 + 32);
    *(v27 + 32) = 0;
    _dispatch_kq_drain(v25, *(v27 + 40), v24, a1);
    v30 = v22;
    v29 = 0;
    while (v30)
    {
      v28 = v30[1];
      free(v30);
      ++v29;
      v30 = v28;
    }

    if (v29)
    {
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tfreed %d deferred unotes", v13, v14, v15, v16, v17, v18, v19, 920);
    }

    if (v29 >= 0x11u)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Too many defer-free unotes";
      qword_E42C0 = v29;
      __break(1u);
      JUMPOUT(0x8504CLL);
    }

    if (v25 && v25 != -4)
    {
      v20 = 0;
      if (*v25)
      {
        v20 = *v25;
      }

      if (*(v20 + 16) == 18)
      {
        v33 = v25;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    if (v33)
    {
      v21 = v33[6];
      if (v21)
      {
        if (*(v21 + 6))
        {
          _dispatch_event_loop_drain_timers(v21, 6u, v7, v8, v9, v10, v11, v12);
        }
      }
    }
  }

  while ((a1 & 1) != 0 && (a1 & 2) == 0 && _dispatch_thread_getspecific(5));
}

uint64_t _dispatch_kq_drain(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = (a4 & 2) == 0;
  v16 = 0;
  v14 = 16;
  v15 = 16;
  i = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  if ((a4 & 2) == 0)
  {
    v23 = 1;
    v22 = 823;
    v9 = &v10;
    v10 = 0x8000;
    v8 = &v5 - 4096;
    bzero(&v5 - 4096, 0x8000uLL);
    v11 = v8;
    v12 = v9;
  }

  for (i = 0; i < v19; ++i)
  {
    *(v20 + 72 * i + 8);
    dispatch_kevent_debug(0, v20 + 72 * i, i, v19, "_dispatch_kq_drain", 0x341u);
  }

  if (v17)
  {
    _dispatch_thread_setspecific(5, 0);
  }

  v19 = _dispatch_kq_poll(v21, v20, v19, v24, v15, v11, v12, v18);
  if (v19)
  {
    if ((v18 & 2) != 0)
    {
      v16 = 0;
      i = 0;
      while (v16 < v19)
      {
        if ((v24[36 * v16 + 5] & 0x4000) != 0 && *&v24[36 * v16 + 16])
        {
          v6 = 72;
          v7 = v24;
          _dispatch_kevent_drain(&v24[36 * v16]);
          i = *(v7 + v16 * v6 + 32);
        }

        ++v16;
      }
    }

    else
    {
      if ((v24[5] & 0x4000) != 0)
      {
        _dispatch_thread_setspecific(5, 1);
      }

      v16 = 0;
      i = 0;
      while (v16 < v19)
      {
        _dispatch_kevent_drain(&v24[36 * v16++]);
      }
    }
  }

  else
  {
    return 0;
  }

  return i;
}

void _dispatch_event_loop_merge(uint64_t a1, unsigned int a2)
{
  v26 = a1;
  v25 = a2;
  v27 = _dispatch_thread_getspecific(29);
  v29 = (v27 & 1) == 0;
  v28 = 453;
  if (v27)
  {
    _dispatch_abort(v28, v29, v2, v3, v4, v5, v6, v7);
  }

  v24 = v27;
  v23 = *(v27 + 24);
  v22 = &v14;
  v18 = &v14 - ((72 * v25 + 15) & 0xFFFFFFFFF0);
  v21 = v25;
  __memcpy_chk();
  *(v24 + 50) = 14;
  for (i = 0; i < v25; ++i)
  {
    _dispatch_kevent_drain(&v18[72 * i]);
  }

  if (v23 == -4)
  {
    if (*(v24 + 8))
    {
      if (*(v24 + 48))
      {
        _dispatch_event_loop_drain(3u);
      }
    }
  }

  else
  {
    v15 = *v23;
    v16 = v23 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v17 = 0;
    if (v15)
    {
      v17 = v15;
    }

    if (*(v17 + 16) == 18)
    {
      v19 = *(v23 + 48);
      if (v19)
      {
        if (*(v19 + 6))
        {
          _dispatch_event_loop_drain_timers(v19, 6u, v8, v9, v10, v11, v12, v13);
        }
      }
    }
  }
}

void _dispatch_kevent_drain(unsigned __int8 *a1)
{
  if (*(a1 + 4) == -10)
  {
    dispatch_kevent_debug("received", a1, 0, 0, "_dispatch_kevent_drain", 0x241u);
    return;
  }

  if (*(a1 + 4) == -17)
  {
    _dispatch_kevent_workloop_poke_drain(a1);
    return;
  }

  dispatch_kevent_debug("received", a1, 0, 0, "_dispatch_kevent_drain", 0x249u);
  if ((*(a1 + 5) & 0x4000) != 0)
  {
    if (*(a1 + 4) != -5 || *(a1 + 4) != 3)
    {
      _dispatch_kevent_print_error(a1);
      return;
    }

    *(a1 + 5) = 274;
    *(a1 + 6) = -2080374784;
    *(a1 + 4) = 0;
    dispatch_kevent_debug("synthetic NOTE_EXIT", a1, 0, 0, "_dispatch_kevent_drain", 0x252u);
  }

  if (*(a1 + 4) == -7)
  {
    v9 = *(a1 + 2);
    v8 = *a1;
    if (*(a1 + 4) <= 0)
    {
      _dispatch_abort(2515, *(a1 + 4) > 0, v1, v2, v3, v4, v5, v6);
    }

    if (*a1 != (v8 | 0xFFFFFFFFFFFFFF00))
    {
      _dispatch_abort(2516, *a1 == (v8 | 0xFFFFFFFFFFFFFF00), v1, v2, v3, v4, v5, v6);
    }

    if (v8 >= 9)
    {
      _dispatch_abort(2517, v8 < 9, v1, v2, v3, v4, v5, v6);
    }

    *(v9 + 6) |= (1 << (*a1 % 3u)) | 0x80;
    *(v9 + 32 * v8 + 7) = *(v9 + 32 * v8 + 7) & 0xFD | 2;
    *(v9 + 32 * v8 + 7) &= ~1u;
  }

  else if (*(a1 + 4) == -8 && (_dispatch_kevent_mach_msg_size(a1) || (_dispatch_kevent_has_machmsg_rcv_error(a1) & 1) != 0))
  {
    _dispatch_kevent_mach_msg_drain(a1);
  }

  else if (*(a1 + 2))
  {
    _dispatch_kevent_merge_muxed(a1);
  }

  else
  {
    if (*(a1 + 2))
    {
      _dispatch_abort(390, (*(a1 + 2) & 1) == 0, v1, v2, v3, v4, v5, v6);
    }

    _dispatch_kevent_merge(*(a1 + 2), a1);
  }
}

void _dispatch_event_loop_leave_immediate(unint64_t a1)
{
  v20 = a1;
  v21 = _dispatch_thread_getspecific(29);
  v23 = (v21 & 1) == 0;
  v22 = 453;
  if (v21)
  {
    _dispatch_abort(v22, v23, v1, v2, v3, v4, v5, v6);
  }

  v19 = v21;
  v18 = *(v21 + 24);
  v17 = 131075;
  v16 = 0;
  v15 = 0u;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v28 = v20;
  v27 = (v20 & 0x2000000000) == 0;
  v26 = 2101;
  if ((v20 & 0x2000000000) != 0)
  {
    _dispatch_abort(v26, v27, v1, v2, v3, v4, v5, v6);
  }

  v25 = *(v19 + 53) & 1;
  v24 = 2111;
  if (!v25)
  {
    _dispatch_abort(v24, 0, v1, v2, v3, v4, v5, v6);
  }

  *(v19 + 53) &= ~1u;
  *(v19 + 53) &= ~2u;
  _dispatch_kq_fill_workloop_event(v13, 6u, v18, v20, v3, v4, v5, v6);
  if (_dispatch_kq_poll(v18, v13, 1, v13, 1, 0, 0, v17))
  {
    v36 = v13;
    v35 = 0;
    v34 = v14;
    dispatch_kevent_debug("received error", v13, 0, 0, "_dispatch_kevent_workloop_drain_error", 0x690u);
    v39 = *(v36 + 5) & 0x4000;
    v38 = 1681;
    if (!v39)
    {
      _dispatch_abort(v38, 0, v7, v8, v9, v10, v11, v12);
    }

    *(v36 + 5) &= ~0x4000u;
    *(v36 + 7) = v34;
    *(v36 + 4) = 0;
    switch(v34)
    {
      case 2u:
        if ((v35 & 1) == 0 || (*(v36 + 5) & 2) == 0 || (*(v36 + 24) & 8) == 0 || (*(v36 + 24) & 0x20) == 0)
        {
          v33 = *(v36 + 6) << 32;
          v33 |= *(v36 + 5) << 16;
          v33 |= v34;
          v32 = v33;
          qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_E42C0 = v33;
          __break(1u);
          JUMPOUT(0x85DC8);
        }

        v37 = 2;
        break;
      case 4u:
        if ((v35 & 4) == 0 || (*(v36 + 24) & 4) == 0)
        {
          goto LABEL_34;
        }

        v37 = 4;
        break;
      case 0x22u:
        v31 = *(v36 + 3);
        qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
        qword_E42C0 = v31;
        __break(1u);
        JUMPOUT(0x85E4CLL);
      case 0x46u:
        if ((v35 & 2) == 0 || (*(v36 + 25) & 1) != 0 || !*(v36 + 6) || !*(v36 + 7))
        {
          goto LABEL_34;
        }

        v37 = 70;
        break;
      case 0x69u:
        v30 = *(v36 + 8);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_E42C0 = v30;
        __break(1u);
        JUMPOUT(0x85E84);
      default:
LABEL_34:
        v29 = v34;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v34;
        __break(1u);
        JUMPOUT(0x85EBCLL);
    }

    __break(1u);
  }
}

void _dispatch_kq_fill_workloop_event(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  if (a2 < 3)
  {
    if (((a4 >> 37) & 1) == 0)
    {
      _dispatch_abort(1538, 0, a3, a4, a5, a6, a7, a8);
    }

    if ((a4 & 1) == 0)
    {
      _dispatch_abort(1539, 0, a3, a4, a5, a6, a7, a8);
    }

    v11 = 5;
    v12 = 0x3700000001;
    v13 = 272;
    if ((a4 & 2) != 0)
    {
      v13 = 400;
      v12 = 0x3700000003;
    }

    v16 = (a4 & 0x700000000) >> 32;
    v15 = *(*(a3 + 24) + 84);
    if (v16 < (v15 & 0xF00) >> 8)
    {
      v16 = (v15 & 0xF00) >> 8;
    }

    if (!v16)
    {
      LOBYTE(v16) = 1;
    }

    if ((v15 & 0x8000000) != 0)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Waking up a kq with cooperative thread request is not supported";
      qword_E42C0 = v15;
      __break(1u);
      JUMPOUT(0x86174);
    }

    v14 = (1 << (v16 + 7)) | 0xFF | v15 & 0x80000000;
  }

  else
  {
    if (a2 != 3)
    {
      if (a2 - 4 >= 2)
      {
        if (a2 != 6)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Invalid transition";
          qword_E42C0 = a2;
          __break(1u);
          JUMPOUT(0x8626CLL);
        }

        v11 = 7;
        v13 = 32;
        goto LABEL_24;
      }

      v13 = 256;
    }

    if (a4)
    {
      _dispatch_abort(1558, (a4 & 1) == 0, a3, a4, a5, a6, a7, a8);
    }

    v11 = 7;
    v12 = 1;
  }

LABEL_24:
  *&v8 = a3;
  WORD4(v8) = -17;
  WORD5(v8) = v11;
  HIDWORD(v8) = v14;
  *&v9 = a3;
  *(&v9 + 1) = v13 | 1;
  *&v10 = a3 + 56;
  *(&v10 + 1) = v12;
  *a1 = v8;
  *(a1 + 64) = a4;
  *(a1 + 48) = v10;
  *(a1 + 32) = 0uLL;
  *(a1 + 16) = v9;
  dispatch_kevent_debug(_dispatch_workloop_actions[a2], a1, 0, 0, "_dispatch_kq_fill_workloop_event", 0x630u);
}

uint64_t _dispatch_kq_poll(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = a7;
  v12 = a8;
  v11 = 0;
  v23 = &_dispatch_kq_poll_pred;
  v22 = &v11;
  v21 = _dispatch_kq_init;
  if (_dispatch_kq_poll_pred != -1)
  {
    dispatch_once_f(v23, v22, v21);
  }

  if (v11)
  {
    _dispatch_memorypressure_init();
    _voucher_activity_debug_channel_init();
  }

  while (1)
  {
    if (!v19)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Invalid wlh";
      qword_E42C0 = 0;
      __break(1u);
      JUMPOUT(0x86428);
    }

    if (v19 == -4)
    {
      _dispatch_kq_fd();
      if (_dispatch_kevent_workqueue_enabled)
      {
        v12 |= 0x20u;
      }

      v10 = kevent_qos();
    }

    else
    {
      v12 |= 0x400u;
      if ((v12 & 2) == 0)
      {
        v12 |= 0x20000u;
      }

      v10 = kevent_id();
    }

    if (v10 != -1)
    {
      return v10;
    }

    v24 = 1;
    v25 = 1;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = **(StatusReg + 8);
    if (v9 == 2)
    {
      break;
    }

    if (v9 != 4)
    {
      if (v9 == 9)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Do not close random Unix descriptors";
        qword_E42C0 = 9;
        __break(1u);
        JUMPOUT(0x865BCLL);
      }

      if (v9 != 12)
      {
        goto LABEL_25;
      }

      _dispatch_temporary_resource_shortage();
    }
  }

  if ((v12 & 2) == 0 || (v12 & 0x20000) == 0)
  {
LABEL_25:
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected error from kevent";
    qword_E42C0 = v9;
    __break(1u);
    JUMPOUT(0x86620);
  }

  return 0;
}

void _dispatch_event_loop_leave_deferred(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  if ((a2 & 0x2000000000) != 0)
  {
    v9 = (a2 & 0x800000000) != 0;
  }

  if (v9)
  {
    if ((a2 & 0xFFFFFFFC) != 0)
    {
      v17 = a2 | 3;
    }

    else
    {
      v17 = 0;
    }

    v13 = *(a1 + 40);
      ;
    }

    if (i == *(a1 + 48))
    {
      if (i >= 16)
      {
        _dispatch_abort(2135, i < 16, a3, a4, a5, a6, a7, a8);
      }

      ++*(a1 + 48);
    }

    if ((a2 & 0xFFFFFFFC) != 0)
    {
      v18 = a2 | 3;
    }

    else
    {
      v18 = 0;
    }

    _dispatch_kq_fill_workloop_sync_event(*(a1 + 40) + 72 * i, 7, *(a1 + 24), a2, v18, a6, a7, a8);
  }

  if ((a2 & 0x2000000000) == 0)
  {
    _dispatch_abort(1758, 0, a3, a4, a5, a6, a7, a8);
  }

  if (a2)
  {
    if ((a2 & 0xFFFFFFFC) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 3;
  }

  if ((*(a1 + 53) & 1) == 0)
  {
    _dispatch_abort(2144, 0, a3, a4, a5, a6, a7, a8);
  }

  *(a1 + 53) &= ~1u;
  *(a1 + 53) &= ~2u;
  v8 = *(a1 + 24);
  v15 = *(a1 + 40);
    ;
  }

  if (j == *(a1 + 48))
  {
    if (j >= 16)
    {
      _dispatch_abort(1595, 0, a3, a4, a5, a6, a7, a8);
    }

    ++*(a1 + 48);
  }

  _dispatch_kq_fill_workloop_event(*(a1 + 40) + 72 * j, v16, v8, a2, a5, a6, a7, a8);
}

void _dispatch_kq_fill_workloop_sync_event(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a5;
  v18 = 0;
  v16 = 0;
  switch(a2)
  {
    case 7:
      LOBYTE(v11) = 0;
      if ((a4 & 0x2000000000) != 0)
      {
        v11 = (BYTE4(a4) >> 3) & 1;
      }

      if ((v11 & 1) == 0)
      {
        _dispatch_abort(1615, v11 & 1, a3, a4, a5, a6, a7, a8);
      }

      if (((a4 >> 1) & 1) == 0)
      {
        _dispatch_abort(1616, 0, a3, a4, a5, a6, a7, a8);
      }

      v15 = 9;
      v17 = 392;
      v16 = 0x3800000002;
      break;
    case 8:
      v15 = 9;
      v17 = 4;
      v18 = _dispatch_thread_getspecific(4);
      v8 = (*&v18 & 0x3FFF00uLL) >> 8;
      v9 = __clz(__rbit32(v8));
      if (v8)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        v18 = 2303;
      }

      break;
    case 9:
      if (((a4 ^ a5) & 0xFFFFFFFC) != 0)
      {
        _dispatch_abort(1639, ((a4 ^ a5) & 0xFFFFFFFC) == 0, a3, a4, a5, a6, a7, a8);
      }

      v15 = 9;
      v17 = 136;
      break;
    case 10:
      v15 = 9;
      v17 = 8;
      break;
    case 11:
      v15 = 6;
      v17 = 40;
      break;
    default:
      qword_E4290 = "BUG IN LIBDISPATCH: Invalid transition";
      qword_E42C0 = a2;
      __break(1u);
      JUMPOUT(0x86E88);
  }

  *&v12 = v20;
  WORD4(v12) = -17;
  WORD5(v12) = v15;
  HIDWORD(v12) = v18;
  *&v13 = a3;
  *(&v13 + 1) = v17;
  *&v14 = 0;
  *(&v14 + 1) = v16;
  *a1 = v12;
  *(a1 + 64) = a4;
  *(a1 + 48) = v14;
  *(a1 + 32) = 0uLL;
  *(a1 + 16) = v13;
  if ((v17 & 0x80) != 0)
  {
    *(a1 + 48) = a3 + 56;
  }

  dispatch_kevent_debug(_dispatch_workloop_actions[a2], a1, 0, 0, "_dispatch_kq_fill_workloop_sync_event", 0x683u);
}

uint64_t _dispatch_event_loop_cancel_waiter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a1;
  v21 = *(a1 + 48);
  v20 = 3;
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  while (1)
  {
    _dispatch_kq_fill_workloop_sync_event(v16, 11, v21, 0, *(v22 + 100), a6, a7, a8);
    result = _dispatch_kq_poll(v21, v16, 1, v16, 1, 0, 0, v20);
    if (!result)
    {
      return result;
    }

    v9 = ((*(v22 + 106) >> 5) & 1) == 0;
    v30 = v16;
    v29 = v9;
    v28 = v17;
    dispatch_kevent_debug("received error", v16, 0, 0, "_dispatch_kevent_workloop_drain_error", 0x690u);
    v33 = *(v30 + 5) & 0x4000;
    v32 = 1681;
    if (!v33)
    {
      _dispatch_abort(v32, 0, v10, v11, v12, v13, v14, v15);
    }

    *(v30 + 5) &= ~0x4000u;
    *(v30 + 7) = v28;
    *(v30 + 4) = 0;
    switch(v28)
    {
      case 2u:
        if (!v29 || (*(v30 + 5) & 2) == 0 || (*(v30 + 24) & 8) == 0 || (*(v30 + 24) & 0x20) == 0)
        {
          v27 = *(v30 + 6) << 32;
          v27 |= *(v30 + 5) << 16;
          v27 |= v28;
          v26 = v27;
          qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_E42C0 = v27;
          __break(1u);
          JUMPOUT(0x871F8);
        }

        v31 = 2;
        break;
      case 4u:
        if (!(v29 & 4) || (*(v30 + 24) & 4) == 0)
        {
          goto LABEL_29;
        }

        v31 = 4;
        break;
      case 0x22u:
        v25 = *(v30 + 3);
        qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
        qword_E42C0 = v25;
        __break(1u);
        JUMPOUT(0x8727CLL);
      case 0x46u:
        if (!(v29 & 2) || (*(v30 + 25) & 1) != 0 || !*(v30 + 6) || !*(v30 + 7))
        {
          goto LABEL_29;
        }

        v31 = 70;
        break;
      case 0x69u:
        v24 = *(v30 + 8);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_E42C0 = v24;
        __break(1u);
        JUMPOUT(0x872B4);
      default:
LABEL_29:
        v23 = v28;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v28;
        __break(1u);
        JUMPOUT(0x872ECLL);
    }

    thread_switch(*(v22 + 100), 4, 1u);
  }
}

void _dispatch_event_loop_wake_owner(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = _dispatch_thread_getspecific(29);
  if (v51)
  {
    _dispatch_abort(453, 0, v4, v5, v6, v7, v8, v9);
  }

  v46 = *(a1 + 48);
  v44 = 0;
  if (((a4 ^ *(a1 + 100)) & 0xFFFFFFFC) != 0)
  {
    _dispatch_abort(2212, 0, v4, v5, v6, v7, v8, v9);
  }

  if ((*(a1 + 106) >> 3))
  {
    _dispatch_abort(2213, 0, v4, v5, v6, v7, v8, v9);
  }

  if (a2 == -4 || !v51 || *(v51 + 24) != a2)
  {
    goto LABEL_43;
  }

  if ((*(v51 + 53) & 1) == 0)
  {
    _dispatch_abort(2216, 0, v4, v5, v6, v7, v8, v9);
  }

  *(v51 + 53) &= ~1u;
  *(v51 + 53) &= ~2u;
  if (a2 == v46)
  {
    if ((a3 & 1) == 0)
    {
      _dispatch_abort(2221, 0, v4, v5, v6, v7, v8, v9);
    }

    if ((a3 & 2) != 0)
    {
      _dispatch_abort(2222, 0, v4, v5, v6, v7, v8, v9);
    }

    if ((a4 & 2) != 0)
    {
      _dispatch_abort(2223, 0, v4, v5, v6, v7, v8, v9);
    }

    if (a4)
    {
      v45 = 2;
    }

    else
    {
      v45 = 5;
    }

    v55 = *(v51 + 40);
      ;
    }

    if (i == *(v51 + 48))
    {
      if (i >= 16)
      {
        _dispatch_abort(1595, 0, v4, v5, v6, v7, v8, v9);
      }

      ++*(v51 + 48);
    }

    _dispatch_kq_fill_workloop_event(*(v51 + 40) + 72 * i, v45, a2, a4, v6, v7, v8, v9);
    v53 = *(v51 + 40);
      ;
    }

    if (j == *(v51 + 48))
    {
      if (j >= 16)
      {
        _dispatch_abort(2235, 0, v10, v11, v12, v13, v14, v15);
      }

      ++*(v51 + 48);
    }

    _dispatch_kq_fill_workloop_sync_event(*(v51 + 40) + 72 * j, 9, a2, a4, *(a1 + 100), v13, v14, v15);
  }

  else
  {
LABEL_43:
    if ((a3 ^ a4))
    {
      if ((a3 & 1) == 0)
      {
        _dispatch_abort(2245, 0, v4, v5, v6, v7, v8, v9);
      }

      if ((a4 & 2) != 0)
      {
        _dispatch_abort(2246, 0, v4, v5, v6, v7, v8, v9);
      }

      v44 = 1;
      _dispatch_kq_fill_workloop_event(v57, 5u, a2, a4, v6, v7, v8, v9);
    }

    if ((a4 & 0x2000000000) != 0)
    {
      v16 = v44++;
      _dispatch_kq_fill_workloop_sync_event(&v57[72 * v16], 9, a2, a4, *(a1 + 100), v7, v8, v9);
    }

    if ((*(a1 + 106) & 0x80) == 0 && (a3 & 0x2000000000) != 0 && (a3 & 2) == 0)
    {
      v43 = _dispatch_thread_getspecific(3);
      v17 = v44++;
      _dispatch_kq_fill_workloop_sync_event(&v57[72 * v17], 11, a2, a3, v43, v18, v19, v20);
    }

    if (_dispatch_kq_poll(a2, v57, v44, v57, v44, 0, 0, 3))
    {
      v42 = 0;
      if (v46 != -4)
      {
        v42 = v46 != a2;
      }

      if (v42)
      {
        _dispatch_bug_deprecated("Changing target queue hierarchy with a dispatch_sync in flight", v21, v22, v23, v24, v25, v26, v27);
      }

      v56 = v62;
      dispatch_kevent_debug("received error", v57, 0, 0, "_dispatch_kevent_workloop_drain_error", 0x690u);
      if ((v58 & 0x4000) == 0)
      {
        _dispatch_abort(1681, 0, v28, v29, v30, v31, v32, v33);
      }

      v58 &= ~0x4000u;
      v61 = v56;
      v62 = 0;
      if (v56 != 2)
      {
        if (v56 != 4)
        {
          if (v56 == 34)
          {
            qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
            qword_E42C0 = v59;
            __break(1u);
            JUMPOUT(0x87E18);
          }

          if (v56 == 105)
          {
            qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
            qword_E42C0 = v63;
            __break(1u);
            JUMPOUT(0x87E54);
          }
        }

        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v56;
        __break(1u);
        JUMPOUT(0x87E90);
      }

      qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
      qword_E42C0 = (v60 << 32) | (v58 << 16) | 2;
      __break(1u);
      JUMPOUT(0x87D84);
    }

    v41 = 0;
    if (v46 != -4)
    {
      v41 = v46 != a2;
    }

    if (v41)
    {
      _dispatch_bug_deprecated("Changing target queue hierarchy with a dispatch_sync in flight", v21, v22, v23, v24, v25, v26, v27);
      _dispatch_event_loop_cancel_waiter(a1, v34, v35, v36, v37, v38, v39, v40);
    }
  }
}

void _dispatch_event_loop_wait_for_ownership(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *(a1 + 48);
  v21 = 0;
  v24 = *(v25 + 56);
  if ((v24 & 0xFFFFFFFC) != 0 || (v24 & 1) == 0)
  {
    LOBYTE(v19) = 0;
    if ((v24 & 0x2000000000) != 0)
    {
      v19 = (BYTE4(v24) >> 3) & 1;
    }

    if (v19)
    {
      v21 = 1;
      if ((v24 & 0xFFFFFFFC) != 0)
      {
        v31 = v24 | 3;
      }

      else
      {
        v31 = 0;
      }

      _dispatch_kq_fill_workloop_sync_event(v32, 7, v25, v24, v31, a6, a7, a8);
    }
  }

  else
  {
    v21 = 1;
    _dispatch_kq_fill_workloop_event(v32, 0, v25, v24, a5, a6, a7, a8);
  }

  while (1)
  {
    _dispatch_kq_fill_workloop_sync_event(&v32[9 * v21], 8, v25, v24, *(a1 + 100), a6, a7, a8);
    v22 = _dispatch_kq_poll(v25, v32, v21 + 1, v32, v21 + 1, 0, 0, 3);
    for (i = 0; i < v22; ++i)
    {
      v20 = 0;
      if ((v32[9 * i + 3] & 4) != 0)
      {
        v20 = 4;
      }

      v28 = &v32[9 * i];
      v27 = v28[4];
      dispatch_kevent_debug("received error", v28, 0, 0, "_dispatch_kevent_workloop_drain_error", 0x690u);
      if ((*(v28 + 5) & 0x4000) == 0)
      {
        _dispatch_abort(1681, 0, v9, v10, v11, v12, v13, v14);
      }

      *(v28 + 5) &= ~0x4000u;
      *(v28 + 7) = v27;
      v28[4] = 0;
      if (v27 == 2)
      {
        v15 = (*(v28 + 6) << 32) | (*(v28 + 5) << 16) | 2;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v15;
        __break(1u);
        JUMPOUT(0x88378);
      }

      if (v27 != 4)
      {
        if (v27 == 34)
        {
          v16 = *(v28 + 3);
          qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
          qword_E42C0 = v16;
          __break(1u);
          JUMPOUT(0x883FCLL);
        }

        if (v27 == 105)
        {
          v17 = v28[8];
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
          qword_E42C0 = v17;
          __break(1u);
          JUMPOUT(0x88434);
        }

LABEL_28:
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v27;
        __break(1u);
        JUMPOUT(0x8846CLL);
      }

      if ((v20 & 4) == 0 || (v28[3] & 4) == 0)
      {
        goto LABEL_28;
      }
    }

    if (!v22)
    {
      break;
    }

    LOBYTE(v18) = 0;
    if (v22 == 1)
    {
      v18 = (v33 >> 2) & 1;
    }

    if ((v18 & 1) == 0)
    {
      _dispatch_abort(2352, v18 & 1, v9, v10, v11, v12, v13, v14);
    }

    dispatch_kevent_debug("restarting", v32, 0, 0, "_dispatch_event_loop_wait_for_ownership", 0x931u);
    v24 = v34;
    v21 = 0;
  }

  if ((*(a1 + 106) & 0x20) != 0)
  {
    _dispatch_event_loop_cancel_waiter(a1, v8, v9, v10, v11, v12, v13, v14);
    *(a1 + 106) &= ~0x20u;
  }

  if ((*(a1 + 106) & 0x40) != 0)
  {
    v30 = *(a1 + 48);
    v29 = atomic_fetch_add_explicit((v30 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
    if (v29 < 0)
    {
      if (v29 <= -2)
      {
        qword_E4290 = "API MISUSE: Over-release of an object";
        __break(1u);
        JUMPOUT(0x88628);
      }

      *(v30 + 56) = 0xDEAD000000000000;
      _dispatch_object_dealloc(v30);
    }
  }
}

void dispatch_kevent_debug(const char *a1, uint64_t a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  if (a4 <= 1)
  {
    v29[0] = 0;
  }

  else
  {
    __snprintf_chk(v29, 0x1FuLL, 0, 0x1FuLL, "%d/%d ", v26 + 1, v25);
  }

  if (!v28)
  {
    if ((*(v27 + 10) & 2) != 0)
    {
      v28 = "deleting";
    }

    else if (*(v27 + 10))
    {
      v28 = "adding";
    }

    else
    {
      v28 = "updating";
    }
  }

  v17 = _dispatch_thread_getspecific(0);
  v18 = v28;
  v19 = v27;
  v20 = *v27;
  v21 = _evfiltstr(*(v27 + 8));
  v6 = _evflagstr(*(v27 + 10), v30);
  v7 = *(v27 + 10);
  v8 = *(v27 + 24);
  v9 = *(v27 + 32);
  v10 = *(v27 + 16);
  v11 = *(v27 + 12);
  v12 = *(v27 + 40);
  v13 = *(v27 + 48);
  v14 = *(v27 + 56);
  v15 = *(v27 + 64);
  v22 = v16;
  v16[1] = v17;
  v16[2] = v28;
  v16[3] = v27;
  v16[4] = v29;
  v16[5] = v20;
  v16[6] = v21;
  v16[7] = v6;
  v16[8] = v7;
  v16[9] = v8;
  v16[10] = v9;
  v16[11] = v10;
  v16[12] = v11;
  v16[13] = v12;
  v16[14] = v13;
  v16[15] = v14;
  v16[16] = v15;
  v16[17] = v24;
  v16[18] = v23;
  _dispatch_log("%u\t%p\t%s kevent[%p] %s= { ident = 0x%llx, filter = %s, flags = %s (0x%x), fflags = 0x%x, data = 0x%llx, udata = 0x%llx, qos = 0x%x, ext[0] = 0x%llx, ext[1] = 0x%llx, ext[2] = 0x%llx, ext[3] = 0x%llx }: %s #%u", v7, v7, v21, v20, v29, v28, v17, 203);
}

void _dispatch_event_loop_ensure_ownership(uint64_t a1)
{
  v16 = a1;
  v15 = 3;
  v14 = _dispatch_thread_getspecific(3);
  v13 = 0;
  v12 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  _dispatch_kq_fill_workloop_sync_event(v10, 9, v16, v14, v14, v1, v2, v3);
  if (_dispatch_kq_poll(v16, v10, 1, v10, 1, 0, 0, v15))
  {
    v24 = v10;
    v23 = 0;
    v22 = v11;
    dispatch_kevent_debug("received error", v10, 0, 0, "_dispatch_kevent_workloop_drain_error", 0x690u);
    v27 = *(v24 + 5) & 0x4000;
    v26 = 1681;
    if (!v27)
    {
      _dispatch_abort(v26, 0, v4, v5, v6, v7, v8, v9);
    }

    *(v24 + 5) &= ~0x4000u;
    *(v24 + 7) = v22;
    *(v24 + 4) = 0;
    switch(v22)
    {
      case 2u:
        if ((v23 & 1) == 0 || (*(v24 + 5) & 2) == 0 || (*(v24 + 24) & 8) == 0 || (*(v24 + 24) & 0x20) == 0)
        {
          v21 = *(v24 + 6) << 32;
          v21 |= *(v24 + 5) << 16;
          v21 |= v22;
          v20 = v21;
          qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_E42C0 = v21;
          __break(1u);
          JUMPOUT(0x88B48);
        }

        v25 = 2;
        break;
      case 4u:
        if ((v23 & 4) == 0 || (*(v24 + 24) & 4) == 0)
        {
          goto LABEL_28;
        }

        v25 = 4;
        break;
      case 0x22u:
        v19 = *(v24 + 3);
        qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
        qword_E42C0 = v19;
        __break(1u);
        JUMPOUT(0x88BCCLL);
      case 0x46u:
        if ((v23 & 2) == 0 || (*(v24 + 25) & 1) != 0 || !*(v24 + 6) || !*(v24 + 7))
        {
          goto LABEL_28;
        }

        v25 = 70;
        break;
      case 0x69u:
        v18 = *(v24 + 8);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_E42C0 = v18;
        __break(1u);
        JUMPOUT(0x88C04);
      default:
LABEL_28:
        v17 = v22;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v22;
        __break(1u);
        JUMPOUT(0x88C3CLL);
    }

    __break(1u);
  }
}

void _dispatch_event_loop_end_ownership(uint64_t a1, char a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a4;
  v26 = 0;
  if (((a3 >> 37) & 1) == 0)
  {
    _dispatch_abort(2396, 0, a3, a4, a5, a6, a7, a8);
  }

  if (a3)
  {
    v26 = 1;
    _dispatch_kq_fill_workloop_event(v32, 1u, a1, a3, a5, a6, a7, a8);
  }

  else if (a2)
  {
    if ((a3 & 0xFF80000000000000) == 0)
    {
      _dispatch_abort(2401, (a3 & 0xFF80000000000000) != 0, a3, a4, a5, a6, a7, a8);
    }

    v26 = 1;
    _dispatch_kq_fill_workloop_event(v32, 4u, a1, a3, a5, a6, a7, a8);
  }

  if ((a2 & 2) == 0)
  {
    v25 = _dispatch_thread_getspecific(3);
    v8 = v26++;
    _dispatch_kq_fill_workloop_sync_event(&v32[72 * v8], 11, a1, a3, v25, v9, v10, v11);
  }

  if (_dispatch_kq_poll(a1, v32, v26, v32, v26, 0, 0, 3))
  {
    v31 = v37;
    dispatch_kevent_debug("received error", v32, 0, 0, "_dispatch_kevent_workloop_drain_error", 0x690u);
    if ((v33 & 0x4000) == 0)
    {
      _dispatch_abort(1681, 0, v12, v13, v14, v15, v16, v17);
    }

    v33 &= ~0x4000u;
    v36 = v31;
    v37 = 0;
    if (v31 != 2)
    {
      if (v31 != 4)
      {
        if (v31 == 34)
        {
          qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
          qword_E42C0 = v34;
          __break(1u);
          JUMPOUT(0x89084);
        }

        if (v31 == 105)
        {
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
          qword_E42C0 = v38;
          __break(1u);
          JUMPOUT(0x890BCLL);
        }
      }

      qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
      qword_E42C0 = v31;
      __break(1u);
      JUMPOUT(0x890F4);
    }

    qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
    qword_E42C0 = (v35 << 32) | (v33 << 16) | 2;
    __break(1u);
    JUMPOUT(0x89000);
  }

  _dispatch_event_loop_assert_not_owned(a1);
  v24 = 2 * (v27 & 1);
  if (a2)
  {
    ++v24;
  }

  if (a3)
  {
    --v24;
  }

  if (v24 < 0)
  {
    _dispatch_abort(2422, v24 >= 0, v18, v19, v20, v21, v22, v23);
  }

  if (v24 >= 1)
  {
    _dispatch_release_n(a1, v24);
  }
}

uint64_t _dispatch_event_loop_assert_not_owned(uint64_t result)
{
  v9 = result;
  if (result != -4)
  {
    memset(__b, 0, sizeof(__b));
    result = _dispatch_kevent_workloop_get_info(v9, __b);
    if (result)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = __b[5] != *(StatusReg - 8);
      v11 = v7;
      v10 = 2437;
      if (!v7)
      {
        _dispatch_abort(v10, v11, v1, v2, v3, v4, v5, v6);
      }
    }
  }

  return result;
}

BOOL _dispatch_kevent_workloop_get_info(uint64_t a1, _WORD *a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 131075;
  memset(__b, 0, sizeof(__b));
  __b[4] = -17;
  __b[5] = 5;
  memcpy(a2, __b, 0x48uLL);
  if (_dispatch_kq_poll(v14, v13, 1, v13, 1, 0, 0, v12))
  {
    v17 = v13[5] & 0x4000;
    v16 = 1474;
    if (!v17)
    {
      _dispatch_abort(v16, 0, v2, v3, v4, v5, v6, v7);
    }

    return *(v13 + 4) == 16;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    WORD1(v10[1]) = 0x4000;
    v10[4] = 2;
    memcpy(v13, v10, 0x48uLL);
    return 1;
  }
}

void _dispatch_event_loop_timer_arm(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2 / 3;
  v12 = a2 / 3;
  if (!*(a5 + 8 * (a2 / 3)))
  {
    mach_get_times();
    *(a5 + 16) = 0;
  }

  v6 = a3 + *(a5 + 8 * v12);
  if (_dispatch_timers_force_max_leeway)
  {
    v6 += a4;
    a4 = 0;
  }

  _dispatch_event_loop_timer_program(a1, a2, v6, a4, 5);
  if (v7 == 2 && _dispatch_mach_calendar_pred != -1)
  {
    dispatch_once_f(&_dispatch_mach_calendar_pred, 0, _dispatch_mach_host_notify_update);
  }
}

void _dispatch_event_loop_timer_program(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7 = _dispatch_thread_getspecific(27);
  v6 = 0x2000000;
  if (v7 != -4)
  {
    v14 = *(v12 + 32 * v11 + 5);
    v13 = 0;
    if (v14)
    {
      v13 = 1 << (v14 + 7);
    }

    v6 = v13 | 0xFF;
  }

  memset(__b, 0, sizeof(__b));
  __b[0] = v11 | 0xFFFFFFFFFFFFFF00;
  LOWORD(__b[1]) = -7;
  WORD1(__b[1]) = v8 | 0x10;
  HIDWORD(__b[1]) = v6;
  __b[2] = v12;
  __b[3] = _dispatch_timer_index_to_fflags[v11];
  __b[4] = v10;
  __b[5] = 0;
  *&__b[7] = 0u;
  __b[6] = v9;
  _dispatch_kq_deferred_update(v7, __b);
}

uint64_t _dispatch_source_proc_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = _dispatch_unote_create_with_handle(a1, a2, a3);
  if (v5 && (v4 & 0x4000000) != 0)
  {
    *(v5 + 29) = *(v5 + 29) & 0xFB | 4;
  }

  return v5;
}

uint64_t _dispatch_source_vm_create(uint64_t a1, uint64_t a2)
{
  v3 = off_DD270(&_dispatch_source_type_memorystatus, a2, 2);
  if (v3)
  {
    *(v3 + 29) = *(v3 + 29) & 0xEF | 0x10;
  }

  return v3;
}

BOOL _dispatch_mach_msg_sender_is_kernel(uint64_t a1)
{
  audit_trailer = _dispatch_mach_msg_get_audit_trailer(a1);
  if (!audit_trailer)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: message received without expected trailer";
    __break(1u);
    JUMPOUT(0x89828);
  }

  return *(audit_trailer + 40) == 0;
}

uint64_t _dispatch_mach_msg_get_audit_trailer(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + ((*(a1 + 4) + 3) & 0xFFFFFFFFFFFFFFFCLL));
  if (!*v3 && v3[1] >= 0x34uLL)
  {
    return a1 + ((*(a1 + 4) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v2;
}

uint64_t _dispatch_get_mach_host_port()
{
  if (_dispatch_mach_host_port_pred != -1)
  {
    dispatch_once_f(&_dispatch_mach_host_port_pred, 0, _dispatch_mach_host_port_init);
  }

  return _dispatch_mach_host_port;
}

void _dispatch_mach_host_port_init(uint64_t a1)
{
  v10 = a1;
  special_port = 0;
  port = 0;
  v7 = mach_host_self();
  special_port = host_get_special_port(v7, -1, 1, &port);
  if (special_port == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x899B4);
  }

  if (special_port)
  {
    if (special_port != 4)
    {
      v12 = special_port;
      v11 = 2969;
      _dispatch_bug(2969, special_port, v1, v2, v3, v4, v5, v6);
    }
  }

  else
  {
    special_port = mach_port_deallocate(mach_task_self_, v7);
    if (special_port == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x89A24);
    }

    v7 = port;
  }

  if (!v7)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Could not get unprivileged host port";
    qword_E42C0 = special_port;
    __break(1u);
    JUMPOUT(0x89ACCLL);
  }

  _dispatch_mach_host_port = v7;
}

uint64_t _dispatch_mach_notify_port_deleted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  _dispatch_log("Corruption: Mach send/send-once/dead-name right 0x%x deleted prematurely", a2, a3, a4, a5, a6, a7, a8, a2);
  _dispatch_mach_notify_merge(v14, 4, 1, v8, v9, v10, v11, v12);
  return 0;
}

uint64_t _dispatch_mach_notify_merge(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a3;
  v21 = 0;
  v20 = 4;
    ;
  }

  if (i)
  {
    *(i + 56) &= 0xFFFFFFFFFFFFFFF2;
    if ((a3 & 1) != 0 || (result = _dispatch_kevent_mach_notify_resume(i, a2, 0, a4, a5, a6, a7, a8), (result & 1) == 0))
    {
      v20 = 16;
      *(i + 34) |= 2u;
    }

    *(i + 64) = 0;
    for (j = *(i + 16); ; j = v21)
    {
      v17 = 0;
      if (j)
      {
        v21 = *j;
        v17 = 1;
      }

      if ((v17 & 1) == 0)
      {
        break;
      }

      if (*(i + 64))
      {
        if (((v23 ^ 1) & 1) == 0)
        {
          _dispatch_abort(3136, 0, a3, a4, a5, a6, a7, a8);
        }

        return result;
      }

      v19 = j + 3;
      v18 = a2 & j[7];
      *(j + 54) = 0;
      if ((v23 & 1) != 0 || v18)
      {
        _dispatch_retain_2(~j[4]);
        if (v23)
        {
          _dispatch_unote_unregister_muxed(v19, v8, v9, v10, v11, v12, v13, v14);
        }

        if (v18)
        {
          v16 = 0;
          if (*v19)
          {
            v16 = *v19;
          }

          if (*(v16 + 9) == 2)
          {
            atomic_fetch_or_explicit((j + 12), v18, memory_order_relaxed);
          }
        }

        v15 = 0;
        if (*v19)
        {
          v15 = *v19;
        }

        result = (*(v15 + 48))(v19, v20, v18, 0);
      }
    }
  }

  return result;
}

uint64_t _dispatch_mach_notify_dead_name(uint64_t a1, mach_port_name_t a2)
{
  v15 = a2;
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tmachport[0x%08x]: dead-name notification", v2, v3, v4, v5, v6, v7, v8, 3174);
  _dispatch_mach_notify_merge(v15, 1, 1, v9, v10, v11, v12, v13);
  if (mach_port_deallocate(mach_task_self_, a2) == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x8A0A0);
  }

  return 0;
}

uint64_t _dispatch_mach_notify_send_possible(uint64_t a1, unsigned int a2)
{
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tmachport[0x%08x]: send-possible notification", v2, v3, v4, v5, v6, v7, v8, 3190);
  _dispatch_mach_notify_merge(a2, 8, 0, v9, v10, v11, v12, v13);
  return 0;
}

void _dispatch_mach_notification_set_armed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 29))
  {
    _dispatch_abort(622, (*(a1 + 29) & 1) == 0, a3, a4, a5, a6, a7, a8);
  }

  v17 = *(a1 - 8);
  if (v17)
  {
    v17[8] = 1;
    for (i = v17[2]; i; i = *i)
    {
      *(i + 54) = 1;
    }

    _dispatch_thread_getspecific(0);
    v15 = v17[3];
    _dispatch_log("%u\t%p\tmachport[0x%08x]: send-possible notification armed", v8, v9, v10, v11, v12, v13, v14, 3209);
  }
}

uint64_t _dispatch_source_mach_send_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v4 = a3;
  if (!a3)
  {
    v4 = 1;
  }

  if (!a2)
  {
    v5 = 0xFFFFFFFFLL;
  }

  return _dispatch_unote_create_with_handle(a1, v5, v4);
}

BOOL _dispatch_mach_send_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 34) & 2) != 0)
  {
    return _dispatch_kevent_mach_notify_resume(a1, 0, *(a1 + 48), a4, a5, a6, a7, a8);
  }

  else
  {
    return _dispatch_kevent_mach_notify_resume(a1, *(a1 + 48), 0, a4, a5, a6, a7, a8);
  }
}

uint64_t _dispatch_mach_send_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _dispatch_unote_create_without_handle(a1, a2, a3);
  if (v4)
  {
    *(v4 + 88) = 0x80000000;
    *(v4 + 56) = 0;
  }

  return v4;
}

void _dispatch_mach_notification_event(uint64_t a1)
{
  v1 = *(a1 + 24);
  qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected non message event";
  qword_E42C0 = v1;
  __break(1u);
}

void _dispatch_mach_notification_merge_msg(uint64_t a1, int a2, mach_msg_header_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v31 = a6;
  v30 = a7;
  memset(__b, 0, sizeof(__b));
  v44 = 1;
  v43 = 2896;
  v42 = 1;
  v41 = 2898;
  if (v34->msgh_id <= 77)
  {
    is_kernel = _dispatch_mach_msg_sender_is_kernel(v34);
    v40 = is_kernel;
    v39 = 2900;
    if (!is_kernel)
    {
      _dispatch_bug(v39, 0, v7, v8, v9, v10, v11, v12);
LABEL_17:
      mach_msg_destroy(v34);
      goto LABEL_18;
    }
  }

  v27 = libdispatch_internal_protocol_server(v34, __b);
  if (!v27 && __b[8] == -303 && (v34->msgh_id == 951 || v34->msgh_id == 950))
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tcalendar-change notification", v20, v21, v22, v23, v24, v25, v26, 2909);
    _dispatch_timers_calendar_change();
    _dispatch_mach_host_notify_update();
    v27 = 1;
    __b[8] = 0;
  }

  v38 = v27;
  v37 = 2915;
  if (v27)
  {
    if (__b[8] != -305)
    {
      v46 = __b[8];
      v45 = 2916;
      if (__b[8])
      {
        _dispatch_bug(v45, v46, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  else
  {
    _dispatch_bug(v37, v38, v14, v15, v16, v17, v18, v19);
  }

  if (!v27 || __b[8] && __b[8] != -305)
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v35 & 0x10000) != 0)
  {
    free(v34);
  }

  _dispatch_unote_resume(v36, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t _dispatch_mach_recv_direct_merge_evt(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 0x200) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
    __break(1u);
    JUMPOUT(0x8A75CLL);
  }

  return _dispatch_source_merge_evt(a1, a2, a3, a4, a5, a6, a7, a8);
}

void _dispatch_mach_reply_merge_evt(uint64_t a1, unsigned int a2, int a3)
{
  if ((a2 & 0x200) != 0)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unexpected EV_VANISHED (do not destroy random mach ports)";
  }

  else
  {
    qword_E4290 = "BUG IN LIBDISPATCH: Unexpected event";
    qword_E42C0 = a3 | (a2 << 32);
  }

  __break(1u);
  JUMPOUT(0x8A7C8);
}

void _dispatch_kevent_workloop_override_self(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = *(a1 + 24);
  v18 = 3;
  v17 = 0;
  v16 = 0u;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  v24 = *(a1 + 53) & 1;
  v23 = 1868;
  if (!v24)
  {
    _dispatch_abort(v23, 0, a3, a4, a5, a6, a7, a8);
  }

  *(v22 + 53) &= ~2u;
  _dispatch_kq_fill_workloop_event(v14, 0, v19, v21, a5, a6, a7, a8);
  if (_dispatch_kq_poll(v19, v14, 1, v14, 1, 0, 0, v18))
  {
    v32 = v14;
    v31 = 0;
    v30 = v15;
    dispatch_kevent_debug("received error", v14, 0, 0, "_dispatch_kevent_workloop_drain_error", 0x690u);
    v35 = *(v32 + 5) & 0x4000;
    v34 = 1681;
    if (!v35)
    {
      _dispatch_abort(v34, 0, v8, v9, v10, v11, v12, v13);
    }

    *(v32 + 5) &= ~0x4000u;
    *(v32 + 7) = v30;
    *(v32 + 4) = 0;
    switch(v30)
    {
      case 2u:
        if ((v31 & 1) == 0 || (*(v32 + 5) & 2) == 0 || (*(v32 + 24) & 8) == 0 || (*(v32 + 24) & 0x20) == 0)
        {
          v29 = *(v32 + 6) << 32;
          v29 |= *(v32 + 5) << 16;
          v29 |= v30;
          v28 = v29;
          qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
          qword_E42C0 = v29;
          __break(1u);
          JUMPOUT(0x8AAD8);
        }

        v33 = 2;
        break;
      case 4u:
        if ((v31 & 4) == 0 || (*(v32 + 24) & 4) == 0)
        {
          goto LABEL_30;
        }

        v33 = 4;
        break;
      case 0x22u:
        v27 = *(v32 + 3);
        qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
        qword_E42C0 = v27;
        __break(1u);
        JUMPOUT(0x8AB5CLL);
      case 0x46u:
        if ((v31 & 2) == 0 || (*(v32 + 25) & 1) != 0 || !*(v32 + 6) || !*(v32 + 7))
        {
          goto LABEL_30;
        }

        v33 = 70;
        break;
      case 0x69u:
        v26 = *(v32 + 8);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_E42C0 = v26;
        __break(1u);
        JUMPOUT(0x8AB94);
      default:
LABEL_30:
        v25 = v30;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v30;
        __break(1u);
        JUMPOUT(0x8ABCCLL);
    }

    __break(1u);
  }

  if (v20)
  {
    _dispatch_release_2_no_dispose(v19);
  }
}

void _dispatch_kevent_workloop_poke_drain(uint64_t a1)
{
  v34 = _dispatch_thread_getspecific(29);
  if (v34)
  {
    _dispatch_abort(453, (v34 & 1) == 0, v1, v2, v3, v4, v5, v6);
  }

  v32 = *(a1 + 16);
  if ((*(a1 + 27) & 0x80) != 0)
  {
    v30 = 0;
    if ((*(a1 + 10) & 0x4000) != 0)
    {
      v30 = *(a1 + 32) == 2;
    }

    if (!v30)
    {
      _dispatch_abort(1778, v30, v1, v2, v3, v4, v5, v6);
    }

    dispatch_kevent_debug("ignoring", a1, 0, 0, "_dispatch_kevent_workloop_poke_drain", 0x6F3u);
    return;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    _dispatch_abort(1783, 0, v1, v2, v3, v4, v5, v6);
  }

  if ((*(a1 + 10) & 0x4000) != 0)
  {
    v31 = *(a1 + 64);
    v37 = *(a1 + 32);
    dispatch_kevent_debug("received error", a1, 0, 0, "_dispatch_kevent_workloop_drain_error", 0x690u);
    if ((*(a1 + 10) & 0x4000) == 0)
    {
      _dispatch_abort(1681, 0, v7, v8, v9, v10, v11, v12);
    }

    *(a1 + 10) &= ~0x4000u;
    *(a1 + 28) = v37;
    *(a1 + 32) = 0;
    switch(v37)
    {
      case 2:
        v36 = (*(a1 + 24) << 32) | (*(a1 + 10) << 16) | 2;
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v36;
        __break(1u);
        JUMPOUT(0x8AF64);
      case 4:
LABEL_28:
        qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from kevent";
        qword_E42C0 = v37;
        __break(1u);
        JUMPOUT(0x8B06CLL);
      case 34:
        v35 = *(a1 + 12);
        qword_E4290 = "BUG IN LIBDISPATCH: Broken priority";
        qword_E42C0 = v35;
        __break(1u);
        JUMPOUT(0x8AFF8);
    }

    if (v37 != 70)
    {
      if (v37 == 105)
      {
        v13 = *(a1 + 64);
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Invalid workloop owner, possible memory corruption";
        qword_E42C0 = v13;
        __break(1u);
        JUMPOUT(0x8B034);
      }

      goto LABEL_28;
    }

    if ((*(a1 + 25) & 1) != 0 || !*(a1 + 48) || !*(a1 + 56))
    {
      goto LABEL_28;
    }

    if ((v31 & 0x2000000000) != 0)
    {
      if (((v31 >> 37) & 1) == 0)
      {
        _dispatch_abort(1758, 0, v7, v8, v9, v10, v11, v12);
      }

      if (v31)
      {
        if ((v31 & 0xFFFFFFFC) != 0)
        {
          v38 = 2;
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 3;
      }

      if (v38)
      {
        _dispatch_kq_fill_workloop_event(a1, v38, v32, v31, v9, v10, v11, v12);
        _dispatch_kq_deferred_update(v32, a1);
      }

      else
      {
        dispatch_kevent_debug("retry drain", a1, 0, 0, "_dispatch_kevent_workloop_poke_drain", 0x70Eu);
        if (*(v34 + 8))
        {
          _dispatch_abort(1746, 0, v14, v15, v16, v17, v18, v19);
        }

        *(v34 + 53) |= 1u;
        _dispatch_retain(v32);
        *v34 = *(v32 + 24);
        *(v34 + 8) = v32;
        v39 = (*(a1 + 12) & 0x3FFF00) >> 8;
        v20 = __clz(__rbit32(v39));
        if (v39)
        {
          v21 = v20 + 1;
        }

        else
        {
          v21 = 0;
        }

        *(v34 + 16) = v21;
      }
    }

    else
    {
      if ((*(a1 + 10) & 2) != 0)
      {
        _dispatch_abort(1791, (*(a1 + 10) & 2) == 0, v7, v8, v9, v10, v11, v12);
      }

      dispatch_kevent_debug("ignoring", a1, 0, 0, "_dispatch_kevent_workloop_poke_drain", 0x705u);
    }
  }

  else if (*(v34 + 53))
  {
    dispatch_kevent_debug("ignoring", a1, 0, 0, "_dispatch_kevent_workloop_poke_drain", 0x71Au);
  }

  else
  {
    dispatch_kevent_debug("got drain", a1, 0, 0, "_dispatch_kevent_workloop_poke_drain", 0x71Fu);
    if (*(v34 + 8))
    {
      _dispatch_abort(1746, 0, v22, v23, v24, v25, v26, v27);
    }

    *(v34 + 53) |= 1u;
    _dispatch_retain(v32);
    *v34 = *(v32 + 24);
    *(v34 + 8) = v32;
    v40 = (*(a1 + 12) & 0x3FFF00) >> 8;
    v28 = __clz(__rbit32(v40));
    if (v40)
    {
      v29 = v28 + 1;
    }

    else
    {
      v29 = 0;
    }

    *(v34 + 16) = v29;
  }
}

void _dispatch_kevent_print_error(uint64_t a1)
{
  v14 = 0;
  _dispatch_thread_getspecific(0);
  v12 = *(a1 + 16);
  _dispatch_log("%u\t%p\tkevent[0x%llx]: handling error", v1, v2, v3, v4, v5, v6, v7, 400);
  if ((*(a1 + 10) & 2) != 0)
  {
    if ((*(a1 + 10) & 0x100) != 0 && *(a1 + 32) == 36)
    {
      return;
    }
  }

  else if (*(a1 + 16))
  {
    *(a1 + 10) |= *((*(a1 + 16) & 0xFFFFFFFFFFFFFFFELL) + 34);
  }

  else if (*(a1 + 16))
  {
    v14 = *(a1 + 16);
    if (!*(v14 + 16))
    {
      *(a1 + 10) |= 1u;
    }
  }

  if (*(a1 + 32))
  {
    if (*(a1 + 32) == 34)
    {
      v8 = *(a1 + 12);
      qword_E4290 = "BUG IN LIBDISPATCH: Invalid kevent priority";
      qword_E42C0 = v8;
      __break(1u);
      JUMPOUT(0x8B628);
    }

    v9 = _evfiltstr(*(a1 + 8));
    v13 = v9;
    if (*(a1 + 16))
    {
      if ((*(a1 + 10) & 2) != 0)
      {
        _dispatch_bug_kevent_client("kevent", v9, "delete", *(a1 + 32), *a1, *(a1 + 16), v14, v10);
      }

      else if (*(a1 + 10))
      {
        _dispatch_bug_kevent_client("kevent", v9, "add", *(a1 + 32), *a1, *(a1 + 16), v14, v10);
      }

      else
      {
        if ((*(a1 + 10) & 4) != 0)
        {
          v11 = "enable";
        }

        else
        {
          v11 = "monitor";
        }

        _dispatch_bug_kevent_client("kevent", v13, v11, *(a1 + 32), *a1, *(a1 + 16), v14, v10);
      }
    }

    else
    {
      _dispatch_bug_kevent_client("kevent", v9, 0, *(a1 + 32), *a1, *(a1 + 16), v14, v10);
    }
  }
}

uint64_t _dispatch_kevent_has_machmsg_rcv_error(uint64_t a1)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (v3 >> 26 != 4 || ((v3 >> 14) & 0xFFF) != 1)
    {
      v1 = *(a1 + 24) | (*(a1 + 10) << 32);
      qword_E4290 = "BUG IN LIBDISPATCH: Unexpected error from mach recv";
      qword_E42C0 = v1;
      __break(1u);
      JUMPOUT(0x8B7E8);
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

void _dispatch_kevent_mach_msg_drain(uint64_t a1)
{
  v67 = a1;
  v66 = _dispatch_kevent_mach_msg_buf(a1);
  v65 = _dispatch_kevent_mach_msg_size(v67);
  v40 = 0;
  *&v64[8] = 0;
  *v64 = _dispatch_kevent_mach_msg_aux_size(v67);
  v63 = 0;
  v74 = v67;
  v78 = v67;
  v9 = (*(v67 + 16) & 1) == 0;
  v77 = (*(v67 + 16) & 1) == 0;
  v76 = 390;
  if (!v9)
  {
    _dispatch_abort(v76, v77, v3, v4, v5, v6, v7, v8);
  }

  v75 = *(v74 + 16);
  v63 = v75;
  v62 = *(v67 + 60);
  v61 = *(v67 + 12);
  v60 = *(v67 + 10);
  v59 = *(v67 + 24);
  if (v59 == 268451844)
  {
    if (!v65)
    {
      v58 = v59;
      v29 = v1;
      v30 = v2;
      qword_E4290 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with no message size";
      qword_E42C0 = v59;
      __break(1u);
      JUMPOUT(0x8B948);
    }

    if (!*(v67 + 32))
    {
      v29 = v1;
      v30 = v2;
      qword_E4290 = "BUG IN LIBDISPATCH: MACH_RCV_LARGE_IDENTITY with no identity";
      __break(1u);
      JUMPOUT(0x8BAC0);
    }

    if (_dispatch_kevent_mach_msg_size(v67) >= 0xFFFFFFBC)
    {
      v55 = _dispatch_kevent_mach_msg_size(v67);
      v29 = v1;
      v30 = v2;
      qword_E4290 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with overlarge message";
      qword_E42C0 = v55;
      __break(1u);
      JUMPOUT(0x8BB18);
    }

    v54 = 0;
    if ((*(v63 + 33) & 2) != 0)
    {
      v54 |= 0x200u;
    }

    v53 = v54 & 0xF8FFF6F1 | 0x700090A;
    v65 += 68;
    v66 = malloc_type_malloc();
    *v64 = 40;
    v36 = v28;
    bzero(v28, 0x28uLL);
    *&v64[4] = v36;
    v37 = v79;
    v51 = v66;
    LODWORD(v52) = 0;
    v38 = &v52 + 1;
    v50 = v66;
    v71 = v66;
    v70 = 3366;
    if (!v66)
    {
      _dispatch_bug(v70, 0, v10, v11, v12, v13, v14, v15);
    }

    v49[1] = v50;
    if (v50)
    {
      v35 = v65;
    }

    else
    {
      v35 = 0;
    }

    v16 = v37;
    *v38 = v35;
    v17 = v51;
    v16[2] = v52;
    *v16 = v17;
    v33 = &v80;
    v48 = *&v64[4];
    LODWORD(v49[0]) = 0;
    v34 = v49 + 1;
    v47 = *&v64[4];
    v69 = *&v64[4];
    v68 = 3372;
    if (!*&v64[4])
    {
      _dispatch_bug(v68, 0, v10, v11, v12, v13, v14, v15);
    }

    v46 = v47;
    if (v47)
    {
      v32 = *v64;
    }

    else
    {
      v32 = 0;
    }

    v18 = v33;
    *v34 = v32;
    v19 = v48;
    v18[2] = v49[0];
    *v18 = v19;
    v45 = 0;
    v44 = 0;
    v43 = 0;
    v20 = *(v67 + 32);
    v42 = 0;
    v41 = 0u;
    v59 = mach_msg2(v79, v53 | 0x100000000, &v41, 0);
    if (!v59)
    {
      v60 |= 0x10000u;
      if (!**&v64[4])
      {
        *&v64[4] = 0;
      }

      _dispatch_kevent_mach_msg_recv(v63, v60, v66, *&v64[4], v62, v61);
      return;
    }

    if (v59 == 268451844)
    {
      v31 = v66[5];
      _dispatch_kevent_mach_msg_size(v67);
      _dispatch_log("BUG in libdispatch client: _dispatch_kevent_mach_msg_drain: dropped message too large to fit in memory: id = 0x%x, size = %u", v21, v22, v23, v24, v25, v26, v27, v31);
      v59 = 0;
    }

    free(v66);
  }

  else
  {
    if (v59 == 268451848)
    {
      v73 = v65 == 0;
      v72 = 3324;
      if (v65)
      {
        _dispatch_abort(v72, v73, v3, v4, v5, v6, v7, v8);
      }

      v57 = v59;
      v29 = v1;
      v30 = v2;
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Unable to copyout msg, possible port leak";
      qword_E42C0 = v59;
      __break(1u);
      JUMPOUT(0x8B9D4);
    }

    if (!v66)
    {
      v56 = v59;
      v29 = v1;
      v30 = v2;
      qword_E4290 = "BUG IN LIBDISPATCH: EVFILT_MACHPORT with no message";
      qword_E42C0 = v59;
      __break(1u);
      JUMPOUT(0x8BA1CLL);
    }

    if (!v59)
    {
      if (*v64)
      {
        v39 = v66 + v65;
      }

      else
      {
        v39 = 0;
      }

      *&v64[4] = v39;
      _dispatch_kevent_mach_msg_recv(v63, v60, v66, v39, v62, v61);
      return;
    }
  }

  if (v59)
  {
    _dispatch_bug_mach_client("_dispatch_kevent_mach_msg_drain: message reception failed", v59);
  }
}

uint64_t _dispatch_kevent_merge_muxed(uint64_t result)
{
  v6 = result;
  v5 = *(result + 16) & 0xFFFFFFFFFFFFFFFELL;
  v3 = 0;
  if ((*(result + 10) & 0x12) != 0)
  {
    v1 = *(result + 16) & 0xFFFFFFFFFFFFFFFELL;
    *(v5 + 34) |= 2u;
  }

  for (i = *(v5 + 16); ; i = v3)
  {
    v2 = 0;
    if (i)
    {
      v3 = *i;
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      break;
    }

    result = _dispatch_kevent_merge((i + 3), v6);
  }

  return result;
}

uint64_t _dispatch_kevent_merge(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  if (*a1)
  {
    v22 = *a1;
  }

  v26 = *(v22 + 9);
  _dispatch_retain_2(~*(a1 + 8));
  if (v26)
  {
    switch(v26)
    {
      case 1u:
        v25 = *(a2 + 24);
        if (*(a1 + 28) == -8)
        {
          v25 = 2;
        }

        break;
      case 2u:
        v25 = (*(a2 + 24) & *(a1 + 32));
        if ((*(a1 + 29) & 4) != 0)
        {
          v23 = v25 | (*(a2 + 32) << 32);
          for (i = *(a1 + 72); ; i = v9)
          {
            v8 = i;
            v9 = i;
            atomic_compare_exchange_strong_explicit((a1 + 72), &v9, i | v23, memory_order_relaxed, memory_order_relaxed);
            if (v9 == v8)
            {
              break;
            }
          }
        }

        else if (*(a1 + 28) == -8)
        {
          v25 = 2;
          *(a1 + 72) = 2;
        }

        else if ((*(a2 + 24) & *(a1 + 32)) != 0)
        {
          atomic_fetch_or_explicit((a1 + 72), v25, memory_order_relaxed);
        }

        break;
      case 3u:
        if (*(a2 + 32) < 0)
        {
          _dispatch_abort(514, 0, v2, v3, v4, v5, v6, v7);
        }

        v25 = *(a2 + 32);
        *(a1 + 72) = ~v25;
        break;
      case 4u:
        v25 = *(a2 + 32);
        if (v25)
        {
          atomic_fetch_add_explicit((a1 + 72), v25, memory_order_relaxed);
        }

        break;
      default:
        qword_E4290 = "BUG IN LIBDISPATCH: Corrupt unote action";
        qword_E42C0 = v26;
        __break(1u);
        JUMPOUT(0x8C390);
    }
  }

  else
  {
    v25 = *(a2 + 32);
  }

  v29 = *(a2 + 10);
  LOBYTE(v21) = 0;
  if ((v29 & 0x100) == 0)
  {
    v21 = (v29 >> 4) & 1;
  }

  if (v21)
  {
    _dispatch_unote_unregister(a1, 5, v2, v3, v4, v5, v6, v7);
    goto LABEL_45;
  }

  if ((v29 & 2) != 0)
  {
    v30 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL;
    if (v30)
    {
      if (v30 != -4)
      {
        v31 = atomic_fetch_add_explicit((v30 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
        if (v31 < 0)
        {
          if (v31 <= -2)
          {
            qword_E4290 = "API MISUSE: Over-release of an object";
            __break(1u);
            JUMPOUT(0x8C518);
          }

          *(v30 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(v30);
        }
      }
    }

    *(a1 + 16) = 2;
    goto LABEL_44;
  }

  if ((*(a2 + 10) & 0x210) != 0)
  {
    *(a1 + 16) = *(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL | 2;
LABEL_44:
    _dispatch_thread_getspecific(0);
    v20 = ~*(a1 + 8);
    _evfiltstr(*(a1 + 28));
    v18 = *(a1 + 24);
    _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", v10, v11, v12, v13, v14, v15, v16, 480);
    goto LABEL_45;
  }

  if ((v29 & 0x80) != 0)
  {
    *(a1 + 16) &= ~1uLL;
    goto LABEL_44;
  }

LABEL_45:
  v19 = 0;
  if (*a1)
  {
    v19 = *a1;
  }

  return (*(v19 + 48))(a1, *(a2 + 10), v25, *(a2 + 12) & 0xFFFFFFLL);
}

uint64_t _dispatch_kevent_mach_msg_recv(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3[1] + 68;
  if (((a3[1] + 68) & 0x100000000) != 0)
  {
    v6 = a3[1];
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Overlarge message received";
    qword_E42C0 = v6;
    __break(1u);
    JUMPOUT(0x8C8F0);
  }

  if (!a3[3])
  {
    v7 = a3[5];
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Received message with MACH_PORT_NULL msgh_local_port";
    qword_E42C0 = v7;
    __break(1u);
    JUMPOUT(0x8C93CLL);
  }

  _dispatch_retain_2(~*(a1 + 8));
  LOBYTE(v25) = 0;
  if ((a2 & 0x100) == 0)
  {
    v25 = (a2 >> 4) & 1;
  }

  if (v25)
  {
    _dispatch_unote_unregister(a1, 5, v8, v9, v10, v11, v12, v13);
    goto LABEL_23;
  }

  if ((a2 & 2) != 0)
  {
    v33 = *(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL;
    if (v33)
    {
      if (v33 != -4)
      {
        v34 = atomic_fetch_add_explicit((v33 + 96), 0xFFFFFFFF, memory_order_relaxed) - 1;
        if (v34 < 0)
        {
          if (v34 <= -2)
          {
            qword_E4290 = "API MISUSE: Over-release of an object";
            __break(1u);
            JUMPOUT(0x8CAE0);
          }

          *(v33 + 56) = 0xDEAD000000000000;
          _dispatch_object_dealloc(v33);
        }
      }
    }

    *(a1 + 16) = 2;
    goto LABEL_22;
  }

  if ((a2 & 0x210) != 0)
  {
    *(a1 + 16) = *(a1 + 16) & 0xFFFFFFFFFFFFFFFCLL | 2;
LABEL_22:
    _dispatch_thread_getspecific(0);
    v24 = ~*(a1 + 8);
    _evfiltstr(*(a1 + 28));
    v22 = *(a1 + 24);
    _dispatch_log("%u\t%p\tkevent-source[%p]: %s kevent[%p] { filter = %s, ident = 0x%x }", v14, v15, v16, v17, v18, v19, v20, 480);
    goto LABEL_23;
  }

  if ((a2 & 0x80) != 0)
  {
    *(a1 + 16) &= ~1uLL;
    goto LABEL_22;
  }

LABEL_23:
  v23 = 0;
  if (*a1)
  {
    v23 = *a1;
  }

  return (*(v23 + 56))(a1, a2, a3, v26, a4, a5, a6);
}

uint64_t _dispatch_kq_init(_BYTE *a1)
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_fork_becomes_unsafe_slow();
  }

  if (getenv("LIBDISPATCH_TIMERS_FORCE_MAX_LEEWAY"))
  {
    _dispatch_timers_force_max_leeway = 1;
  }

  *a1 = 1;
  _dispatch_kevent_workqueue_init();
  if (_dispatch_kevent_workqueue_enabled)
  {
    _dispatch_kq_fd();
    while (1)
    {
      result = kevent_qos();
      if (result != -1)
      {
        break;
      }

      v6 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (v6 != 4)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Failed to initalize workqueue kevent";
        qword_E42C0 = v6;
        __break(1u);
        JUMPOUT(0x8CF68);
      }
    }
  }

  else
  {
    _dispatch_kq_create(&qword_E0120);
    v5 = 0;
    if (*off_E0118)
    {
      v5 = *off_E0118;
    }

    return (*(v5 + 72))(off_E0118, &_dispatch_mgr_q, 0, v2, v3, v4);
  }

  return result;
}

void _dispatch_kq_create(void *a1)
{
  if ((_dispatch_unsafe_fork & 1) == 0)
  {
    _dispatch_fork_becomes_unsafe_slow();
  }

  v9 = guarded_kqueue_np();
  if (v9 == -1)
  {
    v8 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v8 != 12)
    {
      if (v8 != 23)
      {
        if (v8 == 24)
        {
          qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: kqueue() failure: process is out of file descriptors";
          qword_E42C0 = 24;
          __break(1u);
          JUMPOUT(0x8D538);
        }

        qword_E4290 = "BUG IN LIBDISPATCH: kqueue() failure";
        qword_E42C0 = v8;
        __break(1u);
        JUMPOUT(0x8D5ECLL);
      }

      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: kqueue() failure: system is out of file descriptors";
      qword_E42C0 = 23;
      __break(1u);
      JUMPOUT(0x8D574);
    }

    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: kqueue() failure: kernel is out of memory";
    qword_E42C0 = 12;
    __break(1u);
    JUMPOUT(0x8D5B0);
  }

  v7 = kevent_qos();
  if (v7)
  {
    _dispatch_bug(660, v7, v1, v2, v3, v4, v5, v6);
  }

  *a1 = v9;
}

void _dispatch_memorypressure_create(uintptr_t a1)
{
  v1 = dispatch_source_create(&_dispatch_source_type_memorystatus, 0, a1, &_dispatch_mgr_q);
  dispatch_set_context(v1, v1);
  dispatch_source_set_event_handler_f(v1, _dispatch_memorypressure_handler);
  dispatch_activate(v1);
  if (_dispatch_memorypressure_source)
  {
    dispatch_source_cancel(_dispatch_memorypressure_source);
    dispatch_release(_dispatch_memorypressure_source);
  }

  _dispatch_memorypressure_source = v1;
}

uint64_t _dispatch_memorypressure_handler(dispatch_source_s *a1)
{
  data = dispatch_source_get_data(a1);
  if ((data & 0xF0000000) != 0 && dispatch_source_get_mask(_dispatch_memorypressure_source) != malloc_memorypressure_mask_msl_4libdispatch)
  {
    _dispatch_memorypressure_create(malloc_memorypressure_mask_msl_4libdispatch);
  }

  if (data)
  {
    _dispatch_memory_warn = 0;
    _dispatch_continuation_cache_limit = 112;
    if (_firehose_task_buffer)
    {
      v4 = _firehose_task_buffer;
      v3 = atomic_fetch_and_explicit((_firehose_task_buffer + 512), 0xFFFFFFFFFFFFFFFELL, memory_order_relaxed);
      if (v3 != (v3 & 0xFFFFFFFFFFFFFFFELL))
      {
        firehose_buffer_update_limits(v4);
      }
    }
  }

  if ((data & 2) != 0)
  {
    _dispatch_memory_warn = 1;
    _dispatch_continuation_cache_limit = 16;
    if (_firehose_task_buffer)
    {
      v6 = _firehose_task_buffer;
      v5 = atomic_fetch_or_explicit((_firehose_task_buffer + 512), 1uLL, memory_order_relaxed);
      if (v5 != (v5 | 1))
      {
        firehose_buffer_update_limits(v6);
      }
    }
  }

  return malloc_memory_event_handler();
}

const char *_evflagstr(__int16 a1, const char *a2)
{
  v5 = a1;
  *a2 = 0;
  while (v5)
  {
    _evflagstr2(&v5);
    __strlcat_chk();
  }

  v3 = strlen(a2);
  if (v3)
  {
    a2[v3 - 1] = 0;
  }

  return a2;
}

const char *_evflagstr2(_WORD *a1)
{
  if ((*a1 & 1) == 1)
  {
    *a1 &= ~1u;
    return "EV_ADD|";
  }

  else if ((*a1 & 2) == 2)
  {
    *a1 &= ~2u;
    return "EV_DELETE|";
  }

  else if ((*a1 & 4) == 4)
  {
    *a1 &= ~4u;
    return "EV_ENABLE|";
  }

  else if ((*a1 & 8) == 8)
  {
    *a1 &= ~8u;
    return "EV_DISABLE|";
  }

  else if ((*a1 & 0x10) == 0x10)
  {
    *a1 &= ~0x10u;
    return "EV_ONESHOT|";
  }

  else if ((*a1 & 0x20) == 0x20)
  {
    *a1 &= ~0x20u;
    return "EV_CLEAR|";
  }

  else if ((*a1 & 0x40) == 0x40)
  {
    *a1 &= ~0x40u;
    return "EV_RECEIPT|";
  }

  else if ((*a1 & 0x80) == 0x80)
  {
    *a1 &= ~0x80u;
    return "EV_DISPATCH|";
  }

  else if ((*a1 & 0x100) == 0x100)
  {
    *a1 &= ~0x100u;
    return "EV_UDATA_SPECIFIC|";
  }

  else if ((*a1 & 0x1000) == 0x1000)
  {
    *a1 &= ~0x1000u;
    return "EV_POLL|";
  }

  else if ((*a1 & 0x2000) == 0x2000)
  {
    *a1 &= ~0x2000u;
    return "EV_OOBAND|";
  }

  else if ((*a1 & 0x4000) == 0x4000)
  {
    *a1 &= ~0x4000u;
    return "EV_ERROR|";
  }

  else if ((*a1 & 0x8000) == 0x8000)
  {
    *a1 &= ~0x8000u;
    return "EV_EOF|";
  }

  else if ((*a1 & 0x200) == 0x200)
  {
    *a1 &= ~0x200u;
    return "EV_VANISHED|";
  }

  else
  {
    *a1 = 0;
    return "EV_UNKNOWN ";
  }
}

void _dispatch_mach_host_notify_update()
{
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tregistering for calendar-change notification", v0, v1, v2, v3, v4, v5, v6, 2998);
  host = _dispatch_get_mach_host_port();
  if (_dispatch_mach_notify_port_pred != -1)
  {
    dispatch_once_f(&_dispatch_mach_notify_port_pred, 0, _dispatch_mach_notify_port_init);
  }

  v14 = host_request_notification(host, 1, _dispatch_mach_notify_port);
  if (v14 == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x8DE50);
  }

  if (v14)
  {
    _dispatch_bug(3003, v14, v7, v8, v9, v10, v11, v12);
  }
}

void _dispatch_mach_notify_port_init(uint64_t a1)
{
  v16 = a1;
  options.reserved[1] = 0;
  *&options.flags = xmmword_BA930;
  v14 = mach_port_construct(mach_task_self_, &options, &_dispatch_mach_notify_port, &_dispatch_mach_notify_port);
  if (v14)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: mach_port_construct() failed: cannot create receive right";
    qword_E42C0 = v14;
    __break(1u);
    JUMPOUT(0x8DF3CLL);
  }

  v13 = off_DD3F0(&_dispatch_mach_type_notification, _dispatch_mach_notify_port, 0);
  *(v13 + 8) = ~&_dispatch_mgr_q;
  v12 = _dispatch_unote_register(v13, -4, 0x2000000, v1, v2, v3, v4, v5);
  v18 = v12 & 1;
  v17 = 2952;
  if ((v12 & 1) == 0)
  {
    _dispatch_bug(v17, v18, v6, v7, v8, v9, v10, v11);
  }

  _dispatch_mach_notify_unote = v13;
}

BOOL _dispatch_kevent_mach_notify_resume(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  if ((a2 & a3) != 0)
  {
    _dispatch_abort(3096, a2 & a3, a3, a4, a5, a6, a7, a8);
  }

  if ((a2 & 0xD) != 0 || (a3 & 0xD) != 0)
  {
    v9 = _dispatch_mach_notify_update(a1, a2, a3, 0xDu, 66, 0);
  }

  return v9 == 0;
}

uint64_t _dispatch_mach_notify_update(uint64_t a1, int a2, int a3, unsigned int a4, mach_msg_id_t a5, mach_port_mscount_t a6)
{
  v59 = a1;
  v58 = a2;
  v57 = a3;
  v56 = a4;
  v55 = a5;
  v54 = a6;
  previous = 0;
  v52 = *(a1 + 24);
  v51 = *(a1 + 56);
  v48 = 0;
  *(a1 + 56) = v51 | (a2 | *(a1 + 48)) & a4;
  *(v59 + 56) &= ~(v57 & v56);
  if ((*(v59 + 56) & v56) == 0 || (v51 & v56) != 0)
  {
    if ((*(v59 + 56) & v56) != 0 || (v51 & v56) == 0)
    {
      return 0;
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: unregistering for send-possible notification", v25, v26, v27, v28, v29, v30, v31, 3063);
    previous = 0;
    v50 = mach_port_request_notification(mach_task_self_, v52, v55, v54, 0, 0x12u, &previous);
    if (v50 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x8E530);
    }

    if (v50 != 4 && v50 != 15 && v50 != 17)
    {
      v64 = v50;
      v63 = 3076;
      if (v50)
      {
        _dispatch_bug(v63, v64, v32, v33, v34, v35, v36, v37);
      }
    }
  }

  else
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tmachport[0x%08x]: registering for send-possible notification", v6, v7, v8, v9, v10, v11, v12, 3030);
    previous = 0;
    task = mach_task_self_;
    v73 = &_dispatch_mach_notify_port_pred;
    v72 = 0;
    v71 = _dispatch_mach_notify_port_init;
    if (_dispatch_mach_notify_port_pred != -1)
    {
      dispatch_once_f(v73, v72, v71);
    }

    v48 = mach_port_request_notification(task, v52, v55, v54, _dispatch_mach_notify_port, 0x15u, &previous);
    if (v48 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x8E29CLL);
    }

    if (v48 == 15 || v48 == 17)
    {
      *(v59 + 56) &= ~v56;
    }

    else
    {
      v70 = v48;
      v69 = 3045;
      if (v48)
      {
        _dispatch_bug(v69, v70, v13, v14, v15, v16, v17, v18);
        *(v59 + 56) &= ~v56;
      }

      else
      {
        v47 = previous;
        v68 = previous;
        v67 = 3048;
        if (previous)
        {
          _dispatch_bug(v67, v68, v13, v14, v15, v16, v17, v18);
        }

        if (v47)
        {
          v49 = mach_port_deallocate(mach_task_self_, previous);
          if (v49 == -301)
          {
            qword_E4290 = "MIG_REPLY_MISMATCH";
            qword_E42C0 = -301;
            __break(1u);
            JUMPOUT(0x8E400);
          }

          v66 = v49;
          v65 = 3057;
          if (v49)
          {
            _dispatch_bug(v65, v66, v19, v20, v21, v22, v23, v24);
          }

          previous = 0;
        }
      }
    }
  }

  if (previous)
  {
    v46 = _dispatch_send_consume_send_once_right(previous);
    v62 = v46;
    v61 = 3086;
    if (v46)
    {
      _dispatch_bug(v61, v62, v38, v39, v40, v41, v42, v43);
    }
  }

  return v48;
}

void _dispatch_timers_calendar_change()
{
  for (i = 0; i < 3; ++i)
  {
    byte_E4436 |= (1 << ((i + 6) % 3)) | 0x80;
    *(&_dispatch_timers_heap + 32 * i + 199) = *(&_dispatch_timers_heap + 32 * i + 199) & 0xFD | 2;
  }
}

void _voucher_xref_dispose(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: xref_dispose", v1, v2, v3, v4, v5, v6, v7, 782);
  _voucher_remove(a1);
  v10 = *(a1 + 8);
  if (v10 != 0x7FFFFFFF)
  {
    v10 = atomic_fetch_add_explicit((a1 + 8), 0xFFFFFFFF, memory_order_release) - 1;
  }

  if (v10 < 1)
  {
    if (v10 < 0)
    {
      qword_E4290 = "API MISUSE: Over-release of an object";
      __break(1u);
      JUMPOUT(0x8E85CLL);
    }

    v9 = *(a1 + 12);
    if (v9 >= 1)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Release while external references exist";
      qword_E42C0 = v9;
      __break(1u);
      JUMPOUT(0x8E8ACLL);
    }

    _os_object_dispose(a1);
  }
}

void _voucher_dispose(uint64_t a1)
{
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: dispose", v1, v2, v3, v4, v5, v6, v7, 791);
  if (*(a1 + 24))
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: corruption", v8, v9, v10, v11, v12, v13, v14, 793);
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Voucher corruption";
    __break(1u);
    JUMPOUT(0x8E9B0);
  }

  *(a1 + 24) = 0;
  *(a1 + 16) = -1985229329;
  if (*(a1 + 36))
  {
    if (*(a1 + 36) != *(a1 + 32))
    {
      _voucher_dealloc_mach_voucher(*(a1 + 36));
    }

    *(a1 + 36) = 0;
  }

  if (*(a1 + 32))
  {
    if (!*(a1 + 40))
    {
      _voucher_dealloc_mach_voucher(*(a1 + 32));
    }

    *(a1 + 32) = 0;
  }

  if (*(a1 + 40))
  {
    os_release(*(a1 + 40));
    *(a1 + 40) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  _os_object_dealloc(a1);
}

void *voucher_adopt(uint64_t a1)
{
  if (a1 == -3)
  {
    v14 = _dispatch_thread_getspecific(28);
    if (v14)
    {
      os_retain(v14);
    }

    return v14;
  }

  else
  {
    v15 = _dispatch_thread_getspecific(28);
    if (v15 == a1)
    {
      v16 = -1;
    }

    else
    {
      _dispatch_thread_setspecific(28, a1);
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: swap from voucher[%p]", v1, v2, v3, v4, v5, v6, v7, 400);
      if (a1)
      {
        v11 = *(a1 + 32);
      }

      else
      {
        v11 = 0;
      }

      if (v15)
      {
        v10 = *(v15 + 32);
      }

      else
      {
        v10 = 0;
      }

      if (v11 == v10)
      {
        v9 = -1;
      }

      else
      {
        v9 = v11;
      }

      v16 = v9;
    }

    if (v16 != -1)
    {
      _dispatch_set_priority_and_mach_voucher_slow(0, v16);
    }

    return v15;
  }
}

void *voucher_copy()
{
  v1 = _dispatch_thread_getspecific(28);
  if (v1)
  {
    os_retain(v1);
  }

  return v1;
}

_DWORD *voucher_copy_without_importance()
{
  v1 = _dispatch_thread_getspecific(28);
  if (v1)
  {
    return _voucher_create_without_importance(v1);
  }

  return v1;
}

void _voucher_dealloc_mach_voucher(mach_port_name_t a1)
{
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tkvoucher[0x%08x]: dealloc", v1, v2, v3, v4, v5, v6, v7, 298);
  v14 = mach_voucher_deallocate(a1);
  if (v14 == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x8EEB8);
  }

  if (v14)
  {
    _dispatch_bug(302, v14, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t _voucher_task_mach_voucher_init(uint64_t a1)
{
  v4 = a1;
  v3 = 0;
  v2 = 0;
  result = _voucher_create_mach_voucher(_voucher_task_mach_voucher_init_task_create_recipe, 16, &v2);
  v3 = result;
  if (result)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Could not create task mach voucher";
    qword_E42C0 = v3;
    __break(1u);
    JUMPOUT(0x8EF84);
  }

  _voucher_default_task_mach_voucher = v2;
  _voucher_task_mach_voucher = v2;
  return result;
}

uint64_t _voucher_create_mach_voucher(uint8_t *a1, uint64_t a2, ipc_voucher_t *a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  mach_host_port = _dispatch_get_mach_host_port();
  voucher = 0;
  v13 = host_create_mach_voucher(mach_host_port, v16, v15, &voucher);
  if (v13 == -301)
  {
    qword_E4290 = "MIG_REPLY_MISMATCH";
    qword_E42C0 = -301;
    __break(1u);
    JUMPOUT(0x8F068);
  }

  if (!v13)
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tkvoucher[0x%08x]: create", v3, v4, v5, v6, v7, v8, v9, 319);
  }

  *v14 = voucher;
  return v13;
}

void voucher_replace_default_voucher()
{
  v24 = &_voucher_task_mach_voucher_pred;
  v23 = 0;
  v22 = _voucher_task_mach_voucher_init;
  if (_voucher_task_mach_voucher_pred != -1)
  {
    dispatch_once_f(v24, v23, v22);
  }

  v19 = 0;
  v18 = 0;
  v17 = _dispatch_thread_getspecific(28);
  if (v17 && *(v17 + 32))
  {
    v16 = 0;
    if (*(v17 + 36))
    {
      v13 = *(v17 + 36);
    }

    else
    {
      v13 = *(v17 + 32);
    }

    v19 = v13;
    v15[0] = 0x100000003;
    v15[1] = v13;
    v16 = _voucher_create_mach_voucher(v15, 16, &v18);
    v14 = v16;
    v21 = v16;
    v20 = 362;
    if (v16)
    {
      _dispatch_bug(v20, v21, v0, v1, v2, v3, v4, v5);
    }

    if (v14)
    {
      v18 = 0;
    }
  }

  if (!v18)
  {
    v18 = _voucher_default_task_mach_voucher;
  }

  v19 = __swp(v18, &_voucher_task_mach_voucher);
  if (v19 && v19 != _voucher_default_task_mach_voucher)
  {
    _voucher_dealloc_mach_voucher(v19);
  }

  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] replace default voucher", v6, v7, v8, v9, v10, v11, v12, 371);
}

uint64_t _voucher_get_mach_voucher(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 36))
    {
      return *(a1 + 36);
    }

    else
    {
      v2 = *(a1 + 32);
      if (!v2)
      {
        if (_voucher_task_mach_voucher_pred != -1)
        {
          dispatch_once_f(&_voucher_task_mach_voucher_pred, 0, _voucher_task_mach_voucher_init);
        }

        return _voucher_task_mach_voucher;
      }

      return v2;
    }
  }

  else
  {
    return 0;
  }
}

_DWORD *_voucher_create_without_importance(_DWORD *a1)
{
  v37 = a1;
  if (!a1)
  {
    return 0;
  }

  if (v37[8] && (v37[18] & 1) != 0)
  {
    v36 = 0;
    v35 = 0;
    if (v37[9])
    {
      v30 = v37[9];
    }

    else
    {
      v30 = v37[8];
    }

    v49[0] = -1;
    v49[1] = 1;
    v49[2] = v30;
    v49[3] = 0;
    v49[4] = 2;
    v50 = 2;
    v51 = 0;
    v36 = _voucher_create_mach_voucher(v49, 32, &v35);
    v34 = v36;
    v41 = v36;
    v40 = 639;
    if (v36)
    {
      _dispatch_bug(v40, v41, v1, v2, v3, v4, v5, v6);
    }

    if (v34 || !v35)
    {
      if (v37[9])
      {
        return 0;
      }

      v35 = 0;
    }

    if (v35 == v30)
    {
      _voucher_dealloc_mach_voucher(v35);
      v39 = v37;
      os_retain(v37);
      return v39;
    }

    else
    {
      v32 = _voucher_find_and_retain(v35);
      if (v32 && v37[9])
      {
        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] find without importance from voucher[%p]", v14, v15, v16, v17, v18, v19, v20, 650);
        _voucher_dealloc_mach_voucher(v35);
        return v32;
      }

      else
      {
        v31 = v32;
        v47 = v37;
        v46 = 1;
        v45 = 0;
        v44 = 0;
        if (v37)
        {
          v45 = 0;
        }

        v44 = _voucher_alloc(v45, v7, v8, v9, v10, v11, v12, v13);
        if (v47)
        {
          v43 = ~v46;
          if ((~v46 & 1) != 0 && v47[8])
          {
            if (*(v47 + 5))
            {
              v29 = *(v47 + 5);
            }

            else
            {
              v29 = v47;
            }

            v42 = v29;
            v48 = v29;
            os_retain(v29);
            v44[5] = v48;
            *(v44 + 8) = v42[8];
            *(v44 + 72) = v44[9] & 0xFE | v42[18] & 1;
          }

          if ((v43 & 2) != 0)
          {
            v44[6] = *(v47 + 6);
            v44[7] = *(v47 + 7);
            v44[8] = *(v47 + 8);
          }
        }

        v33 = v44;
        *(v44 + 8) = v35;
        if (v37[9])
        {
          *(v33 + 36) = v35;
          _voucher_insert(v33);
        }

        else if (v31)
        {
          *(v33 + 40) = v31;
          _voucher_dealloc_mach_voucher(v35);
        }

        if (!v31)
        {
          _dispatch_thread_getspecific(0);
          _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] create without importance from voucher[%p]", v21, v22, v23, v24, v25, v26, v27, 667);
        }

        return v33;
      }
    }
  }

  else
  {
    os_retain(v37);
    return v37;
  }
}

uint64_t _voucher_find_and_retain(unsigned int a1)
{
  if (!a1)
  {
    return 0;
  }

  v21 = _dispatch_thread_getspecific(3);
  v1 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v1, v21 & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _dispatch_unfair_lock_lock_slow(&_voucher_hash_lock);
  }

  for (i = ~_voucher_hash[(a1 >> 8) & 0x3F]; i; i = ~*(i + 16))
  {
    if (*(i + 36) == a1)
    {
      v17 = atomic_fetch_add_explicit((i + 12), 1u, memory_order_relaxed) + 1;
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: retain  -> %d", v2, v3, v4, v5, v6, v7, v8, 234);
      if (v17 <= 0)
      {
        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\tvoucher[%p]: over-release", v9, v10, v11, v12, v13, v14, v15, 236);
        qword_E4290 = "API MISUSE: Voucher over-release";
        __break(1u);
        JUMPOUT(0x8FB5CLL);
      }

      if (v17 == 1)
      {
        atomic_fetch_add_explicit((i + 8), 1u, memory_order_relaxed);
      }

      break;
    }
  }

  v22 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
  v23 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v23 != v22)
  {
    _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v23);
  }

  return i;
}

uint64_t _voucher_insert(uint64_t result)
{
  v34 = result;
  v33 = *(result + 36);
  if (v33)
  {
    v35 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v1 = 0;
    atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v1, v35, memory_order_acquire, memory_order_acquire);
    if (v1)
    {
      _dispatch_unfair_lock_lock_slow(&_voucher_hash_lock);
    }

    if (*(v34 + 24))
    {
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: corruption", v2, v3, v4, v5, v6, v7, v8, 259);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Voucher corruption";
      __break(1u);
      JUMPOUT(0x8FE60);
    }

    if (*(v34 + 48))
    {
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: Activity data corruption", v9, v10, v11, v12, v13, v14, v15, 263);
      v16 = *(v34 + 48);
      qword_E4290 = "BUG IN LIBDISPATCH: base voucher has non-zero activity value";
      qword_E42C0 = v16;
      __break(1u);
      JUMPOUT(0x8FEE4);
    }

    if (*(v34 + 40))
    {
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: Incoming voucher with corrupted base", v17, v18, v19, v20, v21, v22, v23, 267);
      _dispatch_thread_getspecific(0);
      v32 = *(v34 + 40);
      _dispatch_log("%u\t%p\tvoucher[%p]: Corrupted base for incoming voucher", v24, v25, v26, v27, v28, v29, v30, 268);
      v31 = *(v34 + 40);
      qword_E4290 = "BUG IN LIBDISPATCH: base voucher has nested base voucher";
      qword_E42C0 = v31;
      __break(1u);
      JUMPOUT(0x8FFA0);
    }

    v37 = &_voucher_hash[(v33 >> 8) & 0x3F];
    v36 = ~*v37;
    *(v34 + 16) = *v37;
    if (v36)
    {
      *(v36 + 24) = ~(v34 + 16);
    }

    *v37 = ~v34;
    *(v34 + 24) = ~v37;
    result = _dispatch_thread_getspecific(3);
    v38 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
    if (v38 != (result & 0xFFFFFFFC))
    {
      return _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v38);
    }
  }

  return result;
}

void *_voucher_create_accounting_voucher(_DWORD *a1)
{
  v38 = a1;
  if (!a1 || !v38[8])
  {
    return 0;
  }

  v37 = 0;
  v36 = 0;
  v35 = 0;
  if (v38[9])
  {
    v30 = v38[9];
  }

  else
  {
    v30 = v38[8];
  }

  v36 = v30;
  v34[0] = 0x100000003;
  v34[1] = v30;
  v37 = _voucher_create_mach_voucher(v34, 16, &v35);
  v33 = v37;
  v42 = v37;
  v41 = 689;
  if (v37)
  {
    _dispatch_bug(v41, v42, v1, v2, v3, v4, v5, v6);
  }

  if (v33 || !v35)
  {
    return 0;
  }

  v31 = _voucher_find_and_retain(v35);
  if (v31)
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] find accounting voucher from voucher[%p]", v14, v15, v16, v17, v18, v19, v20, 695);
    _voucher_dealloc_mach_voucher(v35);
    return v31;
  }

  else
  {
    v32 = _voucher_alloc(0, v7, v8, v9, v10, v11, v12, v13);
    v21 = v35;
    *(v32 + 8) = v35;
    *(v32 + 9) = v21;
    if (v35 == v36)
    {
      v40 = v38;
      os_retain(v38);
      v32[5] = v40;
      _voucher_dealloc_mach_voucher(v35);
    }

    _voucher_insert(v32);
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] create accounting voucher from voucher[%p]", v22, v23, v24, v25, v26, v27, v28, 708);
    return v32;
  }
}

void *_voucher_alloc(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = _os_object_alloc_realized(_OS_voucher_vtable, a1 + 80, a3, a4, a5, a6, a7, a8);
  if (a1)
  {
    _dispatch_abort(62, a1 == 0, v8, v9, v10, v11, v12, v13);
  }

  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: alloc", v14, v15, v16, v17, v18, v19, v20, 64);
  return v22;
}

void *_voucher_create_with_mach_msgv(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v19 = a1;
  v18 = &v13;
  if ((*a1 & 0x1F0000) != 0)
  {
    v17 = v19[4];
    v19[4] = 0;
    v16 = 538902528;
    *v18 = *v19 & 0x201F0000;
    *v19 &= ~v16;
    v20 = v17;
  }

  else
  {
    *v18 = 0;
    v20 = 0;
  }

  if (a2)
  {
    v10 = *a2;
    if (*a2 <= 7u)
    {
      qword_E4290 = "BUG IN LIBDISPATCH: Invalid msg aux data size.";
      qword_E42C0 = v10;
      __break(1u);
      JUMPOUT(0x905BCLL);
    }

    v11 = v10 - 8;
    if (v10 == 8)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2 + 2;
    }

    v12 = v9;
  }

  return _voucher_create_with_mach_voucher(v20, v13, v12, v11, a5, a6, a7, a8);
}

void *_voucher_create_with_mach_voucher(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a2;
  v35 = a4;
  v33 = 0;
  if (a1)
  {
    v33 = _voucher_find_and_retain(a1);
    if (v33)
    {
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] found", v15, v16, v17, v18, v19, v20, v21, 485);
      _voucher_dealloc_mach_voucher(a1);
    }

    else
    {
      v33 = _voucher_alloc(0, v8, v9, v10, v11, v12, v13, v14);
      *(v33 + 32) = a1;
      *(v33 + 36) = a1;
      *(v33 + 72) = *(v33 + 72) & 0xFE | ((v37 & 0x20000000) != 0);
      _voucher_insert(v33);
    }
  }

  if (v35 < 0x20 || *a3 != 59821818 || !*(a3 + 8))
  {
    return v33;
  }

  if (v33)
  {
    if (*(v33 + 48))
    {
      v22 = *(v33 + 48);
      qword_E4290 = "BUG IN LIBDISPATCH: base voucher has non-zero activity value";
      qword_E42C0 = v22;
      __break(1u);
      JUMPOUT(0x907D8);
    }

    if (*(v33 + 40))
    {
      v23 = *(v33 + 40);
      qword_E4290 = "BUG IN LIBDISPATCH: base voucher has nested base voucher";
      qword_E42C0 = v23;
      __break(1u);
      JUMPOUT(0x90828);
    }

    v40 = _voucher_alloc(0, a2, a3, a4, a5, a6, a7, a8);
    if (*(v33 + 32))
    {
      if (*(v33 + 40))
      {
        v32 = *(v33 + 40);
      }

      else
      {
        v32 = v33;
      }

      os_retain(v32);
      v40[5] = v32;
      *(v40 + 8) = *(v32 + 32);
      *(v40 + 72) = v40[9] & 0xFE | *(v32 + 72) & 1;
    }

    v34 = v40;
    voucher_release(v33);
  }

  else
  {
    v34 = _voucher_alloc(0, a2, a3, a4, a5, a6, a7, a8);
  }

  v34[6] = *(a3 + 8);
  v34[7] = *(a3 + 16);
  v34[8] = *(a3 + 24);
  _dispatch_thread_getspecific(0);
  _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] create", v24, v25, v26, v27, v28, v29, v30, 521);
  return v34;
}

void *voucher_create_with_mach_msg(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1;
  v9 = 0;
  v14 = a1;
  v13 = &v9;
  if ((*a1 & 0x1F0000u) >> 16)
  {
    v12 = v14[4];
    v14[4] = 0;
    v11 = 538902528;
    *v13 = *v14 & 0x201F0000;
    *v14 &= ~v11;
    v15 = v12;
  }

  else
  {
    *v13 = 0;
    v15 = 0;
  }

  return _voucher_create_with_mach_voucher(v15, v9, 0, 0, a5, a6, a7, a8);
}

void voucher_decrement_importance_count4CF(uint64_t a1)
{
  v23 = a1;
  if (a1 && *(v23 + 32) && (*(v23 + 72) & 1) != 0)
  {
    v22 = 0;
    if (*(v23 + 36))
    {
      v14 = *(v23 + 36);
    }

    else
    {
      v14 = *(v23 + 32);
    }

    v21[1] = v14;
    v21[0] = 1;
    v20 = v21;
    v19 = 4;
    v16 = -1;
    v18 = &v16;
    out_contentCnt = 4;
    v22 = mach_voucher_attr_command(v14, 2u, 2u, v21, 4u, &v16, &out_contentCnt);
    if (v22 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x90C44);
    }

    if (v22 != 16)
    {
      _dispatch_thread_getspecific(0);
      mach_error_string(v22);
      _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] decrement importance count to %u: %s - 0x%x", v1, v2, v3, v4, v5, v6, v7, 764);
      v15 = v22;
      v25 = v22;
      v24 = 766;
      if (v22)
      {
        _dispatch_bug(v24, v25, v8, v9, v10, v11, v12, v13);
      }

      if (v15 == 5)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Voucher importance count underflow";
        qword_E42C0 = v22;
        __break(1u);
        JUMPOUT(0x90D60);
      }
    }
  }
}

uint64_t _voucher_remove(uint64_t result)
{
  v10 = result;
  v9 = *(result + 36);
  if (*(result + 24))
  {
    v11 = _dispatch_thread_getspecific(3) & 0xFFFFFFFC;
    v1 = 0;
    atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v1, v11, memory_order_acquire, memory_order_acquire);
    if (v1)
    {
      _dispatch_unfair_lock_lock_slow(&_voucher_hash_lock);
    }

    if (!v9)
    {
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: corruption", v2, v3, v4, v5, v6, v7, v8, 282);
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Voucher corruption";
      __break(1u);
      JUMPOUT(0x90EE4);
    }

    if (*(v10 + 12) <= 0 && *(v10 + 24))
    {
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 != -1)
      {
        *(23 - v13) = v12;
      }

      *~v12 = v13;
      *(v10 + 24) = 0;
      *(v10 + 16) = -1985229329;
    }

    result = _dispatch_thread_getspecific(3);
    v14 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
    if (v14 != (result & 0xFFFFFFFC))
    {
      return _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v14);
    }
  }

  return result;
}

void _voucher_activity_debug_channel_init()
{
  v11 = 0;
  if (_voucher_libtrace_hooks)
  {
    v11 = *(_voucher_libtrace_hooks + 16);
  }

  if (v11)
  {
    f = 0;
    special_port = 0;
    v8 = task_get_special_port(mach_task_self_, 10, &special_port);
    if (v8 == -301)
    {
      qword_E4290 = "MIG_REPLY_MISMATCH";
      qword_E42C0 = -301;
      __break(1u);
      JUMPOUT(0x91168);
    }

    if (v8)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Couldn't get debug control port";
      qword_E42C0 = v8;
      __break(1u);
      JUMPOUT(0x911B0);
    }

    if (special_port)
    {
      f = dispatch_mach_create_f("com.apple.debug-channel", 0, 0, v11, v0, v1, v2, v3);
      *(f[11] + 29) &= ~0x20u;
      dispatch_mach_connect(f, special_port, 0, 0, v4, v5, v6, v7);
      _voucher_activity_debug_channel = f;
    }
  }
}

uint64_t _voucher_atfork_prepare()
{
  result = _dispatch_thread_getspecific(3);
  v1 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_hash_lock, &v1, result & 0xFFFFFFFC, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return _dispatch_unfair_lock_lock_slow(&_voucher_hash_lock);
  }

  return result;
}

uint64_t _voucher_atfork_parent()
{
  result = _dispatch_thread_getspecific(3);
  v1 = atomic_exchange_explicit(&_voucher_hash_lock, 0, memory_order_release);
  if (v1 != (result & 0xFFFFFFFC))
  {
    return _dispatch_unfair_lock_unlock_slow(&_voucher_hash_lock, v1);
  }

  return result;
}

uint64_t _voucher_atfork_child()
{
  _voucher_hash_reset_locked();
  _voucher_hash_lock = 0;
  result = _dispatch_thread_setspecific(28, 0);
  _voucher_task_mach_voucher_pred = 0;
  _voucher_task_mach_voucher = 0;
  _voucher_default_task_mach_voucher = 0;
  _voucher_aid_next = 0;
  _firehose_task_buffer_pred = 0;
  _firehose_task_buffer = 0;
  return result;
}

void *_voucher_hash_reset_locked()
{
  for (i = 0; i < 0x40; ++i)
  {
    v2 = (&_voucher_hash + 8 * i);
    while (1)
    {
      v1 = ~*v2;
      if (*v2 == -1)
      {
        break;
      }

      *(31 - *v2) = 0;
      *(v1 + 36) = 0;
      v5 = ~*(v1 + 16);
      v4 = *(v1 + 24);
      if (*(v1 + 16) != -1)
      {
        *(23 - *(v1 + 16)) = v4;
      }

      *~v4 = ~v5;
      *(v1 + 24) = 0;
      *(v1 + 16) = -1985229329;
    }
  }

  return memset(&_voucher_hash, -1, 0x200uLL);
}

uint64_t voucher_process_can_use_arbitrary_personas()
{
  if (_voucher_process_can_use_arbitrary_personas_pred != -1)
  {
    dispatch_once_f(&_voucher_process_can_use_arbitrary_personas_pred, 0, _voucher_process_can_use_arbitrary_personas_init);
  }

  return _voucher_process_can_use_arbitrary_personas & 1;
}

uint64_t _voucher_process_can_use_arbitrary_personas_init(uint64_t a1)
{
  v7 = a1;
  v10 = &_voucher_task_mach_voucher_pred;
  v9 = 0;
  v8 = _voucher_task_mach_voucher_init;
  if (_voucher_task_mach_voucher_pred != -1)
  {
    dispatch_once_f(v10, v9, v8);
  }

  voucher = _voucher_task_mach_voucher;
  v5 = 0;
  v2 = 0;
  out_content = &v2;
  out_contentCnt = 4;
  result = mach_voucher_attr_command(_voucher_task_mach_voucher, 3u, 4u, 0, 0, &v2, &out_contentCnt);
  v5 = result;
  if (result)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: mach_voucher_attr_command(BANK_PERSONA_ADOPT_ANY) failed";
    qword_E42C0 = v5;
    __break(1u);
    JUMPOUT(0x91708);
  }

  _voucher_process_can_use_arbitrary_personas = v2 != 0;
  return result;
}

uint64_t voucher_copy_with_persona_mach_voucher(unsigned int a1)
{
  v39 = a1;
  if (!a1)
  {
    return voucher_copy();
  }

  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = _dispatch_thread_getspecific(28);
  if (v35)
  {
    if (v35[9])
    {
      v30 = v35[9];
    }

    else
    {
      v30 = v35[8];
    }

    v37 = v30;
  }

  v51[0] = -1;
  v51[1] = 1;
  v51[2] = v37;
  v51[3] = 0;
  v51[4] = 3;
  v51[5] = 10;
  v52 = v39;
  v38 = _voucher_create_mach_voucher(v51, 32, &v36);
  v34 = v38;
  v43 = v38;
  v42 = 944;
  if (v38)
  {
    _dispatch_bug(v42, v43, v1, v2, v3, v4, v5, v6);
  }

  if (v34)
  {
    if (v38 == 20)
    {
      return -1;
    }

    v36 = 0;
  }

  if (v36 == v37)
  {
    if (v36)
    {
      _voucher_dealloc_mach_voucher(v36);
    }

    v41 = v35;
    os_retain(v35);
    return v41;
  }

  else
  {
    v32 = _voucher_find_and_retain(v36);
    if (v32 && (!v35 || v35[9]))
    {
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] find with persona from voucher[%p]", v14, v15, v16, v17, v18, v19, v20, 958);
      _voucher_dealloc_mach_voucher(v36);
      return v32;
    }

    else
    {
      v31 = v32;
      v49 = v35;
      v48 = 1;
      v47 = 0;
      v46 = 0;
      if (v35)
      {
        v47 = 0;
      }

      v46 = _voucher_alloc(v47, v7, v8, v9, v10, v11, v12, v13);
      if (v49)
      {
        v45 = ~v48;
        if ((~v48 & 1) != 0 && v49[8])
        {
          if (*(v49 + 5))
          {
            v29 = *(v49 + 5);
          }

          else
          {
            v29 = v49;
          }

          v44 = v29;
          v50 = v29;
          os_retain(v29);
          v46[5] = v50;
          *(v46 + 8) = v44[8];
          *(v46 + 72) = v46[9] & 0xFE | v44[18] & 1;
        }

        if ((v45 & 2) != 0)
        {
          v46[6] = *(v49 + 6);
          v46[7] = *(v49 + 7);
          v46[8] = *(v49 + 8);
        }
      }

      v33 = v46;
      *(v46 + 8) = v36;
      if (v35 && !v35[9])
      {
        if (v31)
        {
          *(v33 + 40) = v31;
          _voucher_dealloc_mach_voucher(v36);
        }
      }

      else
      {
        *(v33 + 36) = v36;
        _voucher_insert(v33);
      }

      if (!v31)
      {
        _dispatch_thread_getspecific(0);
        _dispatch_log("%u\t%p\tvoucher[%p]: kvoucher[0x%08x] create with persona from voucher[%p]", v21, v22, v23, v24, v25, v26, v27, 975);
      }

      return v33;
    }
  }
}

uint64_t voucher_copy_with_persona_mach_voucher_and_error(unsigned int a1, uint64_t *a2)
{
  v3 = voucher_copy_with_persona_mach_voucher(a1);
  if (v3 == -1)
  {
    *a2 = 0;
    return 1;
  }

  else
  {
    *a2 = v3;
    return 0;
  }
}

uint64_t mach_voucher_persona_self(_DWORD *a1)
{
  v10 = a1;
  v9 = 0;
  v13[0] = xmmword_BA958;
  v13[1] = xmmword_BA968;
  v8 = _voucher_create_mach_voucher(v13, 32, &v9);
  v12 = v8;
  v11 = 1015;
  if (v8)
  {
    _dispatch_bug(v11, v12, v1, v2, v3, v4, v5, v6);
    v9 = 0;
  }

  *v10 = v9;
  return v8;
}

uint64_t mach_voucher_persona_for_originator(unsigned int a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v11 = &v18;
  v8 = 0;
  v18 = 0;
  mach_voucher = 46;
  v9 = v16;
  v16[0] = a1;
  v16[1] = a3;
  v15 = 48;
  v7 = v6;
  bzero(v6, 0x30uLL);
  v14 = v7;
  v10 = -1;
  __memset_chk();
  v4 = v9;
  *&v13 = 0x100000003;
  *(&v13 + 1) = v21;
  *v14 = v13;
  *&v12 = 0x26300000003;
  *(&v12 + 1) = 0x1000000000;
  *(v14 + 1) = v12;
  v25 = v14 + 32;
  v24 = v4;
  v23 = 16;
  __memcpy_chk();
  mach_voucher = _voucher_create_mach_voucher(v14, v15, v11);
  if (mach_voucher)
  {
    v18 = 0;
  }

  *v19 = v18;
  return mach_voucher;
}

uint64_t voucher_get_current_persona()
{
  v9 = -1;
  if (_voucher_get_current_persona_id(&v9))
  {
    if ((kpersona_get() & 0x80000000) != 0)
    {
      v13 = 1;
      v14 = 1;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = **(StatusReg + 8);
      if (v8 != 3)
      {
        v7 = **(StatusReg + 8);
        v12 = v8;
        v11 = 1141;
        if (v8)
        {
          _dispatch_bug(v11, v12, v0, v1, v2, v3, v4, v5);
        }
      }
    }

    return v9;
  }

  else
  {
    return v9;
  }
}

uint64_t _voucher_get_current_persona_id(uint8_t *a1)
{
  v16 = a1;
  v15 = 5;
  v14 = _dispatch_thread_getspecific(28);
  if (v14 && *(v14 + 32))
  {
    if (*(v14 + 36))
    {
      v8 = *(v14 + 36);
    }

    else
    {
      v8 = *(v14 + 32);
    }

    v13 = v8;
    in_content = 0;
    in_contentCnt = 0;
    out_content = v16;
    out_contentCnt = 4;
    v15 = mach_voucher_attr_command(v8, 3u, 3u, 0, 0, v16, &out_contentCnt);
    if (v15 != 46 && v15 != 18 && v15 != 4)
    {
      v18 = v15;
      v17 = 1118;
      if (v15)
      {
        _dispatch_bug(v17, v18, v1, v2, v3, v4, v5, v6);
      }
    }
  }

  return v15;
}

uint64_t voucher_get_current_persona_originator_info(void *a1)
{
  memset(__b, 0, sizeof(__b));
  if (_voucher_get_current_persona_token(__b))
  {
    return -1;
  }

  else
  {
    memcpy(a1, __b, 0x30uLL);
    return 0;
  }
}

uint64_t _voucher_get_current_persona_token(uint8_t *a1)
{
  v16 = a1;
  v15 = 5;
  v14 = _dispatch_thread_getspecific(28);
  if (v14 && *(v14 + 32))
  {
    if (*(v14 + 36))
    {
      v8 = *(v14 + 36);
    }

    else
    {
      v8 = *(v14 + 32);
    }

    v13 = v8;
    in_content = 0;
    in_contentCnt = 0;
    out_content = v16;
    out_contentCnt = 96;
    v15 = mach_voucher_attr_command(v8, 3u, 2u, 0, 0, v16, &out_contentCnt);
    if (v15 != 46 && v15 != 18 && v15 != 4)
    {
      v18 = v15;
      v17 = 1090;
      if (v15)
      {
        _dispatch_bug(v17, v18, v1, v2, v3, v4, v5, v6);
      }
    }
  }

  return v15;
}

uint64_t voucher_get_current_persona_proximate_info(void *a1)
{
  memset(__b, 0, sizeof(__b));
  if (_voucher_get_current_persona_token(__b))
  {
    return -1;
  }

  else
  {
    memcpy(a1, &__b[48], 0x30uLL);
    return 0;
  }
}

BOOLean_t voucher_mach_msg_set(mach_msg_header_t *msg)
{
  v10 = _dispatch_thread_getspecific(28);
  if ((msg->msgh_bits & 0x1F0000) >> 16)
  {
    v12 = 0;
  }

  else
  {
    if (v10)
    {
      mach_voucher = _voucher_get_mach_voucher(v10);
    }

    else
    {
      if (_voucher_task_mach_voucher_pred != -1)
      {
        dispatch_once_f(&_voucher_task_mach_voucher_pred, 0, _voucher_task_mach_voucher_init);
      }

      mach_voucher = _voucher_task_mach_voucher;
    }

    if ((msg->msgh_bits & 0x1F0000) >> 16)
    {
      v13 = 0;
    }

    else if (mach_voucher)
    {
      msg->msgh_voucher_port = mach_voucher;
      msg->msgh_bits |= 0x130000u;
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tkvoucher[0x%08x]: msg[%p] set %s", v1, v2, v3, v4, v5, v6, v7, 476);
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    v12 = v13;
  }

  return v12 & 1;
}

void voucher_mach_msg_clear(mach_msg_header_t *msg)
{
  v9 = (msg->msgh_bits & 0x1F0000) >> 16;
  msgh_voucher_port = msg->msgh_voucher_port;
  if ((v9 == 19 || v9 == 17) && msgh_voucher_port)
  {
    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tkvoucher[0x%08x]: msg[%p] clear %s", v1, v2, v3, v4, v5, v6, v7, 520);
    if (v9 == 17)
    {
      _voucher_dealloc_mach_voucher(msgh_voucher_port);
    }

    msg->msgh_voucher_port = 0;
    msg->msgh_bits &= 0xFFE0FFFF;
  }
}

voucher_mach_msg_state_t voucher_mach_msg_adopt(mach_msg_header_t *msg)
{
  v23 = msg;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v30 = msg;
  v29 = &v22;
  if ((msg->msgh_bits & 0x1F0000) >> 16)
  {
    msgh_voucher_port = v30->msgh_voucher_port;
    v30->msgh_voucher_port = 0;
    v27 = 538902528;
    *v29 = v30->msgh_bits & 0x201F0000;
    v30->msgh_bits &= ~v27;
    v31 = msgh_voucher_port;
  }

  else
  {
    *v29 = 0;
    v31 = 0;
  }

  v19 = v31;
  if (!v31)
  {
    return -1;
  }

  v18 = _dispatch_thread_getspecific(123);
  if (v18)
  {
    v17 = *v18;
    if (*v18 >= 8uLL)
    {
      v20 = v17 - 8;
      if (v17 == 8)
      {
        v16 = 0;
      }

      else
      {
        v16 = v18 + 2;
      }

      v21 = v16;
    }
  }

  v26 = _voucher_create_with_mach_voucher(v19, v22, v21, v20, v1, v2, v3, v4);
  v25 = _dispatch_thread_getspecific(28);
  v40 = v25;
  v39 = v26;
  if (v25 == v26)
  {
    v41 = -1;
  }

  else
  {
    if (v40)
    {
      v38 = 0;
      v37 = 0;
    }

    _dispatch_thread_setspecific(28, v39);
    if (v39)
    {
      v36 = 0;
      v35 = 0;
    }

    _dispatch_thread_getspecific(0);
    _dispatch_log("%u\t%p\tvoucher[%p]: swap from voucher[%p]", v5, v6, v7, v8, v9, v10, v11, 400);
    if (v39)
    {
      v15 = *(v39 + 8);
    }

    else
    {
      v15 = 0;
    }

    v34 = v15;
    if (v40)
    {
      v14 = *(v40 + 8);
    }

    else
    {
      v14 = 0;
    }

    v33 = v14;
    if (v34 == v14)
    {
      v13 = -1;
    }

    else
    {
      v13 = v34;
    }

    v41 = v13;
  }

  v32 = v41;
  if (v41 != -1)
  {
    _dispatch_set_priority_and_mach_voucher_slow(0, v32);
  }

  return v25;
}

void voucher_mach_msg_revert(voucher_mach_msg_state_t state)
{
  if (state != -1)
  {
    v12 = _dispatch_thread_getspecific(28);
    if (v12 == state)
    {
      v13 = -1;
    }

    else
    {
      _dispatch_thread_setspecific(28, state);
      _dispatch_thread_getspecific(0);
      _dispatch_log("%u\t%p\tvoucher[%p]: swap from voucher[%p]", v1, v2, v3, v4, v5, v6, v7, 400);
      if (state)
      {
        v10 = *(state + 8);
      }

      else
      {
        v10 = 0;
      }

      if (v12)
      {
        v9 = *(v12 + 8);
      }

      else
      {
        v9 = 0;
      }

      if (v10 == v9)
      {
        v8 = -1;
      }

      else
      {
        v8 = v10;
      }

      v13 = v8;
    }

    if (v13 != -1)
    {
      _dispatch_set_priority_and_mach_voucher_slow(0, v13);
    }

    if (v12)
    {
      os_release(v12);
    }
  }
}

uint64_t *voucher_activity_initialize_4libtrace(uint64_t *result)
{
  if (*result <= 2)
  {
    v1 = *result;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: unsupported vah_version";
    qword_E42C0 = v1;
    __break(1u);
    JUMPOUT(0x92CACLL);
  }

  v2 = 0;
  atomic_compare_exchange_strong_explicit(&_voucher_libtrace_hooks, &v2, result, memory_order_relaxed, memory_order_relaxed);
  if (v2)
  {
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: voucher_activity_initialize_4libtrace called twice";
    qword_E42C0 = _voucher_libtrace_hooks;
    __break(1u);
    JUMPOUT(0x92D84);
  }

  return result;
}

uint64_t _voucher_libkernel_init()
{
  result = __libkernel_voucher_init();
  if (result)
  {
    _dispatch_abort(1277, result == 0, v1, v2, v3, v4, v5, v6);
  }

  return result;
}

unint64_t voucher_activity_id_allocate(unsigned __int8 a1)
{
  slow = _voucher_aid_next;
  while (1)
  {
    v4 = slow + 1;
    if (!slow || !(v4 % 0x10))
    {
      break;
    }

    v1 = slow;
    v2 = slow;
    atomic_compare_exchange_strong_explicit(&_voucher_aid_next, &v2, v4, memory_order_relaxed, memory_order_relaxed);
    if (v2 != v1)
    {
      slow = v2;
    }

    if (v2 == v1)
    {
      return slow & 0xFFFFFFFFFFFFFFLL | (a1 << 56);
    }
  }

  slow = _voucher_activity_id_allocate_slow(slow);
  return slow & 0xFFFFFFFFFFFFFFLL | (a1 << 56);
}

mach_vm_address_t voucher_activity_get_logging_preferences(mach_vm_size_t *a1)
{
  if (_firehose_task_buffer_pred != -1)
  {
    dispatch_once_f(&_firehose_task_buffer_pred, 0, _firehose_task_buffer_init);
  }

  v2 = 1;
  if (_firehose_task_buffer)
  {
    v2 = *(_firehose_task_buffer + 1680) == -1;
  }

  if (!v2)
  {
    return firehose_buffer_get_logging_prefs(*(_firehose_task_buffer + 1676), a1);
  }

  *a1 = 0;
  return 0;
}