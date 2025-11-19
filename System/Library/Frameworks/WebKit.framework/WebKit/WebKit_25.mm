WTF::StringImpl *IPC::ArgumentCoder<WebCore::IDBResultData,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v17 = a1[3];
    if (v17)
    {
      if (v4)
      {
        (*(*v17 + 16))(v17);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_14:
    *a1 = 0;
    a1[1] = 0;
    v18 = a1[3];
    if (v18)
    {
      if (v4)
      {
        (*(*v18 + 16))(v18);
        v6 = *a1;
        v4 = a1[1];
        goto LABEL_17;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_17;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = *v5;
  if (v7 < 0x12)
  {
    v213 = v7 | 0x100;
    goto LABEL_5;
  }

LABEL_17:
  *a1 = 0;
  a1[1] = 0;
  v19 = a1[3];
  if (v19 && v4)
  {
    (*(*v19 + 16))(v19, v6);
  }

  v213 = 0;
LABEL_5:
  IPC::Decoder::decode<WebCore::IDBResourceIdentifier>(a1, &v224);
  IPC::Decoder::decode<WebCore::IDBError>(a1, &v221);
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a1;
  if (v8 <= &v9[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v20 = a1[3];
    if (v20)
    {
      if (v8)
      {
        (*(*v20 + 16))(v20);
        v8 = a1[1];
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_23;
  }

  a1[2] = (v9 + 1);
  if (!v9)
  {
LABEL_23:
    *a1 = 0;
    a1[1] = 0;
    v21 = a1[3];
    if (v21)
    {
      if (v8)
      {
        (*(*v21 + 16))(v21);
        v10 = *a1;
        v8 = a1[1];
        goto LABEL_26;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
LABEL_26:
    *a1 = 0;
    a1[1] = 0;
    v22 = a1[3];
    if (v22 && v8)
    {
      (*(*v22 + 16))(v22, v10);
    }

    goto LABEL_27;
  }

  v11 = *v9;
  if (v11 >= 2)
  {
    goto LABEL_26;
  }

  if (!v11)
  {
    v14 = 0;
    v209 = 0;
    v15 = 0;
    v16 = 1;
    goto LABEL_29;
  }

  v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v13)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFF00;
    v15 = v12;
    v16 = 1;
    v209 = 1;
    goto LABEL_29;
  }

LABEL_27:
  v23 = *a1;
  v24 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v25 = a1[3];
  if (v25 && v24)
  {
    (*(*v25 + 16))(v25, v23);
  }

  v16 = 0;
  v14 = 0;
  v15 = 0;
LABEL_29:
  result = IPC::Decoder::decode<std::unique_ptr<WebCore::IDBDatabaseInfo>>(&v219, a1);
  v27 = a1[1];
  v28 = a1[2];
  v29 = *a1;
  if (v27 <= &v28[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v192 = a1[3];
    if (v192)
    {
      if (v27)
      {
        (*(*v192 + 16))(v192);
        v27 = a1[1];
      }
    }

    else
    {
      v27 = 0;
    }

LABEL_298:
    *a1 = 0;
    a1[1] = 0;
    v193 = a1[3];
    if (v193)
    {
      if (v27)
      {
        (*(*v193 + 16))(v193);
        v29 = *a1;
        v27 = a1[1];
LABEL_301:
        *a1 = 0;
        a1[1] = 0;
        v194 = a1[3];
        if (v194 && v27)
        {
          (*(*v194 + 16))(v194, v29);
        }

        LOBYTE(v217) = 0;
        v218 = 0;
        goto LABEL_79;
      }
    }

    else
    {
      v27 = 0;
    }

    v29 = 0;
    goto LABEL_301;
  }

  a1[2] = (v28 + 1);
  if (!v28)
  {
    goto LABEL_298;
  }

  v30 = *v28;
  if (v30 >= 2)
  {
    goto LABEL_301;
  }

  if (!v30)
  {
    v217 = 0;
    v218 = 1;
    goto LABEL_38;
  }

  IPC::ArgumentCoder<WebCore::IDBTransactionInfo,void>::decode(a1, v226);
  if (v229 & 1) != 0 || (v62 = *a1, v63 = a1[1], *a1 = 0, a1[1] = 0, (v64 = a1[3]) != 0) && v63 && ((*(*v64 + 16))(v64, v62), (v229))
  {
    if (*MEMORY[0x1E69E25F8])
    {
      NonCompact = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E25F8], v31);
    }

    else
    {
      NonCompact = WebCore::IDBTransactionInfo::operatorNewSlow(0x38);
    }

    v33 = NonCompact;
    WebCore::IDBTransactionInfo::IDBTransactionInfo(NonCompact, v226);
    *v235 = 0;
    v217 = v33;
    v218 = 1;
    std::unique_ptr<WebCore::IDBTransactionInfo>::reset[abi:sn200100](v235, 0);
    result = std::__optional_destruct_base<WebCore::IDBTransactionInfo,false>::~__optional_destruct_base[abi:sn200100](v226);
    goto LABEL_38;
  }

  LOBYTE(v217) = 0;
  v218 = 0;
  std::__optional_destruct_base<WebCore::IDBTransactionInfo,false>::~__optional_destruct_base[abi:sn200100](v226);
LABEL_79:
  v65 = *a1;
  v66 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result && v66)
  {
    result = (*(*result + 16))(result, v65);
  }

LABEL_38:
  v34 = a1[1];
  v35 = a1[2];
  v36 = *a1;
  v210 = v15;
  v211 = v14;
  v212 = v16;
  if (v34 <= &v35[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v195 = a1[3];
    if (v195)
    {
      if (v34)
      {
        (*(*v195 + 16))(v195);
        v34 = a1[1];
      }
    }

    else
    {
      v34 = 0;
    }

    goto LABEL_305;
  }

  a1[2] = (v35 + 1);
  if (!v35)
  {
LABEL_305:
    *a1 = 0;
    a1[1] = 0;
    v196 = a1[3];
    if (v196)
    {
      if (v34)
      {
        (*(*v196 + 16))(v196);
        v36 = *a1;
        v34 = a1[1];
        goto LABEL_308;
      }
    }

    else
    {
      v34 = 0;
    }

    v36 = 0;
LABEL_308:
    *a1 = 0;
    a1[1] = 0;
    v197 = a1[3];
    if (v197 && v34)
    {
      (*(*v197 + 16))(v197, v36);
    }

    goto LABEL_309;
  }

  v37 = *v35;
  if (v37 >= 2)
  {
    goto LABEL_308;
  }

  if (!v37)
  {
    v40 = 0;
LABEL_48:
    v214 = 1;
    goto LABEL_49;
  }

  IPC::Decoder::decode<WebCore::IDBKeyData>(a1, v226);
  if (BYTE8(v227) == 1)
  {
    if (*MEMORY[0x1E69E24A8])
    {
      v39 = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E24A8], v38);
    }

    else
    {
      v39 = WebCore::IDBKeyData::operatorNewSlow(0x20);
    }

    v40 = v39;
    *v39 = *v226;
    result = mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(v39 + 8, &v226[8]);
    if (BYTE8(v227))
    {
      result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v226[8], v41);
    }

    goto LABEL_48;
  }

LABEL_309:
  v198 = *a1;
  v199 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result && v199)
  {
    result = (*(*result + 16))(result, v198);
  }

  v214 = 0;
  v40 = 0;
LABEL_49:
  v42 = a1[1];
  v43 = a1[2];
  v44 = *a1;
  if (v42 <= &v43[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v200 = a1[3];
    if (v200)
    {
      if (v42)
      {
        (*(*v200 + 16))(v200);
        v42 = a1[1];
      }
    }

    else
    {
      v42 = 0;
    }

    goto LABEL_315;
  }

  a1[2] = (v43 + 1);
  if (!v43)
  {
LABEL_315:
    *a1 = 0;
    a1[1] = 0;
    v201 = a1[3];
    if (v201)
    {
      if (v42)
      {
        (*(*v201 + 16))(v201);
        v44 = *a1;
        v42 = a1[1];
        goto LABEL_318;
      }
    }

    else
    {
      v42 = 0;
    }

    v44 = 0;
LABEL_318:
    *a1 = 0;
    a1[1] = 0;
    v202 = a1[3];
    if (v202 && v42)
    {
      (*(*v202 + 16))(v202, v44);
    }

    goto LABEL_264;
  }

  v45 = *v43;
  if (v45 >= 2)
  {
    goto LABEL_318;
  }

  if (!v45)
  {
    v215 = 0;
    v216 = 1;
    goto LABEL_151;
  }

  IPC::Decoder::decode<WebCore::IDBKeyData>(a1, &v263);
  IPC::Decoder::decode<WebCore::IDBKeyData>(a1, &v260);
  IPC::Decoder::decode<WebCore::IDBValue>(&v256, a1);
  IPC::Decoder::decode<std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(&v251, a1);
  v47 = a1[1];
  v48 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v49 = *a1;
  v50 = v48 - *a1;
  v51 = v47 >= v50;
  v52 = v47 - v50;
  if (!v51 || v52 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v185 = a1[3];
    if (v185)
    {
      if (v47)
      {
        (*(*v185 + 16))(v185);
        v47 = a1[1];
      }
    }

    else
    {
      v47 = 0;
    }

    goto LABEL_287;
  }

  a1[2] = (v48 + 1);
  if (!v48)
  {
LABEL_287:
    *a1 = 0;
    a1[1] = 0;
    v186 = a1[3];
    if (v186 && v47)
    {
      (*(*v186 + 16))(v186);
    }

    LOBYTE(v248) = 0;
    v250 = 0;
LABEL_289:
    v187 = *a1;
    v188 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v189 = a1[3];
    if (v189 && v188)
    {
      (*(*v189 + 16))(v189, v187);
    }

    goto LABEL_104;
  }

  v53 = *v48;
  v266 = 0;
  v267 = 0;
  if (v53 >= 0x2762)
  {
    v55 = v250;
    do
    {
      IPC::Decoder::decode<WebCore::IDBCursorRecord>(v235, a1);
      v67 = v243[0];
      if (v243[0])
      {
        if (HIDWORD(v267) == v267)
        {
          WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::IDBCursorRecord>(&v266, v235);
        }

        else
        {
          WebCore::IDBCursorRecord::IDBCursorRecord(v266 + 104 * HIDWORD(v267), v235);
          ++HIDWORD(v267);
        }
      }

      else
      {
        v55 = 0;
      }

      if (v243[0] == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v242, v49);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v240, v68);
        v70 = v239;
        v239 = 0;
        if (v70)
        {
          WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v70, v69);
        }

        mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v237, v69);
        mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v235[8], v71);
      }

      if ((v67 & 1) == 0)
      {
        goto LABEL_103;
      }

      --v53;
    }

    while (v53);
    v72 = HIDWORD(v267);
    if (v267 > HIDWORD(v267))
    {
      v73 = v266;
      if (HIDWORD(v267))
      {
        if (HIDWORD(v267) >= 0x2762763)
        {
          __break(0xC471u);
          goto LABEL_387;
        }

        v74 = WTF::fastMalloc((104 * HIDWORD(v267)));
        LODWORD(v267) = 104 * v72 / 0x68;
        v266 = v74;
        if (v74 != v73)
        {
          WTF::VectorMover<false,WebCore::IDBCursorRecord>::move(v73, v73 + 104 * v72, v74);
        }
      }

      if (v73)
      {
        if (v266 == v73)
        {
          v266 = 0;
          LODWORD(v267) = 0;
        }

        WTF::fastFree(v73, v49);
      }
    }

    goto LABEL_71;
  }

  if (!v53)
  {
LABEL_71:
    v248 = v266;
    v61 = v267;
    v266 = 0;
    v267 = 0;
    v249 = v61;
    v250 = 1;
    WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v266, v49);
    goto LABEL_104;
  }

  v54 = WTF::fastMalloc((104 * v53));
  LODWORD(v267) = 104 * v53 / 0x68u;
  v266 = v54;
  v55 = v250;
  while (1)
  {
    IPC::Decoder::decode<WebCore::IDBCursorRecord>(v235, a1);
    v56 = v243[0];
    if (v243[0])
    {
      if (HIDWORD(v267) == v267)
      {
        WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::IDBCursorRecord>(&v266, v235);
      }

      else
      {
        WebCore::IDBCursorRecord::IDBCursorRecord(v266 + 104 * HIDWORD(v267), v235);
        ++HIDWORD(v267);
      }
    }

    else
    {
      v55 = 0;
    }

    if (v243[0] == 1)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v242, v49);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v240, v57);
      v59 = v239;
      v239 = 0;
      if (v59)
      {
        WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v59, v58);
      }

      mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v237, v58);
      mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v235[8], v60);
    }

    if ((v56 & 1) == 0)
    {
      break;
    }

    if (!--v53)
    {
      goto LABEL_71;
    }
  }

LABEL_103:
  LOBYTE(v248) = 0;
  v250 = v55;
  WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v266, v49);
  if ((v55 & 1) == 0)
  {
    goto LABEL_289;
  }

LABEL_104:
  v75 = a1[1];
  v76 = a1[2];
  v77 = *a1;
  if (v75 <= &v76[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v206 = a1[3];
    if (v206)
    {
      if (v75)
      {
        (*(*v206 + 16))(v206);
        v75 = a1[1];
      }
    }

    else
    {
      v75 = 0;
    }

LABEL_331:
    *a1 = 0;
    a1[1] = 0;
    v207 = a1[3];
    if (v207)
    {
      if (v75)
      {
        (*(*v207 + 16))(v207);
        v78 = 0;
        v77 = *a1;
        v75 = a1[1];
        goto LABEL_334;
      }
    }

    else
    {
      v75 = 0;
    }

    v77 = 0;
    v78 = 0;
    goto LABEL_334;
  }

  a1[2] = (v76 + 1);
  if (!v76)
  {
    goto LABEL_331;
  }

  v78 = *v76;
  if (v78 < 2)
  {
    v79 = 1;
    goto LABEL_108;
  }

LABEL_334:
  *a1 = 0;
  a1[1] = 0;
  v208 = a1[3];
  if (!v208 || !v75)
  {
LABEL_335:
    v226[0] = 0;
    v234 = 0;
    goto LABEL_131;
  }

  (*(*v208 + 16))(v208, v77);
  v79 = 0;
  v77 = *a1;
LABEL_108:
  if (v78)
  {
    v80 = v79;
  }

  else
  {
    v80 = 0;
  }

  if (!v77)
  {
    goto LABEL_335;
  }

  if ((v265 & 1) == 0 || (v262 & 1) == 0 || (v259 & 1) == 0 || (v255 & 1) == 0 || (v250 & 1) == 0 || (v79 & 1) == 0)
  {
    goto LABEL_387;
  }

  *&v46 = 0;
  *v235 = v256;
  v81 = v257;
  v257 = 0;
  v256 = 0uLL;
  *&v235[16] = v81;
  v82 = v258;
  v258 = v46;
  v236 = v82;
  v237 = v263;
  mpark::detail::copy_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::copy_constructor(v238, &v263 + 8);
  v240 = v260;
  mpark::detail::copy_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::copy_constructor(v241, &v260 + 8);
  v243[0] = 0;
  v245 = 0;
  if (v254 == 1)
  {
    v244 = -1;
    if (v253 != 255)
    {
      if (v253)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v243, &v251);
      }

      else
      {
        v83 = v251;
        if (v251)
        {
          atomic_fetch_add_explicit(v251, 2u, memory_order_relaxed);
        }

        *v243 = v83;
      }

      v244 = v253;
    }

    v245 = 1;
  }

  v246[0] = v248;
  v84 = v249;
  v248 = 0;
  v249 = 0;
  v246[1] = v84;
  v247 = v80;
  WebCore::IDBGetResult::IDBGetResult(v226, v235);
  v234 = 1;
  WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v246, v85);
  if (v245 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v243, v86);
  }

  mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v241, v86);
  mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v238, v87);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v236, v88);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v235[8], v89);
  v90 = *v235;
  *v235 = 0;
  if (v90)
  {
    WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v90, v77);
  }

LABEL_131:
  if (v250 == 1)
  {
    WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v248, v77);
  }

  if (v255 == 1 && v254 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&v251, v77);
  }

  if (v259 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v258, v77);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v256 + 8, v91);
    v92 = v256;
    *&v256 = 0;
    if (v92)
    {
      WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v92, v77);
    }
  }

  if (v262 == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v260 + 8, v77);
  }

  if (v265 == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v263 + 8, v77);
  }

  if ((v234 & 1) == 0)
  {
    v174 = *a1;
    v175 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v176 = a1[3];
    if (!v176 || !v175 || ((*(*v176 + 16))(v176, v174), (v234 & 1) == 0))
    {
LABEL_264:
      LOBYTE(v215) = 0;
      v216 = 0;
      v177 = *a1;
      v178 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      result = a1[3];
      if (result && v178)
      {
        result = (*(*result + 16))(result, v177);
      }

      goto LABEL_151;
    }
  }

  if (*MEMORY[0x1E69E24E8])
  {
    v93 = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E24E8], v77);
  }

  else
  {
    v93 = WebCore::IDBGetResult::operatorNewSlow(0xA0);
  }

  v94 = v93;
  WebCore::IDBGetResult::IDBGetResult(v93, v226);
  *v235 = 0;
  v215 = v94;
  v216 = 1;
  result = std::unique_ptr<WebCore::IDBGetResult>::reset[abi:sn200100](v235, 0);
  if (v234)
  {
    WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v233, v95);
    if (v232[24] == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v232, v96);
    }

    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v230[8], v96);
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v228 + 8, v97);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v227, v98);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v226[8], v99);
    result = *v226;
    *v226 = 0;
    if (result)
    {
      result = WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(result, v100);
    }
  }

LABEL_151:
  v101 = a1[1];
  v102 = a1[2];
  v103 = *a1;
  if (v101 <= &v102[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v203 = a1[3];
    if (v203)
    {
      if (v101)
      {
        (*(*v203 + 16))(v203);
        v101 = a1[1];
      }
    }

    else
    {
      v101 = 0;
    }

    goto LABEL_323;
  }

  a1[2] = (v102 + 1);
  if (!v102)
  {
LABEL_323:
    *a1 = 0;
    a1[1] = 0;
    v204 = a1[3];
    if (v204)
    {
      if (v101)
      {
        (*(*v204 + 16))(v204);
        v103 = *a1;
        v101 = a1[1];
        goto LABEL_326;
      }
    }

    else
    {
      v101 = 0;
    }

    v103 = 0;
LABEL_326:
    *a1 = 0;
    a1[1] = 0;
    v205 = a1[3];
    if (v205 && v101)
    {
      (*(*v205 + 16))(v205, v103);
    }

    goto LABEL_268;
  }

  v104 = *v102;
  if (v104 >= 2)
  {
    goto LABEL_326;
  }

  if (!v104)
  {
    v251 = 0;
    v252 = 1;
    goto LABEL_195;
  }

  v105 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v263, a1);
  v106 = a1[1];
  v107 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v108 = *a1;
  v109 = v107 - *a1;
  v51 = v106 >= v109;
  v110 = v106 - v109;
  if (v51 && v110 > 7)
  {
    a1[2] = (v107 + 1);
    if (v107)
    {
      v111 = *v107;
      v256 = 0uLL;
      if (v111 >= 0x6666)
      {
        do
        {
          IPC::Decoder::decode<WebCore::IDBValue>(v235, a1);
          v160 = v237;
          if (v237)
          {
            if (HIDWORD(v256) == DWORD2(v256))
            {
              WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::IDBValue>(&v256, v235);
            }

            else
            {
              v161 = v256 + 40 * HIDWORD(v256);
              v162 = *v235;
              *v235 = 0;
              *(v161 + 8) = 0;
              *(v161 + 16) = 0;
              *v161 = v162;
              v163 = *&v235[8];
              *&v235[8] = 0;
              *(v161 + 8) = v163;
              LODWORD(v163) = *&v235[16];
              *&v235[16] = 0;
              *(v161 + 16) = v163;
              LODWORD(v163) = *&v235[20];
              *&v235[20] = 0;
              *(v161 + 20) = v163;
              *(v161 + 24) = 0;
              *(v161 + 32) = 0;
              v164 = v236;
              *&v236 = 0;
              *(v161 + 24) = v164;
              LODWORD(v164) = DWORD2(v236);
              DWORD2(v236) = 0;
              *(v161 + 32) = v164;
              LODWORD(v164) = HIDWORD(v236);
              HIDWORD(v236) = 0;
              *(v161 + 36) = v164;
              ++HIDWORD(v256);
            }
          }

          if (v237 == 1)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v236, v108);
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v235[8], v165);
            v166 = *v235;
            *v235 = 0;
            if (v166)
            {
              WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v166, v108);
            }
          }

          if ((v160 & 1) == 0)
          {
            goto LABEL_258;
          }

          --v111;
        }

        while (v111);
        v167 = HIDWORD(v256);
        if (DWORD2(v256) > HIDWORD(v256))
        {
          v168 = v256;
          if (HIDWORD(v256))
          {
            if (HIDWORD(v256) >= 0x6666667)
            {
              __break(0xC471u);
              goto LABEL_388;
            }

            v169 = 40 * HIDWORD(v256);
            v170 = WTF::fastMalloc((40 * HIDWORD(v256)));
            DWORD2(v256) = v169 / 0x28;
            *&v256 = v170;
            if (v170 != v168)
            {
              WTF::VectorMover<false,WebCore::IDBValue>::move(v168, v168 + 10 * v167, v170);
            }
          }

          if (v168)
          {
            if (v256 == v168)
            {
              *&v256 = 0;
              DWORD2(v256) = 0;
            }

            WTF::fastFree(v168, v108);
          }
        }
      }

      else if (v111)
      {
        v112 = WTF::fastMalloc((40 * v111));
        DWORD2(v256) = 40 * v111 / 0x28u;
        *&v256 = v112;
        while (1)
        {
          IPC::Decoder::decode<WebCore::IDBValue>(v235, a1);
          v113 = v237;
          if (v237)
          {
            if (HIDWORD(v256) == DWORD2(v256))
            {
              WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::IDBValue>(&v256, v235);
            }

            else
            {
              v114 = v256 + 40 * HIDWORD(v256);
              v115 = *v235;
              *v235 = 0;
              *(v114 + 8) = 0;
              *(v114 + 16) = 0;
              *v114 = v115;
              v116 = *&v235[8];
              *&v235[8] = 0;
              *(v114 + 8) = v116;
              LODWORD(v116) = *&v235[16];
              *&v235[16] = 0;
              *(v114 + 16) = v116;
              LODWORD(v116) = *&v235[20];
              *&v235[20] = 0;
              *(v114 + 20) = v116;
              *(v114 + 24) = 0;
              *(v114 + 32) = 0;
              v117 = v236;
              *&v236 = 0;
              *(v114 + 24) = v117;
              LODWORD(v117) = DWORD2(v236);
              DWORD2(v236) = 0;
              *(v114 + 32) = v117;
              LODWORD(v117) = HIDWORD(v236);
              HIDWORD(v236) = 0;
              *(v114 + 36) = v117;
              ++HIDWORD(v256);
            }
          }

          if (v237 == 1)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v236, v108);
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v235[8], v118);
            v119 = *v235;
            *v235 = 0;
            if (v119)
            {
              WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v119, v108);
            }
          }

          if ((v113 & 1) == 0)
          {
            break;
          }

          if (!--v111)
          {
            goto LABEL_171;
          }
        }

