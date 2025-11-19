uint64_t AGXGPURawCounter::createInstance(AGXGPURawCounter *this)
{
  os_unfair_lock_lock(&sAGXGPURawCounterLock);
  if (!sAGXGPURawCounterImpl)
  {
    operator new();
  }

  os_unfair_lock_unlock(&sAGXGPURawCounterLock);
  return 0;
}

uint64_t AGXGPURawCounter::destroyInstance(AGXGPURawCounter *this)
{
  result = sAGXGPURawCounterImpl;
  if (sAGXGPURawCounterImpl)
  {
    AGXGPURawCounterImpl::free(sAGXGPURawCounterImpl);
    result = sAGXGPURawCounterImpl;
    if (sAGXGPURawCounterImpl)
    {
      result = (*(*sAGXGPURawCounterImpl + 8))(sAGXGPURawCounterImpl);
    }

    sAGXGPURawCounterImpl = 0;
  }

  return result;
}

size_t AGXGPURawCounterImpl::SourceImpl::RingBufferImpl::drain(AGXGPURawCounterImpl::SourceImpl::RingBufferImpl *this, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((a2 & 7) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Amount of data to be drained must be aligned to 64-bits!\n", "AGXGPURawCounterImpl.mm", 352, "drain");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = "AGXGPURawCounterImpl.mm";
      v16 = 1024;
      v17 = 352;
      v18 = 2080;
      v19 = "drain";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Amount of data to be drained must be aligned to 64-bits!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v15 = "AGXGPURawCounterImpl.mm";
      v16 = 1024;
      v17 = 352;
      v18 = 2080;
      v19 = "drain";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Amount of data to be drained must be aligned to 64-bits!\n", buf, 0x1Cu);
    }

    v2 = 0;
  }

  else
  {
    LODWORD(v2) = a2;
    v13 = 0;
    *buf = 0;
    (*(*this + 32))(this, buf, &v13);
    if (v13 >= v2)
    {
      v2 = v2;
    }

    else
    {
      v2 = v13;
    }

    v4 = *(this + 3);
    v5 = *(v4 + 24);
    if (*buf + v2 <= v5)
    {
      v8 = (*v4 + *buf);
      v9 = v2;
    }

    else
    {
      v6 = v5 - *buf;
      v7 = (v2 - v6);
      sys_dcache_flush((*v4 + *buf), v6);
      v8 = **(this + 3);
      v9 = v7;
    }

    sys_dcache_flush(v8, v9);
    v10 = *(this + 3);
    *buf = (*buf + v2) % *(v10 + 24);
    *(v10 + 32) = *(v10 + 8) + *buf;
    sys_dcache_flush((v10 + 32), 8uLL);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::RingBufferImpl::state(void **this, unsigned int *a2, unsigned int *a3)
{
  sys_dcache_flush(this[3], 0x40uLL);
  v6 = this[3];
  *a2 = v6[4] - *(v6 + 2);
  *a3 = (v6[6] + *(v6 + 6) - v6[4]) % *(v6 + 6);
  return 1;
}

void AGXGPURawCounterImpl::SourceImpl::RingBufferImpl::~RingBufferImpl(AGXGPURawCounterImpl::SourceImpl::RingBufferImpl *this)
{
  *this = &unk_284F28E10;
  if (*(this + 3))
  {
    *(this + 3) = 0;
  }

  JUMPOUT(0x23EED55C0);
}

{
  *this = &unk_284F28E10;
  if (*(this + 3))
  {
    *(this + 3) = 0;
  }
}

void AGXGPURawCounterImpl::SourceImpl::ringBufferFree(AGXGPURawCounterImpl::SourceImpl *this)
{
  v2 = *(this + 785);
  if (v2)
  {
    v3 = *(this + 1572);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = v2[i];
        if (v5)
        {
          (*(*v5 + 8))(v2[i]);
          v2 = *(this + 785);
          v3 = *(this + 1572);
        }

        v2[i] = 0;
      }
    }

    free(v2);
    *(this + 785) = 0;
  }
}

uint64_t AGXGPURawCounterImpl::SourceImpl::ringBufferInit(AGXGPURawCounterImpl::SourceImpl *this, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v5 = (*(*this + 224))(this, a4);
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
    operator new();
  }

  return v5;
}