LABEL_258:
        LOBYTE(v260) = 0;
        v261 = 0;
        WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v256, v108);
        goto LABEL_259;
      }

LABEL_171:
      v120 = *(&v256 + 1);
      *&v260 = v256;
      v256 = 0uLL;
      *(&v260 + 1) = v120;
      v261 = 1;
      WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v256, v108);
      goto LABEL_172;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v190 = a1[3];
    if (v190)
    {
      if (v106)
      {
        (*(*v190 + 16))(v190);
        v106 = a1[1];
      }
    }

    else
    {
      v106 = 0;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v191 = a1[3];
  if (v191 && v106)
  {
    (*(*v191 + 16))(v191);
  }

  LOBYTE(v260) = 0;
  v261 = 0;
LABEL_259:
  v171 = *a1;
  v172 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v173 = a1[3];
  if (v173 && v172)
  {
    (*(*v173 + 16))(v173, v171);
  }

LABEL_172:
  IPC::Decoder::decode<std::optional<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>(&v256, a1);
  if (!*a1)
  {
    v226[0] = 0;
    v230[0] = 0;
    goto LABEL_180;
  }

  if (v105 <= 0xFFu || (v264 & 1) == 0 || (v261 & 1) == 0 || (BYTE8(v258) & 1) == 0)
  {
LABEL_387:
    __break(1u);
LABEL_388:
    JUMPOUT(0x19D7062E8);
  }

  *&v122 = 0;
  v235[0] = v105 & 1;
  v123 = v263;
  v263 = v122;
  *&v235[8] = v123;
  v124 = v260;
  v260 = v122;
  v236 = v124;
  std::__optional_move_base<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__optional_move_base[abi:sn200100](&v237, &v256);
  *&v125 = 0;
  v226[0] = v235[0];
  *&v226[8] = *&v235[8];
  v126 = v236;
  *&v235[8] = v125;
  v236 = v125;
  v227 = v126;
  std::__optional_move_base<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__optional_move_base[abi:sn200100](&v228, &v237);
  v230[0] = 1;
  if (v239 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&v237, v127);
  }

  WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v236, v127);
  WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v235[8], v128);
LABEL_180:
  if (BYTE8(v258) == 1 && v258 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&v256, v121);
  }

  if (v261 == 1)
  {
    WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v260, v121);
  }

  if (v264 == 1)
  {
    WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v263, v121);
  }

  if ((v230[0] & 1) == 0)
  {
    v179 = *a1;
    v180 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v181 = a1[3];
    if (!v181 || !v180 || ((*(*v181 + 16))(v181, v179), (v230[0] & 1) == 0))
    {
LABEL_268:
      LOBYTE(v251) = 0;
      v252 = 0;
      v182 = *a1;
      v183 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      result = a1[3];
      if (result && v183)
      {
        result = (*(*result + 16))(result, v182);
      }

      goto LABEL_195;
    }
  }

  if (*MEMORY[0x1E69E2568])
  {
    v129 = bmalloc::api::tzoneAllocateNonCompact(*MEMORY[0x1E69E2568], v121);
  }

  else
  {
    v129 = WebCore::IDBGetAllResult::operatorNewSlow(0x48);
  }

  v130 = v129;
  *v129 = v226[0];
  *(v129 + 8) = 0;
  *(v129 + 16) = 0;
  v131 = *&v226[8];
  *&v226[8] = 0;
  *(v129 + 8) = v131;
  LODWORD(v131) = *&v226[16];
  *&v226[16] = 0;
  *(v129 + 16) = v131;
  LODWORD(v131) = *&v226[20];
  *&v226[20] = 0;
  *(v129 + 20) = v131;
  *(v129 + 24) = 0;
  *(v129 + 32) = 0;
  v132 = v227;
  *&v227 = 0;
  *(v129 + 24) = v132;
  LODWORD(v132) = DWORD2(v227);
  DWORD2(v227) = 0;
  *(v129 + 32) = v132;
  LODWORD(v132) = HIDWORD(v227);
  HIDWORD(v227) = 0;
  *(v129 + 36) = v132;
  std::__optional_move_base<mpark::variant<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__optional_move_base[abi:sn200100]((v129 + 40), &v228);
  *v235 = 0;
  v251 = v130;
  v252 = 1;
  result = std::unique_ptr<WebCore::IDBGetAllResult>::reset[abi:sn200100](v235, 0);
  if (v230[0])
  {
    if (BYTE8(v229) == 1)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&v228, v133);
    }

    WTF::Vector<WebCore::IDBValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v227, v133);
    result = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v226[8], v134);
  }

LABEL_195:
  v135 = a1[1];
  v136 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v137 = *a1;
  v138 = v136 - *a1;
  v51 = v135 >= v138;
  v139 = v135 - v138;
  if (!v51 || v139 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v184 = a1[3];
    if (v184)
    {
      if (v135)
      {
        (*(*v184 + 16))(v184);
        v137 = *a1;
        v135 = a1[1];
        goto LABEL_283;
      }
    }

    else
    {
      v135 = 0;
    }

    v137 = 0;
LABEL_283:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      if (v135)
      {
        result = (*(*result + 16))(result);
        v141 = 0;
        v140 = 0;
        v137 = *a1;
        if (*a1)
        {
          goto LABEL_200;
        }
      }
    }

LABEL_284:
    *a2 = 0;
    *(a2 + 104) = 0;
    goto LABEL_221;
  }

  a1[2] = (v136 + 1);
  if (!v136)
  {
    goto LABEL_283;
  }

  v140 = *v136;
  v141 = 1;
  if (!v137)
  {
    goto LABEL_284;
  }

LABEL_200:
  WebCore::IDBResultData::IDBResultData(v226);
  if (v213 <= 0xFF)
  {
    goto LABEL_387;
  }

  v226[0] = v213;
  if ((v225 & 1) == 0)
  {
    goto LABEL_387;
  }

  *&v226[8] = v224;
  if ((v223 & 1) == 0)
  {
    goto LABEL_387;
  }

  LOWORD(v227) = v221;
  v143 = v222;
  v222 = 0;
  v144 = *(&v227 + 1);
  *(&v227 + 1) = v143;
  if (v144 && atomic_fetch_add_explicit(v144, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v144, v142);
  }

  if ((v212 & 1) == 0)
  {
    goto LABEL_387;
  }

  *&v228 = v210 | v211;
  BYTE8(v228) = v209;
  if ((v220 & 1) == 0)
  {
    goto LABEL_387;
  }

  v145 = v219;
  v219 = 0;
  std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&v229, v145);
  if ((v218 & 1) == 0)
  {
    goto LABEL_387;
  }

  v146 = v217;
  v217 = 0;
  std::unique_ptr<WebCore::IDBTransactionInfo>::reset[abi:sn200100](&v229 + 1, v146);
  if ((v214 & 1) == 0)
  {
    goto LABEL_387;
  }

  v148 = *v230;
  *v230 = v40;
  if (v148)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v148 + 8, v147);
    bmalloc::api::tzoneFree(v148, v149);
  }

  if ((v216 & 1) == 0)
  {
    goto LABEL_387;
  }

  v150 = v215;
  v215 = 0;
  std::unique_ptr<WebCore::IDBGetResult>::reset[abi:sn200100](&v230[8], v150);
  if ((v252 & 1) == 0)
  {
    goto LABEL_387;
  }

  v151 = v251;
  v251 = 0;
  std::unique_ptr<WebCore::IDBGetAllResult>::reset[abi:sn200100](&v230[16], v151);
  if ((v141 & 1) == 0)
  {
    goto LABEL_387;
  }

  *(a2 + 16) = *&v226[16];
  *(a2 + 24) = v227;
  v152 = *&v230[16];
  *(a2 + 32) = *(&v227 + 1);
  v231 = v140;
  *a2 = *v226;
  *(a2 + 40) = v228;
  v153 = v229;
  v229 = 0u;
  *(a2 + 56) = v153;
  v154 = *v230;
  *(&v227 + 1) = 0;
  *v230 = 0;
  *(a2 + 72) = v154;
  *&v230[8] = 0u;
  *(a2 + 88) = v152;
  *(a2 + 96) = v140;
  *(a2 + 104) = 1;
  std::unique_ptr<WebCore::IDBGetAllResult>::reset[abi:sn200100](&v230[16], 0);
  std::unique_ptr<WebCore::IDBGetResult>::reset[abi:sn200100](&v230[8], 0);
  v156 = *v230;
  *v230 = 0;
  if (v156)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v156 + 8, v155);
    bmalloc::api::tzoneFree(v156, v157);
  }

  std::unique_ptr<WebCore::IDBTransactionInfo>::reset[abi:sn200100](&v229 + 1, 0);
  std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&v229, 0);
  result = *(&v227 + 1);
  *(&v227 + 1) = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v137);
  }

  v40 = 0;
LABEL_221:
  if (v252 == 1)
  {
    result = std::unique_ptr<WebCore::IDBGetAllResult>::reset[abi:sn200100](&v251, 0);
  }

  if (v216 == 1)
  {
    result = std::unique_ptr<WebCore::IDBGetResult>::reset[abi:sn200100](&v215, 0);
  }

  v158 = v214 ^ 1;
  if (!v40)
  {
    v158 = 1;
  }

  if ((v158 & 1) == 0)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v40 + 8, v137);
    result = bmalloc::api::tzoneFree(v40, v159);
  }

  if (v218 == 1)
  {
    result = std::unique_ptr<WebCore::IDBTransactionInfo>::reset[abi:sn200100](&v217, 0);
  }

  if (v220 == 1)
  {
    result = std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&v219, 0);
  }

  if (v223 == 1)
  {
    result = v222;
    v222 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v137);
      }
    }
  }

  return result;
}

void sub_19D7062F4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, WTF::StringImpl ***a17, __int16 a18, WTF::StringImpl **a19, __int16 a20, uint64_t a21, WTF::StringImpl *a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, WTF *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, WTF *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, WTF *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a70 == 1)
  {
    WTF::Vector<WebCore::IDBCursorRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a68, a2);
  }

  if (LOBYTE(STACK[0x208]) == 1 && LOBYTE(STACK[0x200]) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WTF::String,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&a71, a2);
  }

  if (*(v72 - 200) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v72 - 216, a2);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v72 - 240) | 8, v74);
    v75 = *(v72 - 240);
    *(v72 - 240) = 0;
    if (v75)
    {
      WTF::ThreadSafeRefCounted<WebCore::ThreadSafeDataBufferImpl,(WTF::DestructionThread)0>::deref(v75, a2);
    }
  }

  if (*(v72 - 160) == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v72 - 184, a2);
  }

  if (*(v72 - 120) == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v72 - 144, a2);
  }

  v76 = a14 ^ 1;
  if (!v71)
  {
    v76 = 1;
  }

  if ((v76 & 1) == 0)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v71 + 8, a2);
    bmalloc::api::tzoneFree(v71, v77);
  }

  if (a18 == 1)
  {
    std::unique_ptr<WebCore::IDBTransactionInfo>::reset[abi:sn200100](&a17, 0);
  }

  if (a20 == 1)
  {
    std::unique_ptr<WebCore::IDBDatabaseInfo>::reset[abi:sn200100](&a19, 0);
  }

  if (a23 == 1)
  {
    v78 = a22;
    a22 = 0;
    if (v78)
    {
      if (atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v78, a2);
      }
    }
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::IDBError>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::IDBError,void>::decode(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

IPC::Encoder *IPC::ArgumentCoder<WebCore::IDBKeyData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 1);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  v6 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  return IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max> const&>(a1, a2 + 8, v6);
}

uint64_t IPC::ArgumentCoder<WebCore::IDBKeyData,void>::decode@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *result;
  if (v4 <= &v5[-*result])
  {
    *result = 0;
    *(result + 8) = 0;
    v19 = *(result + 24);
    if (v19)
    {
      if (v4)
      {
        (*(*v19 + 16))(v19);
        v4 = v2[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_62:
    *v2 = 0;
    v2[1] = 0;
    v20 = v2[3];
    if (v20)
    {
      if (v4)
      {
        (*(*v20 + 16))(v20);
        v7 = 0;
        v6 = *v2;
        v4 = v2[1];
        goto LABEL_65;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_65;
  }

  *(result + 16) = v5 + 1;
  if (!v5)
  {
    goto LABEL_62;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

LABEL_65:
  *v2 = 0;
  v2[1] = 0;
  v21 = v2[3];
  if (!v21 || !v4)
  {
    v6 = 0;
    v9 = 0;
    v8 = 0;
    v4 = 0;
    goto LABEL_67;
  }

  result = (*(*v21 + 16))(v21, v6);
  v8 = 0;
  v6 = *v2;
  v4 = v2[1];
LABEL_5:
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v2[2];
  if (v4 <= &v10[-v6])
  {
LABEL_67:
    *v2 = 0;
    v2[1] = 0;
    v22 = v2[3];
    if (v22)
    {
      if (v4)
      {
        (*(*v22 + 16))(v22, v6);
        v4 = v2[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_69:
    *v2 = 0;
    v2[1] = 0;
    v23 = v2[3];
    if (v23 && v4)
    {
      v17 = *(*v23 + 16);
      goto LABEL_56;
    }

    goto LABEL_11;
  }

  v2[2] = (v10 + 1);
  if (!v10)
  {
    goto LABEL_69;
  }

  v11 = *v10;
  if (v11 < 9)
  {
    if (v11)
    {
      switch(v11)
      {
        case 1u:
          if (!v6)
          {
            goto LABEL_54;
          }

          LOBYTE(v11) = 1;
          break;
        case 2u:
          IPC::Decoder::decode<WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v24, v2);
          if (v26 != 1)
          {
            goto LABEL_11;
          }

          v27[0] = v24;
          v15 = v25;
          v24 = 0;
          v25 = 0;
          v27[1] = v15;
          v28 = 2;
          result = WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v14);
LABEL_20:
          v29 = 1;
          goto LABEL_21;
        case 3u:
          result = IPC::Decoder::decode<WTF::String>(v2, &v24);
          if (v25 != 1)
          {
            goto LABEL_11;
          }

          v27[0] = v24;
          LOBYTE(v11) = 3;
          break;
        case 4u:
          result = IPC::Decoder::decode<unsigned long long>(v2);
          if ((v6 & 1) == 0)
          {
            goto LABEL_11;
          }

          v27[0] = result;
          LOBYTE(v11) = 4;
          break;
        case 5u:
          result = IPC::Decoder::decode<unsigned long long>(v2);
          if (!*v2)
          {
            v18 = v2[1];
            *v2 = 0;
            v2[1] = 0;
            v16 = v2[3];
            if (v16 && v18)
            {
              goto LABEL_55;
            }

            goto LABEL_11;
          }

          if ((v6 & 1) == 0)
          {
            goto LABEL_53;
          }

          v27[0] = result;
          LOBYTE(v11) = 5;
          break;
        case 6u:
          result = IPC::Decoder::decode<WebCore::ThreadSafeDataBuffer>(&v24, v2);
          if (v25 != 1)
          {
            goto LABEL_11;
          }

          v27[0] = v24;
          LOBYTE(v11) = 6;
          break;
        case 7u:
          if (!v6)
          {
            goto LABEL_54;
          }

          LOBYTE(v11) = 7;
          break;
        default:
          if (!v6)
          {
            goto LABEL_54;
          }

          LOBYTE(v11) = 8;
          break;
      }
    }

    else
    {
      v27[0] = 0;
    }

    v28 = v11;
    goto LABEL_20;
  }

  while (1)
  {
LABEL_11:
    LOBYTE(v27[0]) = 0;
    v29 = 0;
    v6 = *v2;
    v12 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    result = v2[3];
    if (result && v12)
    {
      result = (*(*result + 16))(result, v6);
    }

LABEL_21:
    if (!*v2)
    {
      break;
    }

    if (v29)
    {
      result = WebCore::IDBKeyData::isValidValue();
      if ((result & 1) == 0 || !*v2)
      {
        break;
      }

      if (v8 & 1) != 0 && (v29)
      {
        LOBYTE(v24) = 0;
        BYTE1(v24) = v9;
        mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(&v25, v27);
        *a2 = v24;
        mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>,(mpark::detail::Trait)1>::move_constructor(a2 + 8, &v25);
        *(a2 + 32) = 1;
        result = mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&v25, v13);
        goto LABEL_29;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    *v2 = 0;
    v2[1] = 0;
    v16 = v2[3];
    if (v16)
    {
LABEL_55:
      v17 = *(*v16 + 16);
LABEL_56:
      v17();
    }
  }

  *a2 = 0;
  *(a2 + 32) = 0;
LABEL_29:
  if (v29 == 1)
  {
    return mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(v27, v6);
  }

  return result;
}

void sub_19D706CD8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 == 1)
  {
    mpark::detail::impl<decltype(nullptr),WebCore::IDBKeyData::Invalid,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String,double,WebCore::IDBKeyData::Date,WebCore::ThreadSafeDataBuffer,WebCore::IDBKeyData::Min,WebCore::IDBKeyData::Max>::~impl(&a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::IndexKey,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  mpark::detail::copy_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::copy_constructor(v6, a2);
  v5 = v6[32];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, v6, v5);
  return mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v6, v3);
}

uint64_t IPC::ArgumentCoder<WebCore::IndexKey,void>::decode@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  result = IPC::Decoder::decode<mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, v8);
  if (*a1)
  {
    if ((v9 & 1) == 0)
    {
      __break(1u);
    }

    MEMORY[0x19EB0F360](v7, v8);
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(a2, v7);
    a2[40] = 1;
    result = mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v7, v6);
  }

  else
  {
    *a2 = 0;
    a2[40] = 0;
  }

  if (v9 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v8, v5);
  }

  return result;
}

void sub_19D706E70(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&a9, a2);
  if (a19 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&a14, v20);
  }

  _Unwind_Resume(a1);
}

uint64_t *IPC::Decoder::decode<mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<mpark::variant<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 40) & 1) == 0)
  {
    v5 = *a1;
    v6 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D706F18(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 40) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<decltype(nullptr),WebCore::IDBKeyData,WTF::Vector<WebCore::IDBKeyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::FloatRect,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if ((v8 & 1) == 0)
  {
    v10 = v8;
    v11 = result;
    IPC::Decoder::markInvalid(a1);
    v8 = v10;
    result = v11;
  }

  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_11;
  }

  if ((v6 & 1) == 0 || (v8 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    *a2 = 0;
    goto LABEL_9;
  }

  *a2 = v4;
  *(a2 + 8) = result;
  LOBYTE(v9) = 1;
LABEL_9:
  *(a2 + 16) = v9;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::LinearTimingFunction::Point,void>::encode(IPC::Encoder *a1, double *a2)
{
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *a2);
  v4 = a2[1];

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t WebCore::LinearTimingFunction::create@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = WTF::fastMalloc(0x20);
  result = WebCore::LinearTimingFunction::LinearTimingFunction(v4, a1);
  *a2 = v4;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::CubicBezierTimingFunction,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  v4 = *(a2 + 40);

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::StepsTimingFunction,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v4 = *(a2 + 16);
  if ((v4 & 0x100) != 0)
  {
    v6 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v6);
    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
  }

  else
  {
    v7 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v7);
  }
}