BOOL AGXGPURawCounterImpl::SourceImpl::ringBufferAlloc(AGXGPURawCounterImpl::SourceImpl *this, int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1572);
  if (v4 == a2)
  {
    (*(*this + 240))(this);
    if (a2)
    {
      v5 = malloc_type_malloc(8 * *(this + 1572), 0x2004093837F09uLL);
      *(this + 785) = v5;
      if (v5)
      {
        bzero(v5, 8 * *(this + 1572));
        result = 1;
        goto LABEL_19;
      }

      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Fail to allocate ring buffer for source[%u]!\n", "AGXGPURawCounterImpl.mm", 2183, "ringBufferAlloc", *(this + 7));
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v16 = *(this + 7);
        *buf = 136315906;
        v18 = "AGXGPURawCounterImpl.mm";
        v19 = 1024;
        v20 = 2183;
        v21 = 2080;
        v22 = "ringBufferAlloc";
        v23 = 1024;
        v24 = v16;
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Fail to allocate ring buffer for source[%u]!\n", buf, 0x22u);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (result)
      {
        v12 = *(this + 7);
        *buf = 136315906;
        v18 = "AGXGPURawCounterImpl.mm";
        v19 = 1024;
        v20 = 2183;
        v21 = 2080;
        v22 = "ringBufferAlloc";
        v23 = 1024;
        v24 = v12;
        v9 = MEMORY[0x277D86220];
        v10 = "AGXGRC:AGXGRC:%s:%d:%s: *** Fail to allocate ring buffer for source[%u]!\n";
        goto LABEL_17;
      }
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Invalid ring buffer count (%u)!\n", "AGXGPURawCounterImpl.mm", 2176, "ringBufferAlloc", 0);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v18 = "AGXGPURawCounterImpl.mm";
        v19 = 1024;
        v20 = 2176;
        v21 = 2080;
        v22 = "ringBufferAlloc";
        v23 = 1024;
        v24 = 0;
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Invalid ring buffer count (%u)!\n", buf, 0x22u);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (result)
      {
        *buf = 136315906;
        v18 = "AGXGPURawCounterImpl.mm";
        v19 = 1024;
        v20 = 2176;
        v21 = 2080;
        v22 = "ringBufferAlloc";
        v23 = 1024;
        v24 = 0;
        v9 = MEMORY[0x277D86220];
        v10 = "AGXGRC:AGXGRC:%s:%d:%s: *** Invalid ring buffer count (%u)!\n";
LABEL_17:
        v11 = 34;
        goto LABEL_18;
      }
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Inconsistent ring buffer count for source[%u]. (%u != %u)\n", "AGXGPURawCounterImpl.mm", 2167, "ringBufferAlloc", *(this + 7), v4, a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = *(this + 7);
      v15 = *(this + 1572);
      *buf = 136316418;
      v18 = "AGXGPURawCounterImpl.mm";
      v19 = 1024;
      v20 = 2167;
      v21 = 2080;
      v22 = "ringBufferAlloc";
      v23 = 1024;
      v24 = v14;
      v25 = 1024;
      v26 = v15;
      v27 = 1024;
      v28 = a2;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Inconsistent ring buffer count for source[%u]. (%u != %u)\n", buf, 0x2Eu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (result)
    {
      v7 = *(this + 7);
      v8 = *(this + 1572);
      *buf = 136316418;
      v18 = "AGXGPURawCounterImpl.mm";
      v19 = 1024;
      v20 = 2167;
      v21 = 2080;
      v22 = "ringBufferAlloc";
      v23 = 1024;
      v24 = v7;
      v25 = 1024;
      v26 = v8;
      v27 = 1024;
      v28 = a2;
      v9 = MEMORY[0x277D86220];
      v10 = "AGXGRC:AGXGRC:%s:%d:%s: *** Inconsistent ring buffer count for source[%u]. (%u != %u)\n";
      v11 = 46;
LABEL_18:
      _os_log_impl(&dword_23C542000, v9, OS_LOG_TYPE_INFO, v10, buf, v11);
      result = 0;
    }
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void AGXGPURawCounterImpl::SourceImpl::postProcessReset(AGXGPURawCounterImpl::SourceImpl *this, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(this + 787);
  if (v2 && (v3 = *(v2 + 8)) != 0 && *(v2 + 24))
  {
    v3(*(*(this + 1) + 704));
    *(this + 1576) = a2;
    bzero(*(this + 790), *(this + 1582));
    *(this + 1577) = (*(*(this + 787) + 24))();
    if (*(this + 36))
    {
      LODWORD(v7) = *(this + 1554);
      LODWORD(v6) = *(this + 1555);
      *(this + 1578) = 8 * (v7 - v6);
    }

    else
    {
      *(this + 1578) = 0;
      v6 = *(this + 1555);
      v7 = *(this + 1554);
      if (v6 < v7)
      {
        v8 = v7 - v6;
        if ((v7 - v6) >= 9)
        {
          v11 = v8 & 7;
          if ((v8 & 7) == 0)
          {
            v11 = 8;
          }

          v12 = v8 - v11;
          v13 = v11 + v6 - v7;
          v14 = (this + 24 * v6 + 136);
          v15 = 0uLL;
          v16 = 0uLL;
          do
          {
            v17.i32[0] = *(v14 - 12);
            v17.i32[1] = *(v14 - 6);
            v17.i32[2] = *v14;
            v17.i32[3] = v14[6];
            v18.i32[0] = v14[12];
            v18.i32[1] = v14[18];
            v18.i32[2] = v14[24];
            v18.i32[3] = v14[30];
            v15 = vsraq_n_u32(v15, v17, 3uLL);
            v16 = vsraq_n_u32(v16, v18, 3uLL);
            v14 += 48;
            v13 += 8;
          }

          while (v13);
          v10 = v12 + v6;
          v9 = vaddvq_s32(vaddq_s32(v16, v15));
        }

        else
        {
          v9 = 0;
          v10 = *(this + 1555);
        }

        v19 = v7 - v10;
        v20 = (this + 24 * v10 + 88);
        do
        {
          v21 = *v20;
          v20 += 6;
          v9 += v21 >> 3;
          --v19;
        }

        while (v19);
        *(this + 1578) = v9;
        LODWORD(v7) = 1;
      }
    }

    v22 = 8 * v6;
    v23 = v22 + 8;
    *(this + 1579) = v22 + 8;
    if (*(this + 6304))
    {
      *(this + 1579) = v22 + 40;
    }

    if (v7 && (((*(*this + 128))(this) & 1) != 0 || *(this + 1556)))
    {
      *(this + 1579) += v23;
    }

    if (((*(*this + 128))(this) & 2) != 0)
    {
      *(this + 1579) += 3 * v23 * *(*(this + 787) + 40);
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** chip dispatch table is not propertly set!\n", "AGXGPURawCounterImpl.mm", 1899, "postProcessReset");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "AGXGPURawCounterImpl.mm";
      v27 = 1024;
      v28 = 1899;
      v29 = 2080;
      v30 = "postProcessReset";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** chip dispatch table is not propertly set!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v26 = "AGXGPURawCounterImpl.mm";
      v27 = 1024;
      v28 = 1899;
      v29 = 2080;
      v30 = "postProcessReset";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** chip dispatch table is not propertly set!\n", buf, 0x1Cu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

BOOL AGXGPURawCounterImpl::SourceImpl::postProcessData(AGXGPURawCounterImpl::SourceImpl *this, unsigned int a2, const unsigned __int8 *a3, unint64_t a4, unint64_t *a5, unint64_t a6, unsigned __int8 *a7, unint64_t a8, unint64_t a9, unint64_t *a10, BOOL a11)
{
  v149 = *MEMORY[0x277D85DE8];
  v11 = *(this + 787);
  if (v11 && *(v11 + 16))
  {
    if (*(this + 1572) > a2)
    {
      result = 0;
      if (!a3)
      {
        goto LABEL_24;
      }

      if (!a4)
      {
        goto LABEL_24;
      }

      if (!a5)
      {
        goto LABEL_24;
      }

      result = 0;
      if (a6 >= a4)
      {
        goto LABEL_24;
      }

      if (!a7)
      {
        goto LABEL_24;
      }

      if (!a8)
      {
        goto LABEL_24;
      }

      result = 0;
      if (a9 >= a8 || !a10)
      {
        goto LABEL_24;
      }

      if (*a5 < a4 && *a10 < a8 && (((a6 | a4) | *a5) & 7) == 0 && (((a9 | a8) | *a10) & 7) == 0)
      {
        v17 = this;
        if ((*(**(this + 1) + 104))(*(this + 1)) <= a8)
        {
          if ((*(*v17 + 128))(v17))
          {
            v117 = 1;
            v18 = v17;
          }

          else
          {
            v18 = v17;
            v117 = *(v17 + 1556) != 0;
          }

          v20 = (*(*v18 + 128))(v18);
          v112 = (*(*v18 + 128))(v18);
          v110 = *(v18 + 1576);
          v21 = (*(*v18 + 16))(v18);
          if (((*(*v21 + 56))(v21) & 2) != 0)
          {
            v111 = ((*(*v17 + 96))(v17) >> 2) & 1;
          }

          else
          {
            v111 = 0;
          }

          v114 = v20;
          if ((v20 & 2) != 0)
          {
            v22 = v17;
            v113 = 8 * *(*(v17 + 787) + 56);
          }

          else
          {
            v113 = 0;
            v22 = v17;
          }

          v115 = *(v22 + 794);
          v118 = *(v22 + 1554);
          v23 = *(v22 + 1555);
          v24 = *(v22 + 1556);
          v125 = 0;
          {
            v22 = v17;
            if (v93)
            {
              if (*(v17 + 9))
              {
                v94 = 4096;
              }

              else
              {
                v94 = 2048;
              }

              AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcSampleMaxSize = v94;
              v22 = v17;
            }
          }

          {
            v22 = v17;
            if (v95)
            {
              if (*(v17 + 9))
              {
                v96 = 1;
              }

              else
              {
                v96 = 4;
              }

              AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcPayloadScale = v96;
              v22 = v17;
            }
          }

          if (AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcSampleMaxSize)
          {
            operator new();
          }

          LOBYTE(v124[0]) = 0;
          memset(v124 + 4, 0, 28);
          v25 = (*(**(v22 + 1) + 104))(*(v22 + 1));
          StackAllocator::init(v124, v25);
          v26 = a5;
          v27 = *a5;
          v28 = *a10;
          if (*a5 == a6)
          {
            result = 1;
            v29 = a6;
            goto LABEL_121;
          }

          v105 = (v115 + 8 * (a2 << 8));
          v106 = v24 + v23;
          v102 = v118 != v24 + v23 || !v117;
          v30 = v17;
          v109 = v17 + 72;
          __n = (8 * (v118 - (v24 + v23)));
          v107 = (v118 - (v24 + v23));
          v31 = 8 * v107;
          v32 = a3;
          while (1)
          {
            v29 = v27;
            while (1)
            {
              v33 = (*(*(v30 + 787) + 32))(*&v32[v29]);
              v34 = a6;
              v35 = a4;
              if (v33)
              {
                break;
              }

              v29 = (v29 + 8) % a4;
              v32 = a3;
              v30 = v17;
              if (v29 == a6)
              {
                result = 1;
                v29 = a6;
                goto LABEL_120;
              }
            }

            v36 = a3;
            v27 = v29;
            v37 = v17;
            while (1)
            {
              v27 = (v27 + 8) % v35;
              if (v27 == v34)
              {
                break;
              }

              v38 = (*(*(v37 + 787) + 32))(*&v36[v27]);
              v34 = a6;
              v35 = a4;
              v36 = a3;
              v37 = v17;
              if (v38)
              {
                goto LABEL_48;
              }
            }

            v27 = v34;
            if (!a11)
            {
              break;
            }

LABEL_48:
            v39 = (v35 - v29);
            v40 = (v35 - v29 + v27) % v35;
            if (v40 < *(v37 + 1577))
            {
              result = 0;
LABEL_120:
              v26 = a5;
LABEL_121:
              *v26 = v29;
              *a10 = v28;
              if (LOBYTE(v124[0]) == 1)
              {
                v88 = result;
                free(v124[1]);
                result = v88;
              }

              goto LABEL_24;
            }

            v116 = v28;
            if (v40 > AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcSampleMaxSize)
            {
              v89 = (v35 - v29 + v27) % v35;
              fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Source sample size is unexpectedly larger than the maximum! (%llu > %u)\n", "AGXGPURawCounterImpl.mm", 1499, "postProcessData", v40, AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcSampleMaxSize);
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *v132 = 136316162;
                v133 = "AGXGPURawCounterImpl.mm";
                v134 = 1024;
                v135 = 1499;
                v136 = 2080;
                v137 = "postProcessData";
                v138 = 2048;
                v139 = v89;
                v140 = 1024;
                LODWORD(v141) = AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcSampleMaxSize;
                _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Source sample size is unexpectedly larger than the maximum! (%llu > %u)\n", v132, 0x2Cu);
              }

              result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
              if (result)
              {
                *v132 = 136316162;
                v133 = "AGXGPURawCounterImpl.mm";
                v134 = 1024;
                v135 = 1499;
                v136 = 2080;
                v137 = "postProcessData";
                v138 = 2048;
                v139 = v89;
                v140 = 1024;
                LODWORD(v141) = AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcSampleMaxSize;
                v90 = MEMORY[0x277D86220];
                v91 = "AGXGRC:AGXGRC:%s:%d:%s: *** Source sample size is unexpectedly larger than the maximum! (%llu > %u)\n";
                v92 = 44;
LABEL_138:
                _os_log_impl(&dword_23C542000, v90, OS_LOG_TYPE_INFO, v91, v132, v92);
LABEL_139:
                result = 0;
              }

LABEL_140:
              v26 = a5;
              v28 = v116;
              goto LABEL_121;
            }

            v108 = (v35 - v29 + v27) % v35;
            if (v29 >= v27)
            {
              v41 = 0;
              memcpy(0, &a3[v29], v39);
              memcpy(v39, a3, v108 - v39);
            }

            else
            {
              v41 = &a3[v29];
            }

            v123 = *(*(v17 + 793) + 8 * a2);
            v42 = (*(*(v17 + 787) + 16))(v41, &v127, &v123);
            v43 = v127 & 0xF;
            if (v43 != 5)
            {
              v45 = v42;
              v99 = v31;
              v100 = v41;
              v46 = v108 - v42;
              v47 = (*(v17 + 1579) + (v46 - v113) * AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcPayloadScale);
              v98 = ((a8 - a9 + 8 + v116) / a8 * a8 - (8 - a9 + v116));
              result = v98 < v47;
              if (v98 < v47)
              {
                goto LABEL_140;
              }

              if (v124[2] < v47)
              {
                fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Potential intermediate buffer overflow! (bufferSize=%llu processedPayloadSizeMax=%llu)\n", "AGXGPURawCounterImpl.mm", 1579, "postProcessData", v124[2], v47);
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *v132 = 136316162;
                  v133 = "AGXGPURawCounterImpl.mm";
                  v134 = 1024;
                  v135 = 1579;
                  v136 = 2080;
                  v137 = "postProcessData";
                  v138 = 2048;
                  v139 = v124[2];
                  v140 = 2048;
                  v141 = v47;
                  _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Potential intermediate buffer overflow! (bufferSize=%llu processedPayloadSizeMax=%llu)\n", v132, 0x30u);
                }

                result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
                if (result)
                {
                  *v132 = 136316162;
                  v133 = "AGXGPURawCounterImpl.mm";
                  v134 = 1024;
                  v135 = 1579;
                  v136 = 2080;
                  v137 = "postProcessData";
                  v138 = 2048;
                  v139 = v124[2];
                  v140 = 2048;
                  v141 = v47;
                  v90 = MEMORY[0x277D86220];
                  v91 = "AGXGRC:AGXGRC:%s:%d:%s: *** Potential intermediate buffer overflow! (bufferSize=%llu processedPayloadSizeMax=%llu)\n";
                  v92 = 48;
                  goto LABEL_138;
                }

                goto LABEL_140;
              }

              v48 = *(v17 + 792);
              if (v128 < *(v48 + 8 * a2))
              {
                goto LABEL_139;
              }

              v124[3] = 0;
              if (v46 < *(v17 + 1578))
              {
                goto LABEL_139;
              }

              v49 = v45;
              if ((v114 & 2) != 0)
              {
                result = AGXGPURawCounterImpl::SourceImpl::generateKickTimestampSamples(v17, a2, *(v48 + 8 * a2), v128, v100, v45, v142, &v125);
                if (!result)
                {
                  goto LABEL_140;
                }

                v49 += v113;
                if (v124[1])
                {
                  v50 = (v124[1] + v124[3]);
                }

                else
                {
                  v50 = 0;
                }

                v51 = AGXGPURawCounterImpl::SourceImpl::emitKickTimestampSamples(v17, a2, v142, v125, v128, v50);
                StackAllocator::reserve(v124, v51);
                v43 = v127 & 0xF;
              }

              if (v43 != 5)
              {
                v52 = (v100 + v49);
                v132[0] = 0;
                SampleType = generateSampleType(&v127, v132);
                if (!v102 && SampleType >= 6u)
                {
                  goto LABEL_94;
                }

                v54 = SampleType;
                *StackAllocator::reserve(v124, 8u) = 0x52544E4357525047;
                v55 = (v110 & 1) != 0 ? StackAllocator::reserve(v124, 0x20u) : v126;
                v56 = *(v17 + 7);
                *v55 = v129;
                v55[4] = 4;
                *(v55 + 3) = -1519;
                v57 = v127;
                *(v55 + 1) = v128;
                *(v55 + 4) = v130;
                *(v55 + 5) = v57 >> 16;
                v55[24] = v56;
                v55[25] = a2;
                v55[26] = v131 & 0x3F;
                v55[5] = v54;
                v58 = *(v17 + 1556);
                v59 = (*(v17 + 1554) - v58);
                v55[27] = *(v17 + 6216) - v58;
                copyMetaCounterList(v124, v55, v109, *(v17 + 1555));
                if (v118 == v106)
                {
LABEL_94:
                  v64 = (v100 + v49);
LABEL_95:
                  if (v117)
                  {
                    goto LABEL_96;
                  }
                }

                else
                {
                  v60 = StackAllocator::reserve(v124, __n);
                  v61 = v60;
                  if ((*(v17 + 36) & 1) == 0)
                  {
                    bzero(v60, __n);
                    v62 = 0;
                    v97 = v132[0];
                    v63 = v17;
                    v64 = v52;
                    while (1)
                    {
                      v65 = (v109 + 24 * (v62 + *(v63 + 1555)));
                      v103 = v65[4] >> 3;
                      v104 = v64;
                      memcpy(v61, v64, v103);
                      v63 = v17;
                      if (v65[2] < *(*(v17 + 1) + 676))
                      {
                        break;
                      }

                      if (!v111 || (*(*v65 + 48) & 1) == 0)
                      {
                        if ((v112 & 4) == 0)
                        {
                          goto LABEL_78;
                        }

                        v69 = *v61;
                        *&buf[8 * v62] = *v61;
                        v68 = v69 - v105[v62];
LABEL_77:
                        *v61 = v68;
                        goto LABEL_78;
                      }

                      if ((v112 & 4) != 0)
                      {
                        if ((v97 & 1) == 0)
                        {
                          v71 = *v61;
                          *&buf[8 * v62] = *v61;
                          *v61 = v71 - v105[v62];
                          v63 = v17;
                          goto LABEL_78;
                        }

                        v70 = v105[v62];
                      }

                      else
                      {
                        if ((v97 & 1) == 0)
                        {
                          *v61 += v105[v62];
                          *&buf[8 * v62] = 0;
                          v63 = v17;
                          goto LABEL_78;
                        }

                        v70 = *v61;
                      }

                      *&buf[8 * v62] = v70;
                      *v61 = 0;
                      v63 = v17;
LABEL_78:
                      v64 = &v104[v103 & 0x1FFFFFFE];
                      ++v61;
                      if (v107 == ++v62)
                      {
                        goto LABEL_95;
                      }
                    }

                    if ((*(*v65 + 48) & 8) == 0)
                    {
                      goto LABEL_78;
                    }

                    v66 = 2 << (v65[3] - 1);
                    v67 = *v61;
                    *&buf[8 * v62] = *v61;
                    v68 = (v67 - v105[v62]) & (v66 - 1);
                    goto LABEL_77;
                  }

                  memcpy(v60, v52, __n);
                  v64 = &v52[__n];
                  if (v117)
                  {
LABEL_96:
                    v72 = v64;
                    if ((v64 + 32) <= v100 + v108)
                    {
                      *StackAllocator::reserve(v124, 8u) = 0x52544E4357525047;
                      v73 = (v110 & 1) != 0 ? StackAllocator::reserve(v124, 0x20u) : v126;
                      v74 = v100 + v108 - v72;
                      v75 = *(v17 + 7);
                      *v73 = v129;
                      v73[4] = 4;
                      *(v73 + 3) = -1519;
                      v76 = v127;
                      *(v73 + 1) = v128;
                      *(v73 + 4) = v130;
                      *(v73 + 5) = v76 >> 16;
                      v73[24] = v75;
                      v73[25] = a2;
                      v73[26] = v131 & 0x3F;
                      v73[5] = 7;
                      v73[27] = (v74 >> 3) & 0xFC;
                      copyMetaCounterList(v124, v73, v109, *(v17 + 1555));
                      v77 = StackAllocator::reserve(v124, v74 & 0xFFFFFFE0);
                      if ((v74 & 0xFFFFFFE0) != 0 && v77 != 0)
                      {
                        memcpy(v77, v72, v74 & 0xFFFFFFE0);
                      }
                    }
                  }
                }
              }

              v79 = v124[3];
              if (v124[3] > v98)
              {
                fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Insufficient free space in the final destination buffer!\n", "AGXGPURawCounterImpl.mm", 1836, "postProcessData");
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *v132 = 136315650;
                  v133 = "AGXGPURawCounterImpl.mm";
                  v134 = 1024;
                  v135 = 1836;
                  v136 = 2080;
                  v137 = "postProcessData";
                  _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Insufficient free space in the final destination buffer!\n", v132, 0x1Cu);
                }

                result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
                if (result)
                {
                  *v132 = 136315650;
                  v133 = "AGXGPURawCounterImpl.mm";
                  v134 = 1024;
                  v135 = 1836;
                  v136 = 2080;
                  v137 = "postProcessData";
                  v90 = MEMORY[0x277D86220];
                  v91 = "AGXGRC:AGXGRC:%s:%d:%s: *** Insufficient free space in the final destination buffer!\n";
                  v92 = 28;
                  goto LABEL_138;
                }

                goto LABEL_140;
              }

              if (v124[3] + v116 <= a8)
              {
                v82 = v124[1];
                v83 = &a7[v116];
                v81 = v124[3];
              }

              else
              {
                v80 = v124[1];
                memcpy(&a7[v116], v124[1], a8 - v116);
                v81 = &v79[-(a8 - v116)];
                v82 = &v80[a8 - v116];
                v83 = a7;
              }

              memcpy(v83, v82, v81);
              v30 = v17;
              v84 = a2;
              *(*(v17 + 792) + 8 * a2) = v128;
              if ((v127 & 0xF) != 5)
              {
                *(*(v17 + 793) + 8 * a2) = v123;
                if (v118 != v106)
                {
                  memcpy(v105, buf, v99);
                  v30 = v17;
                  v84 = a2;
                }
              }

              v85 = v125;
              if (v125)
              {
                v86 = v142;
                do
                {
                  v87 = *(v30 + 795) + 24 * (v86[17] + *(*(v30 + 787) + 40) * v84);
                  *v87 = *v86;
                  *(v87 + 16) = *(v86 + 2);
                  v86 += 24;
                  --v85;
                }

                while (v85);
              }

              v28 = (v124[3] + v116) % a8;
              v31 = v99;
              goto LABEL_118;
            }

            *(*(v17 + 792) + 8 * a2) = v128;
            *(*(v17 + 793) + 8 * a2) = v123;
            if (v118 != v106)
            {
              bzero(v105, v31);
            }

            if ((v114 & 2) != 0)
            {
              v44 = *(*(v17 + 787) + 40);
              bzero((*(v17 + 795) + 24 * v44 * a2), 24 * v44);
            }

            v30 = v17;
            v28 = v116;
LABEL_118:
            result = 1;
            v32 = a3;
            if (v27 == a6)
            {
              v29 = a6;
              goto LABEL_120;
            }
          }

          result = 1;
          goto LABEL_120;
        }
      }
    }

LABEL_23:
    result = 0;
    goto LABEL_24;
  }

  fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** parseSampleHeader() is not set!\n", "AGXGPURawCounterImpl.mm", 1345, "postProcessData");
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v144 = "AGXGPURawCounterImpl.mm";
    v145 = 1024;
    v146 = 1345;
    v147 = 2080;
    v148 = "postProcessData";
    _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** parseSampleHeader() is not set!\n", buf, 0x1Cu);
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 136315650;
    v144 = "AGXGPURawCounterImpl.mm";
    v145 = 1024;
    v146 = 1345;
    v147 = 2080;
    v148 = "postProcessData";
    _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** parseSampleHeader() is not set!\n", buf, 0x1Cu);
    goto LABEL_23;
  }

LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C546B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, void *a43)
{
  if (a42 == 1)
  {
    free(a43);
    if (__p)
    {
      goto LABEL_3;
    }
  }

  else if (__p)
  {
LABEL_3:
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void StackAllocator::init(StackAllocator *this, uint64_t a2)
{
  *this = 1;
  *(this + 1) = 8;
  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 2) = v3;
  *(this + 3) = 0;
  malloc_type_posix_memalign(this + 1, 8uLL, v3, 0x61E504A1uLL);
  v4 = *(this + 1);
  v5 = *(this + 2);

  bzero(v4, v5);
}

BOOL AGXGPURawCounterImpl::SourceImpl::generateKickTimestampSamples(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int *a8)
{
  v112 = *MEMORY[0x277D85DE8];
  v15 = a1[795];
  v16 = a1[787];
  v17 = *(v16 + 40);
  bzero(v111, 0x280uLL);
  if (a3)
  {
    v18 = a3 - *(a1[1] + 704);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 0;
    v20 = *(v16 + 56);
    if (!v20)
    {
LABEL_34:
      *a8 = 0;
      goto LABEL_97;
    }

    goto LABEL_7;
  }

  v18 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = a4 - *(a1[1] + 704);
  v20 = *(v16 + 56);
  if (!v20)
  {
    goto LABEL_34;
  }

LABEL_7:
  v21 = 0;
  v22 = 0;
  v23 = (v15 + 24 * (v17 * a2));
  v24 = (*(v16 + 48) + 2);
  do
  {
    v27 = &v111[80 * (v21 >> 1)];
    v28 = *(v27 + 18);
    if (v28 >= 2)
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Unexpected number of kickslot data to be added to the queue!\n", "AGXGPURawCounterImpl.mm", 2320, "generateKickTimestampSamples");
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 136315650;
        *(buf + 4) = "AGXGPURawCounterImpl.mm";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 2320;
        WORD1(buf[2]) = 2080;
        *(&buf[2] + 4) = "generateKickTimestampSamples";
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Unexpected number of kickslot data to be added to the queue!\n", buf, 0x1Cu);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (result)
      {
        LODWORD(buf[0]) = 136315650;
        *(buf + 4) = "AGXGPURawCounterImpl.mm";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 2320;
        WORD1(buf[2]) = 2080;
        *(&buf[2] + 4) = "generateKickTimestampSamples";
        _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Unexpected number of kickslot data to be added to the queue!\n", buf, 0x1Cu);
        result = 0;
      }

      goto LABEL_98;
    }

    v29 = *(a5 + 8 * *(v24 - 2));
    if (v29)
    {
      v30 = *(a5 + a6 + 8 * v21);
      v31 = v18 > v30 || v30 > v19;
      if (!v31 && *(v23 + 3 * (v21 >> 1)) < v30)
      {
        v32 = &v27[24 * v28];
        *v32 = v30;
        *(v32 + 1) = v29;
        v32[16] = *(v24 - 1);
        v32[17] = v21 >> 1;
        v32[18] = *v24;
        *(v27 + 18) = v28 + 1;
        if (v28 != 1)
        {
          goto LABEL_9;
        }

        v34 = v27 + 24;
        v33 = *(v27 + 3);
        if (v33 < *v27)
        {
          goto LABEL_9;
        }

        if (v33 > *v27)
        {
          goto LABEL_8;
        }

        if (v27[40] != v27[16])
        {
          goto LABEL_9;
        }

        v35 = v27[42];
        v22 = 1;
        if ((v35 - 8) <= 5 && (v35 & 1) == 0)
        {
          v36 = v27[18];
          if (v36 - 8) <= 5 && (v36)
          {
LABEL_8:
            v25 = *(v27 + 2);
            v26 = *v27;
            *v27 = *v34;
            *(v27 + 2) = *(v27 + 5);
            *v34 = v26;
            *(v27 + 5) = v25;
LABEL_9:
            v22 = 1;
          }
        }
      }
    }

    ++v21;
    v24 += 3;
  }

  while (v20 != v21);
  if ((v22 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (!v17)
  {
    v59 = 0;
    goto LABEL_95;
  }

  v38 = 0;
  while (2)
  {
    v42 = &v111[v38];
    v43 = *&v111[v38 + 72];
    if (v43)
    {
      v44 = v43 - 1;
      if (!*v23)
      {
        v52 = v111[24 * v44 + 18 + v38];
        v49 = v52 - 8;
        v51 = v52 & 1;
        goto LABEL_45;
      }

      v45 = *(v23 + 18);
      v46 = v45 - 8;
      v47 = v45 & 1;
      v48 = v111[24 * v44 + 18 + v38];
      v49 = v48 - 8;
      if (v46 <= 5 && v47 == 0)
      {
        v54 = v48 & 1;
        if (v49 <= 5 && v54 == 0)
        {
          v39 = &v111[24 * v43 + v38];
          *(v42 + 18) = v43 + 1;
          v40 = *v23;
          v41 = *(v23 + 2);
          *(v39 + 2) = v41;
          *v39 = v40;
          v39[18] = BYTE2(v41) + 1;
          *v39 = *&v111[24 * v44 + v38] - 1;
        }

        else
        {
          v56 = *(v23 + 1);
          v57 = &v111[24 * v44 + v38];
          if (v56 != *(v57 + 1))
          {
            *(v57 + 1) = v56;
          }
        }
      }

      else
      {
        v51 = v48 & 1;
LABEL_45:
        if (v49 <= 5 && v51 != 0)
        {
          *(v42 + 18) = v44;
        }
      }
    }

    v38 += 80;
    v23 = (v23 + 24);
    if (80 * v17 != v38)
    {
      continue;
    }

    break;
  }

  v58 = 0;
  v59 = 0;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  memset(buf, 0, sizeof(buf));
  v60 = vdupq_n_s64(0x30uLL);
  v61 = vdupq_n_s64(4uLL);
  v62 = v111;
  while (2)
  {
    v63 = &v111[80 * v58];
    v64 = *(v63 + 18);
    if (v64)
    {
      if (v64 < 0xA || v59 > -v64)
      {
        v66 = 0;
        goto LABEL_67;
      }

      v66 = v64 & 0xFFFFFFFC;
      v67 = vdupq_n_s64(v63);
      v68 = v59;
      v69 = v66;
      v70 = xmmword_23C553BE0;
      do
      {
        v71.i64[0] = 24 * v70.i64[0];
        v71.i64[1] = 24 * v70.i64[1];
        v72 = vaddq_s64(v67, v71);
        v73 = &buf[v68];
        *v73 = v72;
        v73[1] = vaddq_s64(v72, v60);
        v70 = vaddq_s64(v70, v61);
        v68 += 4;
        v69 -= 4;
      }

      while (v69);
      v59 += v66;
      if (v66 != v64)
      {
LABEL_67:
        v74 = v64 - v66;
        v75 = &v62[24 * v66];
        do
        {
          buf[v59++] = v75;
          v75 += 24;
          --v74;
        }

        while (v74);
      }
    }

    ++v58;
    v62 += 80;
    if (v58 != v17)
    {
      continue;
    }

    break;
  }

  if (!v59)
  {
LABEL_95:
    v80 = a8;
    goto LABEL_96;
  }

  v76 = 0;
  v77 = v59;
  v78 = v59 - 1;
  v79 = &buf[1];
  v80 = a8;
  do
  {
    v81 = v76 + 1;
    if (v76 + 1 < v59)
    {
      v82 = v79;
      v83 = v78;
      do
      {
        v84 = buf[v76];
        v85 = *v82;
        v86 = **v82;
        if (*v84 >= v86)
        {
          if (*v84 > v86)
          {
            goto LABEL_75;
          }

          if (*(v84 + 16) == *(v85 + 16))
          {
            v87 = *(v84 + 18);
            v88 = v87 - 8;
            v89 = v87 & 1;
            if (v88 <= 5 && v89 == 0)
            {
              v91 = *(v85 + 18);
              v92 = v91 - 8;
              v93 = v91 & 1;
              if (v92 <= 5 && v93 != 0)
              {
LABEL_75:
                buf[v76] = v85;
                *v82 = v84;
              }
            }
          }
        }

        ++v82;
        --v83;
      }

      while (v83);
    }

    --v78;
    ++v79;
    ++v76;
  }

  while (v81 != v59);
  v95 = buf;
  do
  {
    v96 = *v95++;
    v97 = *(v96 + 16);
    *a7 = *v96;
    *(a7 + 16) = v97;
    a7 += 24;
    --v77;
  }

  while (v77);
LABEL_96:
  *v80 = v59;
LABEL_97:
  result = 1;
LABEL_98:
  v98 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::emitKickTimestampSamples(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unint64_t a5, unint64_t *a6)
{
  v52 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    result = 0;
    goto LABEL_38;
  }

  v9 = 0;
  v30 = a2;
  v31 = a4;
  v29 = a1 + 72;
  v10 = MEMORY[0x277D86220];
  v28 = a6;
  v11 = a6;
  do
  {
    v12 = a3 + 24 * v9;
    v13 = *(v12 + 8);
    if (!v13)
    {
      goto LABEL_3;
    }

    v14 = *(*(a1 + 8) + 704) + *v12;
    if (v14 <= a5)
    {
      *v11++ = 0x52544E4357525047;
      v18 = *(a1 + 6220);
      if (!v18)
      {
        goto LABEL_3;
      }

      v19 = 0;
      v20 = v29;
      while (1)
      {
        v22 = *(*v20 + 32);
        if (v22 > 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 == 2)
          {
            v21 = *(v12 + 18);
          }

          else
          {
            v21 = *(v12 + 12);
          }

LABEL_13:
          *v11 = v21;
          goto LABEL_14;
        }

        if (v22)
        {
          if (v22 != 1)
          {
            goto LABEL_31;
          }

          *v11 = v14;
        }

        else
        {
          *v11 = 0;
        }

LABEL_14:
        ++v19;
        ++v11;
        v20 += 24;
        if (v19 >= v18)
        {
          goto LABEL_3;
        }
      }

      if (v22 > 5)
      {
        if (v22 == 6)
        {
          v21 = *(a1 + 28);
        }

        else
        {
          if (v22 != 7)
          {
LABEL_31:
            fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Unknown meta counter type!\n", "AGXGPURawCounterImpl.mm", 2605, "emitKickTimestampSamples");
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v33 = "AGXGPURawCounterImpl.mm";
              v34 = 1024;
              v35 = 2605;
              v36 = 2080;
              v37 = "emitKickTimestampSamples";
              _os_log_error_impl(&dword_23C542000, v10, OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Unknown meta counter type!\n", buf, 0x1Cu);
            }

            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v33 = "AGXGPURawCounterImpl.mm";
              v34 = 1024;
              v35 = 2605;
              v36 = 2080;
              v37 = "emitKickTimestampSamples";
              _os_log_impl(&dword_23C542000, v10, OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Unknown meta counter type!\n", buf, 0x1Cu);
            }

            *v11 = 0;
            v18 = *(a1 + 6220);
            goto LABEL_14;
          }

          v21 = v30;
        }
      }

      else if (v22 == 4)
      {
        v21 = *(v12 + 8);
      }

      else
      {
        v21 = *(v12 + 16);
      }

      goto LABEL_13;
    }

    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** kick_timestamp > rde_sample_timestamp, [%u] timestampMax=%16llx timestamp=%16llx type=%2u encoderId=%8x traceId=%8x slotIdx=%2u\n\n", "AGXGPURawCounterImpl.mm", 2562, "emitKickTimestampSamples", v9, a5, v14, *(v12 + 18), HIDWORD(v13), *(v12 + 8), *(v12 + 16));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v23 = *(v12 + 18);
      v24 = *(v12 + 8);
      v25 = *(v12 + 16);
      *buf = 136317442;
      v33 = "AGXGPURawCounterImpl.mm";
      v34 = 1024;
      v35 = 2562;
      v36 = 2080;
      v37 = "emitKickTimestampSamples";
      v38 = 1024;
      v39 = v9;
      v40 = 2048;
      v41 = a5;
      v42 = 2048;
      v43 = v14;
      v44 = 1024;
      v45 = v23;
      v46 = 1024;
      v47 = HIDWORD(v24);
      v48 = 1024;
      v49 = v24;
      v50 = 1024;
      v51 = v25;
      _os_log_error_impl(&dword_23C542000, v10, OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** kick_timestamp > rde_sample_timestamp, [%u] timestampMax=%16llx timestamp=%16llx type=%2u encoderId=%8x traceId=%8x slotIdx=%2u\n\n", buf, 0x4Eu);
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = *(v12 + 18);
      v16 = *(v12 + 8);
      v17 = *(v12 + 16);
      *buf = 136317442;
      v33 = "AGXGPURawCounterImpl.mm";
      v34 = 1024;
      v35 = 2562;
      v36 = 2080;
      v37 = "emitKickTimestampSamples";
      v38 = 1024;
      v39 = v9;
      v40 = 2048;
      v41 = a5;
      v42 = 2048;
      v43 = v14;
      v44 = 1024;
      v45 = v15;
      v46 = 1024;
      v47 = HIDWORD(v16);
      v48 = 1024;
      v49 = v16;
      v50 = 1024;
      v51 = v17;
      _os_log_impl(&dword_23C542000, v10, OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** kick_timestamp > rde_sample_timestamp, [%u] timestampMax=%16llx timestamp=%16llx type=%2u encoderId=%8x traceId=%8x slotIdx=%2u\n\n", buf, 0x4Eu);
    }

LABEL_3:
    ++v9;
  }

  while (v9 != v31);
  result = (v11 - v28);
LABEL_38:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t StackAllocator::reserve(StackAllocator *this, unsigned int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3 + a2 <= v4)
  {
    result = *(this + 1) + v3;
    *(this + 3) = ((a2 + *(this + 1) - 1) & -*(this + 1)) + v3;
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Error, reserving more than available memory! (%u > %llu)\n", "AGXGPURawCounterImpl.mm", 234, "reserve", a2, v4);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = *(this + 2);
      *buf = 136316162;
      v11 = "AGXGPURawCounterImpl.mm";
      v12 = 1024;
      v13 = 234;
      v14 = 2080;
      v15 = "reserve";
      v16 = 1024;
      v17 = a2;
      v18 = 2048;
      v19 = v9;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, reserving more than available memory! (%u > %llu)\n", buf, 0x2Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = *(this + 2);
      *buf = 136316162;
      v11 = "AGXGPURawCounterImpl.mm";
      v12 = 1024;
      v13 = 234;
      v14 = 2080;
      v15 = "reserve";
      v16 = 1024;
      v17 = a2;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, reserving more than available memory! (%u > %llu)\n", buf, 0x2Cu);
    }

    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t generateSampleType(uint64_t *a1, BOOL *a2)
{
  v2 = *a1;
  if ((~*a1 & 0xC000) != 0)
  {
    if ((v2 & 0xF) - 1 > 1)
    {
      return 14;
    }

    else
    {
      *a2 = (*a1 & 0xF) == 1;
      return (((*a1 >> 13) & 6) + (*a1 & 0xF) - 1);
    }
  }

  else if ((v2 & 0xF) != 0)
  {
    return 14;
  }

  else
  {
    return 6;
  }
}

void copyMetaCounterList(StackAllocator *a1, unsigned int *a2, uint64_t a3, unsigned int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = StackAllocator::reserve(a1, 8 * a4);
    v8 = MEMORY[0x277D85DF8];
    v9 = a4;
    v10 = MEMORY[0x277D86220];
    do
    {
      v12 = *(*a3 + 32);
      if (v12 > 3)
      {
        if (v12 > 5)
        {
          if (v12 == 6)
          {
            v11 = *(a2 + 24);
          }

          else
          {
            if (v12 != 7)
            {
LABEL_21:
              fprintf(*v8, "AGXGRC:%s:%d:%s: *** Unknown meta counter type!\n", "AGXGPURawCounterImpl.mm", 1262, "copyMetaCounterList");
              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v15 = "AGXGPURawCounterImpl.mm";
                v16 = 1024;
                v17 = 1262;
                v18 = 2080;
                v19 = "copyMetaCounterList";
                _os_log_error_impl(&dword_23C542000, v10, OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Unknown meta counter type!\n", buf, 0x1Cu);
              }

              if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v15 = "AGXGPURawCounterImpl.mm";
                v16 = 1024;
                v17 = 1262;
                v18 = 2080;
                v19 = "copyMetaCounterList";
                _os_log_impl(&dword_23C542000, v10, OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Unknown meta counter type!\n", buf, 0x1Cu);
              }

              v11 = 0;
              goto LABEL_4;
            }

            v11 = *(a2 + 25);
          }
        }

        else if (v12 == 4)
        {
          v11 = a2[5];
        }

        else
        {
          v11 = *(a2 + 26);
        }
      }

      else if (v12 > 1)
      {
        if (v12 == 2)
        {
          v11 = *(a2 + 5);
        }

        else
        {
          v11 = a2[4];
        }
      }

      else if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
      }

      else
      {
        v11 = *a2;
      }

LABEL_4:
      *v7++ = v11;
      a3 += 24;
      --v9;
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t AGXGPURawCounterImpl::SourceImpl::postProcessData(AGXGPURawCounterImpl::SourceImpl *this, unsigned int a2, const unsigned __int8 *a3, uint64_t a4, unint64_t *a5, unsigned __int8 *a6, uint64_t a7, unint64_t *a8, BOOL a9)
{
  v9 = 0;
  if (!a3 || !a5 || !a6 || !a7 || !a8)
  {
    return v9;
  }

  if (a4)
  {
    v9 = (*(*this + 200))(this);
    *a5 = 0;
    *a8 = 0;
    return v9;
  }

  *a5 = 0;
  *a8 = 0;
  return 1;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::ringBuffer(AGXGPURawCounterImpl::SourceImpl *this, unsigned int a2)
{
  *&v23[5] = *MEMORY[0x277D85DE8];
  if ((*(*this + 176))(this) <= a2)
  {
    v6 = *MEMORY[0x277D85DF8];
    v7 = (*(*this + 176))(this);
    fprintf(v6, "AGXGRC:%s:%d:%s: *** Invalid ring buffer index (%u >= %u)\n", "AGXGPURawCounterImpl.mm", 1156, "ringBuffer", a2, v7);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = (*(*this + 176))(this);
      *buf = 136316162;
      v17 = "AGXGPURawCounterImpl.mm";
      v18 = 1024;
      v19 = 1156;
      v20 = 2080;
      v21 = "ringBuffer";
      v22 = 1024;
      *v23 = a2;
      v23[2] = 1024;
      *&v23[3] = v14;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Invalid ring buffer index (%u >= %u)\n", buf, 0x28u);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v8 = (*(*this + 176))(this);
    *buf = 136316162;
    v17 = "AGXGPURawCounterImpl.mm";
    v18 = 1024;
    v19 = 1156;
    v20 = 2080;
    v21 = "ringBuffer";
    v22 = 1024;
    *v23 = a2;
    v23[2] = 1024;
    *&v23[3] = v8;
    v9 = MEMORY[0x277D86220];
    v10 = "AGXGRC:AGXGRC:%s:%d:%s: *** Invalid ring buffer index (%u >= %u)\n";
    v11 = 40;
    goto LABEL_12;
  }

  v4 = *(this + 785);
  if (!v4)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Ring buffers have not been allocated. Was sampling ever started on source %s?\n", "AGXGPURawCounterImpl.mm", 1162, "ringBuffer", *(this + 2));
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = *(this + 2);
      *buf = 136315906;
      v17 = "AGXGPURawCounterImpl.mm";
      v18 = 1024;
      v19 = 1162;
      v20 = 2080;
      v21 = "ringBuffer";
      v22 = 2080;
      *v23 = v15;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Ring buffers have not been allocated. Was sampling ever started on source %s?\n", buf, 0x26u);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v12 = *(this + 2);
    *buf = 136315906;
    v17 = "AGXGPURawCounterImpl.mm";
    v18 = 1024;
    v19 = 1162;
    v20 = 2080;
    v21 = "ringBuffer";
    v22 = 2080;
    *v23 = v12;
    v9 = MEMORY[0x277D86220];
    v10 = "AGXGRC:AGXGRC:%s:%d:%s: *** Ring buffers have not been allocated. Was sampling ever started on source %s?\n";
    v11 = 38;
LABEL_12:
    _os_log_impl(&dword_23C542000, v9, OS_LOG_TYPE_INFO, v10, buf, v11);
LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  result = *(v4 + 8 * a2);
LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::calcBufferSizeWithRingBufferSize(AGXGPURawCounterImpl::SourceImpl *this, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = 0x40000000;
    if (a2 < 0x40000000)
    {
      v2 = a2;
    }

    v3 = v2 * *(this + 1572);
    v4 = *(*this + 152);
    v5 = *MEMORY[0x277D85DE8];

    return v4();
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** calcBufferSizeWithRingBufferSize should never be called with zero buffer size!\n", "AGXGPURawCounterImpl.mm", 1135, "calcBufferSizeWithRingBufferSize");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "AGXGPURawCounterImpl.mm";
      v10 = 1024;
      v11 = 1135;
      v12 = 2080;
      v13 = "calcBufferSizeWithRingBufferSize";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** calcBufferSizeWithRingBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v9 = "AGXGPURawCounterImpl.mm";
      v10 = 1024;
      v11 = 1135;
      v12 = 2080;
      v13 = "calcBufferSizeWithRingBufferSize";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** calcBufferSizeWithRingBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    v7 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

unint64_t AGXGPURawCounterImpl::SourceImpl::alignBufferSize(AGXGPURawCounterImpl::SourceImpl *this, unint64_t a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(this + 1572);
    v4 = 0x800000000uLL / (v3 << 14) * (v3 << 14);
    if (v4 >= a2)
    {
      v4 = a2;
    }

    v5 = v4 / v3 + 0x3FFF;
    v6 = v5 & 0x1FFFFFC000;
    v7 = (v5 & 0x1FC0000000) == 0;
    v8 = 0x40000000;
    if (v7)
    {
      v8 = v6;
    }

    v9 = v4 >= v3;
    v10 = 0x4000;
    if (!v9)
    {
      v8 = 0x4000;
    }

    if (!a3)
    {
      v10 = 0;
    }

    result = v10 + v8 * v3;
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** alignBufferSize should never be called with zero buffer size!\n", "AGXGPURawCounterImpl.mm", 1104, "alignBufferSize");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "AGXGPURawCounterImpl.mm";
      v15 = 1024;
      v16 = 1104;
      v17 = 2080;
      v18 = "alignBufferSize";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** alignBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v14 = "AGXGPURawCounterImpl.mm";
      v15 = 1024;
      v16 = 1104;
      v17 = 2080;
      v18 = "alignBufferSize";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** alignBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    result = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::setBufferSize(AGXGPURawCounterImpl::SourceImpl *this, uint64_t a2)
{
  if ((*(**(this + 1) + 96))(*(this + 1)))
  {
    (*(**(this + 1) + 88))(*(this + 1));
  }

  (*(*this + 40))(this, 0);
  if (*(this + 781))
  {
    (*(*this + 240))(this);
    free(*(this + 781));
    *(this + 781) = 0;
    *(this + 782) = 0;
  }

  if (a2)
  {
    memptr = 0;
    v4 = (*(*this + 152))(this, a2, 1);
    if (malloc_type_posix_memalign(&memptr, 0x4000uLL, v4, 0xB64A1CD1uLL))
    {
      return 0;
    }

    bzero(memptr, v4);
    *(this + 781) = memptr;
    *(this + 782) = v4;
  }

  return 1;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::setFlags(AGXGPURawCounterImpl::SourceImpl *this, int a2)
{
  (*(*this + 40))(this, 0);
  *(this + 1560) = (*(*this + 112))(this) & a2;
  return 1;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::availableFlags(AGXGPURawCounterImpl::SourceImpl *this)
{
  if (*(*(this + 787) + 56))
  {
    return 7;
  }

  else
  {
    return 1;
  }
}

uint64_t AGXGPURawCounterImpl::SourceImpl::setOptions(AGXGPURawCounterImpl::SourceImpl *this, NSDictionary *a2)
{
  v3 = a2;
  v4 = (*(*this + 112))(this);
  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"RingBufferSizeInKB"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedLongValue];
    v7 = v6 << 10;
    if ((v6 << 10) >= 0x800000000)
    {
      v7 = 0;
    }

    v8 = (*(*this + 160))(this, v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = [(NSDictionary *)v3 objectForKeyedSubscript:@"SourceBufferSizeInKB"];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
LABEL_12:
      v11 = [v10 unsignedLongValue] << 10;
      if (v11 >= v8)
      {
        v11 = v8;
      }

      if (v11 >= 0x800000000)
      {
        v8 = 0x800000000;
      }

      else
      {
        v8 = v11;
      }

      goto LABEL_18;
    }
  }

  v10 = [(NSDictionary *)v3 objectForKeyedSubscript:@"BufferSizeInKB"];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_12;
    }
  }

  if (v8 == -1)
  {
    goto LABEL_19;
  }

LABEL_18:
  if ((*(*this + 136))(this, v8))
  {
LABEL_19:
    if (v4)
    {
      v14 = [(NSDictionary *)v3 objectForKeyedSubscript:@"ShaderProfiler"];
      v15 = [v14 BOOLValue];

      v12 = v15 & 1;
      if ((v4 & 2) == 0)
      {
LABEL_21:
        if ((v4 & 4) == 0)
        {
LABEL_32:
          v13 = (*(*this + 120))(this, v12);
          goto LABEL_33;
        }

LABEL_29:
        v18 = [(NSDictionary *)v3 objectForKeyedSubscript:@"SWResetOnRead"];
        v19 = [v18 BOOLValue];

        if (v19)
        {
          v12 = v12 | 4;
        }

        else
        {
          v12 = v12;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v12 = 0;
      if ((v4 & 2) == 0)
      {
        goto LABEL_21;
      }
    }

    v16 = [(NSDictionary *)v3 objectForKeyedSubscript:@"KickTimestamp"];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      v12 = v12 | 2;
    }

    else
    {
      v12 = v12;
    }

    if ((v4 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v13 = 0;
LABEL_33:

  return v13;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::addTrigger(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if ((a2 - 1) < 2)
  {
    *(a1 + 6236) |= a2;
    v8 = [v5 objectForKeyedSubscript:@"Period"];
    *(a1 + 6232) = [v8 unsignedLongValue];

    v9 = 1;
  }

  else
  {
    if (a2 == 4)
    {
      v7 = *(a1 + 6236) | 4;
      goto LABEL_7;
    }

    if (a2 == 8)
    {
      v7 = *(a1 + 6236) | 8;
LABEL_7:
      *(a1 + 6236) = v7;
      v9 = 1;
      goto LABEL_13;
    }

    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Error, adding unknown trigger (0x%x)\n", "AGXGPURawCounterImpl.mm", 926, "addTrigger", a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v13 = "AGXGPURawCounterImpl.mm";
      v14 = 1024;
      v15 = 926;
      v16 = 2080;
      v17 = "addTrigger";
      v18 = 1024;
      v19 = a2;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, adding unknown trigger (0x%x)\n", buf, 0x22u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v13 = "AGXGPURawCounterImpl.mm";
      v14 = 1024;
      v15 = 926;
      v16 = 2080;
      v17 = "addTrigger";
      v18 = 1024;
      v19 = a2;
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, adding unknown trigger (0x%x)\n", buf, 0x22u);
    }

    v9 = 0;
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_23C548A9C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t AGXGPURawCounterImpl::SourceImpl::clearTriggers(AGXGPURawCounterImpl::SourceImpl *this)
{
  result = (*(*this + 40))(this, 0);
  *(this + 1559) = 0;
  return result;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::availableTriggers(AGXGPURawCounterImpl::SourceImpl *this)
{
  v1 = *(this + 9);
  v2 = 7;
  if ((v1 & 0x1E) != 0)
  {
    if (*(*(this + 1) + 92) <= 0xCu)
    {
      v2 = 7;
    }

    else
    {
      v2 = 15;
    }
  }

  if ((v1 & 0x18) != 0)
  {
    return v2 & 0xFFFFFFFD;
  }

  else
  {
    return v2;
  }
}

uint64_t AGXGPURawCounterImpl::SourceImpl::addCounter(AGXGPURawCounterImpl::SourceImpl *this, const char *a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v57 = *MEMORY[0x277D85DE8];
  (*(*this + 40))(this, 0);
  if (!a2)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** counterName cannot be NULL!\n", "AGXGPURawCounterImpl.mm", 652, "addCounter");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 652;
      *&buf[18] = 2080;
      *&buf[20] = "addCounter";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** counterName cannot be NULL!\n", buf, 0x1Cu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_83;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 652;
    *&buf[18] = 2080;
    *&buf[20] = "addCounter";
    v11 = MEMORY[0x277D86220];
    v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** counterName cannot be NULL!\n";
    v13 = buf;
    goto LABEL_13;
  }

  v56 = 0;
  v55 = 0u;
  memset(buf, 0, sizeof(buf));
  if (a4 != -1)
  {
    if (a5 == -1)
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Cannot add user defined counter (%s)! Both partition (0x%x) and select (0x%llx) must be specified!\n", "AGXGPURawCounterImpl.mm", 664, "addCounter", a2, a4, -1);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v44 = 136316418;
        v45 = "AGXGPURawCounterImpl.mm";
        v46 = 1024;
        v47 = 664;
        v48 = 2080;
        v49 = "addCounter";
        v50 = 2080;
        *v51 = a2;
        *&v51[8] = 1024;
        *v52 = a4;
        *&v52[4] = 2048;
        v53 = -1;
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Cannot add user defined counter (%s)! Both partition (0x%x) and select (0x%llx) must be specified!\n", v44, 0x36u);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (!result)
      {
        goto LABEL_83;
      }

      *v44 = 136316418;
      v45 = "AGXGPURawCounterImpl.mm";
      v46 = 1024;
      v47 = 664;
      v48 = 2080;
      v49 = "addCounter";
      v50 = 2080;
      *v51 = a2;
      *&v51[8] = 1024;
      *v52 = a4;
      *&v52[4] = 2048;
      v53 = -1;
      v11 = MEMORY[0x277D86220];
      v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** Cannot add user defined counter (%s)! Both partition (0x%x) and select (0x%llx) must be specified!\n";
      v13 = v44;
      v14 = 54;
      goto LABEL_81;
    }

    if (a4 == -2)
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Cannot add user defined counter (%s) using GPURawCounter internal partition!\n", "AGXGPURawCounterImpl.mm", 670, "addCounter", a2);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v44 = 136315906;
        v45 = "AGXGPURawCounterImpl.mm";
        v46 = 1024;
        v47 = 670;
        v48 = 2080;
        v49 = "addCounter";
        v50 = 2080;
        *v51 = a2;
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Cannot add user defined counter (%s) using GPURawCounter internal partition!\n", v44, 0x26u);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (!result)
      {
        goto LABEL_83;
      }

      *v44 = 136315906;
      v45 = "AGXGPURawCounterImpl.mm";
      v46 = 1024;
      v47 = 670;
      v48 = 2080;
      v49 = "addCounter";
      v50 = 2080;
      *v51 = a2;
      v11 = MEMORY[0x277D86220];
      v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** Cannot add user defined counter (%s) using GPURawCounter internal partition!\n";
LABEL_80:
      v13 = v44;
      v14 = 38;
      goto LABEL_81;
    }

    *buf = a2;
    *&buf[28] = a4;
    v15 = buf;
    *&v55 = a5;
LABEL_16:
    if (a4 == -1)
    {
      v16 = *(this + 1554);
      if (v16 == *(this + 1555))
      {
        if (v16 != 16)
        {
          v27 = v16 + 1;
          *(this + 1555) = v16 + 1;
          v28 = this + 24 * v16;
          *(v28 + 9) = v15;
          *(v28 + 20) = -1;
          *(v28 + 84) = vdup_n_s32(a3);
          *(this + 1554) = v27;
          goto LABEL_64;
        }

        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Insufficient space to add metadata counter (%s)!\n", "AGXGPURawCounterImpl.mm", 716, "addCounter", *v15);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v39 = *v15;
          *v44 = 136315906;
          v45 = "AGXGPURawCounterImpl.mm";
          v46 = 1024;
          v47 = 716;
          v48 = 2080;
          v49 = "addCounter";
          v50 = 2080;
          *v51 = v39;
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Insufficient space to add metadata counter (%s)!\n", v44, 0x26u);
        }

        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        if (!result)
        {
          goto LABEL_83;
        }

        v17 = *v15;
        *v44 = 136315906;
        v45 = "AGXGPURawCounterImpl.mm";
        v46 = 1024;
        v47 = 716;
        v48 = 2080;
        v49 = "addCounter";
        v50 = 2080;
        *v51 = v17;
        v11 = MEMORY[0x277D86220];
        v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** Insufficient space to add metadata counter (%s)!\n";
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Metadata (%s) counter must be added before any other counters!\n", "AGXGPURawCounterImpl.mm", 710, "addCounter", *v15);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v38 = *v15;
          *v44 = 136315906;
          v45 = "AGXGPURawCounterImpl.mm";
          v46 = 1024;
          v47 = 710;
          v48 = 2080;
          v49 = "addCounter";
          v50 = 2080;
          *v51 = v38;
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Metadata (%s) counter must be added before any other counters!\n", v44, 0x26u);
        }

        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        if (!result)
        {
          goto LABEL_83;
        }

        v25 = *v15;
        *v44 = 136315906;
        v45 = "AGXGPURawCounterImpl.mm";
        v46 = 1024;
        v47 = 710;
        v48 = 2080;
        v49 = "addCounter";
        v50 = 2080;
        *v51 = v25;
        v11 = MEMORY[0x277D86220];
        v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** Metadata (%s) counter must be added before any other counters!\n";
      }

      goto LABEL_80;
    }

    if (*(this + 1556))
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** HW counter (%s) must be added before any shader profiler counters!\n", "AGXGPURawCounterImpl.mm", 801, "addCounter", *v15);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v37 = *v15;
        *v44 = 136315906;
        v45 = "AGXGPURawCounterImpl.mm";
        v46 = 1024;
        v47 = 801;
        v48 = 2080;
        v49 = "addCounter";
        v50 = 2080;
        *v51 = v37;
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** HW counter (%s) must be added before any shader profiler counters!\n", v44, 0x26u);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (!result)
      {
        goto LABEL_83;
      }

      v24 = *v15;
      *v44 = 136315906;
      v45 = "AGXGPURawCounterImpl.mm";
      v46 = 1024;
      v47 = 801;
      v48 = 2080;
      v49 = "addCounter";
      v50 = 2080;
      *v51 = v24;
      v11 = MEMORY[0x277D86220];
      v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** HW counter (%s) must be added before any shader profiler counters!\n";
      goto LABEL_80;
    }

    if (*(this + 1554) >= 0x100u)
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Insufficient space to add HW counter (%s)!\n", "AGXGPURawCounterImpl.mm", 807, "addCounter", *v15);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v40 = *v15;
        *v44 = 136315906;
        v45 = "AGXGPURawCounterImpl.mm";
        v46 = 1024;
        v47 = 807;
        v48 = 2080;
        v49 = "addCounter";
        v50 = 2080;
        *v51 = v40;
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Insufficient space to add HW counter (%s)!\n", v44, 0x26u);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (!result)
      {
        goto LABEL_83;
      }

      v26 = *v15;
      *v44 = 136315906;
      v45 = "AGXGPURawCounterImpl.mm";
      v46 = 1024;
      v47 = 807;
      v48 = 2080;
      v49 = "addCounter";
      v50 = 2080;
      *v51 = v26;
      v11 = MEMORY[0x277D86220];
      v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** Insufficient space to add HW counter (%s)!\n";
      goto LABEL_80;
    }

    if (a4)
    {
      if ((a3 & 0xF) != 0 || a3 - 65 <= 0xFFFFFFBF)
      {
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** counterWidth must be 16, 32, 48, or 64!\n", "AGXGPURawCounterImpl.mm", 819, "addCounter");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v44 = 136315650;
          v45 = "AGXGPURawCounterImpl.mm";
          v46 = 1024;
          v47 = 819;
          v48 = 2080;
          v49 = "addCounter";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** counterWidth must be 16, 32, 48, or 64!\n", v44, 0x1Cu);
        }

        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        if (!result)
        {
          goto LABEL_83;
        }

        *v44 = 136315650;
        v45 = "AGXGPURawCounterImpl.mm";
        v46 = 1024;
        v47 = 819;
        v48 = 2080;
        v49 = "addCounter";
        v11 = MEMORY[0x277D86220];
        v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** counterWidth must be 16, 32, 48, or 64!\n";
        v13 = v44;
LABEL_13:
        v14 = 28;
LABEL_81:
        _os_log_impl(&dword_23C542000, v11, OS_LOG_TYPE_INFO, v12, v13, v14);
        goto LABEL_82;
      }
    }

    else
    {
      a3 = 64;
    }

    if (a3 < 0x21 || (v15[6] & 0x10) == 0)
    {
      if (a4 < *(*(this + 1) + 676) || a3 == 64)
      {
        v33 = a3;
      }

      else
      {
        v33 = a3 + 16;
      }

      if (!perfCtrSamplerAddSourceCounter(*(this + 7), v15, a3, v33))
      {
        if (v15 == buf)
        {
          v34 = 0;
        }

        else
        {
          v34 = v15;
        }

        v35 = *(this + 1554);
        v36 = this + 24 * v35;
        *(v36 + 9) = v34;
        *(v36 + 20) = a4;
        *(v36 + 21) = a3;
        *(v36 + 22) = v33;
        *(this + 1554) = v35 + 1;
LABEL_64:
        result = 1;
        goto LABEL_83;
      }

LABEL_82:
      result = 0;
      goto LABEL_83;
    }

    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** counterWidth must be <= 32 as %s has only 32 valid bits\n", "AGXGPURawCounterImpl.mm", 825, "addCounter", a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v44 = 136315906;
      v45 = "AGXGPURawCounterImpl.mm";
      v46 = 1024;
      v47 = 825;
      v48 = 2080;
      v49 = "addCounter";
      v50 = 2080;
      *v51 = a2;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** counterWidth must be <= 32 as %s has only 32 valid bits\n", v44, 0x26u);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_83;
    }

    *v44 = 136315906;
    v45 = "AGXGPURawCounterImpl.mm";
    v46 = 1024;
    v47 = 825;
    v48 = 2080;
    v49 = "addCounter";
    v50 = 2080;
    *v51 = a2;
    v11 = MEMORY[0x277D86220];
    v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** counterWidth must be <= 32 as %s has only 32 valid bits\n";
    goto LABEL_80;
  }

  result = bsearch_b(a2, *(this + 7), *(this + 12), 0x18uLL, &__block_literal_global);
  if (!result)
  {
    goto LABEL_83;
  }

  v15 = (*(*(this + 1) + 128) + 56 * *(*(this + 5) - 0x5555555555555555 * ((result - *(this + 7)) >> 1)));
  a4 = *(v15 + 7);
  if (a4 != -2)
  {
    goto LABEL_16;
  }

  v43 = *(this + 1554);
  v18 = *(this + 1556);
  *(this + 1556) = 0;
  v41 = *(this + 9);
  v42 = v18;
  if (v41)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  if ((*(*(this + 1) + 120) & 1) == 0)
  {
    v20 = v15[4];
    AGXGPURawCounterImpl::SourceImpl::addCounter(char const*,unsigned int,unsigned int,unsigned long long)::uscProfileDataName[28] = v20 / 0xA + 48;
    AGXGPURawCounterImpl::SourceImpl::addCounter(char const*,unsigned int,unsigned int,unsigned long long)::uscProfileDataName[29] = (v20 % 0xA) | 0x30;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if ((*(*(this + 1) + 120) & 1) == 0)
    {
      AGXGPURawCounterImpl::SourceImpl::addCounter(char const*,unsigned int,unsigned int,unsigned long long)::uscProfileDataName[21] = 48;
      AGXGPURawCounterImpl::SourceImpl::addCounter(char const*,unsigned int,unsigned int,unsigned long long)::uscProfileDataName[22] = v22 | 0x30;
      if ((AGXGPURawCounterImpl::SourceImpl::addCounter(this, AGXGPURawCounterImpl::SourceImpl::addCounter(char const*,unsigned int,unsigned int,unsigned long long)::uscProfileDataName, 0x20u, 0xFFFFFFFF, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_35;
    }

    v23 = *(v15 + 8);
    if (v23 >= 0xA)
    {
      break;
    }

    if (!AGXGPURawCounterImpl::SourceImpl::addCounter(this, (&obfuscatedUSCProfileName(unsigned int,unsigned int)::obfuscatedUSCProfileNameList[v21])[v23], 0x20u, 0xFFFFFFFF, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_59;
    }

LABEL_35:
    v22 += v19;
    v21 += 10 * v19;
    if (v22 >= 8)
    {
      goto LABEL_59;
    }
  }

  fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Error, invalid uscIndex (%u >= %u) and/or invalid regIndex (%u >= %u)!\n", "AGXGPURawCounterImpl.mm", 4722, "obfuscatedUSCProfileName", v23, 10, v22, 8);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v44 = 136316674;
    v45 = "AGXGPURawCounterImpl.mm";
    v46 = 1024;
    v47 = 4722;
    v48 = 2080;
    v49 = "obfuscatedUSCProfileName";
    v50 = 1024;
    *v51 = v23;
    *&v51[4] = 1024;
    *&v51[6] = 10;
    *v52 = 1024;
    *&v52[2] = v22;
    LOWORD(v53) = 1024;
    *(&v53 + 2) = 8;
    _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, invalid uscIndex (%u >= %u) and/or invalid regIndex (%u >= %u)!\n", v44, 0x34u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v44 = 136316674;
    v45 = "AGXGPURawCounterImpl.mm";
    v46 = 1024;
    v47 = 4722;
    v48 = 2080;
    v49 = "obfuscatedUSCProfileName";
    v50 = 1024;
    *v51 = v23;
    *&v51[4] = 1024;
    *&v51[6] = 10;
    *v52 = 1024;
    *&v52[2] = v22;
    LOWORD(v53) = 1024;
    *(&v53 + 2) = 8;
    _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, invalid uscIndex (%u >= %u) and/or invalid regIndex (%u >= %u)!\n", v44, 0x34u);
  }

LABEL_59:
  *(this + 1556) = v42;
  if (v41)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  v30 = *(this + 1554);
  if (v29 + v43 == v30)
  {
    *(this + 1556) = v29 + v42;
    goto LABEL_64;
  }

  bzero(this + 24 * v43 + 72, 24 * (v30 - v43));
  result = 0;
  *(this + 1554) = v43;
LABEL_83:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t perfCtrSamplerAddSourceCounter(char a1, uint64_t a2, char a3, char a4)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  LODWORD(v6) = 7;
  BYTE4(v6) = a1;
  BYTE8(v6) = *(a2 + 28);
  BYTE9(v6) = a3;
  BYTE10(v6) = a4;
  HIDWORD(v6) = *(a2 + 48);
  *&v7 = *(a2 + 32);
  v4 = *(sAGXGPURawCounterImpl + 88);
  if (!v4)
  {
    return 5;
  }

  outputStructCnt = 64;
  return IOConnectCallStructMethod(v4, 0x105u, &v6, 0x40uLL, &v6, &outputStructCnt);
}

void AGXGPURawCounterImpl::SourceImpl::clearSelectedCounterList(AGXGPURawCounterImpl::SourceImpl *this)
{
  v2 = sAGXGPURawCounterImpl;
  v3 = *(sAGXGPURawCounterImpl + 689);
  *(sAGXGPURawCounterImpl + 689) = 0;
  if (v3 == 1)
  {
    v4 = *(this + 1);
    if (*(v4 + 656))
    {
      if (*(v2 + 88))
      {
        v5 = 0;
        do
        {
          memset(v7, 0, sizeof(v7));
          LODWORD(v7[0]) = 6;
          BYTE4(v7[0]) = v5;
          v6 = *(v2 + 88);
          if (v6)
          {
            outputStructCnt = 64;
            IOConnectCallStructMethod(v6, 0x105u, v7, 0x40uLL, v7, &outputStructCnt);
            v2 = sAGXGPURawCounterImpl;
            v4 = *(this + 1);
          }

          ++v5;
        }

        while (v5 < *(v4 + 656));
      }
    }
  }

  bzero(this + 72, 0x180CuLL);
}

uint64_t AGXGPURawCounterImpl::SourceImpl::setEnabled(AGXGPURawCounterImpl::SourceImpl *this, int a2)
{
  if (!a2)
  {
    *(this + 1559) &= ~0x80000000;
LABEL_6:
    v2 = 1;
    goto LABEL_7;
  }

  v2 = *(this + 781);
  if (v2)
  {
    v2 = *(this + 1559);
    if (v2)
    {
      goto LABEL_6;
    }
  }

  LOBYTE(a2) = 0;
LABEL_7:
  *(this + 6228) = a2;
  return v2;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::copyAvailableCounterList(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return *(a1 + 48);
  }

  v4 = malloc_type_malloc(*(a1 + 64), 0x10500409456A368uLL);
  *a2 = v4;
  memcpy(v4, *(a1 + 56), *(a1 + 64));
  result = *(a1 + 48);
  if (result)
  {
    v6 = *a2;
    v7 = *(a1 + 56);
    v8 = (*a2 + 8);
    v9 = *(a1 + 48);
    do
    {
      v10 = v6 + *v8 - v7;
      *(v8 - 1) = v6 + *(v8 - 1) - v7;
      *v8 = v10;
      v8 += 3;
      --v9;
    }

    while (v9);
  }

  return result;
}

void *AGXGPURawCounterImpl::SourceImpl::copyName(AGXGPURawCounterImpl::SourceImpl *this)
{
  v2 = malloc_type_malloc((*(this + 6) + 1), 0x100004077774924uLL);
  v3 = *(this + 2);
  v4 = (*(this + 6) + 1);

  return memcpy(v2, v3, v4);
}

void AGXGPURawCounterImpl::SourceImpl::~SourceImpl(void **this)
{
  *this = &unk_284F28E50;
  free(this[2]);
  this[2] = 0;
  free(this[5]);
  this[5] = 0;
  (*(*this + 30))(this);
  free(this[781]);
  *(this + 781) = 0u;
  free(this[790]);
  this[790] = 0;
  *(this + 1582) = 0;
  *(this + 396) = 0u;
  *(this + 397) = 0u;

  JUMPOUT(0x23EED55C0);
}

{
  *this = &unk_284F28E50;
  free(this[2]);
  this[2] = 0;
  free(this[5]);
  this[5] = 0;
  (*(*this + 30))(this);
  free(this[781]);
  *(this + 781) = 0u;
  free(this[790]);
  this[790] = 0;
  *(this + 1582) = 0;
  *(this + 396) = 0u;
  *(this + 397) = 0u;
}

uint64_t AGXGPURawCounterImpl::populateFeaturesDict(AGXGPURawCounterImpl *this, NSMutableDictionary *a2)
{
  v3 = a2;
  [(NSMutableDictionary *)v3 setObject:*(this + 14) forKeyedSubscript:@"ConstantAGX_CoreConfig"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(*this + 104))(this)];
  [(NSMutableDictionary *)v3 setObject:v4 forKeyedSubscript:@"ConstantAGX_PostProcessBufferSizeMin"];

  [(NSMutableDictionary *)v3 setObject:&unk_284F29E20 forKeyedSubscript:@"ConstantAGX_PostProcessBufferSizeAlignment"];
  [(NSMutableDictionary *)v3 setObject:&unk_284F29E20 forKeyedSubscript:@"ConstantAGX_PostProcessBufferAddrAlignment"];
  [(NSMutableDictionary *)v3 setObject:&unk_284F29E38 forKeyedSubscript:@"ConstantAGX_SampleTypeList"];

  return 1;
}

BOOL AGXGPURawCounterImpl::stopSampling(AGXGPURawCounterImpl *this)
{
  v15 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 4062, "virtual BOOL AGXGPURawCounterImpl::stopSampling()");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(outputStruct[0]) = 136315650;
      *(outputStruct + 4) = "AGXGPURawCounterImpl.mm";
      WORD6(outputStruct[0]) = 1024;
      *(outputStruct + 14) = 4062;
      WORD1(outputStruct[1]) = 2080;
      *(&outputStruct[1] + 4) = "virtual BOOL AGXGPURawCounterImpl::stopSampling()";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", outputStruct, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LODWORD(outputStruct[0]) = 136315650;
      *(outputStruct + 4) = "AGXGPURawCounterImpl.mm";
      WORD6(outputStruct[0]) = 1024;
      *(outputStruct + 14) = 4062;
      WORD1(outputStruct[1]) = 2080;
      *(&outputStruct[1] + 4) = "virtual BOOL AGXGPURawCounterImpl::stopSampling()";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", outputStruct, 0x1Cu);
    }

    abort();
  }

  v2 = *(this + 164);
  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    memset(outputStruct, 0, sizeof(outputStruct));
    LODWORD(outputStruct[0]) = 9;
    v3 = *(sAGXGPURawCounterImpl + 88);
    if (v3)
    {
      outputStructCnt = 64;
      IOConnectCallStructMethod(v3, 0x105u, outputStruct, 0x40uLL, outputStruct, &outputStructCnt);
      v4 = *(this + 164);
      if (!v4)
      {
LABEL_5:
        *(this + 344) = 256;
        goto LABEL_6;
      }
    }

    else
    {
      v4 = v2;
    }

    v7 = 0;
    v8 = this + 144;
    do
    {
      v9 = *&v8[8 * v7];
      if (v9)
      {
        if ((*(*v9 + 144))(v9))
        {
          v13 = 0u;
          v14 = 0u;
          outputStruct[0] = 3uLL;
          outputStruct[1] = 0u;
          BYTE4(outputStruct[0]) = v7;
          *&outputStruct[1] = 0;
          v10 = *(sAGXGPURawCounterImpl + 88);
          if (v10)
          {
            outputStructCnt = 64;
            IOConnectCallStructMethod(v10, 0x105u, outputStruct, 0x40uLL, outputStruct, &outputStructCnt);
          }

          (*(**&v8[8 * v7] + 48))(*&v8[8 * v7]);
        }

        (*(**&v8[8 * v7] + 40))(*&v8[8 * v7], 0);
        v4 = *(this + 164);
      }

      ++v7;
    }

    while (v7 < v4);
    goto LABEL_5;
  }

LABEL_6:
  result = v2 != 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGXGPURawCounterImpl::startSampling(AGXGPURawCounterImpl *this)
{
  v37 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3924, "virtual BOOL AGXGPURawCounterImpl::startSampling()");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "AGXGPURawCounterImpl.mm";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 3924;
      WORD1(buf[1]) = 2080;
      *(&buf[1] + 4) = "virtual BOOL AGXGPURawCounterImpl::startSampling()";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "AGXGPURawCounterImpl.mm";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 3924;
      WORD1(buf[1]) = 2080;
      *(&buf[1] + 4) = "virtual BOOL AGXGPURawCounterImpl::startSampling()";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  v2 = *(this + 164);
  if (!v2)
  {
    goto LABEL_49;
  }

  if (*(this + 688) == 1)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Sampling has been started! Stop sampling before starting again.\n", "AGXGPURawCounterImpl.mm", 3941, "startSampling");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "AGXGPURawCounterImpl.mm";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 3941;
      WORD1(buf[1]) = 2080;
      *(&buf[1] + 4) = "startSampling";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Sampling has been started! Stop sampling before starting again.\n", buf, 0x1Cu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (result)
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "AGXGPURawCounterImpl.mm";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 3941;
      WORD1(buf[1]) = 2080;
      *(&buf[1] + 4) = "startSampling";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Sampling has been started! Stop sampling before starting again.\n", buf, 0x1Cu);
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v4 = 0;
  v5 = 0;
  *(this + 689) = 1;
  v6 = MEMORY[0x277D86220];
  do
  {
    while (1)
    {
      v7 = *(this + v4 + 18);
      if (!v7)
      {
        break;
      }

      if (((*(*v7 + 48))(v7) & 1) == 0)
      {
        v2 = *(this + 164);
        break;
      }

      *(v7 + 6236) |= (*(*v7 + 128))(v7) >> 1 << 31;
      if (((*(*v7 + 128))(v7) & 4) != 0)
      {
        v8 = (*(*(v7 + 8) + 96) > 1u) << 31;
      }

      else
      {
        v8 = 0;
      }

      *(v7 + 6236) |= v8;
      result = (*(*v7 + 144))(v7);
      if (!result)
      {
        goto LABEL_51;
      }

      v9 = *(v7 + 6248);
      v10 = (*(*v7 + 144))(v7);
      memset(&buf[2], 0, 32);
      LODWORD(buf[0]) = 3;
      DWORD1(buf[0]) = v4;
      *(&buf[0] + 1) = v9;
      buf[1] = v10;
      result = *(sAGXGPURawCounterImpl + 88);
      if (!result)
      {
        goto LABEL_51;
      }

      outputStructCnt = 64;
      v11 = IOConnectCallStructMethod(result, 0x105u, buf, 0x40uLL, buf, &outputStructCnt);
      if (!v9 || v11)
      {
        v12 = 0;
        if (v11)
        {
          goto LABEL_50;
        }
      }

      else
      {
        *(v7 + 6264) = *(&buf[1] + 1);
        *(v7 + 6272) = v9 + *(&buf[0] + 1);
        v12 = buf[1];
      }

      if (v12 != (*(*v7 + 176))(v7))
      {
        v13 = *MEMORY[0x277D85DF8];
        v14 = (*(*v7 + 176))(v7);
        fprintf(v13, "AGXGRC:%s:%d:%s: *** Inconsistent sub-buffer count! (%u != %u)\n", "AGXGPURawCounterImpl.mm", 3998, "startSampling", v12, v14);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v22 = (*(*v7 + 176))(v7);
          LODWORD(buf[0]) = 136316162;
          *(buf + 4) = "AGXGPURawCounterImpl.mm";
          WORD6(buf[0]) = 1024;
          *(buf + 14) = 3998;
          WORD1(buf[1]) = 2080;
          *(&buf[1] + 4) = "startSampling";
          WORD6(buf[1]) = 1024;
          *(&buf[1] + 14) = v12;
          WORD1(buf[2]) = 1024;
          DWORD1(buf[2]) = v22;
          _os_log_error_impl(&dword_23C542000, v6, OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Inconsistent sub-buffer count! (%u != %u)\n", buf, 0x28u);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v15 = (*(*v7 + 176))(v7);
          LODWORD(buf[0]) = 136316162;
          *(buf + 4) = "AGXGPURawCounterImpl.mm";
          WORD6(buf[0]) = 1024;
          *(buf + 14) = 3998;
          WORD1(buf[1]) = 2080;
          *(&buf[1] + 4) = "startSampling";
          WORD6(buf[1]) = 1024;
          *(&buf[1] + 14) = v12;
          WORD1(buf[2]) = 1024;
          DWORD1(buf[2]) = v15;
          _os_log_impl(&dword_23C542000, v6, OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Inconsistent sub-buffer count! (%u != %u)\n", buf, 0x28u);
        }
      }

      v16 = *(v7 + 6264);
      v17 = *(v7 + 6272);
      v18 = (*(*v7 + 176))(v7);
      result = (*(*v7 + 232))(v7, v16, v17, v18);
      if (!result)
      {
        goto LABEL_51;
      }

      v19 = (*(*v7 + 96))(v7);
      v20 = (*(*v7 + 128))(v7);
      v21 = (4 * v19) & 8 | v19 & 1 | (v19 >> 1) & 6 | (32 * ((v19 >> 4) & 3));
      if ((v19 & 0x80000000) != 0)
      {
        v21 |= 0x10u;
      }

      else if (!v21)
      {
        goto LABEL_50;
      }

      memset(&buf[1], 0, 48);
      LODWORD(buf[0]) = 5;
      DWORD1(buf[0]) = v4;
      DWORD2(buf[0]) = v21;
      HIDWORD(buf[0]) = (v20 << 6) & 0x180 | v20 & 1 | 0x40;
      (*(*v7 + 216))(v7, buf);
      result = *(sAGXGPURawCounterImpl + 88);
      if (!result)
      {
        goto LABEL_51;
      }

      outputStructCnt = 64;
      if (IOConnectCallStructMethod(result, 0x105u, buf, 0x40uLL, buf, &outputStructCnt))
      {
        goto LABEL_50;
      }

      ++v4;
      v2 = *(this + 164);
      v5 = 1;
      if (v4 >= v2)
      {
        goto LABEL_37;
      }
    }

    ++v4;
  }

  while (v4 < v2);
  if ((v5 & 1) == 0)
  {
LABEL_50:
    result = 0;
LABEL_51:
    *(this + 688) = 1;
    goto LABEL_52;
  }

LABEL_37:
  v23 = (*(*this + 56))(this);
  v24 = (*(*this + 72))(this);
  if ((v23 & 2) != 0)
  {
    v25 = 80;
  }

  else
  {
    v25 = 64;
  }

  LODWORD(buf[0]) = 4;
  DWORD1(buf[0]) = (v23 >> 1) & 8 | (((v23 >> 5) & 1) << 9) | v25 & 0xFFFFFFDF | (v23 >> 1) & 4 | (32 * (((v23 & 4) >> 2) & 1));
  WORD4(buf[0]) = v24 & ((v23 << 13) >> 15);
  v26 = *(sAGXGPURawCounterImpl + 88);
  if (v26)
  {
    outputStructCnt = 64;
    if (!IOConnectCallStructMethod(v26, 0x105u, buf, 0x40uLL, buf, &outputStructCnt))
    {
      LODWORD(buf[0]) = 8;
      v32 = *(sAGXGPURawCounterImpl + 88);
      if (v32)
      {
        outputStructCnt = 64;
        v33 = IOConnectCallStructMethod(v32, 0x105u, buf, 0x40uLL, buf, &outputStructCnt);
        v34 = *(sAGXGPURawCounterImpl + 88);
        LODWORD(buf[0]) = 11;
        memset(buf + 4, 0, 48);
        buf[3] = 0u;
        if (v34)
        {
          outputStructCnt = 64;
          IOConnectCallStructMethod(v34, 0x105u, buf, 0x40uLL, buf, &outputStructCnt);
        }

        if (!v33)
        {
          result = 1;
          goto LABEL_51;
        }
      }
    }
  }

  v27 = *(this + 164);
  if (v27)
  {
    for (i = 0; i < v27; ++i)
    {
      v29 = *(this + i + 18);
      if (v29)
      {
        (*(*v29 + 240))(v29);
        buf[0] = 3uLL;
        memset(&buf[1], 0, 48);
        BYTE4(buf[0]) = i;
        *&buf[1] = 0;
        v30 = *(sAGXGPURawCounterImpl + 88);
        if (v30)
        {
          outputStructCnt = 64;
          IOConnectCallStructMethod(v30, 0x105u, buf, 0x40uLL, buf, &outputStructCnt);
        }

        v27 = *(this + 164);
      }
    }
  }

LABEL_49:
  result = 0;
LABEL_52:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGXGPURawCounterImpl::gpuPerfState(AGXGPURawCounterImpl *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3917, "virtual uint32_t AGXGPURawCounterImpl::gpuPerfState() const");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v4 = "AGXGPURawCounterImpl.mm";
      v5 = 1024;
      v6 = 3917;
      v7 = 2080;
      v8 = "virtual uint32_t AGXGPURawCounterImpl::gpuPerfState() const";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v4 = "AGXGPURawCounterImpl.mm";
      v5 = 1024;
      v6 = 3917;
      v7 = 2080;
      v8 = "virtual uint32_t AGXGPURawCounterImpl::gpuPerfState() const";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  result = *(this + 174);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGXGPURawCounterImpl::setGPUPerfState(AGXGPURawCounterImpl *this, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3909, "virtual BOOL AGXGPURawCounterImpl::setGPUPerfState(uint32_t)");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v5 = "AGXGPURawCounterImpl.mm";
      v6 = 1024;
      v7 = 3909;
      v8 = 2080;
      v9 = "virtual BOOL AGXGPURawCounterImpl::setGPUPerfState(uint32_t)";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v5 = "AGXGPURawCounterImpl.mm";
      v6 = 1024;
      v7 = 3909;
      v8 = 2080;
      v9 = "virtual BOOL AGXGPURawCounterImpl::setGPUPerfState(uint32_t)";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  *(this + 174) = a2;
  v2 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AGXGPURawCounterImpl::flags(AGXGPURawCounterImpl *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3903, "virtual uint32_t AGXGPURawCounterImpl::flags() const");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v4 = "AGXGPURawCounterImpl.mm";
      v5 = 1024;
      v6 = 3903;
      v7 = 2080;
      v8 = "virtual uint32_t AGXGPURawCounterImpl::flags() const";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v4 = "AGXGPURawCounterImpl.mm";
      v5 = 1024;
      v6 = 3903;
      v7 = 2080;
      v8 = "virtual uint32_t AGXGPURawCounterImpl::flags() const";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  result = *(this + 173);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGXGPURawCounterImpl::setFlags(AGXGPURawCounterImpl *this, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3890, "virtual BOOL AGXGPURawCounterImpl::setFlags(uint32_t)");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v5 = "AGXGPURawCounterImpl.mm";
      v6 = 1024;
      v7 = 3890;
      v8 = 2080;
      v9 = "virtual BOOL AGXGPURawCounterImpl::setFlags(uint32_t)";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v5 = "AGXGPURawCounterImpl.mm";
      v6 = 1024;
      v7 = 3890;
      v8 = 2080;
      v9 = "virtual BOOL AGXGPURawCounterImpl::setFlags(uint32_t)";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  *(this + 173) = (*(*this + 40))(this) & a2;
  v2 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AGXGPURawCounterImpl::availableFlags(AGXGPURawCounterImpl *this)
{
  v1 = *(this + 23);
  if (v1 < 0xE)
  {
    v2 = 0;
  }

  else
  {
    v2 = 32 * (*(this + 24) > 1u);
  }

  v3 = v1 > 0xA;
  if (v1 <= 0xC)
  {
    v4 = 6;
  }

  else
  {
    v4 = 14;
  }

  return v4 | (16 * v3) | v2;
}

uint64_t AGXGPURawCounterImpl::setOptions(AGXGPURawCounterImpl *this, NSDictionary *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3827, "virtual BOOL AGXGPURawCounterImpl::setOptions(NSDictionary *__strong)");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "AGXGPURawCounterImpl.mm";
      v25 = 1024;
      v26 = 3827;
      v27 = 2080;
      v28 = "virtual BOOL AGXGPURawCounterImpl::setOptions(NSDictionary *__strong)";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v24 = "AGXGPURawCounterImpl.mm";
      v25 = 1024;
      v26 = 3827;
      v27 = 2080;
      v28 = "virtual BOOL AGXGPURawCounterImpl::setOptions(NSDictionary *__strong)";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  v4 = v3;
  v5 = (*(*this + 40))(this);
  v6 = v5;
  if ((v5 & 2) != 0)
  {
    v8 = [(NSDictionary *)v4 objectForKeyedSubscript:@"DisableOverlap"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    if ((v6 & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  v10 = [(NSDictionary *)v4 objectForKeyedSubscript:@"LockGPUPerfState"];
  v11 = [v10 unsignedShortValue];

  if (v11)
  {
    v12 = [(NSDictionary *)v4 objectForKeyedSubscript:@"LockGPUPerfState"];
    v13 = [v12 shortValue];

    (*(*this + 64))(this, v13 & ~(v13 >> 31));
    v7 = v7 | 4;
  }

LABEL_11:
  if ((v6 & 8) != 0)
  {
    v14 = [(NSDictionary *)v4 objectForKeyedSubscript:@"DisableMCH"];
    v15 = [v14 BOOLValue];

    if (v15)
    {
      v7 = v7 | 8;
    }

    else
    {
      v7 = v7;
    }
  }

  if ((v6 & 0x10) != 0)
  {
    v16 = [(NSDictionary *)v4 objectForKeyedSubscript:@"ReduceCDMCluster"];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      v7 = v7 | 0x10;
    }

    else
    {
      v7 = v7;
    }
  }

  if ((v6 & 0x20) != 0)
  {
    v18 = [(NSDictionary *)v4 objectForKeyedSubscript:@"SingleVDMChannel"];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      v7 = v7 | 0x20;
    }

    else
    {
      v7 = v7;
    }
  }

  v20 = (*(*this + 48))(this, v7);

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t AGXGPURawCounterImpl::sourceList(int64x2_t *a1, uint64_t a2, unsigned int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != a1)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3805, "virtual uint32_t AGXGPURawCounterImpl::sourceList(Source **, uint32_t)");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "AGXGPURawCounterImpl.mm";
      v22 = 1024;
      v23 = 3805;
      v24 = 2080;
      v25 = "virtual uint32_t AGXGPURawCounterImpl::sourceList(Source **, uint32_t)";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v21 = "AGXGPURawCounterImpl.mm";
      v22 = 1024;
      v23 = 3805;
      v24 = 2080;
      v25 = "virtual uint32_t AGXGPURawCounterImpl::sourceList(Source **, uint32_t)";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  v4 = a1[41].u32[0];
  if (!v4)
  {
    result = 0;
    goto LABEL_21;
  }

  if (a2)
  {
    result = 0;
    v6 = a1 + 9;
    do
    {
      if (v6->i64[0])
      {
        if (result < a3)
        {
          *(a2 + 8 * result) = v6->i64[0];
        }

        result = (result + 1);
      }

      v6 = (v6 + 8);
      --v4;
    }

    while (v4);
  }

  else
  {
    if (v4 >= 8)
    {
      v7 = v4 & 0xFFFFFFF8;
      v8 = a1 + 11;
      v9 = 0uLL;
      v10 = v7;
      v11 = 0uLL;
      do
      {
        v12 = v8[-2];
        v13 = v8[-1];
        v14 = *v8;
        v15 = v8[1];
        v8 += 4;
        v9 = vsubq_s32(v9, vmvnq_s8(vuzp1q_s32(vceqzq_s64(v12), vceqzq_s64(v13))));
        v11 = vsubq_s32(v11, vmvnq_s8(vuzp1q_s32(vceqzq_s64(v14), vceqzq_s64(v15))));
        v10 -= 8;
      }

      while (v10);
      result = vaddvq_s32(vaddq_s32(v11, v9));
      if (v7 == v4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v7 = 0;
      LODWORD(result) = 0;
    }

    v16 = v4 - v7;
    v17 = &a1[9].i64[v7];
    do
    {
      if (*v17++)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }

      --v16;
    }

    while (v16);
  }

LABEL_21:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void *AGXGPURawCounterImpl::copyDeviceName(AGXGPURawCounterImpl *this)
{
  v2 = strlen(this + 24) + 1;
  result = malloc_type_malloc(v2, 0x100004077774924uLL);
  if (result)
  {

    return memcpy(result, this + 24, v2);
  }

  return result;
}

void AGXGPURawCounterImpl::~AGXGPURawCounterImpl(id *this)
{

  JUMPOUT(0x23EED55C0);
}

{
}

uint64_t AGXGPURawCounterImpl::SourceImpl::SourceImpl(uint64_t a1, uint64_t a2, int a3, char *__s, uint64_t a5, unsigned int a6, uint64_t a7)
{
  *a1 = &unk_284F28E50;
  *(a1 + 8) = a2;
  *(a1 + 28) = a3;
  *(a1 + 32) = *(__s + 36);
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  *(a1 + 6232) = 0;
  *(a1 + 6240) = 0;
  *(a1 + 6280) = 0;
  *(a1 + 6221) = 0;
  *(a1 + 6216) = 0;
  *(a1 + 6256) = 0;
  *(a1 + 6264) = 0;
  *(a1 + 6248) = 0;
  *(a1 + 6288) = *(__s + 8);
  *(a1 + 6296) = a7;
  *(a1 + 6328) = 0;
  *(a1 + 6312) = 0;
  *(a1 + 6320) = 0;
  *(a1 + 6304) = 0;
  *(a1 + 6352) = 0u;
  *(a1 + 6336) = 0u;
  v55[1] = 0;
  v12 = strlen(__s);
  *(a1 + 24) = v12;
  v13 = (((v12 + 1) + 7) & 0x1FFFFFFF8) + 24 * a6;
  v14 = *(a2 + 128);
  if (a6)
  {
    if (a6 == 1)
    {
      v15 = 0;
LABEL_7:
      v20 = a6 - v15;
      v21 = (a5 + 4 * v15);
      v22 = vdupq_n_s64(7uLL);
      v23 = vdupq_n_s64(0x1FFFFFFF8uLL);
      do
      {
        v24 = *v21++;
        v25 = vandq_s8(vaddw_u32(v22, vadd_s32(*(v14 + 56 * v24 + 16), 0x100000001)), v23);
        v13 += v25.i64[1] + v25.i64[0];
        --v20;
      }

      while (v20);
      goto LABEL_9;
    }

    v16 = 0;
    v15 = a6 & 0xFFFFFFFE;
    v17 = (a5 + 4);
    v18 = v15;
    do
    {
      v19 = v14 + 56 * *(v17 - 1);
      v13 += (((*(v19 + 20) + 1) + 7) & 0x1FFFFFFF8) + (((*(v19 + 16) + 1) + 7) & 0x1FFFFFFF8);
      v16 += (((*(v14 + 56 * *v17 + 20) + 1) + 7) & 0x1FFFFFFF8) + (((*(v14 + 56 * *v17 + 16) + 1) + 7) & 0x1FFFFFFF8);
      v17 += 2;
      v18 -= 2;
    }

    while (v18);
    v13 += v16;
    if (v15 != a6)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  LOBYTE(v55[0]) = 1;
  HIDWORD(v55[0]) = 8;
  v55[2] = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v55[3] = 0;
  malloc_type_posix_memalign(&v55[1], 8uLL, v55[2], 0x61E504A1uLL);
  bzero(v55[1], v55[2]);
  v26 = *(a1 + 24);
  v27 = (v26 + 1);
  v28 = StackAllocator::reserve(v55, v26 + 1);
  v29 = v28;
  if (v27 && v28)
  {
    memcpy(v28, __s, v27);
  }

  *(a1 + 16) = v29;
  v30 = StackAllocator::reserve(v55, 24 * *(a1 + 48));
  *(a1 + 56) = v30;
  if (*(a1 + 48))
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v34 = v14 + 56 * *(*(a1 + 40) + 4 * v32);
      v35 = *(a1 + 56);
      v36 = *v34;
      v37 = *(v34 + 16);
      v38 = (v37 + 1);
      v39 = StackAllocator::reserve(v55, v37 + 1);
      v40 = v39;
      if (v38)
      {
        v41 = v39 == 0;
      }

      else
      {
        v41 = 1;
      }

      if (!v41)
      {
        memcpy(v39, v36, v38);
      }

      *(v35 + v31) = v40;
      v42 = *(v34 + 8);
      v43 = *(v34 + 20);
      v44 = (v43 + 1);
      v45 = StackAllocator::reserve(v55, v43 + 1);
      v46 = v45;
      if (v44)
      {
        v47 = v45 == 0;
      }

      else
      {
        v47 = 1;
      }

      if (!v47)
      {
        memcpy(v45, v42, v44);
      }

      v33 = v35 + v31;
      *(v33 + 8) = v46;
      *(v33 + 16) = *(v34 + 24);
      ++v32;
      v31 += 24;
    }

    while (v32 < *(a1 + 48));
    v30 = *(a1 + 56);
  }

  if (v55[1])
  {
    v48 = LODWORD(v55[1]) + LODWORD(v55[3]);
  }

  else
  {
    v48 = 0;
  }

  *(a1 + 64) = v48 - v30;
  bzero((a1 + 72), 0x1800uLL);
  LOBYTE(v55[0]) = 0;
  memset(v55 + 4, 0, 28);
  v49 = *(a1 + 6288);
  v50 = ((24 * *(*(a1 + 6296) + 40) + 2064) * v49);
  *(a1 + 6328) = v50;
  v51 = malloc_type_malloc(v50, 0x100004000313F17uLL);
  v52 = (8 * v49);
  *(a1 + 6320) = v51;
  *(a1 + 6336) = v51;
  *(a1 + 6344) = &v51[v52];
  v53 = &v51[v52 + v52];
  *(a1 + 6352) = v53;
  *(a1 + 6360) = &v53[v49 << 11];
  if (LOBYTE(v55[0]) == 1)
  {
    free(v55[1]);
  }

  return a1;
}

void sub_23C54BCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12)
{
  if (a11 == 1)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGXGPURawCounterImpl::init(AGXGPURawCounterImpl *this, int a2)
{
  v246[325] = *MEMORY[0x277D85DE8];
  bzero(__s1, 0xB00uLL);
  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  *v212 = 0u;
  v213 = 0u;
  memset(v211, 0, sizeof(v211));
  *(this + 2) = a2;
  v4 = IOGPUDeviceCreate();
  *(this + 2) = v4;
  if (!v4)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (_deviceRef = IOGPUDeviceCreate(_acceleratorPort)) != NULL\n", "AGXGPURawCounterImpl.mm", 2767, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2767;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (_deviceRef = IOGPUDeviceCreate(_acceleratorPort)) != NULL\n", buf, 0x1Cu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2767;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    v5 = MEMORY[0x277D86220];
    v6 = "AGXGRC:AGXGRC:%s:%d:%s: *** (_deviceRef = IOGPUDeviceCreate(_acceleratorPort)) != NULL\n";
LABEL_11:
    _os_log_impl(&dword_23C542000, v5, OS_LOG_TYPE_INFO, v6, buf, 0x1Cu);
    goto LABEL_12;
  }

  if (IOGPUDeviceGetName())
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** IOGPUDeviceGetName(_deviceRef, _deviceName, sizeof(_deviceName)) == kIOReturnSuccess\n", "AGXGPURawCounterImpl.mm", 2770, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2770;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** IOGPUDeviceGetName(_deviceRef, _deviceName, sizeof(_deviceName)) == kIOReturnSuccess\n", buf, 0x1Cu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2770;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    v5 = MEMORY[0x277D86220];
    v6 = "AGXGRC:AGXGRC:%s:%d:%s: *** IOGPUDeviceGetName(_deviceRef, _deviceName, sizeof(_deviceName)) == kIOReturnSuccess\n";
    goto LABEL_11;
  }

  v10 = *(this + 2);
  Connect = IOGPUDeviceGetConnect();
  *(this + 22) = Connect;
  if (!Connect)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (_sharedConnection = IOGPUDeviceGetConnect(_deviceRef)) != 0\n", "AGXGPURawCounterImpl.mm", 2773, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2773;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (_sharedConnection = IOGPUDeviceGetConnect(_deviceRef)) != 0\n", buf, 0x1Cu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2773;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    v5 = MEMORY[0x277D86220];
    v6 = "AGXGRC:AGXGRC:%s:%d:%s: *** (_sharedConnection = IOGPUDeviceGetConnect(_deviceRef)) != 0\n";
    goto LABEL_11;
  }

  *outputStructCnt = 64;
  memset(buf, 0, 64);
  buf[4] = 1;
  v12 = Connect;
  if (IOConnectCallStructMethod(Connect, 0x105u, buf, 0x40uLL, buf, outputStructCnt))
  {
    memset(&buf[4], 0, 60);
    *buf = 11;
    IOConnectCallStructMethod(v12, 0x105u, buf, *outputStructCnt, buf, outputStructCnt);
    goto LABEL_12;
  }

  CFProperty = IORegistryEntryCreateCFProperty(*(this + 2), @"AbsTimeOffset", 0, 0);
  v14 = CFProperty;
  if (!CFProperty || !CFNumberGetValue(CFProperty, kCFNumberSInt64Type, this + 704))
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** ((cfAbsTimeOffset = (CFNumberRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @AbsTimeOffset, NULL, 0)) != NULL) && CFNumberGetValue(cfAbsTimeOffset, kCFNumberSInt64Type, (void*)(&_samplingState.absTimeOffset))\n", "AGXGPURawCounterImpl.mm", 2785, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2785;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfAbsTimeOffset = (CFNumberRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @AbsTimeOffset, NULL, 0)) != NULL) && CFNumberGetValue(cfAbsTimeOffset, kCFNumberSInt64Type, (void*)(&_samplingState.absTimeOffset))\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2785;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfAbsTimeOffset = (CFNumberRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @AbsTimeOffset, NULL, 0)) != NULL) && CFNumberGetValue(cfAbsTimeOffset, kCFNumberSInt64Type, (void*)(&_samplingState.absTimeOffset))\n", buf, 0x1Cu);
    }

    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  CFRelease(v14);
  v15 = *(this + 22);
  v16 = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0x4000);
  memset(buf, 0, 64);
  *buf = 12;
  *&buf[8] = CFDataGetMutableBytePtr(Mutable);
  *&buf[16] = 0x4000;
  if (!v15 && (v15 = *(sAGXGPURawCounterImpl + 88)) == 0 || (*outputStructCnt = 64, IOConnectCallStructMethod(v15, 0x105u, buf, 0x40uLL, buf, outputStructCnt)))
  {
    v14 = 0;
LABEL_27:
    v18 = 1;
    goto LABEL_28;
  }

  CFDataSetLength(Mutable, *&buf[16]);
  v14 = CFPropertyListCreateWithData(v16, Mutable, 0, 0, 0);
  CFRelease(Mutable);
  if (!v14)
  {
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(v14, @"num_cores");
  if (!Value || !CFNumberGetValue(Value, kCFNumberSInt32Type, this + 100) || (v20 = CFDictionaryGetValue(v14, @"num_mgpus")) == 0 || !CFNumberGetValue(v20, kCFNumberSInt32Type, this + 96) || (v21 = CFDictionaryGetValue(v14, @"gpu_gen")) == 0 || !CFNumberGetValue(v21, kCFNumberSInt32Type, this + 92))
  {
    v18 = 0;
LABEL_28:
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** ((cfCoreConfig = createInternalCoreConfigDict(_sharedConnection)) != NULL) && ((cfCoreNum = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @num_cores)) != NULL) && CFNumberGetValue(cfCoreNum, kCFNumberSInt32Type, (void*)(&_coreNum)) && ((cfMGPUNum = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @num_mgpus)) != NULL) && CFNumberGetValue(cfMGPUNum, kCFNumberSInt32Type, (void*)(&_mgpuNum)) && ((cfGPUGen = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @gpu_gen)) != NULL) && CFNumberGetValue(cfGPUGen, kCFNumberSInt32Type, (void*)(&_gpuGeneration))\n", "AGXGPURawCounterImpl.mm", 2799, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2799;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfCoreConfig = createInternalCoreConfigDict(_sharedConnection)) != NULL) && ((cfCoreNum = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @num_cores)) != NULL) && CFNumberGetValue(cfCoreNum, kCFNumberSInt32Type, (void*)(&_coreNum)) && ((cfMGPUNum = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @num_mgpus)) != NULL) && CFNumberGetValue(cfMGPUNum, kCFNumberSInt32Type, (void*)(&_mgpuNum)) && ((cfGPUGen = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @gpu_gen)) != NULL) && CFNumberGetValue(cfGPUGen, kCFNumberSInt32Type, (void*)(&_gpuGeneration))\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2799;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfCoreConfig = createInternalCoreConfigDict(_sharedConnection)) != NULL) && ((cfCoreNum = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @num_cores)) != NULL) && CFNumberGetValue(cfCoreNum, kCFNumberSInt32Type, (void*)(&_coreNum)) && ((cfMGPUNum = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @num_mgpus)) != NULL) && CFNumberGetValue(cfMGPUNum, kCFNumberSInt32Type, (void*)(&_mgpuNum)) && ((cfGPUGen = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @gpu_gen)) != NULL) && CFNumberGetValue(cfGPUGen, kCFNumberSInt32Type, (void*)(&_gpuGeneration))\n", buf, 0x1Cu);
    }

    if (v18)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  *(this + 26) = *(this + 25) / *(this + 24);
  v22 = CFDictionaryGetValue(v14, @"core_mask_list");
  v23 = v22;
  if (v22)
  {
    Count = CFArrayGetCount(v22);
    *outputStructCnt = 0;
    *(this + 27) = 0;
    v25 = Count;
    if (Count)
    {
      v26 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v23, v26);
        if (!ValueAtIndex || !CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, outputStructCnt))
        {
          break;
        }

        v28 = vcnt_s8(*outputStructCnt);
        v28.i16[0] = vaddlv_u8(v28);
        *(this + 27) += v28.i32[0];
        if (v25 == ++v26)
        {
          goto LABEL_56;
        }
      }

      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** ((cfCoreMask = (CFNumberRef)CFArrayGetValueAtIndex(cfCoreMaskList, i)) != NULL) && CFNumberGetValue(cfCoreMask, kCFNumberSInt32Type, (void*)(&coreMask))\n", "AGXGPURawCounterImpl.mm", 2825, "init");
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2825;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfCoreMask = (CFNumberRef)CFArrayGetValueAtIndex(cfCoreMaskList, i)) != NULL) && CFNumberGetValue(cfCoreMask, kCFNumberSInt32Type, (void*)(&coreMask))\n", buf, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2825;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfCoreMask = (CFNumberRef)CFArrayGetValueAtIndex(cfCoreMaskList, i)) != NULL) && CFNumberGetValue(cfCoreMask, kCFNumberSInt32Type, (void*)(&coreMask))\n", buf, 0x1Cu);
      }