uint64_t IPC::ArgumentCoder<WebCore::ResourceLoadStatistics,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 32));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 72));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 80));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 88));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 96));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 104));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 112));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 120));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 128));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 129));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 132));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 136));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 140));
  IPC::ArgumentCoder<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 144));
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 152));
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 160));
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 168));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 176));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 184));
  v4 = *(a2 + 192);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebCore::ResourceLoadStatistics,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebCore::RegistrableDomain>(a1, &v175);
  v4 = IPC::Decoder::decode<WTF::Seconds>(a1);
  v6 = v5;
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *a1;
  if (v7 <= &v8[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v93 = *(a1 + 3);
    if (v93)
    {
      if (v7)
      {
        (*(*v93 + 16))(v93);
        v7 = *(a1 + 1);
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_195:
    *a1 = 0;
    *(a1 + 1) = 0;
    v94 = *(a1 + 3);
    if (v94)
    {
      if (v7)
      {
        (*(*v94 + 16))(v94);
        v10 = 0;
        v9 = *a1;
        v7 = *(a1 + 1);
        goto LABEL_198;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
    v10 = 0;
    goto LABEL_198;
  }

  *(a1 + 2) = v8 + 1;
  if (!v8)
  {
    goto LABEL_195;
  }

  v10 = *v8;
  if (v10 < 2)
  {
    v11 = 1;
    goto LABEL_5;
  }

LABEL_198:
  *a1 = 0;
  *(a1 + 1) = 0;
  v95 = *(a1 + 3);
  if (v95 && v7)
  {
    (*(*v95 + 16))(v95, v9);
  }

  v11 = 0;
LABEL_5:
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = IPC::Decoder::decode<WTF::Seconds>(a1);
  v15 = v14;
  v16 = *(a1 + 1);
  v17 = *(a1 + 2);
  v18 = *a1;
  if (v16 <= &v17[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v96 = *(a1 + 3);
    if (v96)
    {
      if (v16)
      {
        (*(*v96 + 16))(v96);
        v16 = *(a1 + 1);
      }
    }

    else
    {
      v16 = 0;
    }

LABEL_202:
    *a1 = 0;
    *(a1 + 1) = 0;
    v97 = *(a1 + 3);
    if (v97)
    {
      if (v16)
      {
        (*(*v97 + 16))(v97);
        v19 = 0;
        v18 = *a1;
        v16 = *(a1 + 1);
        goto LABEL_205;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = 0;
    v19 = 0;
    goto LABEL_205;
  }

  *(a1 + 2) = v17 + 1;
  if (!v17)
  {
    goto LABEL_202;
  }

  v19 = *v17;
  if (v19 < 2)
  {
    v20 = 1;
    goto LABEL_12;
  }

LABEL_205:
  *a1 = 0;
  *(a1 + 1) = 0;
  v98 = *(a1 + 3);
  if (v98 && v16)
  {
    (*(*v98 + 16))(v98, v18);
  }

  v20 = 0;
LABEL_12:
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v173);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v171);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v169);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v167);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v165);
  v22 = *(a1 + 1);
  v23 = *(a1 + 2);
  v24 = *a1;
  v130 = v21;
  if (v22 <= &v23[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v99 = *(a1 + 3);
    if (v99)
    {
      if (v22)
      {
        (*(*v99 + 16))(v99);
        v22 = *(a1 + 1);
      }
    }

    else
    {
      v22 = 0;
    }

LABEL_209:
    *a1 = 0;
    *(a1 + 1) = 0;
    v100 = *(a1 + 3);
    if (v100)
    {
      if (v22)
      {
        (*(*v100 + 16))(v100);
        v25 = 0;
        v24 = *a1;
        v22 = *(a1 + 1);
        goto LABEL_212;
      }
    }

    else
    {
      v22 = 0;
    }

    v24 = 0;
    v25 = 0;
    goto LABEL_212;
  }

  *(a1 + 2) = v23 + 1;
  if (!v23)
  {
    goto LABEL_209;
  }

  v25 = *v23;
  if (v25 < 2)
  {
    v26 = 1;
    goto LABEL_19;
  }

LABEL_212:
  *a1 = 0;
  *(a1 + 1) = 0;
  v101 = *(a1 + 3);
  if (v101 && v22)
  {
    (*(*v101 + 16))(v101, v24);
  }

  v26 = 0;
LABEL_19:
  v129 = v26;
  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v163);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v161);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v159);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v157);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v155);
  v28 = *(a1 + 1);
  v29 = *(a1 + 2);
  v30 = *a1;
  v128 = v27;
  if (v28 <= &v29[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v102 = *(a1 + 3);
    if (v102)
    {
      if (v28)
      {
        (*(*v102 + 16))(v102);
        v28 = *(a1 + 1);
      }
    }

    else
    {
      v28 = 0;
    }

LABEL_216:
    *a1 = 0;
    *(a1 + 1) = 0;
    v103 = *(a1 + 3);
    if (v103)
    {
      if (v28)
      {
        (*(*v103 + 16))(v103);
        v32 = 0;
        v30 = *a1;
        v28 = *(a1 + 1);
        goto LABEL_219;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 0;
    v32 = 0;
    goto LABEL_219;
  }

  v31 = v29 + 1;
  *(a1 + 2) = v29 + 1;
  if (!v29)
  {
    goto LABEL_216;
  }

  v32 = *v29;
  if (v32 < 2)
  {
    v33 = 1;
    goto LABEL_26;
  }

LABEL_219:
  *a1 = 0;
  *(a1 + 1) = 0;
  v104 = *(a1 + 3);
  if (!v104 || !v28)
  {
    v127 = 0;
    v105 = 0;
    v30 = 0;
LABEL_221:
    *a1 = 0;
    *(a1 + 1) = 0;
    v106 = *(a1 + 3);
    if (v106 && v105)
    {
      (*(*v106 + 16))(v106, v30, v105);
      v35 = 0;
      v30 = *a1;
      v28 = *(a1 + 1);
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v35 = 0;
    }

    goto LABEL_223;
  }

  (*(*v104 + 16))(v104, v30);
  v33 = 0;
  v30 = *a1;
  v28 = *(a1 + 1);
  v31 = *(a1 + 2);
LABEL_26:
  BYTE4(v127) = v33;
  if (v32)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  LOBYTE(v127) = v34;
  if (v28 <= v31 - v30)
  {
    v105 = 0;
    v112 = *(a1 + 3);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v112 && v28)
    {
      (*(*v112 + 16))(v112);
      v30 = *a1;
      v105 = *(a1 + 1);
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_221;
  }

  *(a1 + 2) = v31 + 1;
  if (!v31)
  {
    v105 = v28;
    goto LABEL_221;
  }

  v35 = *v31;
  if (v35 < 2)
  {
    v36 = 1;
    goto LABEL_33;
  }

LABEL_223:
  *a1 = 0;
  *(a1 + 1) = 0;
  v107 = *(a1 + 3);
  if (!v107)
  {
    v30 = 0;
    v28 = 0;
LABEL_225:
    v36 = 0;
    goto LABEL_33;
  }

  if (!v28)
  {
    v30 = 0;
    goto LABEL_225;
  }

  (*(*v107 + 16))(v107, v30);
  v36 = 0;
  v30 = *a1;
  v28 = *(a1 + 1);
LABEL_33:
  v126 = v36;
  if (v35)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v28 < v38 - v30 || v28 - (v38 - v30) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v87 = *(a1 + 3);
    if (v87)
    {
      if (v28)
      {
        (*(*v87 + 16))(v87);
        v30 = *a1;
        v28 = *(a1 + 1);
        goto LABEL_179;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 0;
  }

  else
  {
    *(a1 + 2) = v38 + 4;
    if (v38)
    {
      v125 = *v38 | 0x100000000;
      goto LABEL_40;
    }
  }

LABEL_179:
  *a1 = 0;
  *(a1 + 1) = 0;
  v88 = *(a1 + 3);
  if (v88)
  {
    if (v28)
    {
      (*(*v88 + 16))(v88, v30);
      v125 = 0;
      v30 = *a1;
      v28 = *(a1 + 1);
      goto LABEL_40;
    }

    v30 = 0;
  }

  else
  {
    v30 = 0;
    v28 = 0;
  }

  v125 = 0;
LABEL_40:
  v39 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v28 < v39 - v30 || v28 - (v39 - v30) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v89 = *(a1 + 3);
    if (v89)
    {
      if (v28)
      {
        (*(*v89 + 16))(v89);
        v30 = *a1;
        v28 = *(a1 + 1);
        goto LABEL_185;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 0;
  }

  else
  {
    *(a1 + 2) = v39 + 4;
    if (v39)
    {
      v124 = *v39 | 0x100000000;
      goto LABEL_44;
    }
  }

LABEL_185:
  *a1 = 0;
  *(a1 + 1) = 0;
  v90 = *(a1 + 3);
  if (v90)
  {
    if (v28)
    {
      (*(*v90 + 16))(v90, v30);
      v124 = 0;
      v30 = *a1;
      v28 = *(a1 + 1);
      goto LABEL_44;
    }

    v30 = 0;
  }

  else
  {
    v30 = 0;
    v28 = 0;
  }

  v124 = 0;
LABEL_44:
  v40 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v131 = v20;
  if (v28 < v40 - v30 || v28 - (v40 - v30) <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v91 = *(a1 + 3);
    if (v91)
    {
      if (v28)
      {
        (*(*v91 + 16))(v91);
        v30 = *a1;
        v28 = *(a1 + 1);
        goto LABEL_191;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = 0;
    goto LABEL_191;
  }

  *(a1 + 2) = v40 + 4;
  if (v40)
  {
    v41 = *v40 | 0x100000000;
    goto LABEL_48;
  }

LABEL_191:
  *a1 = 0;
  *(a1 + 1) = 0;
  v92 = *(a1 + 3);
  if (v92 && v28)
  {
    (*(*v92 + 16))(v92, v30);
  }

  v41 = 0;
LABEL_48:
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a1, &v153);
  IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v151, a1);
  IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v149, a1);
  v42 = IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v134, a1);
  v44 = *(a1 + 1);
  v45 = *(a1 + 2);
  v46 = *a1;
  v123 = a2;
  v133 = v12;
  v132 = v15;
  if (v44 <= &v45[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v108 = *(a1 + 3);
    if (v108)
    {
      if (v44)
      {
        (*(*v108 + 16))(v108);
        v44 = *(a1 + 1);
      }
    }

    else
    {
      v44 = 0;
    }

LABEL_228:
    *a1 = 0;
    *(a1 + 1) = 0;
    v109 = *(a1 + 3);
    if (v109)
    {
      if (v44)
      {
        (*(*v109 + 16))(v109);
        v47 = 0;
        v46 = *a1;
        v44 = *(a1 + 1);
        goto LABEL_231;
      }
    }

    else
    {
      v44 = 0;
    }

    v46 = 0;
    v47 = 0;
    goto LABEL_231;
  }

  *(a1 + 2) = v45 + 1;
  if (!v45)
  {
    goto LABEL_228;
  }

  v47 = *v45;
  if (v47 < 2)
  {
    v48 = 1;
    goto LABEL_52;
  }

LABEL_231:
  *a1 = 0;
  *(a1 + 1) = 0;
  v110 = *(a1 + 3);
  if (!v110 || !v44)
  {
    v46 = 0;
LABEL_233:
    if ((v135 & 1) != 0 && v134)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v134, v46);
      v46 = *a1;
    }

    v111 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v42 = *(a1 + 3);
    if (v42)
    {
      if (v111)
      {
        (*(*v42 + 2))(v42, v46);
        v49 = 0;
        v42 = 0;
        v46 = *a1;
      }

      else
      {
        v46 = 0;
        v49 = 0;
        v42 = 0;
      }
    }

    else
    {
      v46 = 0;
      v49 = 0;
    }

    goto LABEL_59;
  }

  v42 = (*(*v110 + 16))(v110, v46);
  v48 = 0;
  v46 = *a1;
LABEL_52:
  if (v47)
  {
    v43 = v48;
  }

  else
  {
    v43 = 0;
  }

  if (!v46)
  {
    goto LABEL_233;
  }

  if ((v135 & 1) == 0 || (v48 & 1) == 0)
  {
    goto LABEL_146;
  }

  v42 = v134;
  v49 = 1;
LABEL_59:
  v50 = v37;
  v51 = *(a1 + 1);
  v52 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v51 < v52 - v46 || v51 - (v52 - v46) <= 7)
  {
    v78 = v43;
    v115 = v49;
    v53 = v4;
    v119 = v42;
    *a1 = 0;
    *(a1 + 1) = 0;
    v79 = *(a1 + 3);
    if (v79)
    {
      if (v51)
      {
        (*(*v79 + 16))(v79);
        v46 = *a1;
        v51 = *(a1 + 1);
LABEL_151:
        *a1 = 0;
        *(a1 + 1) = 0;
        v80 = *(a1 + 3);
        if (v80)
        {
          if (v51)
          {
            (*(*v80 + 16))(v80, v46);
            v55 = 0;
            v46 = *a1;
            v51 = *(a1 + 1);
            goto LABEL_154;
          }
        }

        else
        {
          v51 = 0;
        }

        v46 = 0;
        v55 = 0;
LABEL_154:
        v42 = v119;
        v49 = v115;
        v43 = v78;
        goto LABEL_155;
      }
    }

    else
    {
      v51 = 0;
    }

    v46 = 0;
    goto LABEL_151;
  }

  v53 = v4;
  *(a1 + 2) = v52 + 8;
  if (!v52)
  {
    v78 = v43;
    v115 = v49;
    v119 = v42;
    goto LABEL_151;
  }

  v54 = *v52;
  if (v54 >= 0x20)
  {
    v55 = 0;
  }

  else
  {
    v55 = v54;
  }

  if (v54 < 0x20)
  {
    v56 = 1;
    goto LABEL_67;
  }

LABEL_155:
  *a1 = 0;
  *(a1 + 1) = 0;
  v81 = *(a1 + 3);
  if (v81)
  {
    v82 = v43;
    v116 = v49;
    v120 = v42;
    if (v51)
    {
      (*(*v81 + 16))(v81, v46);
      v56 = 0;
      v46 = *a1;
      v51 = *(a1 + 1);
    }

    else
    {
      v46 = 0;
      v56 = 0;
    }

    v42 = v120;
    v49 = v116;
    v43 = v82;
  }

  else
  {
    v51 = 0;
    v46 = 0;
    v56 = 0;
  }

LABEL_67:
  v57 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v51 < v57 - v46 || v51 - (v57 - v46) <= 7)
  {
    v113 = v43;
    v117 = v49;
    v121 = v42;
    *a1 = 0;
    *(a1 + 1) = 0;
    v83 = *(a1 + 3);
    if (v83)
    {
      if (v51)
      {
        (*(*v83 + 16))(v83);
        v46 = *a1;
        v51 = *(a1 + 1);
LABEL_163:
        *a1 = 0;
        *(a1 + 1) = 0;
        v84 = *(a1 + 3);
        if (v84)
        {
          if (v51)
          {
            (*(*v84 + 16))(v84, v46);
            v59 = 0;
            v46 = *a1;
            v51 = *(a1 + 1);
            goto LABEL_166;
          }
        }

        else
        {
          v51 = 0;
        }

        v46 = 0;
        v59 = 0;
LABEL_166:
        v42 = v121;
        v43 = v113;
        v49 = v117;
        goto LABEL_167;
      }
    }

    else
    {
      v51 = 0;
    }

    v46 = 0;
    goto LABEL_163;
  }

  *(a1 + 2) = v57 + 8;
  if (!v57)
  {
    v113 = v43;
    v117 = v49;
    v121 = v42;
    goto LABEL_163;
  }

  v58 = *v57;
  if (v58 >= 0x80)
  {
    v59 = 0;
  }

  else
  {
    v59 = v58;
  }

  if (v58 < 0x80)
  {
    v60 = 1;
    if (v46)
    {
      goto LABEL_75;
    }

    goto LABEL_168;
  }

LABEL_167:
  *a1 = 0;
  *(a1 + 1) = 0;
  v85 = *(a1 + 3);
  if (v85)
  {
    if (v51)
    {
      v114 = v43;
      v118 = v49;
      v122 = v42;
      (*(*v85 + 16))(v85, v46);
      v60 = 0;
      v46 = *a1;
      v42 = v122;
      v43 = v114;
      v49 = v118;
      if (*a1)
      {
LABEL_75:
        v144 = 0;
        v143 = 0;
        v145 = 0u;
        memset(v146, 0, 26);
        memset(&v146[1] + 12, 0, 32);
        *(&v146[3] + 9) = 0u;
        v147 = 0;
        v148 = 0;
        if (v176)
        {
          v61 = v175;
          v175 = 0;
          v134 = v61;
          if (v6)
          {
            v135 = v53;
            if (v11)
            {
              v136 = v133;
              if (v132)
              {
                v137 = v13;
                if (v131)
                {
                  v138 = v130;
                  if (v174)
                  {
                    v62 = v173;
                    v173 = 0;
                    v139 = v62;
                    if (v172)
                    {
                      v63 = v171;
                      v171 = 0;
                      v140 = v63;
                      if (v170)
                      {
                        v64 = v169;
                        v169 = 0;
                        v141 = v64;
                        if (v168)
                        {
                          v65 = v167;
                          v167 = 0;
                          v142 = v65;
                          if (v166)
                          {
                            v66 = v165;
                            v165 = 0;
                            v143 = v66;
                            if (v129)
                            {
                              v144 = v128;
                              if (v164)
                              {
                                v67 = v163;
                                v163 = 0;
                                *&v145 = v67;
                                if (v162)
                                {
                                  v68 = v161;
                                  v161 = 0;
                                  *(&v145 + 1) = v68;
                                  if (v160)
                                  {
                                    v69 = v159;
                                    v159 = 0;
                                    *&v146[0] = v69;
                                    if (v158)
                                    {
                                      v70 = v157;
                                      v157 = 0;
                                      *(&v146[0] + 1) = v70;
                                      if (v156)
                                      {
                                        v71 = v155;
                                        v155 = 0;
                                        *&v146[1] = v71;
                                        if ((v127 & 0x100000000) != 0)
                                        {
                                          BYTE8(v146[1]) = v127;
                                          if (v126)
                                          {
                                            BYTE9(v146[1]) = v50;
                                            if ((v125 & 0x100000000) != 0)
                                            {
                                              HIDWORD(v146[1]) = v125;
                                              if ((v124 & 0x100000000) != 0)
                                              {
                                                LODWORD(v146[2]) = v124;
                                                if ((v41 & 0x100000000) != 0)
                                                {
                                                  DWORD1(v146[2]) = v41;
                                                  if (v154)
                                                  {
                                                    v72 = v153;
                                                    v153 = 0;
                                                    *(&v146[2] + 1) = v72;
                                                    if (v152)
                                                    {
                                                      v73 = v151;
                                                      v151 = 0;
                                                      *&v146[3] = v73;
                                                      if (v150)
                                                      {
                                                        v74 = v149;
                                                        v149 = 0;
                                                        *(&v146[3] + 1) = v74;
                                                        if (v49)
                                                        {
                                                          *&v146[4] = v42;
                                                          BYTE8(v146[4]) = v43;
                                                          if (v56)
                                                          {
                                                            v147 = v55;
                                                            if (v60)
                                                            {
                                                              v148 = v59;
                                                              WebCore::ResourceLoadStatistics::ResourceLoadStatistics(v123, &v134);
                                                              *(v75 + 200) = 1;
                                                              WebCore::ResourceLoadStatistics::~ResourceLoadStatistics(&v134, v76);
                                                              goto LABEL_103;
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_146:
        __break(1u);
LABEL_147:
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v42, v46);
        goto LABEL_111;
      }
    }
  }

LABEL_168:
  *v123 = 0;
  v123[200] = 0;
  if (v42)
  {
    v86 = v49;
  }

  else
  {
    v86 = 0;
  }

  if (v86)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v42, v46);
  }

LABEL_103:
  if (v150 == 1 && v149)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v149, v46);
  }

  if (v152 == 1 && v151)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v151, v46);
  }

  if (v154 == 1)
  {
    v42 = v153;
    if (v153)
    {
      goto LABEL_147;
    }
  }

LABEL_111:
  if (v156 == 1 && v155)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v155, v46);
  }

  if (v158 == 1 && v157)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v157, v46);
  }

  if (v160 == 1 && v159)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v159, v46);
  }

  if (v162 == 1 && v161)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v161, v46);
  }

  if (v164 == 1 && v163)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v163, v46);
  }

  if (v166 == 1 && v165)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v165, v46);
  }

  if (v168 == 1 && v167)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v167, v46);
  }

  if (v170 == 1 && v169)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v169, v46);
  }

  if (v172 == 1 && v171)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v171, v46);
  }

  if (v174 == 1 && v173)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v173, v46);
  }

  if (v176 == 1)
  {
    v77 = v175;
    v175 = 0;
    if (v77)
    {
      if (atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v77, v46);
      }
    }
  }
}

void sub_19D7083D4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, WTF::StringImpl **a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, WTF::StringImpl **a47, char a48, WTF::StringImpl **a49, char a50, WTF::StringImpl **a51, char a52, WTF::StringImpl **a53, char a54)
{
  if ((a23 & 1) != 0 && a22)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a22, a2);
  }

  if (a48 == 1 && a47)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a47, a2);
  }

  if (a50 == 1 && a49)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a49, a2);
  }

  if (a52 == 1 && a51)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a51, a2);
  }

  if (a54 == 1 && a53)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a53, a2);
  }

  if (*(v54 - 240) == 1)
  {
    v56 = *(v54 - 248);
    if (v56)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v56, a2);
    }
  }

  if (*(v54 - 224) == 1)
  {
    v57 = *(v54 - 232);
    if (v57)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v57, a2);
    }
  }

  if (*(v54 - 208) == 1)
  {
    v58 = *(v54 - 216);
    if (v58)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v58, a2);
    }
  }

  if (*(v54 - 192) == 1)
  {
    v59 = *(v54 - 200);
    if (v59)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v59, a2);
    }
  }

  if (*(v54 - 176) == 1)
  {
    v60 = *(v54 - 184);
    if (v60)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v60, a2);
    }
  }

  if (*(v54 - 160) == 1)
  {
    v61 = *(v54 - 168);
    if (v61)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v61, a2);
    }
  }

  if (*(v54 - 144) == 1)
  {
    v62 = *(v54 - 152);
    if (v62)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v62, a2);
    }
  }

  if (*(v54 - 128) == 1)
  {
    v63 = *(v54 - 136);
    if (v63)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v63, a2);
    }
  }

  if (*(v54 - 112) == 1)
  {
    v64 = *(v54 - 120);
    if (v64)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v64, a2);
    }
  }

  if (*(v54 - 96) == 1)
  {
    v65 = *(v54 - 104);
    *(v54 - 104) = 0;
    if (v65)
    {
      if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::GraphicsContextGLActiveInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  v4 = *(a2 + 12);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::GraphicsContextGLActiveInfo,void>::encode(void *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::StreamConnectionEncoder>(a1, a2);
  v4 = -*a1;
  v5 = v4 & 3 | 4;
  if (a1[1] >= v5)
  {
    *(*a1 + (v4 & 3)) = *(a2 + 8);
    v6 = a1[1];
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (v7)
    {
      *a1 += v5;
      a1[1] = v8;
      goto LABEL_5;
    }

    __break(1u);
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_5:

  return IPC::StreamConnectionEncoder::operator<<<int const&>(a1, (a2 + 12));
}

uint64_t IPC::StreamConnectionEncoder::operator<<<int const&>(uint64_t result, _DWORD *a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    *result = 0;
    *(result + 8) = 0;
  }

  else
  {
    *(*result + (v2 & 3)) = *a2;
    v4 = *(result + 8);
    v5 = v4 >= v3;
    v6 = v4 - v3;
    if (v5)
    {
      *result += v3;
      *(result + 8) = v6;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::GraphicsContextGLActiveInfo,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v15);
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 3)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v10 = *v5 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13)
    {
      if (v4)
      {
        (*(*v13 + 16))(v13);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v14 = *(a1 + 3);
  if (v14 && v4)
  {
    (*(*v14 + 16))(v14);
  }

  v10 = 0;
LABEL_8:
  result = IPC::Decoder::decode<float>(a1);
  if (*a1)
  {
    if ((v16 & 1) != 0 && (v10 & 0x100000000) != 0 && (result & 0x100000000) != 0)
    {
      *a2 = v15;
      *(a2 + 8) = v10 | (result << 32);
      *(a2 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v16)
  {
    result = v15;
    v15 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v12);
      }
    }
  }

  return result;
}

void sub_19D7088D0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ShareDataWithParsedURL,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebKit::WebExtensionCommandParameters,void>::encode(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::URL>,void>::encode<IPC::Encoder,std::optional<WTF::URL>>(a1, a2 + 40);
  IPC::VectorArgumentCoder<false,std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 88));
  v5 = *(a2 + 104);
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

void IPC::ArgumentCoder<WebCore::ShareDataWithParsedURL,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  IPC::Decoder::decode<WTF::String>(a1, &v88);
  IPC::Decoder::decode<WTF::String>(v2, &v85);
  IPC::Decoder::decode<WTF::String>(v2, &v95);
  v7 = *v2;
  if (*v2)
  {
    if ((v89 & 1) == 0)
    {
      goto LABEL_97;
    }

    v8 = v88;
    v88 = 0;
    if ((v86 & 1) == 0)
    {
      goto LABEL_97;
    }

    v9 = v85;
    v85 = 0;
    if ((v96 & 1) == 0)
    {
      goto LABEL_97;
    }

    v6.n128_u64[0] = 0;
    *v79 = 0u;
    v10 = v95;
    v95 = 0;
    *&v92 = v8;
    *(&v92 + 1) = v9;
    *v93 = v10;
    *&v93[8] = v6;
    v80 = 0;
    v94 = 1;
    WTF::Vector<WTF::Ref<WebCore::File,WTF::RawPtrTraits<WebCore::File>,WTF::DefaultRefDerefTraits<WebCore::File>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79[1], v4);
    v79[0] = 0;
    v78[1] = 0;
    v78[0] = 0;
  }

  else
  {
    LOBYTE(v92) = 0;
    v94 = 0;
  }

  if (v96 == 1)
  {
    v11 = v95;
    v95 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v4);
      }
    }
  }

  if (v86 == 1)
  {
    v12 = v85;
    v85 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v4);
      }
    }
  }

  if (v89 == 1 && (v13 = v88, v88 = 0, v13) && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v4);
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else if (v7)
  {
    goto LABEL_18;
  }

  v32 = *v2;
  v33 = *(v2 + 8);
  *v2 = 0;
  *(v2 + 8) = 0;
  v34 = *(v2 + 24);
  if (v34 && v33)
  {
    (*(*v34 + 16))(v34, v32);
  }

LABEL_18:
  IPC::Decoder::decode<std::optional<WTF::URL>>(&v88, v2, v6);
  v5 = *(v2 + 8);
  v14 = ((*(v2 + 16) + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v2;
  v16 = v14 - *v2;
  v17 = v5 >= v16;
  v18 = v5 - v16;
  if (!v17 || v18 <= 7)
  {
    goto LABEL_98;
  }

  *(v2 + 16) = v14 + 1;
  if (!v14)
  {
    goto LABEL_100;
  }

  v19 = *v14;
  v95 = 0;
  v96 = 0;
  if (v19 < 0x10000)
  {
    if (!v19)
    {
      goto LABEL_69;
    }

    v20 = WTF::fastMalloc((16 * v19));
    LODWORD(v96) = v19;
    v95 = v20;
    while (1)
    {
      IPC::Decoder::decode<WebCore::RawFile>(v78, v2);
      if ((v79[0] & 1) == 0)
      {
        goto LABEL_56;
      }

      if (HIDWORD(v96) != v96)
      {
        break;
      }

      v21 = WTF::Vector<WebCore::RawFile,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v95, HIDWORD(v96) + 1, v78);
      v22 = HIDWORD(v96) + 1;
      v23 = (v95 + 16 * HIDWORD(v96));
      v24 = *v21;
      *v21 = 0;
      *v23 = v24;
      v25 = v21[1];
      v21[1] = 0;
      v23[1] = v25;
      HIDWORD(v96) = v22;
      if (v79[0])
      {
        goto LABEL_30;
      }

LABEL_36:
      if (!--v19)
      {
        goto LABEL_69;
      }
    }

    v26 = HIDWORD(v96) + 1;
    v27 = (v95 + 16 * HIDWORD(v96));
    v28 = v78[0];
    v78[0] = 0;
    *v27 = v28;
    v29 = v78[1];
    v78[1] = 0;
    v27[1] = v29;
    HIDWORD(v96) = v26;
LABEL_30:
    v30 = v78[1];
    v78[1] = 0;
    if (v30 && atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v30 + 2);
      (*(*v30 + 8))(v30);
    }

    v31 = v78[0];
    v78[0] = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v15);
    }

    goto LABEL_36;
  }

  do
  {
    IPC::Decoder::decode<WebCore::RawFile>(v78, v2);
    if ((v79[0] & 1) == 0)
    {
LABEL_56:
      LOBYTE(v85) = 0;
      v87 = 0;
      WTF::Vector<WebCore::RawFile,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v95, v15);
      goto LABEL_57;
    }

    if (HIDWORD(v96) == v96)
    {
      v35 = WTF::Vector<WebCore::RawFile,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v95, HIDWORD(v96) + 1, v78);
      v36 = HIDWORD(v96) + 1;
      v37 = (v95 + 16 * HIDWORD(v96));
      v38 = *v35;
      *v35 = 0;
      *v37 = v38;
      v39 = v35[1];
      v35[1] = 0;
      v37[1] = v39;
      HIDWORD(v96) = v36;
      if ((v79[0] & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v40 = HIDWORD(v96) + 1;
      v41 = (v95 + 16 * HIDWORD(v96));
      v42 = v78[0];
      v78[0] = 0;
      *v41 = v42;
      v43 = v78[1];
      v78[1] = 0;
      v41[1] = v43;
      HIDWORD(v96) = v40;
    }

    v44 = v78[1];
    v78[1] = 0;
    if (v44 && atomic_fetch_add(v44 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v44 + 2);
      (*(*v44 + 8))(v44);
    }

    v45 = v78[0];
    v78[0] = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v15);
    }

LABEL_54:
    --v19;
  }

  while (v19);
  v49 = HIDWORD(v96);
  if (v96 > HIDWORD(v96))
  {
    v50 = v95;
    if (HIDWORD(v96))
    {
      v77 = v95;
      if (HIDWORD(v96) >> 28)
      {
        __break(0xC471u);
        return;
      }

      v51 = WTF::fastMalloc((16 * HIDWORD(v96)));
      v50 = v77;
      LODWORD(v96) = v49;
      v95 = v51;
      if (v51 != v77)
      {
        WTF::VectorTypeOperations<WebCore::RawFile>::move(v77, (v77 + 16 * v49), v51);
        v50 = v77;
      }
    }

    if (v50)
    {
      if (v95 == v50)
      {
        v95 = 0;
        LODWORD(v96) = 0;
      }

      WTF::fastFree(v50, v15);
    }
  }

LABEL_69:
  v85 = v95;
  v52 = v96;
  v95 = 0;
  v96 = 0;
  v86 = v52;
  v87 = 1;
  WTF::Vector<WebCore::RawFile,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v95, v15);
  while (2)
  {
    v5 = *(v2 + 8);
    v53 = *(v2 + 16);
    v54 = *v2;
    if (v5 <= &v53[-*v2])
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      v72 = *(v2 + 24);
      if (v72)
      {
        if (v5)
        {
          (*(*v72 + 16))(v72);
          v5 = *(v2 + 8);
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      *(v2 + 16) = v53 + 1;
      if (v53)
      {
        v55 = *v53;
        if (v55 < 2)
        {
          v2 = 0;
          v56 = v55 != 0;
          if (!v54)
          {
            break;
          }

          goto LABEL_74;
        }

        goto LABEL_107;
      }
    }

    *v2 = 0;
    *(v2 + 8) = 0;
    v73 = *(v2 + 24);
    if (v73)
    {
      if (v5)
      {
        (*(*v73 + 16))(v73);
        v54 = *v2;
        v5 = *(v2 + 8);
        goto LABEL_107;
      }
    }

    else
    {
      v5 = 0;
    }

    v54 = 0;
LABEL_107:
    *v2 = 0;
    *(v2 + 8) = 0;
    v74 = *(v2 + 24);
    if (v74)
    {
      if (v5)
      {
        (*(*v74 + 16))(v74, v54);
        v75 = *(v2 + 24);
        v54 = *v2;
        v76 = *(v2 + 8);
        *v2 = 0;
        *(v2 + 8) = 0;
        if (v75)
        {
          if (v76)
          {
            (*(*v75 + 16))(v75, v54);
            v56 = 0;
            v54 = *v2;
            v2 = 1;
            if (v54)
            {
LABEL_74:
              if (v94)
              {
                v57 = v92;
                v58 = *v93;
                v92 = 0u;
                memset(v93, 0, sizeof(v93));
                *v78 = v57;
                *v79 = v58;
                v80 = *&v93[16];
                if (v91)
                {
                  std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100](v81, &v88);
                  if (v87)
                  {
                    v82 = v85;
                    v59 = v86;
                    v85 = 0;
                    v86 = 0;
                    v83 = v59;
                    if (!v2)
                    {
                      v84 = v56;
                      v60 = *v78;
                      v61 = *v79;
                      *v78 = 0u;
                      *v79 = 0u;
                      *a2 = v60;
                      *(a2 + 16) = v61;
                      v62 = v80;
                      v80 = 0;
                      *(a2 + 32) = v62;
                      std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100]((a2 + 40), v81);
                      *(a2 + 88) = v82;
                      v63 = v83;
                      v82 = 0;
                      v83 = 0;
                      *(a2 + 96) = v63;
                      *(a2 + 104) = v84;
                      *(a2 + 112) = 1;
                      WebCore::ShareDataWithParsedURL::~ShareDataWithParsedURL(v78, v64);
                      goto LABEL_79;
                    }
                  }
                }
              }

LABEL_97:
              __break(1u);
LABEL_98:
              *v2 = 0;
              *(v2 + 8) = 0;
              v70 = *(v2 + 24);
              if (v70)
              {
                if (v5)
                {
                  (*(*v70 + 16))(v70);
                  v5 = *(v2 + 8);
                }
              }

              else
              {
                v5 = 0;
              }

LABEL_100:
              *v2 = 0;
              *(v2 + 8) = 0;
              v71 = *(v2 + 24);
              if (v71 && v5)
              {
                (*(*v71 + 16))(v71);
              }

              LOBYTE(v85) = 0;
              v87 = 0;
LABEL_57:
              v46 = *v2;
              v47 = *(v2 + 8);
              *v2 = 0;
              *(v2 + 8) = 0;
              v48 = *(v2 + 24);
              if (v48 && v47)
              {
                (*(*v48 + 16))(v48, v46);
              }

              continue;
            }
          }
        }
      }
    }

    break;
  }

  *a2 = 0;
  *(a2 + 112) = 0;
LABEL_79:
  if (v87 == 1)
  {
    WTF::Vector<WebCore::RawFile,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v85, v54);
  }

  if (v91 == 1 && v90 == 1)
  {
    v65 = v88;
    v88 = 0;
    if (v65)
    {
      if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v54);
      }
    }
  }

  if (v94 == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::File,WTF::RawPtrTraits<WebCore::File>,WTF::DefaultRefDerefTraits<WebCore::File>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v93[8], v54);
    v67 = *v93;
    *v93 = 0;
    if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v67, v66);
    }

    v68 = *(&v92 + 1);
    *(&v92 + 1) = 0;
    if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v68, v66);
    }

    v69 = v92;
    *&v92 = 0;
    if (v69)
    {
      if (atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v69, v66);
      }
    }
  }
}

void sub_19D709220(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25, char a26, int a27, __int16 a28, char a29, char a30, WTF::StringImpl *a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, int a37, __int16 a38, char a39, char a40)
{
  if (a28 == 1)
  {
    WTF::Vector<WebCore::RawFile,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a25, a2);
  }

  if (a38 == 1 && a36 == 1)
  {
    v42 = a31;
    a31 = 0;
    if (v42)
    {
      if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, a2);
      }
    }
  }

  if (*(v40 - 88) == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::File,WTF::RawPtrTraits<WebCore::File>,WTF::DefaultRefDerefTraits<WebCore::File>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v40 - 104, a2);
    v44 = *(v40 - 112);
    *(v40 - 112) = 0;
    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v43);
    }

    v45 = *(v40 - 120);
    *(v40 - 120) = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v43);
    }

    v46 = *(v40 - 128);
    *(v40 - 128) = 0;
    if (v46)
    {
      if (atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v46, v43);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::TargetedElementAdjustment,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[3]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[4]);

  return IPC::VectorArgumentCoder<false,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 6));
}

uint64_t IPC::ArgumentCoder<WebCore::TargetedElementAdjustment,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ElementIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(a1, &v19);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v13);
    if (!*a1)
    {
      break;
    }

    if (v22)
    {
      v15 = v19;
      v16 = v20;
      *(&v6 + 1) = *(&v21 + 1);
      v17 = v21;
      if (v14)
      {
        *&v6 = 0;
        v7 = v13;
        v13 = v6;
        v8 = v20;
        *a2 = v19;
        *(a2 + 16) = v8;
        *(a2 + 32) = v21;
        v18 = v6;
        *(a2 + 48) = v7;
        *(a2 + 64) = 1;
        result = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_10:
    v9 = *a1;
    v10 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v11 = a1[3];
    if (v11)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      (*(*v11 + 16))(v11, v9);
    }
  }

  *a2 = 0;
  *(a2 + 64) = 0;
LABEL_6:
  if (v14 == 1)
  {
    return WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v5);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D7096F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D70973C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::TargetedElementRequest,void>::encode(IPC::Encoder *a1, _BYTE *a2)
{
  v5 = a2[16];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2, v5);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 24);
  return IPC::Encoder::operator<<<BOOL>(a1, a2 + 25);
}

uint64_t IPC::ArgumentCoder<WebCore::TargetedElementRequest,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (v4 <= &v5[-*a1])
  {
    goto LABEL_39;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_41;
  }

  v6 = *v5;
  if (v6 >= 3)
  {
    goto LABEL_4;
  }

  if (!v6)
  {
    result = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
    if ((v10 & 1) == 0)
    {
      goto LABEL_4;
    }

    v35[0] = result;
    v36 = 0;
LABEL_15:
    v37 = 1;
    goto LABEL_16;
  }

  if (v6 != 1)
  {
    IPC::Decoder::decode<WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v31);
    if (v33 != 1)
    {
      goto LABEL_4;
    }

    v35[0] = v31;
    v12 = v32;
    v31 = 0;
    v32 = 0;
    v35[1] = v12;
    v36 = 2;
    result = WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v11);
    goto LABEL_15;
  }

  result = IPC::Decoder::decode<WTF::String>(a1, &v31);
  if (v32 == 1)
  {
    v35[0] = v31;
    v36 = 1;
    goto LABEL_15;
  }

  while (1)
  {
LABEL_4:
    LOBYTE(v35[0]) = 0;
    v37 = 0;
    v7 = *v2;
    v8 = *(v2 + 8);
    *v2 = 0;
    *(v2 + 8) = 0;
    result = *(v2 + 24);
    if (result && v8)
    {
      result = (*(*result + 16))(result, v7);
    }

LABEL_16:
    v4 = *(v2 + 8);
    v13 = *(v2 + 16);
    v14 = *v2;
    if (v4 <= &v13[-*v2])
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      v24 = *(v2 + 24);
      if (v24)
      {
        if (v4)
        {
          (*(*v24 + 16))(v24);
          v4 = *(v2 + 8);
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v15 = v13 + 1;
      *(v2 + 16) = v13 + 1;
      if (v13)
      {
        v16 = *v13;
        if (v16 < 2)
        {
          v17 = 1;
          goto LABEL_20;
        }

        goto LABEL_49;
      }
    }

    *v2 = 0;
    *(v2 + 8) = 0;
    v25 = *(v2 + 24);
    if (!v25)
    {
      v4 = 0;
LABEL_48:
      v14 = 0;
      v16 = 0;
      goto LABEL_49;
    }

    if (!v4)
    {
      goto LABEL_48;
    }

    (*(*v25 + 16))(v25);
    v16 = 0;
    v14 = *v2;
    v4 = *(v2 + 8);
LABEL_49:
    *v2 = 0;
    *(v2 + 8) = 0;
    v26 = *(v2 + 24);
    if (!v26 || !v4)
    {
      v18 = 0;
      v17 = 0;
      v27 = 0;
      v14 = 0;
LABEL_51:
      *v2 = 0;
      *(v2 + 8) = 0;
      v28 = *(v2 + 24);
      if (v28 && v27)
      {
        (*(*v28 + 16))(v28, v14, v27);
        v30 = 0;
        v14 = *v2;
        v4 = *(v2 + 8);
      }

      else
      {
        v4 = 0;
        v14 = 0;
        v30 = 0;
      }

      goto LABEL_54;
    }

    result = (*(*v26 + 16))(v26, v14);
    v17 = 0;
    v14 = *v2;
    v4 = *(v2 + 8);
    v15 = *(v2 + 16);
LABEL_20:
    if (v16)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v4 <= v15 - v14)
    {
      v27 = 0;
      v29 = *(v2 + 24);
      *v2 = 0;
      *(v2 + 8) = 0;
      if (v29 && v4)
      {
        (*(*v29 + 16))(v29);
        v14 = *v2;
        v27 = *(v2 + 8);
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_51;
    }

    *(v2 + 16) = v15 + 1;
    if (!v15)
    {
      v27 = v4;
      goto LABEL_51;
    }

    v19 = *v15;
    if (v19 < 2)
    {
      v2 = 1;
      goto LABEL_27;
    }

    v30 = v19;
LABEL_54:
    *v2 = 0;
    *(v2 + 8) = 0;
    result = *(v2 + 24);
    if (!result || !v4)
    {
      break;
    }

    result = (*(*result + 16))(result, v14);
    v14 = *v2;
    v2 = 0;
    v19 = v30;
LABEL_27:
    v20 = v19 ? v2 : 0;
    if (!v14)
    {
      break;
    }

    if (v37)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(&v31, v35);
      if (v17)
      {
        LOBYTE(v34) = v18;
        if (v2)
        {
          HIBYTE(v34) = v20;
          mpark::detail::move_constructor<mpark::detail::traits<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::move_constructor(a2, &v31);
          *(a2 + 24) = v34;
          *(a2 + 32) = 1;
          result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&v31, v21);
          goto LABEL_35;
        }
      }
    }

    __break(1u);