LABEL_39:
      CFRelease(v14);
      goto LABEL_12;
    }
  }

  else
  {
    *(this + 27) = *(this + 25);
  }

LABEL_56:
  objc_storeStrong(this + 14, v14);
  CFRelease(v14);
  v29 = (this + 656);
  if (perfCtrSamplerGetSourceNum(this + 164, *(this + 22)))
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** perfCtrSamplerGetSourceNum(&_sourceNum, _sharedConnection) == KERN_SUCCESS\n", "AGXGPURawCounterImpl.mm", 2843, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2843;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** perfCtrSamplerGetSourceNum(&_sourceNum, _sharedConnection) == KERN_SUCCESS\n", buf, 0x1Cu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2843;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    v5 = MEMORY[0x277D86220];
    v6 = "AGXGRC:AGXGRC:%s:%d:%s: *** perfCtrSamplerGetSourceNum(&_sourceNum, _sharedConnection) == KERN_SUCCESS\n";
    goto LABEL_11;
  }

  if (*v29 >= 0x41)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** _sourceNum <= AGXGPURawCounterImpl::kSourceNumMax\n", "AGXGPURawCounterImpl.mm", 2845, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2845;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** _sourceNum <= AGXGPURawCounterImpl::kSourceNumMax\n", buf, 0x1Cu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2845;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    v5 = MEMORY[0x277D86220];
    v6 = "AGXGRC:AGXGRC:%s:%d:%s: *** _sourceNum <= AGXGPURawCounterImpl::kSourceNumMax\n";
    goto LABEL_11;
  }

  if (!*v29)
  {
LABEL_319:
    v7 = 1;
    goto LABEL_13;
  }

  v30 = IORegistryEntryCreateCFProperty(*(this + 2), @"PerfCtrPartitionInfoList", 0, 0);
  v31 = v30;
  if (!v30 || (v32 = CFArrayGetCount(v30), (*(this + 168) = v32) == 0) || (v33 = malloc_type_malloc(44 * v32, 0x1000040D4159EFEuLL), (*(this + 83) = v33) == 0))
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** ((cfPartitionInfoList = (CFArrayRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @PerfCtrPartitionInfoList, NULL, 0)) != NULL) && ((_partitionInfoNum = (uint32_t)CFArrayGetCount(cfPartitionInfoList)) != 0) && ((_partitionInfoList = (PartitionInfo*)malloc(sizeof(PartitionInfo) * _partitionInfoNum)) != NULL)\n", "AGXGPURawCounterImpl.mm", 2860, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2860;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfPartitionInfoList = (CFArrayRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @PerfCtrPartitionInfoList, NULL, 0)) != NULL) && ((_partitionInfoNum = (uint32_t)CFArrayGetCount(cfPartitionInfoList)) != 0) && ((_partitionInfoList = (PartitionInfo*)malloc(sizeof(PartitionInfo) * _partitionInfoNum)) != NULL)\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2860;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      v57 = MEMORY[0x277D86220];
      v58 = "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfPartitionInfoList = (CFArrayRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @PerfCtrPartitionInfoList, NULL, 0)) != NULL) && ((_partitionInfoNum = (uint32_t)CFArrayGetCount(cfPartitionInfoList)) != 0) && ((_partitionInfoList = (PartitionInfo*)malloc(sizeof(PartitionInfo) * _partitionInfoNum)) != NULL)\n";
      goto LABEL_114;
    }

    goto LABEL_115;
  }

  bzero(v33, 44 * *(this + 168));
  v34 = 2;
  if (*(this + 23) >= 0xEu)
  {
    if (*(this + 24) < 2u)
    {
      v34 = 2;
    }

    else
    {
      v34 = 3;
    }
  }

  *(this + 169) = v34;
  if (*(this + 168))
  {
    v35 = 0;
    while (1)
    {
      v36 = CFArrayGetValueAtIndex(v31, v35);
      v37 = v36;
      if (!v36)
      {
        break;
      }

      v38 = CFDictionaryGetValue(v36, @"index");
      v39 = CFDictionaryGetValue(v37, @"name");
      v40 = CFDictionaryGetValue(v37, @"free_num");
      v41 = CFDictionaryGetValue(v37, @"source_mask");
      v42 = v41;
      *outputStructCnt = 0;
      if (!v38 && !v40 && !v41)
      {
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (cfIndex != NULL) || (cfFreeNum != NULL) || (cfSourceMask != NULL)\n", "AGXGPURawCounterImpl.mm", 2878, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2878;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfIndex != NULL) || (cfFreeNum != NULL) || (cfSourceMask != NULL)\n", buf, 0x1Cu);
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_115;
        }

        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2878;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        v57 = MEMORY[0x277D86220];
        v58 = "AGXGRC:AGXGRC:%s:%d:%s: *** (cfIndex != NULL) || (cfFreeNum != NULL) || (cfSourceMask != NULL)\n";
        goto LABEL_114;
      }

      if (!CFNumberGetValue(v38, kCFNumberSInt32Type, outputStructCnt))
      {
        goto LABEL_117;
      }

      v43 = *outputStructCnt;
      if (*outputStructCnt >= *(this + 168))
      {
        goto LABEL_117;
      }

      if (v39)
      {
        if (!CFStringGetCString(v39, (*(this + 83) + 44 * *outputStructCnt + 4), 32, 0x8000100u))
        {
          goto LABEL_117;
        }

        v43 = *outputStructCnt;
      }

      if (!CFNumberGetValue(v40, kCFNumberSInt32Type, (*(this + 83) + 44 * v43 + 36)) || !CFNumberGetValue(v42, kCFNumberSInt32Type, (*(this + 83) + 44 * *outputStructCnt + 40)))
      {
LABEL_117:
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** CFNumberGetValue (cfIndex, kCFNumberSInt32Type, &index) && (index < _partitionInfoNum) && ((cfName == NULL) || CFStringGetCString(cfName, _partitionInfoList[index].name, sizeof(_partitionInfoList[index].name), kCFStringEncodingUTF8)) && CFNumberGetValue (cfFreeNum, kCFNumberSInt32Type, &_partitionInfoList[index].availableCounterNum) && CFNumberGetValue (cfSourceMask, kCFNumberSInt32Type, &_partitionInfoList[index].sourceMask)\n", "AGXGPURawCounterImpl.mm", 2884, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2884;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** CFNumberGetValue (cfIndex, kCFNumberSInt32Type, &index) && (index < _partitionInfoNum) && ((cfName == NULL) || CFStringGetCString(cfName, _partitionInfoList[index].name, sizeof(_partitionInfoList[index].name), kCFStringEncodingUTF8)) && CFNumberGetValue (cfFreeNum, kCFNumberSInt32Type, &_partitionInfoList[index].availableCounterNum) && CFNumberGetValue (cfSourceMask, kCFNumberSInt32Type, &_partitionInfoList[index].sourceMask)\n", buf, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2884;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          v57 = MEMORY[0x277D86220];
          v58 = "AGXGRC:AGXGRC:%s:%d:%s: *** CFNumberGetValue (cfIndex, kCFNumberSInt32Type, &index) && (index < _partitionInfoNum) && ((cfName == NULL) || CFStringGetCString(cfName, _partitionInfoList[index].name, sizeof(_partitionInfoList[index].name), kCFStringEncodingUTF8)) && CFNumberGetValue (cfFreeNum, kCFNumberSInt32Type, &_partitionInfoList[index].availableCounterNum) && CFNumberGetValue (cfSourceMask, kCFNumberSInt32Type, &_partitionInfoList[index].sourceMask)\n";
          goto LABEL_114;
        }

LABEL_115:
        if (!v31)
        {
          goto LABEL_12;
        }

LABEL_116:
        CFRelease(v31);
        goto LABEL_12;
      }

      if (++v35 >= *(this + 168))
      {
        goto LABEL_84;
      }
    }

    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** info != NULL\n", "AGXGPURawCounterImpl.mm", 2870, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2870;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** info != NULL\n", buf, 0x1Cu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_115;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2870;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    v57 = MEMORY[0x277D86220];
    v58 = "AGXGRC:AGXGRC:%s:%d:%s: *** info != NULL\n";
LABEL_114:
    _os_log_impl(&dword_23C542000, v57, OS_LOG_TYPE_INFO, v58, buf, 0x1Cu);
    goto LABEL_115;
  }

LABEL_84:
  CFRelease(v31);
  v44 = objc_autoreleasePoolPush();
  v45 = IORegistryEntryCreateCFProperty(*(this + 2), @"MetalPluginName", 0, 0);
  v31 = v45;
  if (!v45 || !CFStringGetCString(v45, buf, 256, 0x8000100u))
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** ((cfMmetalPluginName = (CFStringRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @MetalPluginName, NULL, 0)) != NULL) && CFStringGetCString(cfMmetalPluginName, metalPluginName, sizeof(metalPluginName), kCFStringEncodingUTF8)\n", "AGXGPURawCounterImpl.mm", 2904, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 2904;
      v208 = 2080;
      v209 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfMmetalPluginName = (CFStringRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @MetalPluginName, NULL, 0)) != NULL) && CFStringGetCString(cfMmetalPluginName, metalPluginName, sizeof(metalPluginName), kCFStringEncodingUTF8)\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 2904;
      v208 = 2080;
      v209 = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfMmetalPluginName = (CFStringRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @MetalPluginName, NULL, 0)) != NULL) && CFStringGetCString(cfMmetalPluginName, metalPluginName, sizeof(metalPluginName), kCFStringEncodingUTF8)\n", outputStructCnt, 0x1Cu);
    }

    objc_autoreleasePoolPop(v44);
    if (!v31)
    {
      goto LABEL_12;
    }

    goto LABEL_116;
  }

  CFRelease(v31);
  v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"/AppleInternal/Library/AGX/Performance/%s/AGXMetalPerfCounters.plist", buf];
  v47 = v46;
  if (!v46)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** plistPath != nil\n", "AGXGPURawCounterImpl.mm", 2910, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 2910;
      v208 = 2080;
      v209 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** plistPath != nil\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 2910;
      v208 = 2080;
      v209 = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** plistPath != nil\n", outputStructCnt, 0x1Cu);
    }

    goto LABEL_266;
  }

  v48 = v46;
  theDict = cfDictionaryCreateFromPlist([v47 UTF8String]);
  if (theDict)
  {
    goto LABEL_88;
  }

  v59 = MEMORY[0x277CCA8D8];
  v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%s.bundle", buf, 0];
  v61 = [v59 bundleWithPath:v60];

  if (!v61)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** driverBundle != nil\n", "AGXGPURawCounterImpl.mm", 2921, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 2921;
      v208 = 2080;
      v209 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** driverBundle != nil\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 2921;
      v208 = 2080;
      v209 = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** driverBundle != nil\n", outputStructCnt, 0x1Cu);
    }

    goto LABEL_266;
  }

  v62 = [v61 pathForResource:@"AGXMetalPerfCounters" ofType:@"plist"];

  v63 = v62;
  theDict = cfDictionaryCreateFromPlist([v62 UTF8String]);

  if (theDict)
  {
    v47 = v62;
    goto LABEL_88;
  }

  v147 = MEMORY[0x277CCA8D8];
  v148 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%s.bundle", buf, 0];
  v149 = [v147 bundleWithPath:v148];

  if (!v149)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** driverBundle != nil\n", "AGXGPURawCounterImpl.mm", 2935, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 2935;
      v208 = 2080;
      v209 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** driverBundle != nil\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 2935;
      v208 = 2080;
      v209 = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** driverBundle != nil\n", outputStructCnt, 0x1Cu);
    }

    goto LABEL_265;
  }

  v47 = [v149 pathForResource:@"AGXMetalPerfCountersExternal" ofType:@"plist"];

  v150 = v47;
  theDict = cfDictionaryCreateFromPlist([v47 UTF8String]);
  if (!theDict)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (cfDict = cfDictionaryCreateFromPlist([plistPath UTF8String])) != NULL\n", "AGXGPURawCounterImpl.mm", 2941, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 2941;
      v208 = 2080;
      v209 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfDict = cfDictionaryCreateFromPlist([plistPath UTF8String])) != NULL\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 2941;
      v208 = 2080;
      v209 = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfDict = cfDictionaryCreateFromPlist([plistPath UTF8String])) != NULL\n", outputStructCnt, 0x1Cu);
    }

    v62 = v47;