LABEL_39:
    *v2 = 0;
    *(v2 + 8) = 0;
    v22 = *(v2 + 24);
    if (v22)
    {
      if (v4)
      {
        (*(*v22 + 16))(v22);
        v4 = *(v2 + 8);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_41:
    *v2 = 0;
    *(v2 + 8) = 0;
    v23 = *(v2 + 24);
    if (v23 && v4)
    {
      (*(*v23 + 16))(v23);
    }
  }

  *a2 = 0;
  *(a2 + 32) = 0;
LABEL_35:
  if (v37 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(v35, v14);
  }

  return result;
}

void sub_19D709C24(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a18 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::FloatPoint,WTF::String,WTF::Vector<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,(mpark::detail::Trait)1>::~move_constructor(&a15, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::TargetedElementInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<WebCore::RectEdges<BOOL>,void>::encode(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 72));
  IPC::VectorArgumentCoder<false,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 80);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 96));
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 112));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 128));
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 136);
  IPC::ArgumentCoder<WTF::HashSet<WTF::URL,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 152));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 160));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 161));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 162));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 163));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 164));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 165));
}

uint64_t IPC::ArgumentCoder<WebCore::TargetedElementInfo,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v184 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a1, &v181);
  v7 = v183;
  if ((v183 & 1) == 0)
  {
    v21 = *a1;
    v22 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v23 = a1[3];
    if (v23)
    {
      if (v22)
      {
        (*(*v23 + 16))(v23, v21);
      }
    }
  }

  v149 = IPC::Decoder::decode<WebCore::RectEdges<BOOL>>(a1);
  IPC::Decoder::decode<WTF::String>(a1, &v161);
  IPC::Decoder::decode<WTF::String>(a1, &v159);
  IPC::Decoder::decode<WTF::String>(a1, &v157);
  v8 = a1[1];
  v9 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *a1;
  v11 = v9 - *a1;
  v12 = v8 >= v11;
  v13 = v8 - v11;
  v14 = v12 && v13 > 7;
  v151 = v6;
  v150 = v7;
  if (!v14)
  {
    *a1 = 0;
    a1[1] = 0;
    v54 = a1[3];
    if (v54)
    {
      if (v8)
      {
        (*(*v54 + 16))(v54);
        v8 = a1[1];
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_73;
  }

  a1[2] = (v9 + 1);
  if (!v9)
  {
LABEL_73:
    *a1 = 0;
    a1[1] = 0;
    v55 = a1[3];
    if (v55 && v8)
    {
      (*(*v55 + 16))(v55);
    }

    LOBYTE(v154) = 0;
    v156 = 0;
    goto LABEL_75;
  }

  v15 = *v9;
  v163 = 0;
  v164 = 0;
  if (v15 >= 0x10000)
  {
    v7 = v156;
    while (1)
    {
      result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v167);
      v25 = v168;
      if (v168)
      {
        if (HIDWORD(v164) == v164)
        {
          result = WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v163, v167);
        }

        else
        {
          v26 = v163 + 16 * HIDWORD(v164);
          *v26 = 0;
          *(v26 + 1) = 0;
          v27 = v167[0];
          v167[0] = 0;
          *v26 = v27;
          LODWORD(v27) = v167[1];
          LODWORD(v167[1]) = 0;
          *(v26 + 2) = v27;
          LODWORD(v27) = HIDWORD(v167[1]);
          HIDWORD(v167[1]) = 0;
          *(v26 + 3) = v27;
          ++HIDWORD(v164);
        }
      }

      else
      {
        v7 = 0;
      }

      if (v168 == 1)
      {
        result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v167, v10);
      }

      if ((v25 & 1) == 0)
      {
        break;
      }

      if (!--v15)
      {
        v28 = HIDWORD(v164);
        if (v164 > HIDWORD(v164))
        {
          v29 = v163;
          if (HIDWORD(v164))
          {
            if (HIDWORD(v164) >> 28)
            {
              __break(0xC471u);
              return result;
            }

            v30 = WTF::fastMalloc((16 * HIDWORD(v164)));
            LODWORD(v164) = v28;
            v163 = v30;
            if (v30 != v29)
            {
              WTF::VectorMover<false,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::move(v29, v29 + 4 * v28, v30);
            }
          }

          if (v29)
          {
            if (v163 == v29)
            {
              v163 = 0;
              LODWORD(v164) = 0;
            }

            WTF::fastFree(v29, v10);
          }
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    if (!v15)
    {
LABEL_20:
      v154 = v163;
      v20 = v164;
      v163 = 0;
      v164 = 0;
      v155 = v20;
      v156 = 1;
      WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v10);
      goto LABEL_44;
    }

    v16 = WTF::fastMalloc((16 * v15));
    LODWORD(v164) = v15;
    v163 = v16;
    v7 = v156;
    while (1)
    {
      IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v167);
      v17 = v168;
      if (v168)
      {
        if (HIDWORD(v164) == v164)
        {
          WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v163, v167);
        }

        else
        {
          v18 = v163 + 16 * HIDWORD(v164);
          *v18 = 0;
          *(v18 + 1) = 0;
          v19 = v167[0];
          v167[0] = 0;
          *v18 = v19;
          LODWORD(v19) = v167[1];
          LODWORD(v167[1]) = 0;
          *(v18 + 2) = v19;
          LODWORD(v19) = HIDWORD(v167[1]);
          HIDWORD(v167[1]) = 0;
          *(v18 + 3) = v19;
          ++HIDWORD(v164);
        }
      }

      else
      {
        v7 = 0;
      }

      if (v168 == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v167, v10);
      }

      if ((v17 & 1) == 0)
      {
        break;
      }

      if (!--v15)
      {
        goto LABEL_20;
      }
    }
  }

  LOBYTE(v154) = 0;
  v156 = v7;
  WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v10);
  if (v7)
  {
    goto LABEL_44;
  }

LABEL_75:
  v56 = *a1;
  v57 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v58 = a1[3];
  if (v58 && v57)
  {
    (*(*v58 + 16))(v58, v56);
  }

LABEL_44:
  v31 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v33 = v32;
  if ((v32 & 1) == 0)
  {
    v59 = *a1;
    v60 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v61 = a1[3];
    if (v61)
    {
      if (v60)
      {
        (*(*v61 + 16))(v61, v59);
      }
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v36 = result;
  v38 = v37;
  if ((v37 & 1) == 0)
  {
    v50 = *a1;
    v34 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      if (v34)
      {
        result = (*(*result + 16))(result, v50);
      }
    }
  }

  v39 = *a1;
  if (*a1)
  {
    if ((v33 & 1) == 0 || (v38 & 1) == 0)
    {
      goto LABEL_208;
    }

    v147 = v31 & 0xFFFFFFFFFFFFFF00;
    v31 = v31;
  }

  else
  {
    v46 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v47 = a1[3];
    if (v47 && v46)
    {
      (*(*v47 + 16))(v47, 0);
    }

    v31 = 0;
    v147 = 0;
  }

  v33 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v38 = v40;
  if ((v40 & 1) == 0)
  {
    v62 = *a1;
    v63 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v64 = a1[3];
    if (v64)
    {
      if (v63)
      {
        (*(*v64 + 16))(v64, v62);
      }
    }
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v42 = result;
  if ((v41 & 1) == 0)
  {
    v35 = *a1;
    v34 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      if (v34)
      {
        v51 = v42;
        v52 = v39;
        v53 = v41;
        result = (*(*result + 16))(result, v35);
        v42 = v51;
        v41 = v53;
        v39 = v52;
      }
    }
  }

  v7 = *a1;
  v146 = v42;
  if (*a1)
  {
    if ((v38 & 1) == 0 || (v41 & 1) == 0)
    {
      goto LABEL_208;
    }

    v38 = v33 & 0xFFFFFFFFFFFFFF00;
    v33 = v33;
    v35 = *a1;
    v43 = *a1;
  }

  else
  {
    v48 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v49 = a1[3];
    if (v49 && v48)
    {
      (*(*v49 + 16))(v49, 0);
      v33 = 0;
      v38 = 0;
      v35 = *a1;
      v43 = *a1;
    }

    else
    {
      v35 = 0;
      v43 = 0;
      v33 = 0;
      v38 = 0;
    }
  }

  v34 = a1[1];
  v44 = a1[2];
  if (v34 <= &v44[-v43])
  {
    *a1 = 0;
    a1[1] = 0;
    v65 = a1[3];
    if (v65)
    {
      if (v34)
      {
        (*(*v65 + 16))(v65);
        v43 = *a1;
        v34 = a1[1];
LABEL_87:
        *a1 = 0;
        a1[1] = 0;
        v66 = a1[3];
        if (v66)
        {
          if (v34)
          {
            (*(*v66 + 16))(v66, v43);
            v35 = *a1;
            v34 = a1[1];
            goto LABEL_90;
          }
        }

        else
        {
          v34 = 0;
        }

        v35 = 0;
        goto LABEL_90;
      }
    }

    else
    {
      v34 = 0;
    }

    v43 = 0;
    goto LABEL_87;
  }

  a1[2] = (v44 + 1);
  if (!v44)
  {
    goto LABEL_87;
  }

  v45 = *v44;
  if (v45 >= 7 || ((0x4Fu >> v45) & 1) == 0)
  {
LABEL_90:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      goto LABEL_209;
    }

    goto LABEL_91;
  }

  v143 = 0;
  v140 = 0x6000003020100uLL >> (8 * (v45 & 0x1F));
  while (1)
  {
    IPC::Decoder::decode<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v152, a1);
    v67 = a1[1];
    v68 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v69 = v68 - *a1;
    v12 = v67 >= v69;
    v70 = v67 - v69;
    v145 = v39;
    if (!v12 || v70 <= 3)
    {
      *a1 = 0;
      a1[1] = 0;
      v108 = a1[3];
      if (v108)
      {
        if (v67)
        {
          (*(*v108 + 16))(v108);
          v67 = a1[1];
        }
      }

      else
      {
        v67 = 0;
      }

LABEL_216:
      *a1 = 0;
      a1[1] = 0;
      v109 = a1[3];
      if (v109 && v67)
      {
        (*(*v109 + 16))(v109);
      }

LABEL_116:
      v75 = *a1;
      v76 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      result = a1[3];
      if (result)
      {
        if (v76)
        {
          (*(*result + 16))(result, v75);
        }

        v77 = 0;
        result = 0;
      }

      else
      {
        v77 = 0;
      }

      goto LABEL_120;
    }

    a1[2] = (v68 + 1);
    if (!v68)
    {
      goto LABEL_216;
    }

    v39 = *v68;
    v166 = 0;
    if (v39)
    {
      while (1)
      {
        IPC::Decoder::decode<WTF::URL>(a1, v167);
        LOBYTE(v35) = BYTE8(v169);
        if (BYTE8(v169) != 1 || v167[0] == -1)
        {
          break;
        }

        result = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v167);
        v35 = BYTE8(v169);
        if (result)
        {
          break;
        }

        if ((BYTE8(v169) & 1) == 0)
        {
          goto LABEL_208;
        }

        WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v166, v167, &v163);
        LOBYTE(v35) = BYTE8(v169);
        if ((v165 & 1) == 0)
        {
          break;
        }

        if (BYTE8(v169))
        {
          v73 = v167[0];
          v167[0] = 0;
          if (v73)
          {
            if (atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v73, v71);
            }
          }
        }

        v39 = (v39 - 1);
        if (!v39)
        {
          result = v166;
          goto LABEL_119;
        }
      }

      if (v35)
      {
        v74 = v167[0];
        v167[0] = 0;
        if (v74)
        {
          if (atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v74, v71);
          }
        }
      }

      if (v166)
      {
        WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(v166, v71);
      }

      goto LABEL_116;
    }

    result = 0;
LABEL_119:
    v77 = 1;
LABEL_120:
    v34 = a1[1];
    v78 = a1[2];
    v79 = *a1;
    v148 = v4;
    *&v144 = v31;
    *(&v144 + 1) = v36;
    v141 = v38;
    v142 = v33;
    if (v34 <= &v78[-*a1])
    {
      v138 = v77;
      v139 = result;
      *a1 = 0;
      a1[1] = 0;
      v110 = a1[3];
      if (v110)
      {
        if (v34)
        {
          (*(*v110 + 16))(v110);
          v79 = *a1;
          v34 = a1[1];
          goto LABEL_222;
        }
      }

      else
      {
        v34 = 0;
      }

      v79 = 0;
    }

    else
    {
      v80 = v78 + 1;
      a1[2] = (v78 + 1);
      if (v78)
      {
        v81 = *v78;
        if (v81 < 2)
        {
          v82 = 1;
          goto LABEL_124;
        }

        v138 = v77;
        v139 = result;
        goto LABEL_226;
      }

      v138 = v77;
      v139 = result;
    }

LABEL_222:
    *a1 = 0;
    a1[1] = 0;
    v111 = a1[3];
    if (!v111)
    {
      v34 = 0;
LABEL_224:
      v79 = 0;
      v81 = 0;
      goto LABEL_226;
    }

    if (!v34)
    {
      goto LABEL_224;
    }

    (*(*v111 + 16))(v111, v79);
    v81 = 0;
    v79 = *a1;
    v34 = a1[1];
LABEL_226:
    *a1 = 0;
    a1[1] = 0;
    v112 = a1[3];
    if (!v112 || !v34)
    {
      v136 = 0;
      v137 = 0;
      v113 = 0;
      v79 = 0;
LABEL_228:
      *a1 = 0;
      a1[1] = 0;
      v114 = a1[3];
      if (v114 && v113)
      {
        (*(*v114 + 16))(v114, v79, v113);
        v85 = 0;
        v79 = *a1;
        v34 = a1[1];
      }

      else
      {
        v34 = 0;
        v79 = 0;
        v85 = 0;
      }

      goto LABEL_231;
    }

    (*(*v112 + 16))(v112, v79);
    v82 = 0;
    v79 = *a1;
    v34 = a1[1];
    v80 = a1[2];
    result = v139;
    v77 = v138;
LABEL_124:
    if (v81)
    {
      v83 = v82;
    }

    else
    {
      v83 = 0;
    }

    if (v34 <= v80 - v79)
    {
      v136 = v83;
      v137 = v82;
      v138 = v77;
      v139 = result;
      v113 = 0;
      v129 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      if (v129 && v34)
      {
        (*(*v129 + 16))(v129);
        v79 = *a1;
        v113 = a1[1];
      }

      else
      {
        v79 = 0;
      }

      goto LABEL_228;
    }

    v84 = v80 + 1;
    a1[2] = (v80 + 1);
    if (!v80)
    {
      v136 = v83;
      v137 = v82;
      v138 = v77;
      v139 = result;
      v113 = v34;
      goto LABEL_228;
    }

    v85 = *v80;
    if (v85 < 2)
    {
      v31 = 1;
      goto LABEL_131;
    }

    v136 = v83;
    v137 = v82;
    v138 = v77;
    v139 = result;
LABEL_231:
    *a1 = 0;
    a1[1] = 0;
    v115 = a1[3];
    if (!v115 || !v34)
    {
      v135 = 0;
      v31 = 0;
      v116 = 0;
      v79 = 0;
LABEL_233:
      *a1 = 0;
      a1[1] = 0;
      v117 = a1[3];
      if (v117 && v116)
      {
        (*(*v117 + 16))(v117, v79, v116);
        v88 = 0;
        v79 = *a1;
        v34 = a1[1];
      }

      else
      {
        v34 = 0;
        v79 = 0;
        v88 = 0;
      }

      goto LABEL_236;
    }

    (*(*v115 + 16))(v115, v79);
    v31 = 0;
    v79 = *a1;
    v34 = a1[1];
    v84 = a1[2];
    result = v139;
    v82 = v137;
    v77 = v138;
    v83 = v136;
LABEL_131:
    if (v85)
    {
      v86 = v31;
    }

    else
    {
      v86 = 0;
    }

    if (v34 <= v84 - v79)
    {
      v135 = v86;
      v136 = v83;
      v137 = v82;
      v138 = v77;
      v139 = result;
      v116 = 0;
      v130 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      if (v130 && v34)
      {
        (*(*v130 + 16))(v130);
        v79 = *a1;
        v116 = a1[1];
      }

      else
      {
        v79 = 0;
      }

      goto LABEL_233;
    }

    v87 = v84 + 1;
    a1[2] = (v84 + 1);
    if (!v84)
    {
      v135 = v86;
      v136 = v83;
      v137 = v82;
      v138 = v77;
      v139 = result;
      v116 = v34;
      goto LABEL_233;
    }

    v88 = *v84;
    if (v88 < 2)
    {
      v89 = 1;
      goto LABEL_138;
    }

    v135 = v86;
    v136 = v83;
    v137 = v82;
    v138 = v77;
    v139 = result;
LABEL_236:
    *a1 = 0;
    a1[1] = 0;
    v118 = a1[3];
    if (!v118 || !v34)
    {
      v134 = 0;
      v89 = 0;
      v119 = 0;
      v79 = 0;
LABEL_238:
      *a1 = 0;
      a1[1] = 0;
      v120 = a1[3];
      if (v120 && v119)
      {
        (*(*v120 + 16))(v120, v79, v119);
        v92 = 0;
        v79 = *a1;
        v34 = a1[1];
      }

      else
      {
        v34 = 0;
        v79 = 0;
        v92 = 0;
      }

      goto LABEL_240;
    }

    (*(*v118 + 16))(v118, v79);
    v89 = 0;
    v79 = *a1;
    v34 = a1[1];
    v87 = a1[2];
    result = v139;
    v82 = v137;
    v77 = v138;
    v86 = v135;
    v83 = v136;
LABEL_138:
    if (v88)
    {
      v90 = v89;
    }

    else
    {
      v90 = 0;
    }

    if (v34 <= v87 - v79)
    {
      v134 = v90;
      v135 = v86;
      v136 = v83;
      v137 = v82;
      v138 = v77;
      v139 = result;
      v119 = 0;
      v131 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      if (v131 && v34)
      {
        (*(*v131 + 16))(v131);
        v79 = *a1;
        v119 = a1[1];
      }

      else
      {
        v79 = 0;
      }

      goto LABEL_238;
    }

    v91 = v87 + 1;
    a1[2] = (v87 + 1);
    if (!v87)
    {
      v134 = v90;
      v135 = v86;
      v136 = v83;
      v137 = v82;
      v138 = v77;
      v139 = result;
      v119 = v34;
      goto LABEL_238;
    }

    v92 = *v87;
    if (v92 < 2)
    {
      v39 = 1;
      goto LABEL_145;
    }

    v134 = v90;
    v135 = v86;
    v136 = v83;
    v137 = v82;
    v138 = v77;
    v139 = result;
LABEL_240:
    *a1 = 0;
    a1[1] = 0;
    v121 = a1[3];
    if (!v121 || !v34)
    {
      v36 = 0;
      v39 = 0;
      v122 = 0;
      v79 = 0;
LABEL_242:
      *a1 = 0;
      a1[1] = 0;
      v123 = a1[3];
      if (v123 && v122)
      {
        (*(*v123 + 16))(v123, v79, v122);
        v94 = 0;
        v79 = *a1;
        v34 = a1[1];
      }

      else
      {
        v34 = 0;
        v79 = 0;
        v94 = 0;
      }

      goto LABEL_244;
    }

    (*(*v121 + 16))(v121, v79);
    v39 = 0;
    v79 = *a1;
    v34 = a1[1];
    v91 = a1[2];
    result = v139;
    v82 = v137;
    v77 = v138;
    v86 = v135;
    v83 = v136;
    v90 = v134;
LABEL_145:
    if (v92)
    {
      v36 = v39;
    }

    else
    {
      v36 = 0;
    }

    if (v34 <= v91 - v79)
    {
      v134 = v90;
      v135 = v86;
      v136 = v83;
      v137 = v82;
      v138 = v77;
      v139 = result;
      v122 = 0;
      v132 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      if (v132 && v34)
      {
        (*(*v132 + 16))(v132);
        v79 = *a1;
        v122 = a1[1];
      }

      else
      {
        v79 = 0;
      }

      goto LABEL_242;
    }

    v93 = v91 + 1;
    a1[2] = (v91 + 1);
    if (!v91)
    {
      v134 = v90;
      v135 = v86;
      v136 = v83;
      v137 = v82;
      v138 = v77;
      v139 = result;
      v122 = v34;
      goto LABEL_242;
    }

    v94 = *v91;
    if (v94 < 2)
    {
      v4 = 1;
      goto LABEL_152;
    }

    v134 = v90;
    v135 = v86;
    v136 = v83;
    v137 = v82;
    v138 = v77;
    v139 = result;
LABEL_244:
    *a1 = 0;
    a1[1] = 0;
    v124 = a1[3];
    if (!v124 || !v34)
    {
      v33 = 0;
      v4 = 0;
      v125 = 0;
      v79 = 0;
LABEL_246:
      *a1 = 0;
      a1[1] = 0;
      v126 = a1[3];
      if (v126 && v125)
      {
        (*(*v126 + 16))(v126, v79, v125);
        v38 = 0;
        v79 = *a1;
        v34 = a1[1];
      }

      else
      {
        v34 = 0;
        v79 = 0;
        v38 = 0;
      }

      goto LABEL_248;
    }

    (*(*v124 + 16))(v124, v79);
    v4 = 0;
    v79 = *a1;
    v34 = a1[1];
    v93 = a1[2];
    result = v139;
    v82 = v137;
    v77 = v138;
    v86 = v135;
    v83 = v136;
    v90 = v134;