LABEL_265:

LABEL_266:
    objc_autoreleasePoolPop(v44);
    goto LABEL_12;
  }

  *(this + 120) = 1;

LABEL_88:
  objc_autoreleasePoolPop(v44);
  v49 = *v29;
  if (*v29)
  {
    v50 = 0;
    v51 = __s1;
    do
    {
      if (perfCtrSamplerGetSourceInfo(v50, v51, *(this + 22)))
      {
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** perfCtrSamplerGetSourceInfo(sourceIdx, &sourceInfo, _sharedConnection) == KERN_SUCCESS\n", "AGXGPURawCounterImpl.mm", 2959, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2959;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** perfCtrSamplerGetSourceInfo(sourceIdx, &sourceInfo, _sharedConnection) == KERN_SUCCESS\n", buf, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2959;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** perfCtrSamplerGetSourceInfo(sourceIdx, &sourceInfo, _sharedConnection) == KERN_SUCCESS\n", buf, 0x1Cu);
        }

        theString2 = 0;
        goto LABEL_342;
      }

      ++v50;
      v49 = *v29;
      v51 += 11;
    }

    while (v50 < *v29);
  }

  buf[0] = 0;
  memset(&buf[4], 0, 28);
  if (v49 == 1)
  {
    v52 = 1;
  }

  else
  {
    v52 = ~(-1 << v49) & 6;
  }

  v195 = v52;
  if (*(this + 120))
  {
    v53 = "_423ccc54aeb6a01f9abb7b533d6542a7d502c505be6e14c69056cc6886c4d1b5";
  }

  else
  {
    v53 = "GBL_USC_PROFILE_DATA_00_USC_00";
  }

  theString2 = CFStringCreateWithCString(v16, v53, 0x8000100u);
  if (!theString2)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (cfShaderProfilerCounterName = CFStringCreateWithCString(kCFAllocatorDefault, shaderProfilerCounterName, kCFStringEncodingUTF8)) != NULL\n", "AGXGPURawCounterImpl.mm", 2982, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 2982;
      v208 = 2080;
      v209 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfShaderProfilerCounterName = CFStringCreateWithCString(kCFAllocatorDefault, shaderProfilerCounterName, kCFStringEncodingUTF8)) != NULL\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 2982;
      v208 = 2080;
      v209 = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfShaderProfilerCounterName = CFStringCreateWithCString(kCFAllocatorDefault, shaderProfilerCounterName, kCFStringEncodingUTF8)) != NULL\n", outputStructCnt, 0x1Cu);
    }

    theString2 = 0;
    goto LABEL_284;
  }

  v54 = *v29;
  if (!v54)
  {
    v56 = 0;
    goto LABEL_166;
  }

  if (v54 > 7)
  {
    v55 = v54 & 0xFFFFFFF8;
    v65 = v246;
    v66 = 0uLL;
    v67.i64[0] = 0x1F0000001FLL;
    v67.i64[1] = 0x1F0000001FLL;
    v68 = v55;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    do
    {
      v72.i32[0] = *(v65 - 44);
      v72.i32[1] = *(v65 - 33);
      v72.i32[2] = *(v65 - 22);
      v72.i32[3] = *(v65 - 11);
      v73.i32[0] = *v65;
      v73.i32[1] = v65[11];
      v73.i32[2] = v65[22];
      v73.i32[3] = v65[33];
      v74 = vbicq_s8(v72, vceqzq_s32(vandq_s8(v72, v67)));
      v75 = vbicq_s8(v73, vceqzq_s32(vandq_s8(v73, v67)));
      v76.i64[0] = v74.u32[0];
      v76.i64[1] = v74.u32[1];
      v77 = v76;
      v76.i64[0] = v74.u32[2];
      v76.i64[1] = v74.u32[3];
      v78 = v76;
      v76.i64[0] = v75.u32[0];
      v76.i64[1] = v75.u32[1];
      v79 = v76;
      v76.i64[0] = v75.u32[2];
      v76.i64[1] = v75.u32[3];
      v69 = vorrq_s8(v69, v78);
      v66 = vorrq_s8(v66, v77);
      v71 = vorrq_s8(v71, v76);
      v70 = vorrq_s8(v70, v79);
      v65 += 88;
      v68 -= 8;
    }

    while (v68);
    v80 = vorrq_s8(vorrq_s8(v70, v66), vorrq_s8(v71, v69));
    v56 = vorr_s8(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
    if (v55 == v54)
    {
      goto LABEL_166;
    }
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  v81 = v54 - v55;
  v82 = &__s1[11 * v55 + 10];
  do
  {
    v84 = *v82;
    v82 += 11;
    LODWORD(v83) = v84;
    if ((v84 & 0x1F) != 0)
    {
      v83 = v83;
    }

    else
    {
      v83 = 0;
    }

    *&v56 |= v83;
    --v81;
  }

  while (v81);
LABEL_166:
  *&buf[4] = 8;
  *&buf[16] = 0;
  theArray = CFDictionaryGetValue(theDict, @"DeviceCounters");
  if (theArray && (v85 = CFArrayGetCount(theArray), (v199 = v85) != 0))
  {
    v196 = 0;
    v197 = 0;
    v86 = 1;
    while (2)
    {
      v87 = 0;
      v200 = 0;
      v198 = v86;
      do
      {
        v89 = CFArrayGetValueAtIndex(theArray, v87);
        if (v89 && (v90 = CFDictionaryGetValue(theDict, v89), (v91 = v90) != 0))
        {
          v92 = CFDictionaryGetValue(v90, @"Partition");
          v93 = CFDictionaryGetValue(v91, @"Select");
          v94 = &stru_284F298A0;
          if ((*(this + 120) & 1) == 0)
          {
            v94 = CFDictionaryGetValue(v91, @"Description");
          }

          v95 = CFDictionaryGetValue(v91, @"Flag");
          v96 = 1;
        }

        else
        {
          v92 = 0;
          v96 = 0;
          v93 = 0;
          v95 = 0;
          if (*(this + 120))
          {
            v94 = &stru_284F298A0;
          }

          else
          {
            v94 = 0;
          }
        }

        valuePtr = 0;
        if (!v96 || !v92 || !v93 || !v94)
        {
          fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (cfPerfCtrInfo != NULL) && (cfPerfCtrPartition != NULL) && (cfPerfCtrSelect != NULL) && (cfPerfCtrDesc != NULL)\n", "AGXGPURawCounterImpl.mm", 3026, "init");
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *outputStructCnt = 136315650;
            *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
            v206 = 1024;
            v207 = 3026;
            v208 = 2080;
            v209 = "init";
            _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfPerfCtrInfo != NULL) && (cfPerfCtrPartition != NULL) && (cfPerfCtrSelect != NULL) && (cfPerfCtrDesc != NULL)\n", outputStructCnt, 0x1Cu);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *outputStructCnt = 136315650;
            *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
            v206 = 1024;
            v207 = 3026;
            v208 = 2080;
            v209 = "init";
            v145 = MEMORY[0x277D86220];
            v146 = "AGXGRC:AGXGRC:%s:%d:%s: *** (cfPerfCtrInfo != NULL) && (cfPerfCtrPartition != NULL) && (cfPerfCtrSelect != NULL) && (cfPerfCtrDesc != NULL)\n";
            goto LABEL_283;
          }

          goto LABEL_284;
        }

        if (!CFNumberGetValue(v92, kCFNumberSInt32Type, &valuePtr + 4) || (v97 = HIDWORD(valuePtr), HIDWORD(valuePtr) >= *(this + 168)))
        {
          fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** CFNumberGetValue(cfPerfCtrPartition, kCFNumberSInt32Type, &perfCtrPartition) && (perfCtrPartition < _partitionInfoNum)\n", "AGXGPURawCounterImpl.mm", 3027, "init");
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *outputStructCnt = 136315650;
            *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
            v206 = 1024;
            v207 = 3027;
            v208 = 2080;
            v209 = "init";
            _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** CFNumberGetValue(cfPerfCtrPartition, kCFNumberSInt32Type, &perfCtrPartition) && (perfCtrPartition < _partitionInfoNum)\n", outputStructCnt, 0x1Cu);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *outputStructCnt = 136315650;
            *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
            v206 = 1024;
            v207 = 3027;
            v208 = 2080;
            v209 = "init";
            v145 = MEMORY[0x277D86220];
            v146 = "AGXGRC:AGXGRC:%s:%d:%s: *** CFNumberGetValue(cfPerfCtrPartition, kCFNumberSInt32Type, &perfCtrPartition) && (perfCtrPartition < _partitionInfoNum)\n";
            goto LABEL_283;
          }

          goto LABEL_284;
        }

        if (v95)
        {
          if (!CFNumberGetValue(v95, kCFNumberSInt32Type, &valuePtr))
          {
            fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (cfPerfCtrFlag == NULL) || CFNumberGetValue(cfPerfCtrFlag, kCFNumberSInt32Type, &perfCtrFlag)\n", "AGXGPURawCounterImpl.mm", 3028, "init");
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *outputStructCnt = 136315650;
              *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
              v206 = 1024;
              v207 = 3028;
              v208 = 2080;
              v209 = "init";
              _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfPerfCtrFlag == NULL) || CFNumberGetValue(cfPerfCtrFlag, kCFNumberSInt32Type, &perfCtrFlag)\n", outputStructCnt, 0x1Cu);
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *outputStructCnt = 136315650;
              *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
              v206 = 1024;
              v207 = 3028;
              v208 = 2080;
              v209 = "init";
              v145 = MEMORY[0x277D86220];
              v146 = "AGXGRC:AGXGRC:%s:%d:%s: *** (cfPerfCtrFlag == NULL) || CFNumberGetValue(cfPerfCtrFlag, kCFNumberSInt32Type, &perfCtrFlag)\n";
              goto LABEL_283;
            }

            goto LABEL_284;
          }

          v97 = HIDWORD(valuePtr);
        }

        v98 = *(*(this + 83) + 44 * v97 + 40);
        if (v98)
        {
          if (v198)
          {
            Length = CFStringGetLength(v89);
            *&buf[16] += ((Length + 1) + *&buf[4] - 1) & -*&buf[4];
            v100 = CFStringGetLength(v94);
            *&buf[16] += ((v100 + 1) + *&buf[4] - 1) & -*&buf[4];
            v196 |= v98;
            v88 = v197 || CFStringCompare(v89, theString2, 0) == kCFCompareEqualTo;
            v197 = v88;
          }

          else
          {
            v101 = *(this + 16);
            v102 = CFStringGetLength(v89);
            v103 = v101 + 56 * v200;
            *(v103 + 16) = v102;
            v104 = StackAllocator::reserve(buf, v102 + 1);
            *v103 = v104;
            if (!v104)
            {
              fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (counterDesc.name = (char*)(allocator.reserve(counterDesc.nameLen + 1))) != NULL\n", "AGXGPURawCounterImpl.mm", 3063, "init");
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v206 = 1024;
                v207 = 3063;
                v208 = 2080;
                v209 = "init";
                _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.name = (char*)(allocator.reserve(counterDesc.nameLen + 1))) != NULL\n", outputStructCnt, 0x1Cu);
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v206 = 1024;
                v207 = 3063;
                v208 = 2080;
                v209 = "init";
                v145 = MEMORY[0x277D86220];
                v146 = "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.name = (char*)(allocator.reserve(counterDesc.nameLen + 1))) != NULL\n";
                goto LABEL_283;
              }

              goto LABEL_284;
            }

            CFStringGetCString(v89, v104, (*(v103 + 16) + 1), 0x8000100u);
            v105 = CFStringGetLength(v94);
            *(v103 + 20) = v105;
            v106 = StackAllocator::reserve(buf, v105 + 1);
            *(v103 + 8) = v106;
            if (!v106)
            {
              fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (counterDesc.description = (char*)(allocator.reserve(counterDesc.descriptionLen + 1))) != NULL\n", "AGXGPURawCounterImpl.mm", 3068, "init");
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v206 = 1024;
                v207 = 3068;
                v208 = 2080;
                v209 = "init";
                _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.description = (char*)(allocator.reserve(counterDesc.descriptionLen + 1))) != NULL\n", outputStructCnt, 0x1Cu);
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v206 = 1024;
                v207 = 3068;
                v208 = 2080;
                v209 = "init";
                v145 = MEMORY[0x277D86220];
                v146 = "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.description = (char*)(allocator.reserve(counterDesc.descriptionLen + 1))) != NULL\n";
                goto LABEL_283;
              }

              goto LABEL_284;
            }

            CFStringGetCString(v94, v106, (*(v103 + 20) + 1), 0x8000100u);
            CFNumberGetValue(v92, kCFNumberSInt64Type, (v103 + 28));
            CFNumberGetValue(v93, kCFNumberSInt64Type, (v103 + 32));
            *(v103 + 40) = v98;
            v107 = valuePtr;
            if ((valuePtr & 8) != 0)
            {
              v109 = 1;
            }

            else
            {
              v108 = *(v103 + 28);
              if (v108)
              {
                v109 = v108 >= *(this + 169);
              }

              else
              {
                v109 = sAGXSWCounterValueTypeList[*(v103 + 32)];
              }
            }

            *(v103 + 24) = v109;
            *(v103 + 48) = v107;
          }

          ++v200;
        }

        ++v87;
      }

      while (v199 != v87);
      if ((v198 & 1) == 0)
      {
        v119 = 0;
        v120 = &dword_278BC00E8;
        while (1)
        {
          v121 = *(this + 16) + 56 * (v200 + v119);
          v122 = *(v120 - 2);
          v123 = strlen(v122);
          *(v121 + 16) = v123;
          v124 = (v123 + 1);
          v125 = StackAllocator::reserve(buf, v124);
          v126 = v125;
          if (v124)
          {
            v127 = v125 == 0;
          }

          else
          {
            v127 = 1;
          }

          if (!v127)
          {
            memcpy(v125, v122, v124);
          }

          *v121 = v126;
          v128 = *(v120 - 1);
          v129 = strlen(v128);
          *(v121 + 20) = v129;
          v130 = (v129 + 1);
          v131 = StackAllocator::reserve(buf, v130);
          v132 = v131;
          if (v130)
          {
            v133 = v131 == 0;
          }

          else
          {
            v133 = 1;
          }

          if (!v133)
          {
            memcpy(v131, v128, v130);
          }

          *(v121 + 8) = v132;
          if (!v132 || *v121 == 0)
          {
            break;
          }

          v135 = *v120;
          v120 += 6;
          *(v121 + 24) = v135;
          *(v121 + 28) = -1;
          *(v121 + 32) = v119;
          *(v121 + 40) = v56;
          if (++v119 == 8)
          {
            v136 = v200 + 8;
            if (v197 && *(this + 26))
            {
              v137 = 0;
              while (1)
              {
                v138 = *(this + 16) + 56 * (v200 + 8 + v137);
                *(v138 + 16) = 27;
                v139 = StackAllocator::reserve(buf, 0x1Cu);
                if (v139)
                {
                  strcpy(v139, "GRC_SHADER_PROFILER_DATA_00");
                }

                *v138 = v139;
                *(v138 + 20) = 64;
                v140 = StackAllocator::reserve(buf, 0x41u);
                if (!v140)
                {
                  break;
                }

                strcpy(v140, "Virtual counter to read shader profiler trace buffer from USC 00");
                *(v138 + 8) = v140;
                v141 = *v138;
                if (!*v138)
                {
                  goto LABEL_347;
                }

                *(v138 + 24) = 1;
                v142 = v137 / 0xA + 48;
                *(v141 + (*(v138 + 16) - 2)) = v142;
                v143 = (v137 % 0xA) | 0x30;
                *(*v138 + (*(v138 + 16) - 1)) = v143;
                *(*(v138 + 8) + (*(v138 + 20) - 2)) = v142;
                *(*(v138 + 8) + (*(v138 + 20) - 1)) = v143;
                *(v138 + 28) = -2;
                *(v138 + 32) = v137;
                *(v138 + 40) = v195;
                if (++v137 >= *(this + 26))
                {
                  v136 = v200 + 8 + v137;
                  goto LABEL_236;
                }
              }

              *(v138 + 8) = 0;
LABEL_347:
              fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (counterDesc.name != NULL) && (counterDesc.description != NULL)\n", "AGXGPURawCounterImpl.mm", 3168, "init");
              v188 = MEMORY[0x277D86220];
              v189 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v206 = 1024;
                v207 = 3168;
                v208 = 2080;
                v209 = "init";
                _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.name != NULL) && (counterDesc.description != NULL)\n", outputStructCnt, 0x1Cu);
              }

              v190 = v188;
              if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v206 = 1024;
                v207 = 3168;
                v208 = 2080;
                v209 = "init";
                _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.name != NULL) && (counterDesc.description != NULL)\n", outputStructCnt, 0x1Cu);
              }
            }

            else
            {
LABEL_236:
              if (*&buf[16] == *&buf[24] && v136 == *(this + 34))
              {
                buf[0] = 0;
                memset(&buf[4], 0, 28);
                goto LABEL_239;
              }

              fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (allocator.free() == 0) && (perfCtrIdx == _masterCounterNum)\n", "AGXGPURawCounterImpl.mm", 3185, "init");
              v192 = MEMORY[0x277D86220];
              v193 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v206 = 1024;
                v207 = 3185;
                v208 = 2080;
                v209 = "init";
                _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (allocator.free() == 0) && (perfCtrIdx == _masterCounterNum)\n", outputStructCnt, 0x1Cu);
              }

              v194 = v192;
              if (os_log_type_enabled(v192, OS_LOG_TYPE_INFO))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v206 = 1024;
                v207 = 3185;
                v208 = 2080;
                v209 = "init";
                _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** (allocator.free() == 0) && (perfCtrIdx == _masterCounterNum)\n", outputStructCnt, 0x1Cu);
              }
            }

            goto LABEL_284;
          }
        }

        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (counterDesc.name != NULL) && (counterDesc.description != NULL)\n", "AGXGPURawCounterImpl.mm", 3147, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *outputStructCnt = 136315650;
          *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
          v206 = 1024;
          v207 = 3147;
          v208 = 2080;
          v209 = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.name != NULL) && (counterDesc.description != NULL)\n", outputStructCnt, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *outputStructCnt = 136315650;
          *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
          v206 = 1024;
          v207 = 3147;
          v208 = 2080;
          v209 = "init";
          v145 = MEMORY[0x277D86220];
          v146 = "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.name != NULL) && (counterDesc.description != NULL)\n";
          goto LABEL_283;
        }

        break;
      }

      if (v200 && v196)
      {
        v110 = -*&buf[4];
        v111 = vdupq_n_s64(*&buf[4]);
        v112 = vdupq_n_s64(v110);
        v113 = vandq_s8(vaddq_s64(v111, xmmword_23C553C00), v112);
        v114 = vandq_s8(vaddq_s64(v111, xmmword_23C553BF0), v112);
        v114.i64[0] *= 3;
        v114.i64[1] *= 2;
        v115 = vaddvq_s64(vaddq_s64(v114, vaddq_s64(vandq_s8(vaddq_s64(v111, xmmword_23C553C20), v112), vaddq_s64(vaddq_s64(v113, v113), vandq_s8(vaddq_s64(v111, xmmword_23C553C10), v112))))) + ((*&buf[4] + 95) & v110) + ((*&buf[4] + 52) & v110) + ((*&buf[4] + 56) & v110) + *&buf[16];
        v116 = v200 + 8;
        if (v197)
        {
          v117 = *(this + 26);
          if (v117)
          {
            v118 = ((*&buf[4] + 27) & v110) + ((*&buf[4] + 64) & v110);
            v115 += v118 + v118 * (v117 - 1);
            v116 = v117 + v200 + 8;
          }
        }

        *&buf[16] = ((*&buf[4] + 56 * v116 - 1) & v110) + v115;
        StackAllocator::init(buf, *&buf[16]);
        *(this + 16) = *&buf[8];
        *(this + 34) = v116;
        if (StackAllocator::reserve(buf, 56 * v116))
        {
LABEL_239:
          v86 = 0;
          if (v198)
          {
            continue;
          }

          CFRelease(theDict);
          CFRelease(theString2);
          qsort_b(*(this + 16), *(this + 34), 0x38uLL, &__block_literal_global_149);
          v144 = 0;
          theString2 = 0;
          theDict = 0;
          goto LABEL_285;
        }

        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** allocator.reserve(sizeof(CounterDescImpl) * _masterCounterNum) != NULL\n", "AGXGPURawCounterImpl.mm", 3131, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *outputStructCnt = 136315650;
          *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
          v206 = 1024;
          v207 = 3131;
          v208 = 2080;
          v209 = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** allocator.reserve(sizeof(CounterDescImpl) * _masterCounterNum) != NULL\n", outputStructCnt, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *outputStructCnt = 136315650;
          *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
          v206 = 1024;
          v207 = 3131;
          v208 = 2080;
          v209 = "init";
          v145 = MEMORY[0x277D86220];
          v146 = "AGXGRC:AGXGRC:%s:%d:%s: *** allocator.reserve(sizeof(CounterDescImpl) * _masterCounterNum) != NULL\n";
          goto LABEL_283;
        }
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (perfCtrIdx != 0) && (sourceMaskAll != 0)\n", "AGXGPURawCounterImpl.mm", 3101, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *outputStructCnt = 136315650;
          *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
          v206 = 1024;
          v207 = 3101;
          v208 = 2080;
          v209 = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (perfCtrIdx != 0) && (sourceMaskAll != 0)\n", outputStructCnt, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *outputStructCnt = 136315650;
          *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
          v206 = 1024;
          v207 = 3101;
          v208 = 2080;
          v209 = "init";
          v145 = MEMORY[0x277D86220];
          v146 = "AGXGRC:AGXGRC:%s:%d:%s: *** (perfCtrIdx != 0) && (sourceMaskAll != 0)\n";
          goto LABEL_283;
        }
      }

      break;
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** ((perfCtrList = (CFArrayRef)CFDictionaryGetValue(cfDict, @DeviceCounters)) != NULL) && ((perfCtrNum = (uint32_t)CFArrayGetCount(perfCtrList)) != 0)\n", "AGXGPURawCounterImpl.mm", 3004, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 3004;
      v208 = 2080;
      v209 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** ((perfCtrList = (CFArrayRef)CFDictionaryGetValue(cfDict, @DeviceCounters)) != NULL) && ((perfCtrNum = (uint32_t)CFArrayGetCount(perfCtrList)) != 0)\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v206 = 1024;
      v207 = 3004;
      v208 = 2080;
      v209 = "init";
      v145 = MEMORY[0x277D86220];
      v146 = "AGXGRC:AGXGRC:%s:%d:%s: *** ((perfCtrList = (CFArrayRef)CFDictionaryGetValue(cfDict, @DeviceCounters)) != NULL) && ((perfCtrNum = (uint32_t)CFArrayGetCount(perfCtrList)) != 0)\n";