LABEL_152:
    if (v94)
    {
      v33 = v4;
    }

    else
    {
      v33 = 0;
    }

    if (v34 <= v93 - v79)
    {
      v134 = v90;
      v135 = v86;
      v136 = v83;
      v137 = v82;
      v138 = v77;
      v139 = result;
      v125 = 0;
      v133 = a1[3];
      *a1 = 0;
      a1[1] = 0;
      if (v133 && v34)
      {
        (*(*v133 + 16))(v133);
        v79 = *a1;
        v125 = a1[1];
      }

      else
      {
        v79 = 0;
      }

      goto LABEL_246;
    }

    a1[2] = (v93 + 1);
    if (!v93)
    {
      v134 = v90;
      v135 = v86;
      v136 = v83;
      v137 = v82;
      v138 = v77;
      v139 = result;
      v125 = v34;
      goto LABEL_246;
    }

    v38 = *v93;
    if (v38 < 2)
    {
      v35 = 1;
      goto LABEL_159;
    }

    v134 = v90;
    v135 = v86;
    v136 = v83;
    v137 = v82;
    v138 = v77;
    v139 = result;
LABEL_248:
    *a1 = 0;
    a1[1] = 0;
    v127 = a1[3];
    result = v139;
    LOBYTE(v77) = v138;
    if (!v127 || !v34)
    {
      break;
    }

    (*(*v127 + 16))(a1[3], v79, v34, v138);
    v35 = 0;
    v79 = *a1;
    result = v139;
    v82 = v137;
    LOBYTE(v77) = v138;
    v86 = v135;
    v83 = v136;
    v90 = v134;