LABEL_283:
      _os_log_impl(&dword_23C542000, v145, OS_LOG_TYPE_INFO, v146, outputStructCnt, 0x1Cu);
    }
  }

LABEL_284:
  v144 = 6;
LABEL_285:
  if (buf[0] == 1)
  {
    free(*&buf[8]);
  }

  if (v144 == 6)
  {
    goto LABEL_342;
  }

  v151 = *(this + 34);
  if (v151)
  {
    v152 = *(this + 164);
    if (!v152)
    {
      goto LABEL_316;
    }

    v153 = 0;
    v154 = *(this + 16);
    do
    {
      v155 = *(v154 + 56 * v153 + 40);
      v156 = v211;
      v157 = v245;
      v158 = v152;
      do
      {
        v159 = *v157;
        v157 += 11;
        if ((v155 & v159) != 0)
        {
          ++*v156;
        }

        ++v156;
        --v158;
      }

      while (v158);
      ++v153;
    }

    while (v153 != v151);
  }

  else
  {
    v152 = *v29;
    if (!v152)
    {
      goto LABEL_316;
    }
  }

  for (i = 0; i < v152; ++i)
  {
    v161 = v211[i];
    if (v161)
    {
      v162 = malloc_type_malloc(4 * v161, 0x100004052888210uLL);
      v212[i] = v162;
      if (!v162)
      {
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** sourceCounterIdxList[i] != NULL\n", "AGXGPURawCounterImpl.mm", 3243, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3243;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** sourceCounterIdxList[i] != NULL\n", buf, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3243;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** sourceCounterIdxList[i] != NULL\n", buf, 0x1Cu);
        }

        goto LABEL_342;
      }

      v211[i] = 0;
      v152 = *v29;
    }
  }

  v163 = *(this + 34);
  if (v163)
  {
    if (v152)
    {
      v164 = 0;
      v165 = *(this + 16);
      v166 = 1;
      do
      {
        if (v166)
        {
          v167 = 0;
          v168 = *(v165 + 56 * v164 + 40);
          v169 = v245;
          do
          {
            v170 = *v169;
            v169 += 11;
            if ((v168 & v170) != 0)
            {
              v171 = v211[v167];
              *(v212[v167] + v171) = v164;
              v211[v167] = v171 + 1;
              v152 = *v29;
            }

            ++v167;
          }

          while (v167 < v152);
          v163 = *(this + 34);
          v166 = v152;
        }

        ++v164;
      }

      while (v164 < v163);
      goto LABEL_317;
    }

LABEL_316:
    *(this + 170) = 0x4000;
    v7 = 1;
    goto LABEL_13;
  }

LABEL_317:
  *(this + 170) = 0x4000;
  if (!v152)
  {
    goto LABEL_319;
  }

  v172 = 0;
  v173 = __s1;
  v174 = v212;
  while (1)
  {
    if (!*(v173 + 8))
    {
      free(*v174);
      v175 = v174;
      goto LABEL_321;
    }

    v176 = AGXGPURawCounterImpl::chipDispatchTableForSource(*(this + 23), *(this + 24), *(this + 26), v173, v64);
    if (!v176)
    {
      break;
    }

    v177 = this + 8 * v172;
    if (*(v177 + 18))
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** _sourceList[sourceIdx] == nullptr\n", "AGXGPURawCounterImpl.mm", 3285, "init");
      v182 = MEMORY[0x277D86220];
      v183 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3285;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** _sourceList[sourceIdx] == nullptr\n", buf, 0x1Cu);
      }

      v184 = v182;
      if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3285;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** _sourceList[sourceIdx] == nullptr\n", buf, 0x1Cu);
      }

      goto LABEL_341;
    }

    v178 = (*v176)(this, v172, v173, *v174, v211[v172], v176);
    *(v177 + 18) = v178;
    if (!v178)
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (_sourceList[sourceIdx] = chipDispatchTable->createSource( this, sourceIdx, &sourceInfo, sourceCounterIdxList[sourceIdx], sourceCounterIdxNum [sourceIdx], chipDispatchTable)) != nullptr\n", "AGXGPURawCounterImpl.mm", 3292, "init");
      v185 = MEMORY[0x277D86220];
      v186 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3292;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (_sourceList[sourceIdx] = chipDispatchTable->createSource( this, sourceIdx, &sourceInfo, sourceCounterIdxList[sourceIdx], sourceCounterIdxNum [sourceIdx], chipDispatchTable)) != nullptr\n", buf, 0x1Cu);
      }

      v187 = v185;
      if (os_log_type_enabled(v185, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3292;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** (_sourceList[sourceIdx] = chipDispatchTable->createSource( this, sourceIdx, &sourceInfo, sourceCounterIdxList[sourceIdx], sourceCounterIdxNum [sourceIdx], chipDispatchTable)) != nullptr\n", buf, 0x1Cu);
      }

      goto LABEL_341;
    }

    v175 = &v212[v172];
LABEL_321:
    *v175 = 0;
    ++v172;
    ++v174;
    v173 += 44;
    v7 = 1;
    if (v172 >= *v29)
    {
      goto LABEL_13;
    }
  }

  fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** chipDispatchTable != nullptr\n", "AGXGPURawCounterImpl.mm", 3284, "init");
  v179 = MEMORY[0x277D86220];
  v180 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3284;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** chipDispatchTable != nullptr\n", buf, 0x1Cu);
  }

  v181 = v179;
  if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3284;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** chipDispatchTable != nullptr\n", buf, 0x1Cu);
  }

LABEL_341:

LABEL_342:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (theString2)
  {
    CFRelease(theString2);
  }

LABEL_12:
  free(v212[0]);
  free(v212[1]);
  free(v213);
  free(*(&v213 + 1));
  free(v214);
  free(*(&v214 + 1));
  free(v215);
  free(*(&v215 + 1));
  free(v216);
  free(*(&v216 + 1));
  free(v217);
  free(*(&v217 + 1));
  free(v218);
  free(*(&v218 + 1));
  free(v219);
  free(*(&v219 + 1));
  free(v220);
  free(*(&v220 + 1));
  free(v221);
  free(*(&v221 + 1));
  free(v222);
  free(*(&v222 + 1));
  free(v223);
  free(*(&v223 + 1));
  free(v224);
  free(*(&v224 + 1));
  free(v225);
  free(*(&v225 + 1));
  free(v226);
  free(*(&v226 + 1));
  free(v227);
  free(*(&v227 + 1));
  free(v228);
  free(*(&v228 + 1));
  free(v229);
  free(*(&v229 + 1));
  free(v230);
  free(*(&v230 + 1));
  free(v231);
  free(*(&v231 + 1));
  free(v232);
  free(*(&v232 + 1));
  free(v233);
  free(*(&v233 + 1));
  free(v234);
  free(*(&v234 + 1));
  free(v235);
  free(*(&v235 + 1));
  free(v236);
  free(*(&v236 + 1));
  free(v237);
  free(*(&v237 + 1));
  free(v238);
  free(*(&v238 + 1));
  free(v239);
  free(*(&v239 + 1));
  free(v240);
  free(*(&v240 + 1));
  free(v241);
  free(*(&v241 + 1));
  free(v242);
  free(*(&v242 + 1));
  free(v243);
  free(*(&v243 + 1));
  AGXGPURawCounterImpl::free(this);
  v7 = 0;
LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void sub_23C54F4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, void *a36)
{
  if (a35 == 1)
  {
    free(a36);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t perfCtrSamplerGetSourceNum(unsigned int *a1, mach_port_t connection)
{
  memset(v4, 0, sizeof(v4));
  LODWORD(v4[0]) = 1;
  if (!connection)
  {
    connection = *(sAGXGPURawCounterImpl + 88);
    if (!connection)
    {
      return 5;
    }
  }

  outputStructCnt = 64;
  result = IOConnectCallStructMethod(connection, 0x105u, v4, 0x40uLL, v4, &outputStructCnt);
  if (!result)
  {
    *a1 = DWORD1(v4[0]);
  }

  return result;
}

CFPropertyListRef cfDictionaryCreateFromPlist(const char *a1)
{
  v1 = fopen(a1, "rb");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  fseek(v1, 0, 2);
  v3 = MEMORY[0x23EED56C0](v2);
  fseek(v2, 0, 0);
  v4 = *MEMORY[0x277CBECE8];
  v5 = v3;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], v3);
  if (Mutable)
  {
    v7 = Mutable;
    CFDataSetLength(Mutable, v5);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    if (fread(MutableBytePtr, v5, 1uLL, v2) == 1)
    {
      v9 = CFPropertyListCreateWithData(v4, v7, 0, 0, 0);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  fclose(v2);
  return v9;
}

uint64_t perfCtrSamplerGetSourceInfo(unsigned __int8 a1, uint64_t a2, mach_port_t connection)
{
  v3 = connection;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v6[0] = 2;
  v6[1] = a1;
  v7 = a2;
  LODWORD(v8) = 32;
  if (!connection)
  {
    v3 = *(sAGXGPURawCounterImpl + 88);
    if (!v3)
    {
      return 5;
    }
  }

  outputStructCnt = 64;
  result = IOConnectCallStructMethod(v3, 0x105u, v6, 0x40uLL, v6, &outputStructCnt);
  if (!result)
  {
    *(a2 + 32) = *(&v8 + 4);
    *(a2 + 40) = HIDWORD(v8);
  }

  return result;
}

uint64_t AGXGPURawCounterImpl::chipDispatchTableForSource(AGXGPURawCounterImpl *this, unsigned int a2, unsigned int a3, char *__s1, const char *a5)
{
  v8 = this;
  v23 = *MEMORY[0x277D85DE8];
  {
    AGXGPURawCounterImpl::chipDispatchTableForSource(unsigned int,unsigned int,unsigned int,char const*)const::sourceToDispatchMapList = xmmword_23C553C30;
    dword_27E1F77C0 = 999;
    qword_27E1F77C8 = "Firmware";
    dword_27E1F77D0 = 8;
    qword_27E1F77D8 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F77E0 = xmmword_23C553C40;
    dword_27E1F77F0 = 999;
    qword_27E1F77F8 = "Firmware";
    dword_27E1F7800 = 8;
    qword_27E1F7808 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7810 = xmmword_23C553C50;
    dword_27E1F7820 = 999;
    qword_27E1F7828 = "Firmware";
    dword_27E1F7830 = 8;
    qword_27E1F7838 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7840 = xmmword_23C553C50;
    dword_27E1F7850 = 999;
    qword_27E1F7858 = "RDE";
    dword_27E1F7860 = 3;
    qword_27E1F7868 = &AGXGRC_G11::sChipDispatchTable;
    xmmword_27E1F7870 = xmmword_23C553C60;
    dword_27E1F7880 = 999;
    qword_27E1F7888 = "Firmware";
    dword_27E1F7890 = 8;
    qword_27E1F7898 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F78A0 = xmmword_23C553C60;
    dword_27E1F78B0 = 999;
    qword_27E1F78B8 = "RDE";
    dword_27E1F78C0 = 3;
    qword_27E1F78C8 = &AGXGRC_G12::sChipDispatchTable;
    xmmword_27E1F78D0 = xmmword_23C553C70;
    dword_27E1F78E0 = 999;
    qword_27E1F78E8 = "Firmware";
    dword_27E1F78F0 = 8;
    qword_27E1F78F8 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7900 = xmmword_23C553C70;
    dword_27E1F7910 = 999;
    qword_27E1F7918 = "RDE";
    dword_27E1F7920 = 3;
    qword_27E1F7928 = &AGXGRC_G13::sChipDispatchTableTMB;
    xmmword_27E1F7930 = xmmword_23C553C70;
    dword_27E1F7940 = 999;
    qword_27E1F7948 = "BMPR_RDE";
    dword_27E1F7950 = 8;
    qword_27E1F7958 = &AGXGRC_G13::sChipDispatchTableBMPR;
    xmmword_27E1F7960 = xmmword_23C553C80;
    dword_27E1F7970 = 999;
    qword_27E1F7978 = "Firmware";
    dword_27E1F7980 = 8;
    qword_27E1F7988 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7990 = xmmword_23C553C80;
    dword_27E1F79A0 = 999;
    qword_27E1F79A8 = "RDE";
    dword_27E1F79B0 = 3;
    qword_27E1F79B8 = &AGXGRC_G14::sChipDispatchTable;
    xmmword_27E1F79C0 = xmmword_23C553C80;
    dword_27E1F79D0 = 999;
    qword_27E1F79D8 = "BMPR_RDE";
    dword_27E1F79E0 = 8;
    qword_27E1F79E8 = &AGXGRC_G14::sChipDispatchTable;
    xmmword_27E1F79F0 = xmmword_23C553C90;
    dword_27E1F7A00 = 999;
    qword_27E1F7A08 = "Firmware";
    dword_27E1F7A10 = 8;
    qword_27E1F7A18 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7A20 = xmmword_23C553C90;
    dword_27E1F7A30 = 999;
    qword_27E1F7A38 = "RDE";
    dword_27E1F7A40 = 3;
    qword_27E1F7A48 = &AGXGRC_G14X::sChipDispatchTableTMB;
    xmmword_27E1F7A50 = xmmword_23C553C90;
    dword_27E1F7A60 = 999;
    qword_27E1F7A68 = "BMPR_RDE";
    dword_27E1F7A70 = 8;
    qword_27E1F7A78 = &AGXGRC_G14X::sChipDispatchTableBMPR;
    xmmword_27E1F7A80 = xmmword_23C553CA0;
    dword_27E1F7A90 = 999;
    qword_27E1F7A98 = "Firmware";
    dword_27E1F7AA0 = 8;
    qword_27E1F7AA8 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7AB0 = xmmword_23C553CA0;
    dword_27E1F7AC0 = 5;
    qword_27E1F7AC8 = "RDE";
    dword_27E1F7AD0 = 3;
    qword_27E1F7AD8 = &AGXGRC_G14::sChipDispatchTable;
    xmmword_27E1F7AE0 = xmmword_23C553CB0;
    dword_27E1F7AF0 = 999;
    qword_27E1F7AF8 = "RDE";
    dword_27E1F7B00 = 3;
    qword_27E1F7B08 = &AGXGRC_G15::sChipDispatchTable;
    xmmword_27E1F7B10 = xmmword_23C553CA0;
    dword_27E1F7B20 = 999;
    qword_27E1F7B28 = "APS_USC";
    dword_27E1F7B30 = 7;
    qword_27E1F7B38 = &AGXGRC_G15::sChipDispatchTableAPS;
    xmmword_27E1F7B40 = xmmword_23C553CC0;
    dword_27E1F7B50 = 6;
    qword_27E1F7B58 = "Firmware";
    dword_27E1F7B60 = 8;
    qword_27E1F7B68 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7B70 = xmmword_23C553CC0;
    dword_27E1F7B80 = 6;
    qword_27E1F7B88 = "RDE";
    dword_27E1F7B90 = 3;
    qword_27E1F7B98 = &AGXGRC_G16::sChipDispatchTable;
    xmmword_27E1F7BA0 = xmmword_23C553CC0;
    dword_27E1F7BB0 = 6;
    qword_27E1F7BB8 = "APS_USC";
    dword_27E1F7BC0 = 7;
    qword_27E1F7BC8 = &AGXGRC_G16::sChipDispatchTableAPS;
    xmmword_27E1F7BD0 = xmmword_23C553CD0;
    dword_27E1F7BE0 = 999;
    qword_27E1F7BE8 = "Firmware";
    dword_27E1F7BF0 = 8;
    qword_27E1F7BF8 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7C00 = xmmword_23C553CD0;
    dword_27E1F7C10 = 999;
    qword_27E1F7C18 = "RDE";
    dword_27E1F7C20 = 3;
    qword_27E1F7C28 = &AGXGRC_HAL200::sChipDispatchTable;
    xmmword_27E1F7C30 = xmmword_23C553CD0;
    dword_27E1F7C40 = 999;
    qword_27E1F7C48 = "APS_USC";
    dword_27E1F7C50 = 7;
    qword_27E1F7C58 = &AGXGRC_HAL200::sChipDispatchTableAPS;
    xmmword_27E1F7C60 = xmmword_23C553CE0;
    dword_27E1F7C70 = 6;
    qword_27E1F7C78 = "Firmware";
    dword_27E1F7C80 = 8;
    qword_27E1F7C88 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7C90 = xmmword_23C553CE0;
    dword_27E1F7CA0 = 6;
    qword_27E1F7CA8 = "RDE";
    dword_27E1F7CB0 = 3;
    qword_27E1F7CB8 = &AGXGRC_HAL200::sChipDispatchTable;
    xmmword_27E1F7CC0 = xmmword_23C553CE0;
    dword_27E1F7CD0 = 6;
    qword_27E1F7CD8 = "APS_USC";
    dword_27E1F7CE0 = 7;
    qword_27E1F7CE8 = &AGXGRC_HAL200::sChipDispatchTableAPS;
    xmmword_27E1F7CF0 = xmmword_23C553CF0;
    dword_27E1F7D00 = 999;
    qword_27E1F7D08 = "Firmware";
    dword_27E1F7D10 = 8;
    qword_27E1F7D18 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7D20 = xmmword_23C553CF0;
    dword_27E1F7D30 = 999;
    qword_27E1F7D38 = "RDE";
    dword_27E1F7D40 = 3;
    qword_27E1F7D48 = &AGXGRC_HAL300::sChipDispatchTable;
    xmmword_27E1F7D50 = xmmword_23C553CF0;
    dword_27E1F7D60 = 999;
    qword_27E1F7D68 = "APS_USC";
    dword_27E1F7D70 = 7;
    qword_27E1F7D78 = &AGXGRC_HAL300::sChipDispatchTableAPS;
    xmmword_27E1F7D80 = xmmword_23C553D00;
    dword_27E1F7D90 = 6;
    qword_27E1F7D98 = "Firmware";
    dword_27E1F7DA0 = 8;
    qword_27E1F7DA8 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7DB0 = xmmword_23C553D00;
    dword_27E1F7DC0 = 6;
    qword_27E1F7DC8 = "RDE";
    dword_27E1F7DD0 = 3;
    qword_27E1F7DD8 = &AGXGRC_HAL300::sChipDispatchTable;
    xmmword_27E1F7DE0 = xmmword_23C553D00;
    dword_27E1F7DF0 = 6;
    qword_27E1F7DF8 = "APS_USC";
    dword_27E1F7E00 = 7;
    qword_27E1F7E08 = &AGXGRC_HAL300::sChipDispatchTableAPS;
  }

  v9 = &AGXGPURawCounterImpl::chipDispatchTableForSource(unsigned int,unsigned int,unsigned int,char const*)const::sourceToDispatchMapList;
  v10 = 34;
  do
  {
    if (*v9 == v8 && *(v9 + 1) <= a2 && *(v9 + 2) >= a2 && *(v9 + 3) <= a3 && *(v9 + 4) >= a3 && !strncmp(__s1, *(v9 + 3), *(v9 + 8)))
    {
      result = *(v9 + 5);
      goto LABEL_16;
    }

    v9 += 3;
    --v10;
  }

  while (v10);
  fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Fail to find dispatch table for gpuGen=%u sourceName=%s\n", "AGXGPURawCounterImpl.mm", 3529, "chipDispatchTableForSource", v8, __s1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v14 = "AGXGPURawCounterImpl.mm";
    v15 = 1024;
    v16 = 3529;
    v17 = 2080;
    v18 = "chipDispatchTableForSource";
    v19 = 1024;
    v20 = v8;
    v21 = 2080;
    v22 = __s1;
    _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Fail to find dispatch table for gpuGen=%u sourceName=%s\n", buf, 0x2Cu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v14 = "AGXGPURawCounterImpl.mm";
    v15 = 1024;
    v16 = 3529;
    v17 = 2080;
    v18 = "chipDispatchTableForSource";
    v19 = 1024;
    v20 = v8;
    v21 = 2080;
    v22 = __s1;
    _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Fail to find dispatch table for gpuGen=%u sourceName=%s\n", buf, 0x2Cu);
  }

  result = 0;
LABEL_16:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void AGXGPURawCounterImpl::free(AGXGPURawCounterImpl *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    outputStructCnt = 64;
    memset(v8, 0, sizeof(v8));
    if (IOConnectCallStructMethod(v2, 0x105u, v8, 0x40uLL, v8, &outputStructCnt))
    {
      memset(v8 + 4, 0, 60);
      LODWORD(v8[0]) = 11;
      IOConnectCallStructMethod(v2, 0x105u, v8, outputStructCnt, v8, &outputStructCnt);
    }
  }

  free(*(this + 83));
  *(this + 83) = 0;
  free(*(this + 16));
  *(this + 16) = 0;
  v3 = *(this + 164);
  if (v3)
  {
    v4 = 0;
    v5 = this + 144;
    do
    {
      v6 = *&v5[8 * v4];
      if (v6)
      {
        (*(*v6 + 8))(v6);
        *&v5[8 * v4] = 0;
        v3 = *(this + 164);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  if (*(this + 2))
  {
    IOGPUDeviceRelease();
    *(this + 2) = 0;
  }

  v7 = *(this + 14);
  *(this + 14) = 0;

  *(this + 22) = 0;
  *(this + 2) = 0;
}

size_t AGXGPURawCounterImpl::SourceAPSImpl::RingBufferAPSImpl::drain(AGXGPURawCounterImpl::SourceAPSImpl::RingBufferAPSImpl *this, int a2)
{
  v2 = a2 & 0xFFFFF000;
  if ((a2 & 0xFFFFF000) != 0)
  {
    v11 = 0;
    if ((*(*this + 32))(this, &v11 + 4, &v11))
    {
      if (v2 >= v11)
      {
        v2 = v11;
      }

      else
      {
        v2 = v2;
      }

      v4 = *(this + 8);
      if (HIDWORD(v11) + v2 <= v4)
      {
        v7 = (*(this + 3) + HIDWORD(v11));
        v8 = v2;
      }

      else
      {
        v5 = v4 - HIDWORD(v11);
        v6 = (v2 - v5);
        sys_dcache_flush((*(this + 3) + HIDWORD(v11)), v5);
        v7 = *(this + 3);
        v8 = v6;
      }

      sys_dcache_flush(v7, v8);
      HIDWORD(v11) = (v2 + HIDWORD(v11) + *(this + 8) - 4096) % *(this + 8);
      v9 = *(this + 5);
      v9[4] = HIDWORD(v11) >> 12;
      sys_dcache_flush(v9, 0x10uLL);
    }

    else
    {
      sys_dcache_flush(*(this + 3), *(this + 8));
      return 0;
    }
  }

  return v2;
}

BOOL AGXGPURawCounterImpl::SourceAPSImpl::RingBufferAPSImpl::state(void **this, unsigned int *a2, unsigned int *a3)
{
  sys_dcache_flush(this[5], 0x10uLL);
  v6 = this[5];
  v7 = v6[6];
  v8 = *(this + 8);
  v9 = *(v6 + 15);
  if (*(v6 + 15))
  {
    v6[4] = ((v8 >> 12) + v6[6] - 1) % (v8 >> 12);
    *(v6 + 15) = 0;
    sys_dcache_flush(v6, 0x10uLL);
    v10 = 0;
    *a2 = ((*(this[5] + 4) << 12) + 4096) % *(this + 8);
  }

  else
  {
    v11 = ((v6[4] << 12) + 4096) % v8;
    *a2 = v11;
    v10 = ((v7 << 12) % v8 - v11 + *(this + 8)) % *(this + 8);
  }

  result = v9 == 0;
  *a3 = v10;
  return result;
}

void AGXGPURawCounterImpl::SourceAPSImpl::RingBufferAPSImpl::~RingBufferAPSImpl(AGXGPURawCounterImpl::SourceAPSImpl::RingBufferAPSImpl *this)
{
  *this = &unk_284F29020;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  JUMPOUT(0x23EED55C0);
}

{
  *this = &unk_284F29020;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
}

void AGXGPURawCounterImpl::SourceAPSImpl::setOptionsPerUSCMasks(AGXGPURawCounterImpl::SourceAPSImpl *this, NSDictionary *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v37 = a2;
  [(NSDictionary *)v37 objectForKeyedSubscript:@"USCConfigOverride"];
  v39 = v38 = this;
  v3 = *(this + 1);
  v4 = *(v3 + 104);
  v5 = *(v3 + 96);
  v6 = [v39 objectForKeyedSubscript:@"mGPUMask"];
  if (v6 && ([v39 objectForKeyedSubscript:@"USCNumPerMGPU"], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v39 objectForKeyedSubscript:@"USCNumPerMGPU"];
    v9 = [v8 unsignedIntValue];

    if (v9 <= v4)
    {
      v10 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    v11 = [v39 objectForKeyedSubscript:@"USCMaskForMGPU"];
    v12 = [v11 count];

    if (v12)
    {
      v10 = 0;
LABEL_7:
      v40 = [*(*(v38 + 1) + 112) objectForKeyedSubscript:@"core_mask_list"];
      if (v10)
      {
        v13 = [v39 objectForKeyedSubscript:@"USCNumPerMGPU"];
        v14 = [v13 unsignedIntValue];

        v15 = [v39 objectForKeyedSubscript:@"mGPUMask"];
        v16 = [v15 unsignedIntValue];

        if (!v14 || !v16)
        {
          goto LABEL_37;
        }

        if (v5)
        {
          v17 = 0;
          LOBYTE(v18) = v16;
          do
          {
            if (v18)
            {
              v19 = [v40 objectAtIndexedSubscript:v17];
              v20 = [v19 unsignedIntValue];

              v21.i32[0] = v20;
              v22 = vcnt_s8(v21);
              v22.i16[0] = vaddlv_u8(v22);
              if (v14 >= v22.i32[0])
              {
                v14 = v22.i32[0];
              }

              if (v14)
              {
                v23 = -v20;
                v24 = v14 - 1;
                if (v14 != 1)
                {
                  do
                  {
                    LOWORD(v23) = v23 - (v23 ^ v20);
                    --v24;
                  }

                  while (v24);
                }

                v25 = v23 & v20;
              }

              else
              {
                v25 = 0;
              }

              *(v38 + v17 + 3184) = v25;
            }

            if (++v17 >= v5)
            {
              break;
            }

            v18 = v16 >> v17;
          }

          while (v16 >> v17);
        }
      }

      else
      {
        [v39 objectForKeyedSubscript:@"USCMaskForMGPU"];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v26 = v42 = 0u;
        v27 = [v26 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v27)
        {
          v28 = *v42;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v42 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v41 + 1) + 8 * i);
              v31 = [v30 intValue];
              if (v31 < v5)
              {
                v32 = [v26 objectForKeyedSubscript:v30];
                v33 = [v32 unsignedIntValue];

                v34 = [v40 objectAtIndexedSubscript:v31];
                v35 = [v34 unsignedIntValue];

                if ((v33 & ~v35) != 0)
                {

                  goto LABEL_37;
                }

                *(v38 + v31 + 3184) = v35 & v33;
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v27);
        }
      }

      *(v38 + 6388) = 1;
LABEL_37:
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::ringBufferInit(AGXGPURawCounterImpl::SourceAPSImpl *this, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v6 = (*(*this + 224))(this, a4);
  if (v6)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 16 * (0u % *(*(this + 1) + 104) + 16 * (0u / *(*(this + 1) + 104)));
    operator new();
  }

  return v6;
}

void AGXGPURawCounterImpl::SourceAPSImpl::fillKernelConfigData(uint64_t a1, uint64_t a2)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___ZN20AGXGPURawCounterImpl13SourceAPSImpl20fillKernelConfigDataEP28AGXSPerfCtrSamplerControlRec_block_invoke;
  v12[3] = &__block_descriptor_48_e8_v12__0i8l;
  v4 = a1 + 4096;
  v12[4] = a1;
  v12[5] = a2;
  v5 = MEMORY[0x23EED5830](v12);
  v6 = v5;
  v7 = *(a1 + 6384);
  v8 = 32 - __clz(~(-1 << -__clz(v7 - 1)));
  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 32) = v9;
  v10 = *(a2 + 33) & 0xFE | *(v4 + 2292);
  *(a2 + 33) = v10;
  *(a2 + 33) = v10 & 0xFD | (2 * *(v4 + 2293));
  (*(v5 + 16))(v5, 0);
  if (*(v4 + 2292) == 1)
  {
    v6[2](v6, 1);
    if (*(*(a1 + 8) + 96))
    {
      v11 = 0;
      do
      {
        *(a2 + 16 + 2 * v11) = *(a1 + 6368 + 2 * v11);
        ++v11;
      }

      while (v11 < *(*(a1 + 8) + 96));
    }
  }
}

uint64_t ___ZN20AGXGPURawCounterImpl13SourceAPSImpl20fillKernelConfigDataEP28AGXSPerfCtrSamplerControlRec_block_invoke(uint64_t result, unsigned int a2)
{
  v2 = *(result + 32) + 28 * a2;
  v3 = v2 + 6392;
  v4 = 10 * a2;
  *(*(result + 40) + v4 + 36) = *(*(result + 40) + v4 + 36) & 0xFD | (2 * *(v2 + 6401));
  *(*(result + 40) + v4 + 36) = *(*(result + 40) + v4 + 36) & 0xFE | *(v2 + 6400);
  *(*(result + 40) + v4 + 36) = *(*(result + 40) + v4 + 36) & 0xFB | (4 * *(v2 + 6402));
  LODWORD(v2) = *(v2 + 6396);
  v5 = 32 - __clz(~(-1 << -__clz(v2 - 1)));
  if (v2 >= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *(*(result + 40) + 10 * a2 + 35) = v6;
  v7 = 32 - __clz(~(-1 << -__clz(*v3 - 1)));
  if (*v3 >= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = 10 * a2;
  *(*(result + 40) + v9 + 34) = v8;
  *(*(result + 40) + v9 + 38) = *(v3 + 12);
  *(*(result + 40) + v9 + 40) = *(v3 + 16);
  *(*(result + 40) + v9 + 42) = *(v3 + 20);
  *(*(result + 40) + v9 + 43) = *(*(result + 40) + v9 + 43) & 0xFE | *(v3 + 24);
  *(*(result + 40) + v9 + 43) = *(*(result + 40) + v9 + 43) & 0xFD | (2 * *(v3 + 25));
  return result;
}

BOOL AGXGPURawCounterImpl::SourceAPSImpl::postProcessData(AGXGPURawCounterImpl::SourceAPSImpl *this, unsigned int a2, const unsigned __int8 *a3, unint64_t a4, unint64_t *a5, unint64_t a6, unsigned __int8 *a7, unint64_t a8, unint64_t a9, unint64_t *a10, BOOL a11)
{
  v75 = *MEMORY[0x277D85DE8];
  v11 = *(this + 1572);
  if (v11 <= a2)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Invalid ring buffer index (%u >= %u)!\n", "AGXGPURawCounterSourceAPSImpl.mm", 642, "postProcessData", a2, v11);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v32 = *(this + 1572);
      *buf = 136316162;
      v55 = "AGXGPURawCounterSourceAPSImpl.mm";
      v56 = 1024;
      v57 = 642;
      v58 = 2080;
      v59 = "postProcessData";
      v60 = 1024;
      *v61 = a2;
      *&v61[4] = 1024;
      *&v61[6] = v32;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Invalid ring buffer index (%u >= %u)!\n", buf, 0x28u);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_26;
    }

    v24 = *(this + 1572);
    *buf = 136316162;
    v55 = "AGXGPURawCounterSourceAPSImpl.mm";
    v56 = 1024;
    v57 = 642;
    v58 = 2080;
    v59 = "postProcessData";
    v60 = 1024;
    *v61 = a2;
    *&v61[4] = 1024;
    *&v61[6] = v24;
    v20 = MEMORY[0x277D86220];
    v21 = "AGXGRC:AGXGRC:%s:%d:%s: *** Invalid ring buffer index (%u >= %u)!\n";
    v25 = 40;
LABEL_25:
    _os_log_impl(&dword_23C542000, v20, OS_LOG_TYPE_INFO, v21, buf, v25);
    result = 0;
    goto LABEL_26;
  }

  if (!a3 || !a4 || !a5 || a6 >= a4 || !a7 || !a8 || a8 <= a9 || !a10)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** All parameters must be non-zero! (src=%p size=%llu read=0x%p write=%llu dst=0x%p size=%llu read=%llu write=%p\n", "AGXGPURawCounterSourceAPSImpl.mm", 649, "postProcessData", a3, a4, a5, a6, a7, a8, a9, a10);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136317698;
      v55 = "AGXGPURawCounterSourceAPSImpl.mm";
      v56 = 1024;
      v57 = 649;
      v58 = 2080;
      v59 = "postProcessData";
      v60 = 2048;
      *v61 = a3;
      *&v61[8] = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = a5;
      v65 = 2048;
      v66 = a6;
      v67 = 2048;
      v68 = a7;
      v69 = 2048;
      v70 = a8;
      v71 = 2048;
      v72 = a9;
      v73 = 2048;
      v74 = a10;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** All parameters must be non-zero! (src=%p size=%llu read=0x%p write=%llu dst=0x%p size=%llu read=%llu write=%p\n", buf, 0x6Cu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_26;
    }

    *buf = 136317698;
    v55 = "AGXGPURawCounterSourceAPSImpl.mm";
    v56 = 1024;
    v57 = 649;
    v58 = 2080;
    v59 = "postProcessData";
    v60 = 2048;
    *v61 = a3;
    *&v61[8] = 2048;
    v62 = a4;
    v63 = 2048;
    v64 = a5;
    v65 = 2048;
    v66 = a6;
    v67 = 2048;
    v68 = a7;
    v69 = 2048;
    v70 = a8;
    v71 = 2048;
    v72 = a9;
    v73 = 2048;
    v74 = a10;
    v20 = MEMORY[0x277D86220];
    v21 = "AGXGRC:AGXGRC:%s:%d:%s: *** All parameters must be non-zero! (src=%p size=%llu read=0x%p write=%llu dst=0x%p size=%llu read=%llu write=%p\n";
    v25 = 108;
    goto LABEL_25;
  }

  v15 = *a5;
  v16 = *a10;
  v17 = a4 - *a5;
  if (a4 <= *a5 || (v18 = a8 - v16, a8 <= v16))
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** srcRead and/or dstWrite is out of bound! (*srcRead=%llu size=%llu *dstWrite=%llu size=%llu\n", "AGXGPURawCounterSourceAPSImpl.mm", 655, "postProcessData", v15, a4, *a10, a8);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v45 = *a5;
      v46 = *a10;
      *buf = 136316674;
      v55 = "AGXGPURawCounterSourceAPSImpl.mm";
      v56 = 1024;
      v57 = 655;
      v58 = 2080;
      v59 = "postProcessData";
      v60 = 2048;
      *v61 = v45;
      *&v61[8] = 2048;
      v62 = a4;
      v63 = 2048;
      v64 = v46;
      v65 = 2048;
      v66 = a8;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** srcRead and/or dstWrite is out of bound! (*srcRead=%llu size=%llu *dstWrite=%llu size=%llu\n", buf, 0x44u);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!result)
    {
      goto LABEL_26;
    }

    v30 = *a5;
    v31 = *a10;
    *buf = 136316674;
    v55 = "AGXGPURawCounterSourceAPSImpl.mm";
    v56 = 1024;
    v57 = 655;
    v58 = 2080;
    v59 = "postProcessData";
    v60 = 2048;
    *v61 = v30;
    *&v61[8] = 2048;
    v62 = a4;
    v63 = 2048;
    v64 = v31;
    v65 = 2048;
    v66 = a8;
    v20 = MEMORY[0x277D86220];
    v21 = "AGXGRC:AGXGRC:%s:%d:%s: *** srcRead and/or dstWrite is out of bound! (*srcRead=%llu size=%llu *dstWrite=%llu size=%llu\n";
    v25 = 68;
    goto LABEL_25;
  }

  if ((((a6 | a4) | v15) & 7) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** srcSize/Read/Write is not aligned to 64-bits!\n", "AGXGPURawCounterSourceAPSImpl.mm", 661, "postProcessData");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v55 = "AGXGPURawCounterSourceAPSImpl.mm";
      v56 = 1024;
      v57 = 661;
      v58 = 2080;
      v59 = "postProcessData";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** srcSize/Read/Write is not aligned to 64-bits!\n", buf, 0x1Cu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 136315650;
      v55 = "AGXGPURawCounterSourceAPSImpl.mm";
      v56 = 1024;
      v57 = 661;
      v58 = 2080;
      v59 = "postProcessData";
      v20 = MEMORY[0x277D86220];
      v21 = "AGXGRC:AGXGRC:%s:%d:%s: *** srcSize/Read/Write is not aligned to 64-bits!\n";
LABEL_36:
      v25 = 28;
      goto LABEL_25;
    }
  }

  else if ((((a9 | a8) | v16) & 7) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** dstSize/Read/Write is not aligned to 64-bits!\n", "AGXGPURawCounterSourceAPSImpl.mm", 667, "postProcessData");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v55 = "AGXGPURawCounterSourceAPSImpl.mm";
      v56 = 1024;
      v57 = 667;
      v58 = 2080;
      v59 = "postProcessData";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** dstSize/Read/Write is not aligned to 64-bits!\n", buf, 0x1Cu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 136315650;
      v55 = "AGXGPURawCounterSourceAPSImpl.mm";
      v56 = 1024;
      v57 = 667;
      v58 = 2080;
      v59 = "postProcessData";
      v20 = MEMORY[0x277D86220];
      v21 = "AGXGRC:AGXGRC:%s:%d:%s: *** dstSize/Read/Write is not aligned to 64-bits!\n";
      goto LABEL_36;
    }
  }

  else
  {
    if ((a6 + a4 - v15) % a4 >= (a8 - a9 + v16) / a8 * a8 - (v16 - a9) - 8)
    {
      v33 = (a8 - a9 + v16) / a8 * a8 - (v16 - a9) - 8;
    }

    else
    {
      v33 = (a6 + a4 - v15) % a4;
    }

    if (v33 + v15 <= a4)
    {
      v40 = &a3[v15];
      if (v33 + v16 <= a8)
      {
        v44 = &a7[v16];
        v43 = &a3[v15];
        v42 = v33;
      }

      else
      {
        memcpy(&a7[v16], v40, a8 - v16);
        v42 = v33 - v18;
        v43 = &v40[v18];
        v44 = a7;
      }

      memcpy(v44, v43, v42);
      v48 = v33;
    }

    else
    {
      v34 = &a3[v15];
      if (v16 + v17 <= a8)
      {
        v38 = a7;
        v39 = &a7[v16];
        v37 = &a3[v15];
        v36 = a4 - *a5;
      }

      else
      {
        memcpy(&a7[v16], v34, a8 - v16);
        v36 = v17 - v18;
        v37 = &v34[v18];
        v38 = a7;
        v39 = a7;
      }

      memcpy(v39, v37, v36);
      v47 = (*a10 + v17) % a8;
      *a10 = v47;
      v48 = v33 - v17;
      v49 = a3;
      if (v47 + v48 <= a8)
      {
        v52 = &v38[v47];
        v51 = v48;
      }

      else
      {
        v50 = a8 - v47;
        memcpy(&v38[v47], a3, a8 - v47);
        v51 = v48 - v50;
        v49 = &a3[v50];
        v52 = v38;
      }

      memcpy(v52, v49, v51);
    }

    *a10 = (*a10 + v48) % a8;
    *a5 = (*a5 + v33) % a4;
    result = 1;
  }

LABEL_26:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::postProcessData(AGXGPURawCounterImpl::SourceAPSImpl *this, unsigned int a2, const unsigned __int8 *__src, size_t a4, unint64_t *a5, unsigned __int8 *__dst, size_t a7, unint64_t *a8, BOOL a9)
{
  result = 0;
  if (__src && a5 && __dst && a7 && a8)
  {
    if (((a7 | a4) & 7) != 0)
    {
      return 0;
    }

    else
    {
      if (a4 >= a7)
      {
        v10 = a7;
      }

      else
      {
        v10 = a4;
      }

      memcpy(__dst, __src, v10);
      *a5 = v10;
      *a8 = v10;
      return 1;
    }
  }

  return result;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::flushRingBuffers(AGXGPURawCounterImpl::SourceAPSImpl *this)
{
  memset(v2, 0, sizeof(v2));
  LODWORD(v2[0]) = 10;
  result = *(sAGXGPURawCounterImpl + 88);
  if (result)
  {
    outputStructCnt = 64;
    return IOConnectCallStructMethod(result, 0x105u, v2, 0x40uLL, v2, &outputStructCnt);
  }

  return result;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::calcBufferSizeWithRingBufferSize(AGXGPURawCounterImpl::SourceAPSImpl *this, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = 268419072;
    if (a2 < 0xFFFC000)
    {
      v2 = a2;
    }

    v3 = v2 * *(*(this + 1) + 108);
    v4 = *(*this + 152);
    v5 = *MEMORY[0x277D85DE8];

    return v4();
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** calcBufferSizeWithRingBufferSize should never be called with zero buffer size!\n", "AGXGPURawCounterSourceAPSImpl.mm", 574, "calcBufferSizeWithRingBufferSize");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "AGXGPURawCounterSourceAPSImpl.mm";
      v10 = 1024;
      v11 = 574;
      v12 = 2080;
      v13 = "calcBufferSizeWithRingBufferSize";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** calcBufferSizeWithRingBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v9 = "AGXGPURawCounterSourceAPSImpl.mm";
      v10 = 1024;
      v11 = 574;
      v12 = 2080;
      v13 = "calcBufferSizeWithRingBufferSize";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** calcBufferSizeWithRingBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    v7 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

unint64_t AGXGPURawCounterImpl::SourceAPSImpl::alignBufferSize(AGXGPURawCounterImpl::SourceAPSImpl *this, unint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(this + 1);
    v4 = *(v3 + 108);
    v5 = 0x800000000uLL / (v4 << 14) * (v4 << 14);
    if (v5 >= a2)
    {
      v5 = a2;
    }

    v6 = *(v3 + 100);
    v7 = (v5 / v4 + 0x3FFF) & 0x1FFFFFC000;
    if (v7 >= 0xFFFC000)
    {
      v7 = 268419072;
    }

    if (v5 < v4)
    {
      v7 = 0x4000;
    }

    v8 = v4 == v6;
    v9 = 0x8000;
    if (v8)
    {
      v9 = 0x4000;
    }

    if (!a3)
    {
      v9 = 0;
    }

    result = v9 + v7 * v4;
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** alignBufferSize should never be called with zero buffer size!\n", "AGXGPURawCounterSourceAPSImpl.mm", 540, "alignBufferSize");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "AGXGPURawCounterSourceAPSImpl.mm";
      v14 = 1024;
      v15 = 540;
      v16 = 2080;
      v17 = "alignBufferSize";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** alignBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v13 = "AGXGPURawCounterSourceAPSImpl.mm";
      v14 = 1024;
      v15 = 540;
      v16 = 2080;
      v17 = "alignBufferSize";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** alignBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::setBufferSize(AGXGPURawCounterImpl::SourceAPSImpl *this, unint64_t a2)
{
  v2 = 0x27E1F7000uLL;
  {
    v7 = a2;
    v8 = this;
    v2 = 0x27E1F7000uLL;
    v5 = v4;
    a2 = v7;
    this = v8;
    if (v5)
    {
      v6 = 0;
      if (*(*(v8 + 1) + 108) < 0x81u)
      {
        v6 = 268419072;
      }

      AGXGPURawCounterImpl::SourceAPSImpl::setBufferSize(unsigned long long)::kRingBufferSizeMax = v6;
      v2 = 0x27E1F7000;
      a2 = v7;
      this = v8;
    }
  }

  if (*(v2 + 3608) * *(*(this + 1) + 108) < a2)
  {
    a2 = *(v2 + 3608) * *(*(this + 1) + 108);
  }

  return AGXGPURawCounterImpl::SourceImpl::setBufferSize(this, a2);
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::availableFlags(AGXGPURawCounterImpl::SourceAPSImpl *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 92);
  if (v2 == 17 && *(v1 + 104) > 7u)
  {
    return 24;
  }

  if (v2 <= 0x11)
  {
    return 8;
  }

  return 24;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::setOptions(AGXGPURawCounterImpl::SourceAPSImpl *this, NSDictionary *a2)
{
  v3 = a2;
  v4 = AGXGPURawCounterImpl::SourceImpl::setOptions(this, v3);
  if (v4 && ((*(*this + 112))(this) & 8) != 0)
  {
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"USCConfigOverride"];
    if (v5)
    {
      (*(*this + 248))(this, v3);
    }

    v6 = [(NSDictionary *)v3 objectForKeyedSubscript:@"SyncDrainMode"];
    *(this + 6389) = [v6 BOOLValue];

    v7 = [(NSDictionary *)v3 objectForKeyedSubscript:@"SystemTimePeriod"];
    *(this + 1596) = [v7 unsignedLongValue];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10setOptionsEP12NSDictionary_block_invoke;
    v11[3] = &unk_278BC0498;
    v14 = this;
    v8 = v5;
    v12 = v8;
    v13 = v3;
    v9 = MEMORY[0x23EED5830](v11);
    v9[2](v9, 0);
    v9[2](v9, 1);
  }

  return v4;
}

void ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10setOptionsEP12NSDictionary_block_invoke(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 48);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10setOptionsEP12NSDictionary_block_invoke_2;
  v21 = &unk_278BC0470;
  v23 = a2;
  v22 = *(a1 + 32);
  v5 = MEMORY[0x23EED5830](&v18);
  v6 = v4 + 28 * a2 + 6392;
  if (((*(*v4 + 112))(v4) & 0x10) != 0)
  {
    v7 = (v5)[2](v5, @"CliqueAdvanceReason", *(a1 + 40));
    *(v6 + 10) = [v7 BOOLValue];
  }

  v8 = [*(a1 + 40) objectForKeyedSubscript:{@"CliqueSubSampling", v18, v19, v20, v21}];
  v9 = (v5)[2](v5, @"MinTraced", v8);
  *(v6 + 12) = [v9 unsignedLongValue];

  v10 = [*(a1 + 40) objectForKeyedSubscript:@"CliqueSubSampling"];
  v11 = (v5)[2](v5, @"TargetThreshold", v10);
  *(v6 + 16) = [v11 unsignedLongValue];

  v12 = [*(a1 + 40) objectForKeyedSubscript:@"ProfileControl"];
  v13 = (v5)[2](v5, @"CliqueTraceLevel", v12);
  *(v6 + 20) = [v13 unsignedLongValue];

  v14 = [*(a1 + 40) objectForKeyedSubscript:@"ProfileControl"];
  v15 = (v5)[2](v5, @"EmitPos", v14);
  *(v6 + 24) = [v15 BOOLValue];

  v16 = [*(a1 + 40) objectForKeyedSubscript:@"ProfileControl"];
  v17 = (v5)[2](v5, @"EmitThreadControlFlow", v16);
  *(v6 + 25) = [v17 BOOLValue];
}

id ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10setOptionsEP12NSDictionary_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40) && ([*(a1 + 32) objectForKeyedSubscript:v5], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
  }

  else
  {
    v8 = [v6 objectForKeyedSubscript:v5];
  }

  return v8;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::addTrigger(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"USCConfigOverride"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10addTriggerEN16AGXGPURawCounter11TriggerTypeEP12NSDictionary_block_invoke;
  v12[3] = &unk_278BC0448;
  v15 = a1;
  v7 = v6;
  v13 = v7;
  v8 = v5;
  v14 = v8;
  v16 = a2;
  v9 = MEMORY[0x23EED5830](v12);
  if (v9[2](v9, 0) && ((v9[2])(v9, 1) & 1) != 0)
  {
    *(a1 + 6236) |= a2;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10addTriggerEN16AGXGPURawCounter11TriggerTypeEP12NSDictionary_block_invoke(uint64_t a1, unsigned int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10addTriggerEN16AGXGPURawCounter11TriggerTypeEP12NSDictionary_block_invoke_2;
  v18[3] = &unk_278BC0420;
  v21 = a2;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v5 = MEMORY[0x23EED5830](v18);
  v6 = v5;
  v7 = v4 + 28 * a2 + 6392;
  v8 = *(a1 + 56);
  if (v8 == 16)
  {
    goto LABEL_4;
  }

  if (v8 == 32)
  {
    v9 = (*(v5 + 16))(v5, @"ESLInstTracing");
    *(v7 + 8) = [v9 BOOLValue];

LABEL_4:
    v10 = (v6)[2](v6, @"TileTracing");
    *(v7 + 9) = [v10 BOOLValue];

    v11 = (v6)[2](v6, @"CountPeriod");
    *(v7 + 4) = [v11 unsignedLongValue];

    v12 = (v6)[2](v6, @"PulsePeriod");
    *v7 = [v12 unsignedLongValue];

    v13 = 1;
    goto LABEL_10;
  }

  fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Error, adding unknown trigger (0x%x)\n", "AGXGPURawCounterSourceAPSImpl.mm", 310, "addTrigger_block_invoke", v8);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 56);
    *buf = 136315906;
    v23 = "AGXGPURawCounterSourceAPSImpl.mm";
    v24 = 1024;
    v25 = 310;
    v26 = 2080;
    v27 = "addTrigger_block_invoke";
    v28 = 1024;
    v29 = v17;
    _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, adding unknown trigger (0x%x)\n", buf, 0x22u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 56);
    *buf = 136315906;
    v23 = "AGXGPURawCounterSourceAPSImpl.mm";
    v24 = 1024;
    v25 = 310;
    v26 = 2080;
    v27 = "addTrigger_block_invoke";
    v28 = 1024;
    v29 = v14;
    _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, adding unknown trigger (0x%x)\n", buf, 0x22u);
  }

  v13 = 0;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

id ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10addTriggerEN16AGXGPURawCounter11TriggerTypeEP12NSDictionary_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) && ([*(a1 + 32) objectForKeyedSubscript:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  }

  else
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:v3];
  }

  return v5;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::clearTriggers(AGXGPURawCounterImpl::SourceAPSImpl *this)
{
  result = (*(*this + 40))(this, 0);
  *(this + 1559) = 0;
  *(this + 799) = 0;
  *(this + 3200) = 0;
  *(this + 6420) = 0;
  *(this + 3214) = 0;
  return result;
}

void AGXGPURawCounterImpl::SourceAPSImpl::~SourceAPSImpl(void **this)
{
  *this = &unk_284F28E50;
  free(this[2]);
  this[2] = 0;
  free(this[5]);
  this[5] = 0;
  (*(*this + 30))(this);
  free(this[781]);
  *(this + 781) = 0u;
  free(this[790]);
  this[790] = 0;
  *(this + 1582) = 0;
  *(this + 396) = 0u;
  *(this + 397) = 0u;

  JUMPOUT(0x23EED55C0);
}

{
  *this = &unk_284F28E50;
  free(this[2]);
  this[2] = 0;
  free(this[5]);
  this[5] = 0;
  (*(*this + 30))(this);
  free(this[781]);
  *(this + 781) = 0u;
  free(this[790]);
  this[790] = 0;
  *(this + 1582) = 0;
  *(this + 396) = 0u;
  *(this + 397) = 0u;
}

uint64_t AGXGRC_G10::ParseSampleHeader(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return 32;
}

uint64_t AGXGRC_G11::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v3 = a1[3];
  v4 = *a3;
  if (v3 < *a3)
  {
    LODWORD(v4) = 0;
  }

  v5 = v3 - v4;
  *a3 = v3;
  v6 = a1[1];
  v7 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v5;
  *(a2 + 20) = -1;
  *a2 = v7 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v6 & 0x7E00000000) != 0)
  {
    if ((v6 & 0x5400000000) != 0)
    {
      if ((v6 & 0x600000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0001;
        *a2 = v8;
        v9 = (v6 >> 4) & 1;
        v10 = v9 | 4;
LABEL_25:
        v15 = a1[v10];
        *(a2 + 20) = HIDWORD(v15);
        *a2 = v8 & 0xFFFF00000000FFFFLL | (v15 << 16);
        *(a2 + 24) = v9;
        return 80;
      }

      if ((v6 & 0x1800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4001;
        *a2 = v8;
        v9 = (v6 >> 9) & 2;
        v13 = (v6 & 0x100) == 0;
LABEL_20:
        if (!v13)
        {
          v9 = 1;
        }

        v10 = v9 + 6;
        goto LABEL_25;
      }

      v9 = 0;
      v12 = 0xFFFFFFFF8001;
    }

    else
    {
      if ((v6 & 0x200000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0002;
        *a2 = v8;
        v9 = (v6 >> 5) & 1;
        v10 = v9 | 4;
        goto LABEL_25;
      }

      if ((v6 & 0x800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4002;
        *a2 = v8;
        v9 = (v6 >> 10) & 2;
        v13 = (v6 & 0x200) == 0;
        goto LABEL_20;
      }

      v9 = 0;
      v12 = 0xFFFFFFFF8002;
    }

    v8 = v7 | v12;
    *a2 = v8;
    v10 = 9;
    goto LABEL_25;
  }

  if ((v6 & 0x100000000) != 0)
  {
    if (v6)
    {
      v11 = v7 | 0xFFFFFFFFC005;
    }

    else
    {
      v11 = v7 | 0xFFFFFFFFC004;
    }

    *a2 = v11;
  }

  return 80;
}

uint64_t AGXGRC_G12::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v3 = a1[3];
  v4 = *a3;
  if (v3 < *a3)
  {
    LODWORD(v4) = 0;
  }

  v5 = v3 - v4;
  *a3 = v3;
  v6 = a1[1];
  v7 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v5;
  *(a2 + 20) = -1;
  *a2 = v7 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v6 & 0x7E00000000) != 0)
  {
    if ((v6 & 0x5400000000) != 0)
    {
      if ((v6 & 0x600000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0001;
        *a2 = v8;
        v9 = (v6 >> 4) & 1;
        v10 = v9 | 4;
LABEL_27:
        v15 = a1[v10];
        *(a2 + 20) = HIDWORD(v15);
        *a2 = v8 & 0xFFFF00000000FFFFLL | (v15 << 16);
        *(a2 + 24) = v9;
        return 96;
      }

      if ((v6 & 0x1800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4001;
        *a2 = v8;
        v9 = (v6 >> 9) & 2;
        v13 = (v6 & 0x100) == 0;
LABEL_20:
        if (!v13)
        {
          v9 = 1;
        }

        v10 = v9 + 6;
        goto LABEL_27;
      }

      v8 = v7 | 0xFFFFFFFF8001;
      *a2 = v8;
      v9 = (v6 >> 18) & 2;
      v12 = (v6 & 0x20000) == 0;
    }

    else
    {
      if ((v6 & 0x200000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0002;
        *a2 = v8;
        v9 = (v6 >> 5) & 1;
        v10 = v9 | 4;
        goto LABEL_27;
      }

      if ((v6 & 0x800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4002;
        *a2 = v8;
        v9 = (v6 >> 10) & 2;
        v13 = (v6 & 0x200) == 0;
        goto LABEL_20;
      }

      v8 = v7 | 0xFFFFFFFF8002;
      *a2 = v8;
      v9 = (v6 >> 19) & 2;
      v12 = (v6 & 0x40000) == 0;
    }

    if (!v12)
    {
      v9 = 1;
    }

    v10 = v9 + 9;
    goto LABEL_27;
  }

  if ((v6 & 0x100000000) != 0)
  {
    if (v6)
    {
      v11 = v7 | 0xFFFFFFFFC005;
    }

    else
    {
      v11 = v7 | 0xFFFFFFFFC004;
    }

    *a2 = v11;
  }

  return 96;
}

uint64_t AGXGRC_G13::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v3 = a1[3];
  v4 = *a3;
  if (v3 < *a3)
  {
    LODWORD(v4) = 0;
  }

  v5 = v3 - v4;
  *a3 = v3;
  v6 = a1[1];
  v7 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v5;
  *(a2 + 20) = -1;
  *a2 = v7 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v6 & 0x7E00000000) != 0)
  {
    if ((v6 & 0x5400000000) != 0)
    {
      if ((v6 & 0x600000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0001;
        *a2 = v8;
        v9 = (v6 >> 4) & 1;
        v10 = v9 | 4;
LABEL_27:
        v15 = a1[v10];
        *(a2 + 20) = HIDWORD(v15);
        *a2 = v8 & 0xFFFF00000000FFFFLL | (v15 << 16);
        *(a2 + 24) = v9;
        return 96;
      }

      if ((v6 & 0x1800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4001;
        *a2 = v8;
        v9 = (v6 >> 9) & 2;
        v13 = (v6 & 0x100) == 0;
LABEL_20:
        if (!v13)
        {
          v9 = 1;
        }

        v10 = v9 + 6;
        goto LABEL_27;
      }

      v8 = v7 | 0xFFFFFFFF8001;
      *a2 = v8;
      v9 = (v6 >> 18) & 2;
      v12 = (v6 & 0x20000) == 0;
    }

    else
    {
      if ((v6 & 0x200000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0002;
        *a2 = v8;
        v9 = (v6 >> 5) & 1;
        v10 = v9 | 4;
        goto LABEL_27;
      }

      if ((v6 & 0x800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4002;
        *a2 = v8;
        v9 = (v6 >> 10) & 2;
        v13 = (v6 & 0x200) == 0;
        goto LABEL_20;
      }

      v8 = v7 | 0xFFFFFFFF8002;
      *a2 = v8;
      v9 = (v6 >> 19) & 2;
      v12 = (v6 & 0x40000) == 0;
    }

    if (!v12)
    {
      v9 = 1;
    }

    v10 = v9 + 9;
    goto LABEL_27;
  }

  if ((v6 & 0x100000000) != 0)
  {
    if (v6)
    {
      v11 = v7 | 0xFFFFFFFFC005;
    }

    else
    {
      v11 = v7 | 0xFFFFFFFFC004;
    }

    *a2 = v11;
  }

  return 96;
}

uint64_t AGXGRC_G14::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v3 = a1[3];
  v4 = *a3;
  if (v3 < *a3)
  {
    LODWORD(v4) = 0;
  }

  v5 = v3 - v4;
  *a3 = v3;
  v6 = a1[1];
  v7 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v5;
  *(a2 + 20) = -1;
  *a2 = v7 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v6 & 0x7E00000000) != 0)
  {
    if ((v6 & 0x5400000000) != 0)
    {
      if ((v6 & 0x600000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0001;
        *a2 = v8;
        v9 = (v6 >> 4) & 1;
        v10 = v9 | 4;
LABEL_27:
        v15 = a1[v10];
        *(a2 + 20) = HIDWORD(v15);
        *a2 = v8 & 0xFFFF00000000FFFFLL | (v15 << 16);
        *(a2 + 24) = v9;
        return 96;
      }

      if ((v6 & 0x1800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4001;
        *a2 = v8;
        v9 = (v6 >> 9) & 2;
        v13 = (v6 & 0x100) == 0;
LABEL_20:
        if (!v13)
        {
          v9 = 1;
        }

        v10 = v9 + 6;
        goto LABEL_27;
      }

      v8 = v7 | 0xFFFFFFFF8001;
      *a2 = v8;
      v9 = (v6 >> 18) & 2;
      v12 = (v6 & 0x20000) == 0;
    }

    else
    {
      if ((v6 & 0x200000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0002;
        *a2 = v8;
        v9 = (v6 >> 5) & 1;
        v10 = v9 | 4;
        goto LABEL_27;
      }

      if ((v6 & 0x800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4002;
        *a2 = v8;
        v9 = (v6 >> 10) & 2;
        v13 = (v6 & 0x200) == 0;
        goto LABEL_20;
      }

      v8 = v7 | 0xFFFFFFFF8002;
      *a2 = v8;
      v9 = (v6 >> 19) & 2;
      v12 = (v6 & 0x40000) == 0;
    }

    if (!v12)
    {
      v9 = 1;
    }

    v10 = v9 + 9;
    goto LABEL_27;
  }

  if ((v6 & 0x100000000) != 0)
  {
    if (v6)
    {
      v11 = v7 | 0xFFFFFFFFC005;
    }

    else
    {
      v11 = v7 | 0xFFFFFFFFC004;
    }

    *a2 = v11;
  }

  return 96;
}

uint64_t AGXGRC_G14X::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0xFFFFFFFFC004;
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v4 = a1[3];
  v5 = *a3;
  if (v4 < *a3)
  {
    LODWORD(v5) = 0;
  }

  v6 = v4 - v5;
  *a3 = v4;
  v7 = a1[1];
  v8 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v6;
  *(a2 + 20) = -1;
  *a2 = v8 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v7 & 0x3F00000000) != 0)
  {
    v9 = 0xFFFFFFFF0001;
    v10 = WORD1(v7) & 0x3F;
    v11 = 0xFFFFFFFF8001;
    v12 = 0xFFFFFFFF4002;
    if ((v7 & 0x2000000000) != 0)
    {
      v13 = 6;
    }

    else
    {
      v12 = 0xFFFFFFFF8002;
      v13 = 9;
    }

    if ((v7 & 0x800000000) != 0)
    {
      v12 = 0xFFFFFFFF0002;
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    if ((v7 & 0x3000000000) != 0)
    {
      v11 = 0xFFFFFFFF4001;
      v15 = 6;
    }

    else
    {
      v15 = 9;
    }

    if ((v7 & 0xC00000000) != 0)
    {
      v16 = 4;
    }

    else
    {
      v9 = v11;
      v16 = v15;
    }

    if ((v7 & 0x1500000000) != 0)
    {
      v17 = v16;
    }

    else
    {
      v9 = v12;
      v17 = v14;
    }

    v18 = v9 | v8;
    *a2 = v18;
    v19 = a1[(v17 + v10)];
    *(a2 + 20) = HIDWORD(v19);
    *a2 = v18 & 0xFFFF00000000FFF3 | (v19 << 16);
    *(a2 + 24) = v10;
    return 96;
  }

  else
  {
    if ((v7 & 0x401) != 0)
    {
      if (v7)
      {
        v3 = 0xFFFFFFFFC005;
      }

      *a2 = v8 | v3;
    }

    return 96;
  }
}

uint64_t AGXGRC_G14X::ParseSampleHeaderInherited(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0xFFFFFFFFC004;
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v4 = a1[3];
  v5 = *a3;
  if (v4 < *a3)
  {
    LODWORD(v5) = 0;
  }

  v6 = v4 - v5;
  *a3 = v4;
  v7 = a1[1];
  v8 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v6;
  *(a2 + 20) = -1;
  *a2 = v8 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v7 & 0x3F00000000) != 0)
  {
    v9 = 0xFFFFFFFF0001;
    v10 = (v7 >> 16) & 0x3F;
    v11 = 0xFFFFFFFF8001;
    v12 = 0xFFFFFFFF4002;
    if ((v7 & 0x2000000000) == 0)
    {
      v12 = 0xFFFFFFFF8002;
    }

    if ((v7 & 0x800000000) != 0)
    {
      v12 = 0xFFFFFFFF0002;
    }

    if ((v7 & 0x3000000000) != 0)
    {
      v11 = 0xFFFFFFFF4001;
    }

    if ((v7 & 0xC00000000) == 0)
    {
      v9 = v11;
    }

    if ((v7 & 0x1500000000) == 0)
    {
      v9 = v12;
    }

    v13 = v9 | v8;
    *a2 = v13;
    v14 = v9 >> 14;
    v15 = 4;
    if (v14)
    {
      v15 = 5;
    }

    v16 = v14 == 2;
    v17 = 6;
    if (!v16)
    {
      v17 = v15;
    }

    v18 = a1[v17];
    *(a2 + 20) = HIDWORD(v18);
    *a2 = v13 & 0xFFFF00000000FFF3 | (v18 << 16);
    *(a2 + 24) = v10;
    return 56;
  }

  else
  {
    if ((v7 & 0x401) != 0)
    {
      if (v7)
      {
        v3 = 0xFFFFFFFFC005;
      }

      *a2 = v8 | v3;
    }

    return 56;
  }
}

uint64_t AGXGRC_G15::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0xFFFFFFFFC004;
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v4 = a1[3];
  v5 = *a3;
  if (v4 < *a3)
  {
    LODWORD(v5) = 0;
  }

  v6 = v4 - v5;
  *a3 = v4;
  v7 = a1[1];
  v8 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v6;
  *(a2 + 20) = -1;
  *a2 = v8 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v7 & 0x3F00000000) != 0)
  {
    v9 = 0xFFFFFFFF0001;
    v10 = WORD1(v7) & 0x3F;
    v11 = 0xFFFFFFFF8001;
    v12 = 0xFFFFFFFF4002;
    if ((v7 & 0x2000000000) != 0)
    {
      v13 = 6;
    }

    else
    {
      v12 = 0xFFFFFFFF8002;
      v13 = 9;
    }

    if ((v7 & 0x800000000) != 0)
    {
      v12 = 0xFFFFFFFF0002;
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    if ((v7 & 0x3000000000) != 0)
    {
      v11 = 0xFFFFFFFF4001;
      v15 = 6;
    }

    else
    {
      v15 = 9;
    }

    if ((v7 & 0xC00000000) != 0)
    {
      v16 = 4;
    }

    else
    {
      v9 = v11;
      v16 = v15;
    }

    if ((v7 & 0x1500000000) != 0)
    {
      v17 = v16;
    }

    else
    {
      v9 = v12;
      v17 = v14;
    }

    v18 = v9 | v8;
    *a2 = v18;
    v19 = a1[(v17 + v10)];
    *(a2 + 20) = HIDWORD(v19);
    *a2 = v18 & 0xFFFF00000000FFF3 | (v19 << 16);
    *(a2 + 24) = v10;
    return 96;
  }

  else
  {
    if ((v7 & 0x401) != 0)
    {
      if (v7)
      {
        v3 = 0xFFFFFFFFC005;
      }

      *a2 = v8 | v3;
    }

    return 96;
  }
}

uint64_t AGXGRC_G16::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0xFFFFFFFFC004;
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v4 = a1[3];
  v5 = *a3;
  if (v4 < *a3)
  {
    LODWORD(v5) = 0;
  }

  v6 = v4 - v5;
  *a3 = v4;
  v7 = a1[1];
  v8 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v6;
  *(a2 + 20) = -1;
  *a2 = v8 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v7 & 0x3F00000000) != 0)
  {
    v9 = 0xFFFFFFFF0001;
    v10 = WORD1(v7) & 0x3F;
    v11 = 0xFFFFFFFF8001;
    v12 = 0xFFFFFFFF4002;
    if ((v7 & 0x2000000000) != 0)
    {
      v13 = 6;
    }

    else
    {
      v12 = 0xFFFFFFFF8002;
      v13 = 9;
    }

    if ((v7 & 0x800000000) != 0)
    {
      v12 = 0xFFFFFFFF0002;
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    if ((v7 & 0x3000000000) != 0)
    {
      v11 = 0xFFFFFFFF4001;
      v15 = 6;
    }

    else
    {
      v15 = 9;
    }

    if ((v7 & 0xC00000000) != 0)
    {
      v16 = 4;
    }

    else
    {
      v9 = v11;
      v16 = v15;
    }

    if ((v7 & 0x1500000000) != 0)
    {
      v17 = v16;
    }

    else
    {
      v9 = v12;
      v17 = v14;
    }

    v18 = v9 | v8;
    *a2 = v18;
    v19 = a1[(v17 + v10)];
    *(a2 + 20) = HIDWORD(v19);
    *a2 = v18 & 0xFFFF00000000FFF3 | (v19 << 16);
    *(a2 + 24) = v10;
    return 96;
  }

  else
  {
    if ((v7 & 0x401) != 0)
    {
      if (v7)
      {
        v3 = 0xFFFFFFFFC005;
      }

      *a2 = v8 | v3;
    }

    return 96;
  }
}

uint64_t AGXGRC_HAL200::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0xFFFFFFFFC004;
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v4 = a1[3];
  v5 = *a3;
  if (v4 < *a3)
  {
    LODWORD(v5) = 0;
  }

  v6 = v4 - v5;
  *a3 = v4;
  v7 = a1[1];
  v8 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v6;
  *(a2 + 20) = -1;
  *a2 = v8 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v7 & 0x3F00000000) != 0)
  {
    v9 = 0xFFFFFFFF0001;
    v10 = WORD1(v7) & 0x3F;
    v11 = 0xFFFFFFFF8001;
    v12 = 0xFFFFFFFF4002;
    if ((v7 & 0x2000000000) != 0)
    {
      v13 = 6;
    }

    else
    {
      v12 = 0xFFFFFFFF8002;
      v13 = 9;
    }

    if ((v7 & 0x800000000) != 0)
    {
      v12 = 0xFFFFFFFF0002;
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    if ((v7 & 0x3000000000) != 0)
    {
      v11 = 0xFFFFFFFF4001;
      v15 = 6;
    }

    else
    {
      v15 = 9;
    }

    if ((v7 & 0xC00000000) != 0)
    {
      v16 = 4;
    }

    else
    {
      v9 = v11;
      v16 = v15;
    }

    if ((v7 & 0x1500000000) != 0)
    {
      v17 = v16;
    }

    else
    {
      v9 = v12;
      v17 = v14;
    }

    v18 = v9 | v8;
    *a2 = v18;
    v19 = a1[(v17 + v10)];
    *(a2 + 20) = HIDWORD(v19);
    *a2 = v18 & 0xFFFF00000000FFF3 | (v19 << 16);
    *(a2 + 24) = v10;
    return 96;
  }

  else
  {
    if ((v7 & 0x401) != 0)
    {
      if (v7)
      {
        v3 = 0xFFFFFFFFC005;
      }

      *a2 = v8 | v3;
    }

    return 96;
  }
}