LABEL_159:
    v95 = v38 ? v35 : 0;
    if (!v79)
    {
      break;
    }

    if (v151)
    {
      v167[0] = v148;
      if (v150)
      {
        v168 = v181;
        *&v169 = v182;
        if ((v149 & 0x100000000) != 0)
        {
          v170 = v149;
          if (v162)
          {
            v96 = v161;
            v161 = 0;
            *&v171 = v96;
            if (v160)
            {
              v97 = v159;
              v159 = 0;
              *(&v171 + 1) = v97;
              if (v158)
              {
                v98 = v157;
                v157 = 0;
                *&v172 = v98;
                if (v156)
                {
                  v99 = v154;
                  *(&v172 + 1) = v154;
                  v100 = v155;
                  v101 = HIDWORD(v155);
                  v154 = 0;
                  v155 = 0;
                  v173 = __PAIR64__(v101, v100);
                  if (v145)
                  {
                    v174 = v147 | v144;
                    if (v7)
                    {
                      *&v175 = v141 | v142;
                      *(&v175 + 1) = v146;
                      if (!v143)
                      {
                        v176 = v140;
                        if (v153)
                        {
                          v102 = v152[0];
                          v152[0] = 0;
                          if (v77 & 1) != 0 && (v82)
                          {
                            v103 = v152[1];
                            LOBYTE(v179) = v83;
                            if (v31)
                            {
                              BYTE1(v179) = v86;
                              if (v89)
                              {
                                BYTE2(v179) = v90;
                                if (v39)
                                {
                                  HIBYTE(v179) = v36;
                                  if (v4)
                                  {
                                    LOBYTE(v180) = v33;
                                    if (v35)
                                    {
                                      HIBYTE(v180) = v95;
                                      v104 = v168;
                                      *a2 = *v167;
                                      *(a2 + 16) = v104;
                                      *(a2 + 32) = v169;
                                      *(a2 + 48) = v170;
                                      v171 = 0u;
                                      *(a2 + 56) = v96;
                                      *(a2 + 64) = v97;
                                      v172 = 0u;
                                      *(a2 + 72) = v98;
                                      *(a2 + 80) = v99;
                                      v173 = 0;
                                      *(a2 + 88) = v100;
                                      *(a2 + 92) = v101;
                                      v105 = v175;
                                      *(a2 + 96) = v174;
                                      *(a2 + 112) = v105;
                                      *(a2 + 128) = v176;
                                      v177 = 0;
                                      *(a2 + 136) = v102;
                                      v178 = 0u;
                                      *(a2 + 144) = v103;
                                      *(a2 + 152) = result;
                                      *(a2 + 160) = v179;
                                      *(a2 + 164) = v180;
                                      *(a2 + 176) = 1;
                                      WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v172 + 8, v167);
                                      v106 = v172;
                                      *&v172 = 0;
                                      if (v106 && atomic_fetch_add_explicit(v106, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                      {
                                        WTF::StringImpl::destroy(v106, v79);
                                      }

                                      v107 = *(&v171 + 1);
                                      *(&v171 + 1) = 0;
                                      if (v107 && atomic_fetch_add_explicit(v107, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                      {
                                        WTF::StringImpl::destroy(v107, v79);
                                      }

                                      result = v171;
                                      *&v171 = 0;
                                      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                      {
                                        result = WTF::StringImpl::destroy(result, v79);
                                      }

                                      goto LABEL_190;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_208:
    __break(1u);
LABEL_209:
    if (v34)
    {
      (*(*result + 16))(result, v35);
    }

LABEL_91:
    LOBYTE(v140) = 0;
    v143 = 1;
  }

  *a2 = 0;
  *(a2 + 176) = 0;
  if (result)
  {
    v128 = v77;
  }

  else
  {
    v128 = 0;
  }

  if (v128)
  {
    result = WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(result, v79);
  }

LABEL_190:
  if (v153 == 1)
  {
    result = v152[0];
    if (v152[0])
    {
      result = WTF::fastFree(v152[0], v79);
    }
  }

  if (v156 == 1)
  {
    result = WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v154, v79);
  }

  if (v158 == 1)
  {
    result = v157;
    v157 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v79);
      }
    }
  }

  if (v160 == 1)
  {
    result = v159;
    v159 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v79);
      }
    }
  }

  if (v162 == 1)
  {
    result = v161;
    v161 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v79);
      }
    }
  }

  return result;
}

void sub_19D70B1BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, WTF::StringImpl **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, WTF *a28, uint64_t a29, char a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, WTF::StringImpl *a37, char a38, WTF::StringImpl *a39, char a40, WTF::StringImpl *a41, char a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, WTF::StringImpl *a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  if (!a14)
  {
    a13 = 0;
  }

  if (a13 == 1)
  {
    WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(a14, a2);
  }

  if (a30 == 1 && a28)
  {
    WTF::fastFree(a28, a2);
  }

  if (a36 == 1)
  {
    WTF::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a32, a2);
  }

  if (a38 == 1)
  {
    v57 = a37;
    a37 = 0;
    if (v57)
    {
      if (atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v57, a2);
      }
    }
  }

  if (a40 == 1)
  {
    v58 = a39;
    a39 = 0;
    if (v58)
    {
      if (atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, a2);
      }
    }
  }

  if (a42 == 1)
  {
    v59 = a41;
    a41 = 0;
    if (v59)
    {
      if (atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v59, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WebCore::RectEdges<BOOL>>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::RectEdges<BOOL>,void>::decode(a1);
  if (!BYTE4(result))
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v21 = *(a2 + 3);
    if (v21)
    {
      if (v6)
      {
        (*(*v21 + 16))(v21);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_42:
        *a2 = 0;
        *(a2 + 1) = 0;
        v22 = *(a2 + 3);
        if (v22 && v6)
        {
          (*(*v22 + 16))(v22, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_44:
        v23 = *a2;
        v24 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          if (v24)
          {
            return (*(*result + 16))(result, v23);
          }
        }

        return result;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_42;
  }

  *(a2 + 2) = v4 + 8;
  if (!v4)
  {
    goto LABEL_42;
  }

  v8 = *v4;
  v27 = 0;
  v28 = 0;
  if (v8 >= 0x20000)
  {
    v16 = 0;
    LODWORD(v10) = 0;
    do
    {
      result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
      v25 = result;
      v26 = v5;
      if ((v5 & 1) == 0)
      {
        goto LABEL_32;
      }

      if (v10 == v28)
      {
        result = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v27, v10 + 1, &v25);
        v18 = HIDWORD(v28);
        v16 = v27;
        *(v27 + HIDWORD(v28)) = *result;
      }

      else
      {
        *(v16 + v10) = result;
        v18 = HIDWORD(v28);
      }

      v10 = (v18 + 1);
      HIDWORD(v28) = v18 + 1;
      --v8;
    }

    while (v8);
    if (v28 <= v10)
    {
      goto LABEL_17;
    }

    if (v18 == -1)
    {
      goto LABEL_37;
    }

    if (v10 >> 29)
    {
      __break(0xC471u);
      return result;
    }

    v19 = WTF::fastMalloc((8 * v10));
    LODWORD(v28) = v10;
    v27 = v19;
    if (v19 == v16)
    {
LABEL_37:
      v27 = 0;
      LODWORD(v28) = 0;
    }

    else
    {
      v20 = 0;
      do
      {
        *(v19 + v20) = *(v16 + v20);
        v20 += 8;
      }

      while (8 * v10 != v20);
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    WTF::fastFree(v16, v5);
    LODWORD(v10) = HIDWORD(v28);
    goto LABEL_17;
  }

  if (!v8)
  {
    LODWORD(v10) = 0;
LABEL_17:
    v14 = v27;
    v27 = 0;
    *a1 = v14;
    *(a1 + 8) = v28;
    *(a1 + 12) = v10;
    v15 = 1;
    *(a1 + 16) = 1;
    goto LABEL_33;
  }

  v9 = WTF::fastMalloc((8 * v8));
  LODWORD(v10) = 0;
  LODWORD(v28) = v8;
  v27 = v9;
  while (1)
  {
    v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    v25 = v11;
    v26 = v5;
    if ((v5 & 1) == 0)
    {
      break;
    }

    if (v10 == v28)
    {
      v12 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::AttributedStringTextTableBlockIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v27, v10 + 1, &v25);
      v13 = HIDWORD(v28);
      v9 = v27;
      *(v27 + HIDWORD(v28)) = *v12;
    }

    else
    {
      *(v9 + v10) = v11;
      v13 = HIDWORD(v28);
    }

    LODWORD(v10) = v13 + 1;
    HIDWORD(v28) = v13 + 1;
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

LABEL_32:
  v15 = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_33:
  result = v27;
  if (v27)
  {
    result = WTF::fastFree(v27, v5);
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_44;
  }

  return result;
}

void sub_19D70B6CC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(IPC::Encoder *a1, float *a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[4]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[5]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[6]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[7]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[8]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[9]);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, a2[10]);
  v4 = a2[11];

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::encode(uint64_t a1, _DWORD *a2)
{
  v2 = -*a1;
  v3 = v2 & 3 | 4;
  if (*(a1 + 8) < v3)
  {
    goto LABEL_25;
  }

  v4 = a2[1];
  *(*a1 + (v2 & 3)) = *a2;
  v5 = *(a1 + 8);
  v6 = v5 - v3;
  if (v5 < v3)
  {
    goto LABEL_24;
  }

  v7 = *a1 + v3;
  *a1 = v7;
  *(a1 + 8) = v6;
  v8 = -v7 & 3 | 4;
  if (v6 < v8)
  {
    goto LABEL_25;
  }

  *(v7 + (-v7 & 3)) = v4;
  v9 = *(a1 + 8);
  v10 = v9 - v8;
  if (v9 < v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = *a1 + v8;
  *a1 = v11;
  *(a1 + 8) = v10;
  v12 = -v11 & 3 | 4;
  if (v10 < v12)
  {
LABEL_25:
    *a1 = 0;
    *(a1 + 8) = 0;
    return IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, a2 + 10);
  }

  v13 = a2[3];
  *(v11 + (-v11 & 3)) = a2[2];
  v14 = *(a1 + 8);
  v15 = v14 - v12;
  if (v14 < v12)
  {
    goto LABEL_24;
  }

  v16 = *a1 + v12;
  *a1 = v16;
  *(a1 + 8) = v15;
  v17 = -v16 & 3 | 4;
  if (v15 < v17)
  {
    goto LABEL_25;
  }

  *(v16 + (-v16 & 3)) = v13;
  v18 = *(a1 + 8);
  v19 = v18 - v17;
  if (v18 < v17)
  {
    goto LABEL_24;
  }

  v20 = *a1 + v17;
  *a1 = v20;
  *(a1 + 8) = v19;
  v21 = -v20 & 3 | 4;
  if (v19 < v21)
  {
    goto LABEL_25;
  }

  *(v20 + (-v20 & 3)) = a2[4];
  v22 = *(a1 + 8);
  v23 = v22 - v21;
  if (v22 < v21)
  {
    goto LABEL_24;
  }

  v24 = *a1 + v21;
  *a1 = v24;
  *(a1 + 8) = v23;
  v25 = -v24 & 3 | 4;
  if (v23 < v25)
  {
    goto LABEL_25;
  }

  *(v24 + (-v24 & 3)) = a2[5];
  v26 = *(a1 + 8);
  v27 = v26 - v25;
  if (v26 < v25)
  {
    goto LABEL_24;
  }

  v28 = *a1 + v25;
  *a1 = v28;
  *(a1 + 8) = v27;
  v29 = -v28 & 3 | 4;
  if (v27 < v29)
  {
    goto LABEL_25;
  }

  *(v28 + (-v28 & 3)) = a2[6];
  v30 = *(a1 + 8);
  v31 = v30 - v29;
  if (v30 < v29)
  {
    goto LABEL_24;
  }

  v32 = *a1 + v29;
  *a1 = v32;
  *(a1 + 8) = v31;
  v33 = -v32 & 3 | 4;
  if (v31 < v33)
  {
    goto LABEL_25;
  }

  *(v32 + (-v32 & 3)) = a2[7];
  v34 = *(a1 + 8);
  v35 = v34 - v33;
  if (v34 < v33)
  {
    goto LABEL_24;
  }

  v36 = *a1 + v33;
  *a1 = v36;
  *(a1 + 8) = v35;
  v37 = -v36 & 3 | 4;
  if (v35 < v37)
  {
    goto LABEL_25;
  }

  *(v36 + (-v36 & 3)) = a2[8];
  v38 = *(a1 + 8);
  v39 = v38 - v37;
  if (v38 < v37)
  {
    goto LABEL_24;
  }

  v40 = *a1 + v37;
  *a1 = v40;
  *(a1 + 8) = v39;
  v41 = -v40 & 3 | 4;
  if (v39 < v41)
  {
    goto LABEL_25;
  }

  *(v40 + (-v40 & 3)) = a2[9];
  v42 = *(a1 + 8);
  v43 = v42 >= v41;
  v44 = v42 - v41;
  if (!v43)
  {
    goto LABEL_24;
  }

  *a1 += v41;
  *(a1 + 8) = v44;
  return IPC::StreamConnectionEncoder::operator<<<WebCore::FloatPoint const&>(a1, a2 + 10);
}

uint64_t IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode@<X0>(IPC::Decoder *a1@<X0>, WebCore::FloatRoundedRect *a2@<X8>)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  result = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v10 = result;
  if ((v8 & 1) == 0)
  {
    v22 = v8;
    result = IPC::Decoder::markInvalid(a1);
    v8 = v22;
  }

  v11 = *a1;
  if (*a1)
  {
    if ((v6 & 1) == 0 || (v8 & 1) == 0)
    {
      goto LABEL_23;
    }

    v32.m_location = v4;
    v32.m_size = v10;
    v33 = 1;
  }

  else
  {
    LOBYTE(v32.m_location.m_x) = 0;
    v33 = 0;
    IPC::Decoder::markInvalid(a1);
  }

  v12 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v14 = v13;
  if ((v13 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v30 = v12;
  v31 = v14;
  v15 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v17 = v16;
  if ((v16 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v28 = v15;
  v29 = v17;
  v18 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v20 = v19;
  if ((v19 & 1) == 0)
  {
    v23 = v18;
    IPC::Decoder::markInvalid(a1);
    v18 = v23;
  }

  v26 = v18;
  v27 = v20;
  result = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v24 = result;
  v25 = v21;
  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_24;
  }

  if (!v11 || (v14 & 1) == 0 || (v17 & 1) == 0 || (v20 & 1) == 0 || (v21 & 1) == 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    *a2 = 0;
    goto LABEL_22;
  }

  result = WebCore::FloatRoundedRect::FloatRoundedRect(a2, &v32, &v30, &v28, &v26, &v24);
  LOBYTE(v9) = 1;
LABEL_22:
  *(a2 + 48) = v9;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::IntRect,void>::encode(IPC::Encoder *a1, int *a2)
{
  v4 = a2[1];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
  v5 = a2[3];
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, a2[2]);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v5);
}

unint64_t IPC::ArgumentCoder<WebCore::IntRect,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<WebCore::IntSize>(a1);
  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_8;
  }

  if (v6 & 1) != 0 && (v8)
  {
    v10 = result;
    v11[0] = v4;
    v11[1] = result;
    result = WebCore::IntRect::isValid(v11);
    if (result)
    {
      v9 = *a1;
      if (*a1)
      {
        *a2 = v4;
        *(a2 + 8) = v10;
        LOBYTE(v9) = 1;
LABEL_9:
        *(a2 + 16) = v9;
        return result;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }

LABEL_8:
    *a2 = 0;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(IPC::Encoder *a1, int *a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  v4 = a2[1];

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::IntPoint,void>::encode(uint64_t result, _DWORD *a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    goto LABEL_7;
  }

  *(*result + (v2 & 3)) = *a2;
  v4 = *(result + 8);
  v5 = v4 - v3;
  if (v4 >= v3)
  {
    v6 = *result + v3;
    *result = v6;
    *(result + 8) = v5;
    v7 = -v6 & 3 | 4;
    if (v5 >= v7)
    {
      *(v6 + (-v6 & 3)) = a2[1];
      v8 = *(result + 8);
      v9 = v8 >= v7;
      v10 = v8 - v7;
      if (v9)
      {
        *result += v7;
        *(result + 8) = v10;
        return result;
      }

      goto LABEL_8;
    }

LABEL_7:
    *result = 0;
    *(result + 8) = 0;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t IPC::StreamConnectionEncoder::operator<<<int>(uint64_t result, int a2)
{
  v2 = -*result;
  v3 = v2 & 3 | 4;
  if (*(result + 8) < v3)
  {
    *result = 0;
    *(result + 8) = 0;
  }

  else
  {
    *(*result + (v2 & 3)) = a2;
    v4 = *(result + 8);
    v5 = v4 >= v3;
    v6 = v4 - v3;
    if (v5)
    {
      *result += v3;
      *(result + 8) = v6;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t IPC::ArgumentCoder<WebCore::IntPoint,void>::decode(IPC::Decoder *this)
{
  v2 = *(this + 1);
  v3 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = v3 - *this;
  v5 = v2 >= v4;
  v6 = v2 - v4;
  if (v5 && v6 > 3)
  {
    *(this + 2) = v3 + 1;
    if (v3)
    {
      v8 = *v3 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
  }

  IPC::Decoder::markInvalid(this);
  v8 = 0;
LABEL_8:
  v9 = IPC::Decoder::decode<float>(this);
  if (!*this)
  {
    return 0;
  }

  if ((v8 & 0x100000000) == 0 || (v9 & 0x100000000) == 0)
  {
    __break(1u);
    return 0;
  }

  return v8 | (v9 << 32);
}

unint64_t IPC::ArgumentCoder<WebCore::IntSize,void>::decode(IPC::Decoder *this)
{
  v1 = this;
  v2 = *(this + 1);
  v3 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = *this;
  v5 = v3 - *this;
  v6 = v2 >= v5;
  v7 = v2 - v5;
  if (v6 && v7 > 3)
  {
    v9 = v3 + 1;
    *(this + 2) = v3 + 1;
    if (v3)
    {
      v10 = *v3 | 0x100000000;
      goto LABEL_8;
    }
  }

  else
  {
    IPC::Decoder::markInvalid(this);
    v1 = this;
  }

  IPC::Decoder::markInvalid(v1);
  v10 = 0;
  v2 = *(v1 + 1);
  v9 = *(v1 + 2);
  v4 = *v1;
LABEL_8:
  v11 = ((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v2 >= v11 - v4;
  v12 = v2 - (v11 - v4);
  if (v6 && v12 > 3)
  {
    *(v1 + 2) = v11 + 1;
    if (v11)
    {
      v14 = *v11 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = v1;
    v16 = v10;
    IPC::Decoder::markInvalid(v19);
    v10 = v16;
    v1 = v19;
  }

  v17 = v10;
  IPC::Decoder::markInvalid(v1);
  v10 = v17;
  v14 = 0;
  v4 = *v1;
LABEL_15:
  if (v4)
  {
    if ((v10 & 0x100000000) != 0 && (v14 & 0x100000000) != 0)
    {
      return v10 | (v14 << 32);
    }

    __break(1u);
  }

  return 0;
}

uint64_t IPC::ArgumentCoder<WebCore::LayoutUnit,void>::decode(uint64_t result)
{
  v1 = *(result + 8);
  v2 = ((*(result + 16) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = *result;
  v4 = v2 - *result;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (!v5 || v6 <= 3)
  {
    while (1)
    {
      *result = 0;
      *(result + 8) = 0;
      v9 = result;
      v8 = *(result + 24);
      if (!v8)
      {
        break;
      }

      if (!v1)
      {
        goto LABEL_13;
      }

      (*(*v8 + 16))(v8);
      v3 = *v9;
      v1 = v9[1];
LABEL_14:
      *v9 = 0;
      v9[1] = 0;
      result = v9[3];
      if (!result)
      {
        return result;
      }

      if (!v1)
      {
        return 0;
      }

      (*(*result + 16))(result, v3);
      result = 0;
      if (!*v9)
      {
        return 0;
      }

LABEL_8:
      if ((result & 0x100000000) != 0)
      {
        return result;
      }

      __break(1u);
    }

    v1 = 0;
LABEL_13:
    v3 = 0;
    goto LABEL_14;
  }

  *(result + 16) = v2 + 1;
  if (!v2)
  {
    v9 = result;
    goto LABEL_14;
  }

  result = *v2 | 0x100000000;
  if (v3)
  {
    goto LABEL_8;
  }

  return 0;
}

unint64_t IPC::ArgumentCoder<WebCore::LayoutPoint,void>::decode(uint64_t *a1)
{
  v2 = IPC::Decoder::decode<WebCore::LayoutUnit>(a1);
  v3 = IPC::Decoder::decode<WebCore::LayoutUnit>(a1);
  if (!*a1)
  {
    return 0;
  }

  if ((v2 & 0x100000000) == 0 || (v3 & 0x100000000) == 0)
  {
    __break(1u);
    return 0;
  }

  return v2 | (v3 << 32);
}

unint64_t IPC::Decoder::decode<WebCore::LayoutUnit>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::LayoutUnit,void>::decode(a1);
  if (!HIDWORD(result))
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

void *IPC::ArgumentCoder<WebCore::DictionaryPopupInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,void>::encode<IPC::Encoder,WebCore::TextIndicator>(a1, (a2 + 8));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::DictionaryPopupInfo,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  v6 = v5;
  IPC::Decoder::decode<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>(a1, &v13);
  result = IPC::Decoder::decode<WTF::String>(a1, &v11);
  if (*a1)
  {
    if (v6 & 1) != 0 && (v14)
    {
      v9 = v13;
      v13 = 0;
      if (v12)
      {
        v10 = v11;
        *a2 = v4;
        *(a2 + 8) = v9;
        *(a2 + 16) = v10;
        *(a2 + 24) = 1;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v12)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }
  }

LABEL_6:
  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      return WTF::RefCounted<WebCore::TextIndicator>::deref(result);
    }
  }

  return result;
}

void sub_19D70C21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WebCore::TextIndicator *a11, char a12)
{
  if (a12)
  {
    if (a11)
    {
      WTF::RefCounted<WebCore::TextIndicator>::deref(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebCore::PrivateClickMeasurement,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  LOBYTE(v10[0]) = *(a2 + 32);
  IPC::Encoder::operator<<<BOOL>(a1, v10);
  v4 = *(a2 + 48);
  v10[0] = *(a2 + 40);
  LOBYTE(v10[1]) = v4;
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, v10);
  IPC::ArgumentCoder<std::optional<WebCore::PCM::AttributionTriggerData>,void>::encode<IPC::Encoder,std::optional<WebCore::PCM::AttributionTriggerData> const&>(a1, (a2 + 56));
  v5 = *(a2 + 208);
  *v10 = *(a2 + 192);
  v11 = v5;
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, v10);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, &v11);
  LOBYTE(v10[0]) = 0;
  LOBYTE(v10[1]) = 0;
  if (*(a2 + 232) == 1)
  {
    v6 = *(a2 + 224);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v10[0] = v6;
    LOBYTE(v10[1]) = 1;
  }

  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, v10);
  if (LOBYTE(v10[1]) == 1)
  {
    v8 = v10[0];
    v10[0] = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v7);
      }
    }
  }

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 304));
}

void sub_19D70C374(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::PrivateClickMeasurement,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v175 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  if (v5 <= &v6[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v78 = *(a1 + 3);
    if (v78)
    {
      if (v5)
      {
        (*(*v78 + 16))(v78);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_158;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_158:
    *a1 = 0;
    *(a1 + 1) = 0;
    v79 = *(a1 + 3);
    if (v79 && v5)
    {
      (*(*v79 + 16))(v79);
    }

    v105 = 0;
    LOBYTE(v7) = 0;
    goto LABEL_4;
  }

  v105 = *v6;
  LOBYTE(v7) = 1;
LABEL_4:
  IPC::Decoder::decode<WebCore::RegistrableDomain>(a1, &v109);
  v9 = BYTE8(v109);
  v108 = *a1;
  if (!*a1)
  {
    goto LABEL_123;
  }

  if ((BYTE8(v109) & 1) == 0)
  {
    goto LABEL_122;
  }

  for (i = v109; ; i = 0)
  {
    IPC::Decoder::decode<WebCore::RegistrableDomain>(a1, &v109);
    v9 = BYTE8(v109);
    v107 = *a1;
    v104 = v7;
    if (*a1)
    {
      if ((BYTE8(v109) & 1) == 0)
      {
        goto LABEL_122;
      }

      v10 = v109;
    }

    else
    {
      if (BYTE8(v109))
      {
        v77 = v109;
        *&v109 = 0;
        if (v77)
        {
          if (atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v77, v8);
          }
        }
      }

      v57 = *a1;
      v58 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v59 = *(a1 + 3);
      if (v59 && v58)
      {
        (*(*v59 + 16))(v59, v57);
      }

      v10 = 0;
    }

    v101 = IPC::Decoder::decode<WTF::Seconds>(a1);
    v103 = v11;
    v12 = *(a1 + 1);
    v13 = *(a1 + 2);
    v14 = *a1;
    if (v12 <= &v13[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v80 = *(a1 + 3);
      if (v80)
      {
        if (v12)
        {
          (*(*v80 + 16))(v80);
          v12 = *(a1 + 1);
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v13 + 1;
      if (v13)
      {
        v15 = *v13;
        if (v15 < 2)
        {
          v100 = v15 != 0;
          v102 = 1;
          goto LABEL_14;
        }

        goto LABEL_165;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v81 = *(a1 + 3);
    if (v81)
    {
      if (v12)
      {
        (*(*v81 + 16))(v81);
        v14 = *a1;
        v12 = *(a1 + 1);
        goto LABEL_165;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = 0;
LABEL_165:
    *a1 = 0;
    *(a1 + 1) = 0;
    v82 = *(a1 + 3);
    if (!v82 || !v12)
    {
      goto LABEL_166;
    }

    (*(*v82 + 16))(v82, v14);
    v102 = 0;
    v94 = *(a1 + 3);
    v95 = *a1;
    v96 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (v94)
    {
      v100 = 0;
      if (v96)
      {
        (*(*v94 + 16))(v94, v95);
LABEL_166:
        v102 = 0;
        v100 = 0;
      }
    }

    else
    {
      v100 = 0;
    }

LABEL_14:
    IPC::Decoder::decode<std::optional<unsigned long long>>(a1, &v152);
    v16 = *(a1 + 1);
    v17 = *(a1 + 2);
    v18 = *a1;
    if (v16 <= &v17[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v83 = *(a1 + 3);
      if (v83)
      {
        if (v16)
        {
          (*(*v83 + 16))(v83);
          v16 = *(a1 + 1);
        }
      }

      else
      {
        v16 = 0;
      }

LABEL_169:
      *a1 = 0;
      *(a1 + 1) = 0;
      v84 = *(a1 + 3);
      if (v84)
      {
        if (v16)
        {
          (*(*v84 + 16))(v84);
          v18 = *a1;
          v16 = *(a1 + 1);
          goto LABEL_172;
        }
      }

      else
      {
        v16 = 0;
      }

      v18 = 0;
LABEL_172:
      *a1 = 0;
      *(a1 + 1) = 0;
      v64 = *(a1 + 3);
      if (v64 && v16)
      {
        goto LABEL_155;
      }

      goto LABEL_139;
    }

    v19 = v17 + 1;
    *(a1 + 2) = v17 + 1;
    if (!v17)
    {
      goto LABEL_169;
    }

    if (*v17 >= 2u)
    {
      goto LABEL_172;
    }

    if (!*v17)
    {
      LOBYTE(v136) = 0;
      v150 = 0;
      v151 = 1;
      goto LABEL_64;
    }

    if (v16 <= &v19[-v18])
    {
      v85 = 0;
      v86 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v87 = *(a1 + 3);
      if (v87)
      {
        (*(*v87 + 16))(v87);
        v86 = *a1;
        v85 = *(a1 + 1);
      }
    }

    else
    {
      v20 = v17 + 2;
      *(a1 + 2) = v17 + 2;
      if (v17 != -1)
      {
        v21 = *v19;
        v22 = 1;
        goto LABEL_21;
      }

      v85 = v16;
      v86 = v18;
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v88 = *(a1 + 3);
    if (!v88)
    {
      v22 = 0;
      v21 = 0;
      v85 = 0;
LABEL_179:
      v18 = 0;
      goto LABEL_180;
    }

    if (!v85)
    {
      v22 = 0;
      v21 = 0;
      goto LABEL_179;
    }

    (*(*v88 + 16))(v88, v86, v85);
    v21 = 0;
    v22 = 0;
    v18 = *a1;
    v16 = *(a1 + 1);
    v20 = *(a1 + 2);
LABEL_21:
    if (v16 <= &v20[-v18])
    {
      v85 = 0;
      v93 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v16 && v93)
      {
        (*(*v93 + 16))(v93);
        v18 = *a1;
        v85 = *(a1 + 1);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v23 = v20 + 1;
      *(a1 + 2) = v20 + 1;
      if (v20)
      {
        v24 = *v20;
        v25 = 1;
        goto LABEL_24;
      }

      v85 = v16;
    }

LABEL_180:
    *a1 = 0;
    *(a1 + 1) = 0;
    v89 = *(a1 + 3);
    if (v89 && v85)
    {
      (*(*v89 + 16))(v89, v18, v85);
      v18 = *a1;
      v16 = *(a1 + 1);
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v24 = 0;
    v25 = 0;
    v23 = *(a1 + 2);
LABEL_24:
    if (v16 <= &v23[-v18])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v90 = *(a1 + 3);
      if (v90)
      {
        if (v16)
        {
          (*(*v90 + 16))(v90);
          v18 = *a1;
          v16 = *(a1 + 1);
          goto LABEL_186;
        }
      }

      else
      {
        v16 = 0;
      }

      v18 = 0;
    }

    else
    {
      *(a1 + 2) = v23 + 1;
      if (v23)
      {
        v26 = *v23;
        if (v26 < 2)
        {
          v7 = 0;
          v27 = v26 != 0;
          goto LABEL_28;
        }

        goto LABEL_189;
      }
    }

LABEL_186:
    *a1 = 0;
    *(a1 + 1) = 0;
    v91 = *(a1 + 3);
    if (v91)
    {
      if (v16)
      {
        (*(*v91 + 16))(v91, v18);
        v18 = *a1;
        v16 = *(a1 + 1);
        goto LABEL_189;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = 0;
LABEL_189:
    *a1 = 0;
    *(a1 + 1) = 0;
    v92 = *(a1 + 3);
    if (v92 && v16)
    {
      (*(*v92 + 16))(v92, v18);
      v27 = 0;
      v97 = *(a1 + 3);
      v98 = *a1;
      v99 = *(a1 + 1);
      v7 = 1;
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v97 && v99)
      {
        (*(*v97 + 16))(v97, v98);
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
      v7 = 1;
    }

LABEL_28:
    IPC::Decoder::decode<std::optional<WebCore::RegistrableDomain>>(&v171, a1);
    IPC::Decoder::decode<std::optional<WebCore::PCM::EphemeralNonce>>(&v168, a1);
    IPC::Decoder::decode<std::optional<WebCore::RegistrableDomain>>(&v165, a1);
    v2 = *a1;
    if (!*a1)
    {
      LOBYTE(v109) = 0;
      LOBYTE(v121) = 0;
      if ((v167 & 1) == 0 || (v166 & 1) == 0)
      {
        goto LABEL_48;
      }

LABEL_134:
      v62 = v165;
      if (v165 && atomic_fetch_add_explicit(v165, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v62, v8);
      }

      v21 = 1;
      goto LABEL_48;
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_122;
    }

    LOBYTE(v154) = v21;
    if ((v25 & 1) == 0)
    {
      goto LABEL_122;
    }

    BYTE1(v154) = v24;
    if (v7)
    {
      goto LABEL_122;
    }

    BYTE2(v154) = v27;
    v9 = v173;
    if ((v173 & 1) == 0)
    {
      goto LABEL_122;
    }

    LOBYTE(v155) = 0;
    v156 = 0;
    v24 = v172;
    if (v172 == 1)
    {
      v68 = v171;
      v171 = 0;
      v155 = v68;
      v156 = 1;
    }

    v9 = v170;
    if ((v170 & 1) == 0)
    {
      goto LABEL_122;
    }

    LOBYTE(v157) = 0;
    v158 = 0;
    v22 = v169;
    if (v169 == 1)
    {
      v28 = v168;
      v168 = 0;
      v157 = v28;
      v158 = 1;
    }

    v9 = v167;
    if ((v167 & 1) == 0)
    {
      goto LABEL_122;
    }

    LOBYTE(v159) = 0;
    v160 = 0;
    v29 = v166;
    if (v166 == 1)
    {
      v71 = v165;
      v165 = 0;
      v159 = v71;
      v160 = 1;
    }

    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    LOWORD(v109) = v154;
    BYTE2(v109) = BYTE2(v154);
    BYTE8(v109) = 0;
    LOBYTE(v110) = 0;
    if (v172)
    {
      v72 = v155;
      v155 = 0;
      *(&v109 + 1) = v72;
      LOBYTE(v110) = 1;
    }

    v111[0] = 0;
    v111[8] = 0;
    if (v169)
    {
      v30 = v157;
      v157 = 0;
      *v111 = v30;
      v111[8] = 1;
    }

    v111[16] = 0;
    v111[24] = 0;
    if (v166)
    {
      v73 = v159;
      v159 = 0;
      *&v111[16] = v73;
      v111[24] = 1;
    }

    LOBYTE(v112) = 0;
    v117 = 0;
    LOBYTE(v118) = 0;
    BYTE8(v120) = 0;
    LOBYTE(v121) = 1;
    WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v154, v8);
    v21 = 0;
    if (v29)
    {
      goto LABEL_134;
    }

LABEL_48:
    if (v170 == 1 && v169 == 1)
    {
      v31 = v168;
      if (v168)
      {
        if (atomic_fetch_add_explicit(v168, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v8);
        }
      }
    }

    if (v173 == 1 && v172 == 1)
    {
      v53 = v171;
      if (v171)
      {
        if (atomic_fetch_add_explicit(v171, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v53, v8);
        }
      }
    }

    if (v2)
    {
      v136 = v109;
      v137 = BYTE2(v109);
      LOBYTE(v138) = 0;
      v139 = 0;
      if (v24)
      {
        v69 = *(&v109 + 1);
        *(&v109 + 1) = 0;
        v138 = v69;
        v139 = 1;
      }

      LOBYTE(v140) = 0;
      v141 = 0;
      if (v22)
      {
        v32 = *v111;
        *v111 = 0;
        v140 = v32;
        v141 = 1;
      }

      LOBYTE(v142) = 0;
      v143 = 0;
      if (v21)
      {
        v70 = *&v111[16];
        *&v111[16] = 0;
        v142 = v70;
        v143 = 1;
      }

      LOBYTE(v144) = 0;
      v146 = 0;
      LOBYTE(v147) = 0;
      v149 = 0;
      v150 = 1;
      v151 = 1;
      WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v109, v8);
      goto LABEL_64;
    }

    v18 = *a1;
    v63 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v64 = *(a1 + 3);
    if (v64 && v63)
    {
LABEL_155:
      (*(*v64 + 16))(v64, v18);
    }

LABEL_139:
    LOBYTE(v136) = 0;
    v151 = 0;
    v65 = *a1;
    v66 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v67 = *(a1 + 3);
    if (v67 && v66)
    {
      (*(*v67 + 16))(v67, v65);
    }

LABEL_64:
    IPC::Decoder::decode<std::optional<WTF::WallTime>>(&v109, a1);
    IPC::Decoder::decode<std::optional<WTF::WallTime>>(&v154, a1);
    v33 = *a1;
    if (*a1)
    {
      v9 = v110;
      if ((v110 & 1) == 0)
      {
        goto LABEL_122;
      }

      v9 = v156;
      if ((v156 & 1) == 0)
      {
        goto LABEL_122;
      }

      v2 = *(&v109 + 1);
      v34 = v109;
      *(&v174 + 7) = v154;
      HIBYTE(v174) = v155;
    }

    else
    {
      v60 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v61 = *(a1 + 3);
      if (v61 && v60)
      {
        (*(*v61 + 16))(v61, 0);
      }

      v34 = 0;
    }

    IPC::Decoder::decode<std::optional<WebCore::PCM::EphemeralNonce>>(&v154, a1);
    IPC::Decoder::decode<WTF::String>(a1, &v171);
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 312) = 0;
      v50 = i;
      goto LABEL_98;
    }

    v9 = v104;
    if (v104)
    {
      v9 = v108;
      if (v108)
      {
        v9 = v107;
        if (v107)
        {
          v9 = v103;
          if (v103)
          {
            v9 = v102;
            if (v102)
            {
              v9 = v153;
              if (v153)
              {
                v9 = v151;
                if (v151)
                {
                  if (v33)
                  {
                    v9 = v156;
                    if (v156)
                    {
                      v9 = v172;
                      if (v172)
                      {
                        break;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    if (v9)
    {
      v76 = v109;
      *&v109 = 0;
      if (v76)
      {
        if (atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v76, v8);
        }
      }
    }

    v54 = *a1;
    v55 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v56 = *(a1 + 3);
    if (v56 && v55)
    {
      (*(*v56 + 16))(v56, v54);
    }
  }

  LOBYTE(v109) = v105;
  *(&v109 + 1) = i;
  v110 = v10;
  *v111 = v101;
  v111[8] = v100;
  *&v111[16] = v152;
  LOBYTE(v112) = 0;
  v126 = 0;
  if (v150 == 1)
  {
    v112 = v136;
    v113 = v137;
    LOBYTE(v114) = 0;
    v115 = 0;
    if (v139 == 1)
    {
      v74 = v138;
      v138 = 0;
      v114 = v74;
      v115 = 1;
    }

    LOBYTE(v116) = 0;
    v117 = 0;
    if (v141 == 1)
    {
      v35 = v140;
      v140 = 0;
      v116 = v35;
      v117 = 1;
    }

    LOBYTE(v118) = 0;
    v119 = 0;
    if (v143 == 1)
    {
      v75 = v142;
      v142 = 0;
      v118 = v75;
      v119 = 1;
    }

    LOBYTE(v120) = 0;
    v122 = 0;
    if (v146 == 1)
    {
      v36 = v144;
      v144 = 0u;
      v37 = v145;
      v145 = 0u;
      v120 = v36;
      v121 = v37;
      v122 = v146;
    }

    LOBYTE(v123) = 0;
    v125 = 0;
    if (v149 == 1)
    {
      v38 = v147;
      v147 = 0uLL;
      v123 = v38;
      v39 = v148;
      v148 = 0;
      v124 = v39;
      v125 = 1;
    }

    v126 = 1;
  }

  v127[0] = v34;
  *&v127[1] = v2;
  *&v127[9] = v174;
  *&v127[25] = v168;
  *&v127[28] = *(&v168 + 3);
  LOBYTE(v128) = 0;
  v129 = 0;
  if (v155 == 1)
  {
    v40 = v154;
    v154 = 0;
    v128 = v40;
    v129 = 1;
  }

  v134 = 0;
  v130 = 0u;
  v131 = 0u;
  LOBYTE(v132) = 0;
  v41 = v171;
  v171 = 0;
  v135 = v41;
  *a2 = v105;
  *(&v109 + 1) = 0;
  v110 = 0;
  *(a2 + 8) = i;
  *(a2 + 16) = v10;
  *(a2 + 24) = *v111;
  *(a2 + 33) = *&v111[9];
  std::__optional_move_base<WebCore::PCM::AttributionTriggerData,false>::__optional_move_base[abi:sn200100](a2 + 56, &v112);
  v43 = *&v127[16];
  *(a2 + 192) = *v127;
  *(a2 + 208) = v43;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  if (v129 == 1)
  {
    v44 = v128;
    v128 = 0;
    *(a2 + 224) = v44;
    *(a2 + 232) = 1;
  }

  v45 = v130;
  v46 = v131;
  v130 = 0u;
  v131 = 0u;
  *(a2 + 240) = v45;
  *(a2 + 256) = v46;
  *(a2 + 272) = 0;
  *(a2 + 296) = 0;
  if (v134 == 1)
  {
    v47 = v132;
    v132 = 0uLL;
    *(a2 + 272) = v47;
    v48 = v133;
    v133 = 0;
    *(a2 + 288) = v48;
    *(a2 + 296) = 1;
  }

  v49 = v135;
  v135 = 0;
  *(a2 + 304) = v49;
  *(a2 + 312) = 1;
  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(&v109, v42);
  v10 = 0;
  v50 = 0;
LABEL_98:
  if (v172 == 1)
  {
    v51 = v171;
    v171 = 0;
    if (v51)
    {
      if (atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v8);
      }
    }
  }

  if (v156 == 1 && v155 == 1)
  {
    v52 = v154;
    if (v154)
    {
      if (atomic_fetch_add_explicit(v154, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v8);
      }
    }
  }

  if (v151 == 1 && v150 == 1)
  {
    WebCore::PCM::AttributionTriggerData::~AttributionTriggerData(&v136, v8);
  }

  if (v107 && v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  if (v108 && v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v8);
  }
}

void sub_19D70D328(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17)
{
  if (a16 && v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, a2);
  }

  if (a17 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  _Unwind_Resume(a1);
}

IPC::Decoder *IPC::Decoder::decode<std::optional<WebCore::PCM::EphemeralNonce>>(IPC::Decoder *result, WTF::StringImpl **a2)
{
  v3 = result;
  v4 = a2[2];
  v5 = *a2;
  v6 = a2[1];
  if (v6 <= v4 - v5)
  {
    *a2 = 0;
    a2[1] = 0;
    v11 = a2[3];
    if (v11)
    {
      if (v6)
      {
        (*(*v11 + 16))(v11);
        v5 = *a2;
        v6 = a2[1];
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_26;
  }

  a2[2] = (v4 + 1);
  if (v4)
  {
    v7 = *v4;
    if (v7 >= 2)
    {
      goto LABEL_16;
    }

    if (!v7)
    {
      *result = 0;
      goto LABEL_9;
    }

    result = IPC::Decoder::decode<WTF::String>(a2, &v13);
    if (*a2)
    {
      if (v14)
      {
        *v3 = v13;
        LOBYTE(v7) = 1;
LABEL_9:
        *(v3 + 8) = v7;
        *(v3 + 16) = 1;
        return result;
      }

      __break(1u);
      goto LABEL_21;
    }

    if (v14)
    {
      v8 = v13;
      v13 = 0;
      if (v8)
      {
        if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v5);
        }
      }
    }

    goto LABEL_15;
  }

LABEL_26:
  *a2 = 0;
  a2[1] = 0;
  v12 = a2[3];
  if (v12)
  {
    if (v6)
    {
      (*(*v12 + 16))(v12, v5);
LABEL_15:
      v5 = *a2;
      v6 = a2[1];
      goto LABEL_16;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_16:
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
LABEL_21:
    if (v6)
    {
      (*(*result + 16))(result, v5);
    }
  }

  *v3 = 0;
  *(v3 + 16) = 0;
  v9 = *a2;
  v10 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    if (v10)
    {
      return (*(*result + 16))(result, v9);
    }
  }

  return result;
}

void *IPC::ArgumentCoder<WebCore::PCM::AttributionTriggerData,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[1]);
  v5 = a2[2];
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, (a2 + 24));
  return IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, (a2 + 40));
}

WTF::StringImpl *IPC::Decoder::decode<std::optional<WebCore::RegistrableDomain>>(WTF::StringImpl *result, IPC::Decoder *a2)
{
  v3 = result;
  v4 = *(a2 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 <= &v4[-v5])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v8 = *(a2 + 3);
    if (v8)
    {
      if (v6)
      {
        (*(*v8 + 16))(v8);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_12:
    *a2 = 0;
    *(a2 + 1) = 0;
    v9 = *(a2 + 3);
    if (v9)
    {
      if (v6)
      {
        (*(*v9 + 16))(v9, v5);
        v5 = *a2;
        v6 = *(a2 + 1);
        goto LABEL_15;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
LABEL_15:
    *a2 = 0;
    *(a2 + 1) = 0;
    v10 = *(a2 + 3);
    if (v10 && v6)
    {
      (*(*v10 + 16))(v10, v5);
    }

    goto LABEL_16;
  }

  *(a2 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 >= 2)
  {
    goto LABEL_15;
  }

  if (!v7)
  {
    *result = 0;
    *(result + 8) = 0;
    goto LABEL_8;
  }

  result = IPC::Decoder::decode<WebCore::RegistrableDomain>(a2, &v13);
  if (v14 == 1)
  {
    *v3 = v13;
    *(v3 + 8) = 1;
LABEL_8:
    *(v3 + 16) = 1;
    return result;
  }

LABEL_16:
  *v3 = 0;
  *(v3 + 16) = 0;
  v11 = *a2;
  v12 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v12)
    {
      return (*(*result + 16))(result, v11);
    }
  }

  return result;
}

void *IPC::ArgumentCoder<WebCore::ApplePayRecurringPaymentRequest,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WebCore::ApplePayLineItem,void>::encode(a1, (a2 + 1));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayLineItem>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayLineItem> const&>(a1, (a2 + 11));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 22);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 23);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 24);
}

void *IPC::ArgumentCoder<WebCore::ApplePayPaymentTokenContext,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 3);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 4);
}

void *IPC::ArgumentCoder<WebCore::ApplePayDeferredPaymentRequest,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WebCore::ApplePayLineItem,void>::encode(a1, a2 + 8);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 96));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 104));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 112));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 120));
}

void *IPC::ArgumentCoder<WebCore::ApplePayPaymentOrderDetails,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 2);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 3);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ApplePayAMSUIRequest,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::String>(a1, &v6);
  if (*a1)
  {
    if (v7)
    {
      *a2 = v6;
      *(a2 + 8) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    if (v7)
    {
      result = v6;
      v6 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

void *IPC::ArgumentCoder<WebCore::ApplePayAutomaticReloadPaymentRequest,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WebCore::ApplePayLineItem,void>::encode(a1, (a2 + 1));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 11);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 12);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 13);
}

uint64_t IPC::ArgumentCoder<WebCore::ApplePayDateComponents,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 8);
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 16);

  return IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 24);
}

uint64_t IPC::Decoder::decode<WebCore::ApplePayDateComponents>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
  v6 = v5;
  v7 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
  v9 = v8;
  v10 = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
  v12 = v11;
  result = IPC::Decoder::decode<std::optional<unsigned int>>(a2);
  if (*a2)
  {
    if (v6 & 1) != 0 && (v9 & 1) != 0 && (v12 & 1) != 0 && (v14)
    {
      *a1 = v4;
      *(a1 + 4) = BYTE4(v4);
      *(a1 + 8) = v7;
      *(a1 + 12) = BYTE4(v7);
      *(a1 + 16) = v10;
      *(a1 + 20) = BYTE4(v10);
      *(a1 + 24) = result;
      *(a1 + 28) = BYTE4(result);
      *(a1 + 32) = 1;
      return result;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 32) = 0;
  v15 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v15)
  {
    v16 = *(*result + 16);

    return v16();
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ApplePaySetupConfiguration,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 2);

  return IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, (a2 + 3));
}