uint64_t AGXGRC_HAL300::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0xFFFFFFFFC004;
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v4 = a1[3];
  v5 = *a3;
  if (v4 < *a3)
  {
    LODWORD(v5) = 0;
  }

  v6 = v4 - v5;
  *a3 = v4;
  v7 = a1[1];
  v8 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v6;
  *(a2 + 20) = -1;
  *a2 = v8 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v7 & 0x3F00000000) != 0)
  {
    v9 = 0xFFFFFFFF0001;
    v10 = WORD1(v7) & 0x3F;
    v11 = 0xFFFFFFFF8001;
    v12 = 0xFFFFFFFF4002;
    if ((v7 & 0x2000000000) != 0)
    {
      v13 = 6;
    }

    else
    {
      v12 = 0xFFFFFFFF8002;
      v13 = 9;
    }

    if ((v7 & 0x800000000) != 0)
    {
      v12 = 0xFFFFFFFF0002;
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    if ((v7 & 0x3000000000) != 0)
    {
      v11 = 0xFFFFFFFF4001;
      v15 = 6;
    }

    else
    {
      v15 = 9;
    }

    if ((v7 & 0xC00000000) != 0)
    {
      v16 = 4;
    }

    else
    {
      v9 = v11;
      v16 = v15;
    }

    if ((v7 & 0x1500000000) != 0)
    {
      v17 = v16;
    }

    else
    {
      v9 = v12;
      v17 = v14;
    }

    v18 = v9 | v8;
    *a2 = v18;
    v19 = a1[(v17 + v10)];
    *(a2 + 20) = HIDWORD(v19);
    *a2 = v18 & 0xFFFF00000000FFF3 | (v19 << 16);
    *(a2 + 24) = v10;
    return 96;
  }

  else
  {
    if ((v7 & 0x401) != 0)
    {
      if (v7)
      {
        v3 = 0xFFFFFFFFC005;
      }

      *a2 = v8 | v3;
    }

    return 96;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}