uint64_t IPC::ArgumentCoder<WebCore::ApplePayLineItem,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *a2;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 44));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  return IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 72));
}

uint64_t IPC::ArgumentCoder<WebCore::ApplePayShippingMethod,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayDateComponentsRange>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayDateComponentsRange> const&>(a1, a2 + 32);

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 100));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ApplePayShippingMethod,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::String>(a1, &v39);
  IPC::Decoder::decode<WTF::String>(a1, &v37);
  IPC::Decoder::decode<WTF::String>(a1, &v35);
  result = IPC::Decoder::decode<WTF::String>(a1, &v33);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v25 = *(a1 + 3);
    if (v25)
    {
      if (v5)
      {
        (*(*v25 + 16))(v25);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_50;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
LABEL_50:
    *a1 = 0;
    *(a1 + 1) = 0;
    v26 = *(a1 + 3);
    if (v26)
    {
      if (v5)
      {
        (*(*v26 + 16))(v26);
        v7 = *a1;
        v5 = *(a1 + 1);
        goto LABEL_53;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_53:
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (!v22 || !v5)
    {
      goto LABEL_41;
    }

    goto LABEL_47;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    goto LABEL_53;
  }

  if (!v8)
  {
    v10 = 0;
    v9 = 1;
    goto LABEL_11;
  }

  IPC::Decoder::decode<WebCore::ApplePayDateComponents>(&v44, a1);
  result = IPC::Decoder::decode<WebCore::ApplePayDateComponents>(&v41, a1);
  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_40;
  }

  if ((v46 & 1) == 0)
  {
    goto LABEL_39;
  }

  LOBYTE(v8) = v44;
  v50[0] = *v45;
  *(v50 + 15) = *&v45[15];
  if ((v43 & 1) == 0)
  {
    goto LABEL_39;
  }

  *(&v50[1] + 15) = v41;
  *(&v50[2] + 15) = v42;
  *(v49 + 15) = v42;
  v47 = v50[0];
  v48 = v50[1];
  v49[0] = v50[2];
  v9 = 1;
  while (1)
  {
    v10 = 1;
LABEL_11:
    v11 = *(a1 + 1);
    v12 = *(a1 + 2);
    if (v11 <= v12 - v7)
    {
      v31 = v9;
      v32 = v10;
      v30 = v8;
      *a1 = 0;
      *(a1 + 1) = 0;
      v27 = *(a1 + 3);
      if (v27)
      {
        if (v11)
        {
          (*(*v27 + 16))(v27);
          v7 = *a1;
          v11 = *(a1 + 1);
          goto LABEL_59;
        }
      }

      else
      {
        v11 = 0;
      }

      v7 = 0;
    }

    else
    {
      *(a1 + 2) = v12 + 1;
      if (v12)
      {
        v13 = *v12;
        if (v13 < 2)
        {
          v14 = 1;
          goto LABEL_15;
        }

        v29 = v13;
        v30 = v8;
        v31 = v9;
        v32 = v10;
        goto LABEL_63;
      }

      v31 = v9;
      v32 = v10;
      v30 = v8;
    }

LABEL_59:
    *a1 = 0;
    *(a1 + 1) = 0;
    v28 = *(a1 + 3);
    if (!v28)
    {
      v11 = 0;
LABEL_61:
      v7 = 0;
      v29 = 0;
      goto LABEL_63;
    }

    if (!v11)
    {
      goto LABEL_61;
    }

    (*(*v28 + 16))(v28, v7);
    v29 = 0;
    v7 = *a1;
    v11 = *(a1 + 1);
LABEL_63:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v11)
    {
      break;
    }

    result = (*(*result + 16))(result, v7);
    v14 = 0;
    v7 = *a1;
    LOBYTE(v8) = v30;
    v9 = v31;
    v10 = v32;
    v13 = v29;
LABEL_15:
    v15 = v13 ? v14 : 0;
    if (!v7)
    {
      break;
    }

    if (v40)
    {
      v16 = v39;
      v39 = 0;
      if (v38)
      {
        v17 = v37;
        v37 = 0;
        if (v36)
        {
          v18 = v35;
          v35 = 0;
          if (v34)
          {
            v19 = v33;
            v33 = 0;
            if (v9 & 1) != 0 && (v14)
            {
              v20 = v48;
              *(a2 + 33) = v47;
              *a2 = v16;
              *(a2 + 8) = v17;
              *(a2 + 16) = v18;
              *(a2 + 24) = v19;
              *(a2 + 32) = v8;
              *(a2 + 49) = v20;
              *(a2 + 65) = v49[0];
              *(a2 + 80) = *(v49 + 15);
              *(a2 + 96) = v10;
              *(a2 + 100) = v15;
              *(a2 + 104) = 1;
              goto LABEL_26;
            }
          }
        }
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    v21 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (v22 && v21)
    {
      v7 = 0;
LABEL_47:
      (*(*v22 + 16))(v22, v7);
    }

LABEL_41:
    v23 = *a1;
    v24 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v24)
    {
      result = (*(*result + 16))(result, v23);
      v9 = 0;
      LOBYTE(v8) = 0;
      v7 = *a1;
    }

    else
    {
      v7 = 0;
      v9 = 0;
      LOBYTE(v8) = 0;
    }
  }

  *a2 = 0;
  *(a2 + 104) = 0;
  if (v34)
  {
    result = v33;
    v33 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

LABEL_26:
  if (v36 == 1)
  {
    result = v35;
    v35 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if (v38 == 1)
  {
    result = v37;
    v37 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  if (v40 == 1)
  {
    result = v39;
    v39 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void sub_19D70E2F0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, char a13, WTF::StringImpl *a14, char a15, WTF::StringImpl *a16, char a17, WTF::StringImpl *a18, char a19)
{
  if (a13 == 1 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a15 == 1 && a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a17 == 1 && a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a19 == 1 && a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::ApplePayError,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v4 = *(a2 + 13);
  if ((v4 & 0x100) != 0)
  {
    v11 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v11);
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
  }

  else
  {
    v12 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v12);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v10 = v5;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, &v10);
  v7 = v10;
  v10 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = *(a2 + 24);
  if ((v8 & 0x100) != 0)
  {
    v13 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v13);
    return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v8);
  }

  else
  {
    v14 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v14);
  }
}

void *IPC::ArgumentCoder<WebCore::ApplePayPaymentMethodUpdate,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::ApplePayLineItem,void>::encode(a1, a2);
  IPC::VectorArgumentCoder<false,WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 80);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayRecurringPaymentRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayRecurringPaymentRequest> const&>(a1, a2 + 96);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest> const&>(a1, a2 + 304);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 424);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayDeferredPaymentRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayDeferredPaymentRequest> const&>(a1, a2 + 448);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayDisbursementRequest>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayDisbursementRequest> const&>(a1, a2 + 584);
  IPC::VectorArgumentCoder<false,WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 616);
  IPC::VectorArgumentCoder<false,WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 632);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 648));
}

void IPC::ArgumentCoder<WebCore::ApplePayPaymentMethodUpdate,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::ApplePayLineItem>(v118, a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v115, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayRecurringPaymentRequest>>(v112, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayAutomaticReloadPaymentRequest>>(&v100, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v98, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayDeferredPaymentRequest>>(&v85, a1);
  IPC::Decoder::decode<std::optional<WebCore::ApplePayDisbursementRequest>>(&v80, a1);
  IPC::Decoder::decode<WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v77, a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v74, a1);
  IPC::Decoder::decode<WTF::String>(a1, &v72);
  if (!*a1)
  {
    goto LABEL_56;
  }

  if ((v125 & 1) == 0)
  {
    goto LABEL_55;
  }

  v33[0] = v118[0];
  v5 = v119;
  v119 = 0uLL;
  v34 = v5;
  v35 = v120;
  v36 = v121;
  v6 = v123;
  v123 = 0;
  v37 = v122;
  v38 = v6;
  v39 = v124;
  if ((v117 & 1) == 0)
  {
    goto LABEL_55;
  }

  v40 = v115;
  v7 = v116;
  v115 = 0;
  v116 = 0;
  v41 = v7;
  if ((v114 & 1) == 0)
  {
    goto LABEL_55;
  }

  std::__optional_move_base<WebCore::ApplePayRecurringPaymentRequest,false>::__optional_move_base[abi:sn200100](&v42, v112);
  if ((v111 & 1) == 0)
  {
    goto LABEL_55;
  }

  LOBYTE(v43) = 0;
  v53 = 0;
  if (v110 == 1)
  {
    v8 = v100;
    v100 = 0;
    v43 = v8;
    v44 = v101;
    v9 = v102;
    v102 = 0u;
    v45 = v9;
    v46 = v103;
    v47 = v104;
    v48 = v105;
    v49 = v106;
    v50 = v107;
    v10 = v108;
    v108 = 0u;
    v51 = v10;
    v11 = v109;
    v106 = 0;
    v109 = 0;
    v52 = v11;
    v53 = 1;
  }

  if ((v99 & 1) == 0)
  {
    goto LABEL_55;
  }

  std::__optional_move_base<WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v54, v98);
  if ((v97 & 1) == 0)
  {
    goto LABEL_55;
  }

  LOBYTE(v55) = 0;
  v66 = 0;
  if (v96 == 1)
  {
    v12 = v87;
    v87 = 0u;
    v57 = v12;
    v58 = v88;
    v59 = v89;
    v13 = v94;
    v14 = v95;
    v94 = 0u;
    v95 = 0u;
    v55 = v85;
    v56 = v86;
    v15 = v91;
    v60 = v90;
    v85 = 0;
    v91 = 0;
    v61 = v15;
    v62 = v92;
    v63 = v93;
    v64 = v13;
    v65 = v14;
    v66 = 1;
  }

  if ((v84 & 1) == 0 || (std::__optional_move_base<WebCore::ApplePayDisbursementRequest,false>::__optional_move_base[abi:sn200100](v67, &v80), WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(v68, v33), (v79 & 1) == 0) || (v16 = v77, v77 = 0, *&v69 = v16, v17 = v78, v78 = 0, *(&v69 + 1) = v17, (v76 & 1) == 0) || (v18 = v74, v74 = 0, v70 = v18, v19 = v75, v75 = 0, *&v71 = v19, (v73 & 1) == 0))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    *a2 = 0;
    *(a2 + 656) = 0;
    goto LABEL_17;
  }

  v20 = v72;
  v72 = 0;
  *(&v71 + 1) = v20;
  WebCore::ApplePayDetailsUpdateBase::ApplePayDetailsUpdateBase(a2, v68);
  v21 = v69;
  v69 = 0u;
  *(a2 + 616) = v21;
  v22 = v70;
  v70 = 0;
  *(a2 + 632) = v22;
  v23 = v71;
  v71 = 0u;
  *(a2 + 640) = v23;
  *(a2 + 656) = 1;
  WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v24);
  WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v25);
  WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(v68, v26);
  WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(v33, v27);
LABEL_17:
  if (v73 == 1)
  {
    v28 = v72;
    v72 = 0;
    if (v28)
    {
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v4);
      }
    }
  }

  if (v76 == 1)
  {
    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v74, v4);
  }

  if (v79 == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v77, v4);
  }

  if (v84 == 1 && v83 == 1 && v82 == 1)
  {
    v29 = v80;
    if (v80)
    {
      v80 = 0;
      v81 = 0;
      WTF::fastFree(v29, v4);
    }
  }

  if (v97 == 1 && v96 == 1)
  {
    WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest(&v85, v4);
  }

  if (v99 == 1 && v98[16] == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v98, v4);
  }

  if (v111 == 1 && v110 == 1)
  {
    WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest(&v100, v4);
  }

  if (v114 == 1 && v113 == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(v112, v4);
  }

  if (v117 == 1)
  {
    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v115, v4);
  }

  if (v125 == 1)
  {
    v30 = v123;
    if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v4);
    }

    v31 = *(&v119 + 1);
    if (*(&v119 + 1) && atomic_fetch_add_explicit(*(&v119 + 1), 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v4);
    }

    v32 = v119;
    if (v119)
    {
      if (atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v4);
      }
    }
  }
}

void sub_19D70EAB8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v7 = STACK[0x4F8];
  STACK[0x4F8] = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4 + 632, a2);
  WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v3 + 616, v8);
  WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(&STACK[0x270], v9);
  WebCore::ApplePayDetailsUpdateBase::~ApplePayDetailsUpdateBase(va, v10);
  if (LOBYTE(STACK[0x508]) == 1)
  {
    v12 = STACK[0x500];
    STACK[0x500] = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }
    }
  }

  if (LOBYTE(STACK[0x520]) == 1)
  {
    WTF::Vector<WebCore::ApplePayShippingMethod,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x510], v11);
  }

  if (LOBYTE(STACK[0x538]) == 1)
  {
    WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x528], v11);
  }

  if (LOBYTE(STACK[0x560]) == 1 && LOBYTE(STACK[0x558]) == 1 && LOBYTE(STACK[0x550]) == 1)
  {
    v13 = STACK[0x540];
    if (STACK[0x540])
    {
      STACK[0x540] = 0;
      LODWORD(STACK[0x548]) = 0;
      WTF::fastFree(v13, v11);
    }
  }

  if (LOBYTE(STACK[0x5F0]) == 1 && LOBYTE(STACK[0x5E8]) == 1)
  {
    WebCore::ApplePayDeferredPaymentRequest::~ApplePayDeferredPaymentRequest(&STACK[0x568], v11);
  }

  if (LOBYTE(STACK[0x610]) == 1 && LOBYTE(STACK[0x608]) == 1)
  {
    WTF::Vector<WebCore::ApplePayPaymentTokenContext,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&STACK[0x5F8], v11);
  }

  if (LOBYTE(STACK[0x690]) == 1 && LOBYTE(STACK[0x688]) == 1)
  {
    WebCore::ApplePayAutomaticReloadPaymentRequest::~ApplePayAutomaticReloadPaymentRequest(&STACK[0x618], v11);
  }

  if (LOBYTE(STACK[0x768]) == 1 && LOBYTE(STACK[0x760]) == 1)
  {
    WebCore::ApplePayRecurringPaymentRequest::~ApplePayRecurringPaymentRequest(&STACK[0x698], v11);
  }

  if (*(v5 - 144) == 1)
  {
    WTF::Vector<WebCore::ApplePayLineItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5 - 160, v11);
  }

  if (*(v5 - 56) == 1)
  {
    v14 = *(v5 - 72);
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    v15 = *(v5 - 120);
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v11);
    }

    v16 = *(v5 - 128);
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v11);
      }
    }
  }

  _Unwind_Resume(a1);
}