uint64_t avas::server::Clock::clearHardwareInfo(avas::server::Clock *this)
{
  result = *(this + 12);
  *(this + 12) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void avas::server::Clock::addControls(avas::server::Clock *this)
{
  v3 = *(this + 6);
  v2 = *(this + 7);
  if (v3 >= v2)
  {
    v5 = this + 40;
    v6 = *(this + 5);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 40;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 5);
    *(this + 5) = v15;
    *(this + 6) = v4;
    v17 = *(this + 7);
    *(this + 7) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 6) = v4;
  operator new();
}

uint64_t avas::server::HWStream::default_instance(avas::server::HWStream *this)
{
  {
    operator new();
  }

  return avas::server::HWStream::default_instance(void)::gInstance;
}

double avas::server::HWStream::HWStream(avas::server::HWStream *this)
{
  *this = &unk_1F5999160;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  return result;
}

{
  *this = &unk_1F5999160;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  return result;
}

avas::server::HWStream *avas::server::HWStream::HWStream(avas::server::HWStream *this, caulk::xstring **a2)
{
  *this = &unk_1F5999160;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  avas::server::HWStream::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999160;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  avas::server::HWStream::copy_from(this, a2);
  return this;
}

__n128 avas::server::HWStream::copy_from(caulk::xstring **this, caulk::xstring **a2)
{
  v4 = a2[11];
  if (v4)
  {
    v5 = avas::server::HWStream::mutableHardwareInfo(this);
    avas::server::HardwareInfo::copy_from(v5, v4);
  }

  v6 = a2[12];
  if (v6)
  {
    v7 = avas::server::HWStream::mutablePrivateFormat(this);
    avas::StreamFormat::operator=(v7, v6);
  }

  v8 = a2[13];
  if (v8)
  {
    v9 = avas::server::HWStream::mutablePublicFormat(this);
    avas::StreamFormat::operator=(v9, v8);
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  if (a2[5] != a2[6])
  {
    operator new();
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 8);
  if (a2[8] != a2[9])
  {
    operator new();
  }

  if (this != a2)
  {
    std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(this + 2, a2[2], a2[3], (a2[3] - a2[2]) >> 4);
  }

  *(this + 2) = *(a2 + 2);
  result = *(a2 + 7);
  *(this + 32) = *(a2 + 32);
  *(this + 7) = result;
  return result;
}

uint64_t avas::server::HWStream::hardwareInfo(avas::server::HWStream *this)
{
  result = *(this + 11);
  if (!result)
  {
    return avas::server::HardwareInfo::default_instance(0);
  }

  return result;
}

uint64_t avas::server::HWStream::mutableHardwareInfo(avas::server::HWStream *this)
{
  if (!*(this + 11))
  {
    operator new();
  }

  return *(this + 11);
}

uint64_t avas::server::HWStream::privateFormat(avas::server::HWStream *this)
{
  result = *(this + 12);
  if (!result)
  {
    return avas::StreamFormat::default_instance(0);
  }

  return result;
}

uint64_t avas::server::HWStream::mutablePrivateFormat(avas::server::HWStream *this)
{
  if (!*(this + 12))
  {
    operator new();
  }

  return *(this + 12);
}

uint64_t avas::server::HWStream::publicFormat(avas::server::HWStream *this)
{
  result = *(this + 13);
  if (!result)
  {
    return avas::StreamFormat::default_instance(0);
  }

  return result;
}

uint64_t avas::server::HWStream::mutablePublicFormat(avas::server::HWStream *this)
{
  if (!*(this + 13))
  {
    operator new();
  }

  return *(this + 13);
}

uint64_t avas::server::HWStream::HWStream(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_1F5999160;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  avas::server::HWStream::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999160;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  avas::server::HWStream::move_from(a1, a2);
  return a1;
}

__n128 avas::server::HWStream::move_from(__n128 *a1, __n128 *a2)
{
  v2 = a1[5].n128_u64[1];
  a1[5].n128_u64[1] = a2[5].n128_u64[1];
  a2[5].n128_u64[1] = v2;
  v3 = a1[6].n128_u64[0];
  a1[6].n128_u64[0] = a2[6].n128_u64[0];
  a2[6].n128_u64[0] = v3;
  v4 = a1[6].n128_u64[1];
  a1[6].n128_u64[1] = a2[6].n128_u64[1];
  a2[6].n128_u64[1] = v4;
  v5 = a1[2].n128_u64[1];
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  a2[2].n128_u64[1] = v5;
  v6 = a1[3].n128_u64[0];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v6;
  v7 = a1[3].n128_u64[1];
  a1[3].n128_u64[1] = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v7;
  v8 = a1[4].n128_u64[0];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v8;
  v9 = a1[4].n128_u64[1];
  a1[4].n128_u64[1] = a2[4].n128_u64[1];
  a2[4].n128_u64[1] = v9;
  v10 = a1[5].n128_u64[0];
  a1[5].n128_u64[0] = a2[5].n128_u64[0];
  a2[5].n128_u64[0] = v10;
  v11 = a1[1].n128_u64[0];
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = v11;
  v12 = a1[1].n128_u64[1];
  a1[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v12;
  v13 = a1[2].n128_u64[0];
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  a2[2].n128_u64[0] = v13;
  a1->n128_u32[2] = a2->n128_u32[2];
  result = a2[7];
  a1[8].n128_u32[0] = a2[8].n128_u32[0];
  a1[7] = result;
  return result;
}

uint64_t avas::server::HWStream::clear(avas::server::HWStream *this)
{
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 13);
  *(this + 13) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 8);
  v6 = *(this + 2);
  v5 = this + 16;
  result = std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](v5, v6);
  *(v5 - 2) = 0;
  *(v5 + 12) = 0;
  *(v5 + 13) = 0;
  *(v5 + 28) = 0;
  return result;
}

uint64_t avas::server::HWStream::isInitialized(avas::server::HWStream *this)
{
  if (!*(this + 11))
  {
    return 0;
  }

  result = *(this + 12);
  if (result)
  {
    result = avas::StreamFormat::isInitialized(result);
    if (result)
    {
      result = *(this + 13);
      if (result)
      {
        result = avas::StreamFormat::isInitialized(result);
        if (result)
        {
          v3 = *(this + 5);
          v4 = *(this + 6);
          while (v3 != v4)
          {
            if ((avas::AvailableStreamFormat::isInitialized(*v3) & 1) == 0)
            {
              return 0;
            }

            ++v3;
          }

          v5 = *(this + 8);
          v6 = *(this + 9);
          while (v5 != v6)
          {
            if ((avas::AvailableStreamFormat::isInitialized(*v5) & 1) == 0)
            {
              return 0;
            }

            ++v5;
          }

          return (~*(this + 2) & 0xF) == 0;
        }
      }
    }
  }

  return result;
}

uint64_t avas::server::HWStream::readFrom(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 < v2 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v16 = 0;
        v17 = 0;
        v10 = 0;
        v18 = v2 - v3;
        if (v2 < v3)
        {
          v18 = 0;
        }

        v19 = (v7 + v3);
        v20 = v3 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v13 = v20;
          v21 = *v19;
          a2[1] = v13;
          v10 |= (v21 & 0x7F) << v16;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v18;
          ++v19;
          v20 = v13 + 1;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          v13 = v12;
          a2[1] = v12;
          v14 = *v11++;
          v10 |= (v14 & 0x7F) << v8;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v15 = v9++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        return (v4 ^ 1) & 1;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 11)
      {
        if (v22 <= 13)
        {
          if (v22 == 12)
          {
            operator new();
          }

          if (v22 == 13)
          {
            operator new();
          }

          goto LABEL_113;
        }

        if (v22 == 14)
        {
          operator new();
        }

        if (v22 != 15)
        {
          if (v22 == 16)
          {
            v23 = *(a1 + 24);
            if (v23 >= *(a1 + 32))
            {
              v24 = std::vector<caulk::xstring>::__emplace_back_slow_path<>(a1 + 16);
            }

            else
            {
              *v23 = 0;
              v23[1] = 0;
              v24 = (v23 + 2);
            }

            *(a1 + 24) = v24;
            PB::Reader::read();
            caulk::xstring::assign();
          }

          goto LABEL_113;
        }

        if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
        {
          v68 = 0;
          v69 = 0;
          v45 = 0;
          v51 = v2 >= v13;
          v70 = v2 - v13;
          if (!v51)
          {
            v70 = 0;
          }

          v71 = (v7 + v13);
          v72 = v13 + 1;
          while (v70)
          {
            v73 = *v71;
            a2[1] = v72;
            v45 |= (v73 & 0x7F) << v68;
            if ((v73 & 0x80) == 0)
            {
              goto LABEL_111;
            }

            v68 += 7;
            --v70;
            ++v71;
            ++v72;
            v51 = v69++ >= 9;
            if (v51)
            {
LABEL_101:
              LODWORD(v45) = 0;
              goto LABEL_111;
            }
          }

          LODWORD(v45) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = (v7 + v13);
          v47 = v13 + 1;
          while (1)
          {
            a2[1] = v47;
            v48 = *v46++;
            v45 |= (v48 & 0x7F) << v43;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            ++v47;
            v15 = v44++ > 8;
            if (v15)
            {
              goto LABEL_101;
            }
          }
        }

LABEL_111:
        *(a1 + 124) = v45;
        v74 = *(a1 + 8) | 8;
      }

      else if (v22 <= 4)
      {
        if (v22 != 1)
        {
          if (v22 == 2)
          {
            operator new();
          }

          goto LABEL_113;
        }

        if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
        {
          v49 = 0;
          v50 = 0;
          v27 = 0;
          v51 = v2 >= v13;
          v52 = v2 - v13;
          if (!v51)
          {
            v52 = 0;
          }

          v53 = (v7 + v13);
          v54 = v13 + 1;
          while (v52)
          {
            v55 = *v53;
            a2[1] = v54;
            v27 |= (v55 & 0x7F) << v49;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_105;
            }

            v49 += 7;
            --v52;
            ++v53;
            ++v54;
            v51 = v50++ >= 9;
            if (v51)
            {
LABEL_77:
              v27 = 0;
              goto LABEL_105;
            }
          }

          v27 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v7 + v13);
          v29 = v13 + 1;
          while (1)
          {
            a2[1] = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v15 = v26++ > 8;
            if (v15)
            {
              goto LABEL_77;
            }
          }
        }

LABEL_105:
        *(a1 + 112) = v27;
        v74 = *(a1 + 8) | 1;
      }

      else
      {
        switch(v22)
        {
          case 5:
            if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
            {
              v56 = 0;
              v57 = 0;
              v33 = 0;
              v51 = v2 >= v13;
              v58 = v2 - v13;
              if (!v51)
              {
                v58 = 0;
              }

              v59 = (v7 + v13);
              v60 = v13 + 1;
              while (v58)
              {
                v61 = *v59;
                a2[1] = v60;
                v33 |= (v61 & 0x7F) << v56;
                if ((v61 & 0x80) == 0)
                {
                  goto LABEL_107;
                }

                v56 += 7;
                --v58;
                ++v59;
                ++v60;
                v51 = v57++ >= 9;
                if (v51)
                {
LABEL_85:
                  LODWORD(v33) = 0;
                  goto LABEL_107;
                }
              }

              LODWORD(v33) = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v34 = (v7 + v13);
              v35 = v13 + 1;
              while (1)
              {
                a2[1] = v35;
                v36 = *v34++;
                v33 |= (v36 & 0x7F) << v31;
                if ((v36 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                ++v35;
                v15 = v32++ > 8;
                if (v15)
                {
                  goto LABEL_85;
                }
              }
            }

LABEL_107:
            *(a1 + 128) = v33;
            v74 = *(a1 + 8) | 2;
            break;
          case 0xA:
            if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
            {
              v62 = 0;
              v63 = 0;
              v39 = 0;
              v51 = v2 >= v13;
              v64 = v2 - v13;
              if (!v51)
              {
                v64 = 0;
              }

              v65 = (v7 + v13);
              v66 = v13 + 1;
              while (v64)
              {
                v67 = *v65;
                a2[1] = v66;
                v39 |= (v67 & 0x7F) << v62;
                if ((v67 & 0x80) == 0)
                {
                  goto LABEL_109;
                }

                v62 += 7;
                --v64;
                ++v65;
                ++v66;
                v51 = v63++ >= 9;
                if (v51)
                {
LABEL_93:
                  LODWORD(v39) = 0;
                  goto LABEL_109;
                }
              }

              LODWORD(v39) = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = (v7 + v13);
              v41 = v13 + 1;
              while (1)
              {
                a2[1] = v41;
                v42 = *v40++;
                v39 |= (v42 & 0x7F) << v37;
                if ((v42 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                ++v41;
                v15 = v38++ > 8;
                if (v15)
                {
                  goto LABEL_93;
                }
              }
            }

LABEL_109:
            *(a1 + 120) = v39;
            v74 = *(a1 + 8) | 4;
            break;
          case 0xB:
            operator new();
          default:
            goto LABEL_113;
        }
      }

      *(a1 + 8) = v74;
LABEL_113:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

void avas::server::HWStream::writeTo(avas::server::HWStream *this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    v4 = *(this + 14);
    PB::Writer::writeVarInt(a2);
  }

  v5 = *(this + 11);
  if (v5)
  {
    PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(this + 2);
  if ((v6 & 2) != 0)
  {
    v7 = *(this + 32);
    PB::Writer::writeVarInt(a2);
    v6 = *(this + 2);
  }

  if ((v6 & 4) != 0)
  {
    v8 = *(this + 30);
    PB::Writer::writeVarInt(a2);
  }

  v9 = *(this + 12);
  if (v9)
  {
    PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(this + 13);
  if (v10)
  {
    PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = *(this + 5);
  v12 = *(this + 6);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::Writer::writeSubmessage(a2, v13);
  }

  v14 = *(this + 8);
  v15 = *(this + 9);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::Writer::writeSubmessage(a2, v16);
  }

  if ((*(this + 8) & 8) != 0)
  {
    v17 = *(this + 31);
    PB::Writer::writeVarInt(a2);
  }

  v19 = *(this + 2);
  v18 = *(this + 3);
  while (v19 != v18)
  {
    caulk::xstring::as_std_string(v19, &__p);
    PB::Writer::write();
    if (v21 < 0)
    {
      operator delete(__p);
    }

    v19 = (v19 + 16);
  }
}

void sub_1DE8B4664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::HWStream::formatText(avas::server::HWStream *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 8))
  {
    v5 = *(this + 14);
    PB::TextFormatter::format(a2, "objectToken");
  }

  v6 = *(this + 11);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "hardwareInfo");
  }

  v7 = *(this + 2);
  if ((v7 & 2) != 0)
  {
    v8 = *(this + 32);
    PB::TextFormatter::format(a2, "direction");
    v7 = *(this + 2);
  }

  if ((v7 & 4) != 0)
  {
    v9 = *(this + 30);
    PB::TextFormatter::format(a2, "startingChannel");
  }

  v10 = *(this + 12);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "privateFormat");
  }

  v11 = *(this + 13);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "publicFormat");
  }

  v12 = *(this + 5);
  v13 = *(this + 6);
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 32))(v14, a2, "availablePrivateFormats");
  }

  v15 = *(this + 8);
  v16 = *(this + 9);
  while (v15 != v16)
  {
    v17 = *v15++;
    (*(*v17 + 32))(v17, a2, "availablePublicFormats");
  }

  if ((*(this + 8) & 8) != 0)
  {
    v18 = *(this + 31);
    PB::TextFormatter::format(a2, "latency");
  }

  v19 = *(this + 2);
  for (i = *(this + 3); v19 != i; v19 = (v19 + 16))
  {
    caulk::xstring::as_std_string(v19, &__p);
    PB::TextFormatter::format();
    if (v23 < 0)
    {
      operator delete(__p);
    }
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8B48CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::HWStream::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 112) != *(a2 + 112) || *(a1 + 120) != *(a2 + 120) || *(a1 + 128) != *(a2 + 128))
  {
    return 0;
  }

  v7 = *(a1 + 88);
  v8 = *(a2 + 88);
  if (v7 && v8)
  {
    if (!avas::server::HardwareInfo::operator==(v7, v8))
    {
      return 0;
    }
  }

  else if (v7 | v8)
  {
    return 0;
  }

  v9 = *(a1 + 96);
  v10 = *(a2 + 96);
  if (v9 && v10)
  {
    if (!avas::StreamFormat::operator==(v9, v10))
    {
      return 0;
    }
  }

  else if (v9 | v10)
  {
    return 0;
  }

  v11 = *(a1 + 104);
  v12 = *(a2 + 104);
  if (v11 && v12)
  {
    if (avas::StreamFormat::operator==(v11, v12))
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (v11 | v12)
  {
    return 0;
  }

LABEL_26:
  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  if (v13 - v14 != *(a2 + 48) - *(a2 + 40))
  {
    return 0;
  }

  if (v13 != v14)
  {
    v15 = 0;
    if (((v13 - v14) >> 3) <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = (v13 - v14) >> 3;
    }

    do
    {
      v17 = *(*(a1 + 40) + 8 * v15);
      v18 = *(*(a2 + 40) + 8 * v15);
      if (v17)
      {
        v19 = v18 == 0;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        if (v17 | v18)
        {
          return 0;
        }
      }

      else if (!avas::AvailableStreamFormat::operator==(v17, v18))
      {
        return 0;
      }

      ++v15;
    }

    while (v16 != v15);
  }

  v21 = *(a1 + 64);
  v20 = *(a1 + 72);
  if (v20 - v21 != *(a2 + 72) - *(a2 + 64))
  {
    return 0;
  }

  if (v20 != v21)
  {
    v22 = 0;
    if (((v20 - v21) >> 3) <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = (v20 - v21) >> 3;
    }

    do
    {
      v24 = *(*(a1 + 64) + 8 * v22);
      v25 = *(*(a2 + 64) + 8 * v22);
      if (v24)
      {
        v26 = v25 == 0;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        if (v24 | v25)
        {
          return 0;
        }
      }

      else if (!avas::AvailableStreamFormat::operator==(v24, v25))
      {
        return 0;
      }

      ++v22;
    }

    while (v23 != v22);
  }

  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  v29 = v27 - v28;
  if (v27 - v28 != *(a2 + 24) - *(a2 + 16))
  {
    return 0;
  }

  if (v27 != v28)
  {
    v30 = 0;
    v31 = 0;
    v32 = v29 >> 4;
    if ((v29 >> 4) <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v29 >> 4;
    }

    while (!caulk::xstring::compare((*(a1 + 16) + v30), (*(a2 + 16) + v30)))
    {
      ++v31;
      v30 += 16;
      if (v33 == v31)
      {
        return v31 >= v32;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t avas::server::HWStream::clearHardwareInfo(avas::server::HWStream *this)
{
  result = *(this + 11);
  *(this + 11) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::HWStream::clearPrivateFormat(avas::server::HWStream *this)
{
  result = *(this + 12);
  *(this + 12) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::HWStream::clearPublicFormat(avas::server::HWStream *this)
{
  result = *(this + 13);
  *(this + 13) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void avas::server::HWStream::addAvailablePrivateFormats(avas::server::HWStream *this)
{
  v3 = *(this + 6);
  v2 = *(this + 7);
  if (v3 >= v2)
  {
    v5 = this + 40;
    v6 = *(this + 5);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 40;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 5);
    *(this + 5) = v15;
    *(this + 6) = v4;
    v17 = *(this + 7);
    *(this + 7) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 6) = v4;
  operator new();
}

void avas::server::HWStream::addAvailablePublicFormats(avas::server::HWStream *this)
{
  v3 = *(this + 9);
  v2 = *(this + 10);
  if (v3 >= v2)
  {
    v5 = this + 64;
    v6 = *(this + 8);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 64;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 8);
    *(this + 8) = v15;
    *(this + 9) = v4;
    v17 = *(this + 10);
    *(this + 10) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 9) = v4;
  operator new();
}

uint64_t avas::server::Device::default_instance(avas::server::Device *this)
{
  {
    operator new();
  }

  return avas::server::Device::default_instance(void)::gInstance;
}

double avas::server::Device::Device(avas::server::Device *this)
{
  *this = &unk_1F5999198;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_1F5999198;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  return result;
}

avas::server::Device *avas::server::Device::Device(avas::server::Device *this, const avas::server::Device *a2)
{
  *this = &unk_1F5999198;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  avas::server::Device::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999198;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  avas::server::Device::copy_from(this, a2);
  return this;
}

void *avas::server::Device::copy_from(avas::server::Device *this, const avas::server::Device *a2)
{
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  if (*(a2 + 2) != *(a2 + 3))
  {
    operator new();
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  if (*(a2 + 5) != *(a2 + 6))
  {
    operator new();
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 8);
  if (*(a2 + 8) != *(a2 + 9))
  {
    operator new();
  }

  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 11);
  if (*(a2 + 11) != *(a2 + 12))
  {
    operator new();
  }

  *(this + 2) = *(a2 + 2);
  *(this + 14) = *(a2 + 14);
  return result;
}

avas::server::Port *avas::server::Port::Port(avas::server::Port *this, caulk::xstring **a2)
{
  *this = &unk_1F5999400;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  avas::server::Port::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999400;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  avas::server::Port::copy_from(this, a2);
  return this;
}

uint64_t avas::server::Device::Device(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999198;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  avas::server::Device::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999198;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  avas::server::Device::move_from(a1, a2);
  return a1;
}

uint64_t avas::server::Device::move_from(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  v5 = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(result + 48);
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  v7 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  v8 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v8;
  v9 = *(result + 72);
  *(result + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  v10 = *(result + 80);
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = v10;
  v11 = *(result + 88);
  *(result + 88) = *(a2 + 88);
  *(a2 + 88) = v11;
  v12 = *(result + 96);
  *(result + 96) = *(a2 + 96);
  *(a2 + 96) = v12;
  v13 = *(result + 104);
  *(result + 104) = *(a2 + 104);
  *(a2 + 104) = v13;
  *(result + 8) = *(a2 + 8);
  *(result + 112) = *(a2 + 112);
  return result;
}

void *avas::server::Device::clear(avas::server::Device *this)
{
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 8);
  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 11);
  *(this + 2) = 0;
  *(this + 14) = 0;
  return result;
}

BOOL avas::server::Device::isInitialized(avas::server::Device *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  while (v2 != v3)
  {
    if ((avas::server::HWStream::isInitialized(*v2) & 1) == 0)
    {
      return 0;
    }

    ++v2;
  }

  v4 = *(this + 5);
  v5 = *(this + 6);
  while (v4 != v5)
  {
    if ((avas::server::HWStream::isInitialized(*v4) & 1) == 0)
    {
      return 0;
    }

    ++v4;
  }

  v6 = *(this + 8);
  v7 = *(this + 9);
  if (v6 == v7)
  {
LABEL_14:
    v9 = *(this + 11);
    v10 = *(this + 12);
    if (v9 == v10)
    {
      return (~*(this + 2) & 3) == 0;
    }

    while (1)
    {
      v11 = *(*v9 + 120);
      if (!v11 || (~*(v11 + 8) & 0x7F) != 0 || !*(*v9 + 128))
      {
        break;
      }

      v9 += 8;
      if (v9 == v10)
      {
        return (~*(this + 2) & 3) == 0;
      }
    }
  }

  else
  {
    while (1)
    {
      v8 = *(*v6 + 120);
      if (!v8 || (~*(v8 + 8) & 0x7F) != 0 || !*(*v6 + 128))
      {
        break;
      }

      v6 += 8;
      if (v6 == v7)
      {
        goto LABEL_14;
      }
    }
  }

  return 0;
}

uint64_t avas::server::Device::readFrom(_DWORD *a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 < v2 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v5 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v14 = 0;
        v15 = 0;
        v8 = 0;
        v16 = v2 - v3;
        if (v2 < v3)
        {
          v16 = 0;
        }

        v17 = (v5 + v3);
        v18 = v3 + 1;
        while (1)
        {
          if (!v16)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v11 = v18;
          v19 = *v17;
          a2[1] = v11;
          v8 |= (v19 & 0x7F) << v14;
          if ((v19 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v16;
          ++v17;
          v18 = v11 + 1;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v8 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v8 = 0;
        }
      }

      else
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = (v5 + v3);
        v10 = v3 + 1;
        while (1)
        {
          v11 = v10;
          a2[1] = v10;
          v12 = *v9++;
          v8 |= (v12 & 0x7F) << v6;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v6 += 7;
          ++v10;
          v13 = v7++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v8 & 7) == 4))
      {
        return (v4 ^ 1) & 1;
      }

      v20 = v8 >> 3;
      if ((v8 >> 3) > 4)
      {
        switch(v20)
        {
          case 5:
            operator new();
          case 6:
            operator new();
          case 7:
            operator new();
        }

        goto LABEL_68;
      }

      switch(v20)
      {
        case 2:
          if (v11 > 0xFFFFFFFFFFFFFFF5 || v11 + 10 > v2)
          {
            v33 = 0;
            v34 = 0;
            v23 = 0;
            v35 = v2 >= v11;
            v36 = v2 - v11;
            if (!v35)
            {
              v36 = 0;
            }

            v37 = (v5 + v11);
            v38 = v11 + 1;
            while (v36)
            {
              v39 = *v37;
              a2[1] = v38;
              v23 |= (v39 & 0x7F) << v33;
              if ((v39 & 0x80) == 0)
              {
                goto LABEL_64;
              }

              v33 += 7;
              --v36;
              ++v37;
              ++v38;
              v35 = v34++ >= 9;
              if (v35)
              {
LABEL_54:
                LODWORD(v23) = 0;
                goto LABEL_64;
              }
            }

            LODWORD(v23) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = (v5 + v11);
            v25 = v11 + 1;
            while (1)
            {
              a2[1] = v25;
              v26 = *v24++;
              v23 |= (v26 & 0x7F) << v21;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              ++v25;
              v13 = v22++ > 8;
              if (v13)
              {
                goto LABEL_54;
              }
            }
          }

LABEL_64:
          a1[28] = v23;
          v46 = a1[2] | 1;
          break;
        case 3:
          if (v11 > 0xFFFFFFFFFFFFFFF5 || v11 + 10 > v2)
          {
            v40 = 0;
            v41 = 0;
            v29 = 0;
            v35 = v2 >= v11;
            v42 = v2 - v11;
            if (!v35)
            {
              v42 = 0;
            }

            v43 = (v5 + v11);
            v44 = v11 + 1;
            while (v42)
            {
              v45 = *v43;
              a2[1] = v44;
              v29 |= (v45 & 0x7F) << v40;
              if ((v45 & 0x80) == 0)
              {
                goto LABEL_66;
              }

              v40 += 7;
              --v42;
              ++v43;
              ++v44;
              v35 = v41++ >= 9;
              if (v35)
              {
LABEL_62:
                LODWORD(v29) = 0;
                goto LABEL_66;
              }
            }

            LODWORD(v29) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = (v5 + v11);
            v31 = v11 + 1;
            while (1)
            {
              a2[1] = v31;
              v32 = *v30++;
              v29 |= (v32 & 0x7F) << v27;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              ++v31;
              v13 = v28++ > 8;
              if (v13)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_66:
          a1[29] = v29;
          v46 = a1[2] | 2;
          break;
        case 4:
          operator new();
        default:
          goto LABEL_68;
      }

      a1[2] = v46;
LABEL_68:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

uint64_t avas::server::Device::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 112);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 116);
    this = PB::Writer::writeVarInt(a2);
  }

  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  v13 = *(v3 + 64);
  v14 = *(v3 + 72);
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::writeSubmessage(a2, v15);
  }

  v17 = *(v3 + 88);
  v16 = *(v3 + 96);
  while (v17 != v16)
  {
    v18 = *v17++;
    this = PB::Writer::writeSubmessage(a2, v18);
  }

  return this;
}

uint64_t avas::server::Device::formatText(avas::server::Device *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 28);
    PB::TextFormatter::format(a2, "inputSafetyOffset");
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 29);
    PB::TextFormatter::format(a2, "outputSafetyOffset");
  }

  v8 = *(this + 2);
  v9 = *(this + 3);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "inputStreams");
  }

  v11 = *(this + 5);
  v12 = *(this + 6);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(*v13 + 32))(v13, a2, "outputStreams");
  }

  v14 = *(this + 8);
  v15 = *(this + 9);
  while (v14 != v15)
  {
    v16 = *v14++;
    (*(*v16 + 32))(v16, a2, "inputPorts");
  }

  v17 = *(this + 11);
  v18 = *(this + 12);
  while (v17 != v18)
  {
    v19 = *v17++;
    (*(*v19 + 32))(v19, a2, "outputPorts");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::Device::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 112) != *(a2 + 112))
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5 - v6 != *(a2 + 24) - *(a2 + 16))
  {
    return 0;
  }

  if (v5 != v6)
  {
    v7 = 0;
    if (((v5 - v6) >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = (v5 - v6) >> 3;
    }

    do
    {
      v9 = *(*(a1 + 16) + 8 * v7);
      v10 = *(*(a2 + 16) + 8 * v7);
      if (v9)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (v9 | v10)
        {
          return 0;
        }
      }

      else if (!avas::server::HWStream::operator==(v9, v10))
      {
        return 0;
      }

      ++v7;
    }

    while (v8 != v7);
  }

  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v12 - v13 != *(a2 + 48) - *(a2 + 40))
  {
    return 0;
  }

  if (v12 != v13)
  {
    v14 = 0;
    if (((v12 - v13) >> 3) <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = (v12 - v13) >> 3;
    }

    do
    {
      v16 = *(*(a1 + 40) + 8 * v14);
      v17 = *(*(a2 + 40) + 8 * v14);
      if (v16)
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        if (v16 | v17)
        {
          return 0;
        }
      }

      else if (!avas::server::HWStream::operator==(v16, v17))
      {
        return 0;
      }

      ++v14;
    }

    while (v15 != v14);
  }

  v20 = *(a1 + 64);
  v19 = *(a1 + 72);
  if (v19 - v20 != *(a2 + 72) - *(a2 + 64))
  {
    return 0;
  }

  if (v19 != v20)
  {
    v21 = 0;
    if (((v19 - v20) >> 3) <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = (v19 - v20) >> 3;
    }

    do
    {
      v23 = *(*(a1 + 64) + 8 * v21);
      v24 = *(*(a2 + 64) + 8 * v21);
      if (v23)
      {
        v25 = v24 == 0;
      }

      else
      {
        v25 = 1;
      }

      if (v25)
      {
        if (v23 | v24)
        {
          return 0;
        }
      }

      else if (!avas::server::Port::operator==(v23, v24))
      {
        return 0;
      }

      ++v21;
    }

    while (v22 != v21);
  }

  v27 = *(a1 + 88);
  v26 = *(a1 + 96);
  v28 = v26 - v27;
  if (v26 - v27 != *(a2 + 96) - *(a2 + 88))
  {
    return 0;
  }

  if (v26 == v27)
  {
    return 1;
  }

  v29 = 0;
  v30 = v28 >> 3;
  if ((v28 >> 3) <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v28 >> 3;
  }

  do
  {
    v32 = *(*(a1 + 88) + 8 * v29);
    v33 = *(*(a2 + 88) + 8 * v29);
    if (v32)
    {
      v34 = v33 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      if (v32 | v33)
      {
        return 0;
      }
    }

    else if (!avas::server::Port::operator==(v32, v33))
    {
      return 0;
    }

    ++v29;
  }

  while (v31 != v29);
  return v29 >= v30;
}

void avas::server::Device::addInputStreams(avas::server::Device *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v3 >= v2)
  {
    v5 = this + 16;
    v6 = *(this + 2);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 16;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 2);
    *(this + 2) = v15;
    *(this + 3) = v4;
    v17 = *(this + 4);
    *(this + 4) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 3) = v4;
  operator new();
}

void avas::server::Device::addOutputStreams(avas::server::Device *this)
{
  v3 = *(this + 6);
  v2 = *(this + 7);
  if (v3 >= v2)
  {
    v5 = this + 40;
    v6 = *(this + 5);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 40;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 5);
    *(this + 5) = v15;
    *(this + 6) = v4;
    v17 = *(this + 7);
    *(this + 7) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 6) = v4;
  operator new();
}

void avas::server::Device::addInputPorts(avas::server::Device *this)
{
  v3 = *(this + 9);
  v2 = *(this + 10);
  if (v3 >= v2)
  {
    v5 = this + 64;
    v6 = *(this + 8);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 64;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 8);
    *(this + 8) = v15;
    *(this + 9) = v4;
    v17 = *(this + 10);
    *(this + 10) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 9) = v4;
  operator new();
}

void avas::server::Device::addOutputPorts(avas::server::Device *this)
{
  v3 = *(this + 12);
  v2 = *(this + 13);
  if (v3 >= v2)
  {
    v5 = this + 88;
    v6 = *(this + 11);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 88;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 11);
    *(this + 11) = v15;
    *(this + 12) = v4;
    v17 = *(this + 13);
    *(this + 13) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 12) = v4;
  operator new();
}

uint64_t avas::server::Device_Clock::default_instance(avas::server::Device_Clock *this)
{
  {
    operator new();
  }

  return avas::server::Device_Clock::default_instance(void)::gInstance;
}

void *avas::server::Device_Clock::Device_Clock(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F59991D0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F59991D0;
  return this;
}

avas::server::Device_Clock *avas::server::Device_Clock::Device_Clock(avas::server::Device_Clock *this, const avas::server::Device_Clock *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F59991D0;
  avas::server::Device_Clock::copy_from(this, a2);
  return this;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F59991D0;
  avas::server::Device_Clock::copy_from(this, a2);
  return this;
}

void avas::server::Device_Clock::copy_from(avas::server::Device_Clock *this, const avas::server::Device_Clock *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = avas::server::Device_Clock::mutableClock(this);
    avas::server::Clock::copy_from(v5, v4);
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    v7 = avas::server::Device_Clock::mutableDevice(this);

    avas::server::Device::copy_from(v7, v6);
  }
}

uint64_t avas::server::Device_Clock::clock(avas::server::Device_Clock *this)
{
  result = *(this + 1);
  if (!result)
  {
    return avas::server::Clock::default_instance(0);
  }

  return result;
}

uint64_t avas::server::Device_Clock::mutableClock(avas::server::Device_Clock *this)
{
  if (!*(this + 1))
  {
    operator new();
  }

  return *(this + 1);
}

uint64_t avas::server::Device_Clock::device(avas::server::Device_Clock *this)
{
  result = *(this + 2);
  if (!result)
  {
    return avas::server::Device::default_instance(0);
  }

  return result;
}

uint64_t avas::server::Device_Clock::mutableDevice(avas::server::Device_Clock *this)
{
  if (!*(this + 2))
  {
    operator new();
  }

  return *(this + 2);
}

void *avas::server::Device_Clock::Device_Clock(void *result, uint64_t a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_1F59991D0;
  result[1] = *(a2 + 8);
  *(a2 + 8) = 0;
  v2 = result[2];
  result[2] = *(a2 + 16);
  *(a2 + 16) = v2;
  return result;
}

{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_1F59991D0;
  result[1] = *(a2 + 8);
  *(a2 + 8) = 0;
  v2 = result[2];
  result[2] = *(a2 + 16);
  *(a2 + 16) = v2;
  return result;
}

uint64_t avas::server::Device_Clock::move_from(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

uint64_t avas::server::Device_Clock::operator=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

uint64_t avas::server::Device_Clock::clear(avas::server::Device_Clock *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(this + 2);
  *(this + 2) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

BOOL avas::server::Device_Clock::isInitialized(avas::server::Device_Clock *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  if (!avas::server::Clock::isInitialized(v2))
  {
    return 0;
  }

  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  return avas::server::Device::isInitialized(v3);
}

uint64_t avas::server::Device_Clock::readFrom(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 24);
  if (v2 < v3 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v5 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v13 = 0;
        v14 = 0;
        v8 = 0;
        v15 = v3 >= v2;
        v16 = v3 - v2;
        if (!v15)
        {
          v16 = 0;
        }

        v17 = (v5 + v2);
        v18 = v2 + 1;
        while (1)
        {
          if (!v16)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v19 = *v17;
          a2[1] = v18;
          v8 |= (v19 & 0x7F) << v13;
          if ((v19 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          --v16;
          ++v17;
          ++v18;
          v12 = v14++ > 8;
          if (v12)
          {
LABEL_18:
            v8 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v8 = 0;
        }
      }

      else
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = (v5 + v2);
        v10 = v2 + 1;
        while (1)
        {
          a2[1] = v10;
          v11 = *v9++;
          v8 |= (v11 & 0x7F) << v6;
          if ((v11 & 0x80) == 0)
          {
            break;
          }

          v6 += 7;
          ++v10;
          v12 = v7++ > 8;
          if (v12)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v8 & 7) == 4))
      {
        break;
      }

      if ((v8 >> 3) == 2)
      {
        operator new();
      }

      if ((v8 >> 3) == 1)
      {
        operator new();
      }

      v2 = a2[1];
      v3 = a2[2];
      v4 = *(a2 + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

uint64_t avas::server::Device_Clock::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 16);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t avas::server::Device_Clock::formatText(avas::server::Device_Clock *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "clock");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "device");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::Device_Clock::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (avas::server::Clock::operator==(v4, v5))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 | v5)
  {
    return 0;
  }

LABEL_10:
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    v10 = *(a1 + 16);

    return avas::server::Device::operator==(v10, v9);
  }

  return result;
}

uint64_t avas::server::Device_Clock::clearClock(avas::server::Device_Clock *this)
{
  result = *(this + 1);
  *(this + 1) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::Device_Clock::clearDevice(avas::server::Device_Clock *this)
{
  result = *(this + 2);
  *(this + 2) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::Box::default_instance(avas::server::Box *this)
{
  {
    operator new();
  }

  return avas::server::Box::default_instance(void)::gInstance;
}

double avas::server::Box::Box(avas::server::Box *this)
{
  *this = &unk_1F5999208;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 96) = 0;
  return result;
}

{
  *this = &unk_1F5999208;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 96) = 0;
  return result;
}

avas::server::Box *avas::server::Box::Box(avas::server::Box *this, const avas::server::Box *a2)
{
  *this = &unk_1F5999208;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  avas::server::Box::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999208;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  avas::server::Box::copy_from(this, a2);
  return this;
}

void *avas::server::Box::copy_from(avas::server::Box *this, const avas::server::Box *a2)
{
  v4 = *(a2 + 11);
  if (v4)
  {
    v5 = avas::server::Box::mutableHardwareInfo(this);
    avas::server::HardwareInfo::copy_from(v5, v4);
  }

  if (this != a2)
  {
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(this + 5, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(this + 8, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
  }

  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  if (*(a2 + 2) != *(a2 + 3))
  {
    operator new();
  }

  *(this + 2) = *(a2 + 2);
  *(this + 96) = *(a2 + 96);
  return result;
}

uint64_t avas::server::Box::hardwareInfo(avas::server::Box *this)
{
  result = *(this + 11);
  if (!result)
  {
    return avas::server::HardwareInfo::default_instance(0);
  }

  return result;
}

uint64_t avas::server::Box::mutableHardwareInfo(avas::server::Box *this)
{
  if (!*(this + 11))
  {
    operator new();
  }

  return *(this + 11);
}

uint64_t avas::server::Box::Box(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999208;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  avas::server::Box::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999208;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  avas::server::Box::move_from(a1, a2);
  return a1;
}

uint64_t avas::server::Box::move_from(uint64_t result, uint64_t a2)
{
  v2 = *(result + 88);
  *(result + 88) = *(a2 + 88);
  *(a2 + 88) = v2;
  v3 = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v3;
  v4 = *(result + 48);
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = v4;
  v5 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v5;
  v6 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v6;
  v7 = *(result + 72);
  *(result + 72) = *(a2 + 72);
  *(a2 + 72) = v7;
  v8 = *(result + 80);
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = v8;
  v9 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v9;
  v10 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v10;
  v11 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  *(result + 8) = *(a2 + 8);
  *(result + 96) = *(a2 + 96);
  return result;
}

void *avas::server::Box::clear(avas::server::Box *this)
{
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 6) = *(this + 5);
  *(this + 9) = *(this + 8);
  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  *(this + 2) = 0;
  *(this + 96) = 0;
  return result;
}

uint64_t avas::server::Box::isInitialized(avas::server::Box *this)
{
  if (!*(this + 11))
  {
    return 0;
  }

  v2 = *(this + 2);
  v3 = *(this + 3);
  while (1)
  {
    if (v2 == v3)
    {
      return *(this + 8) & 1;
    }

    if (!avas::server::ControlAndValue::isInitialized(*v2))
    {
      break;
    }

    ++v2;
  }

  return 0;
}

uint64_t avas::server::Box::readFrom(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 < v2 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v2 - v3;
        if (v2 < v3)
        {
          v17 = 0;
        }

        v18 = (v7 + v3);
        v19 = v3 + 1;
        while (v17)
        {
          v13 = v19;
          v20 = *v18;
          a2[1] = v13;
          v10 |= (v20 & 0x7F) << v15;
          if ((v20 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v15 += 7;
          --v17;
          ++v18;
          v19 = v13 + 1;
          v42 = v16++ > 8;
          if (v42)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_175;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
      while (1)
      {
        v13 = v12;
        a2[1] = v12;
        v14 = *v11++;
        v10 |= (v14 & 0x7F) << v8;
        if ((v14 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v42 = v9++ > 8;
        if (v42)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      v21 = v10 & 7;
      if (v4 & 1 | (v21 == 4))
      {
        goto LABEL_175;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        if (v22 == 2)
        {
          operator new();
        }

        if (v22 == 3)
        {
          if (v13 >= v2)
          {
            v24 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v23 = *(v7 + v13);
            a2[1] = v13 + 1;
            v24 = v23 != 0;
          }

          *(a1 + 96) = v24;
          *(a1 + 8) |= 1u;
        }

        goto LABEL_171;
      }

      if (v22 == 4)
      {
        break;
      }

      if (v22 != 5)
      {
        if (v22 == 6)
        {
          operator new();
        }

        goto LABEL_171;
      }

      if (v21 != 2)
      {
        v82 = *(a1 + 72);
        v81 = *(a1 + 80);
        if (v82 >= v81)
        {
          v89 = *(a1 + 64);
          v90 = v82 - v89;
          v91 = (v82 - v89) >> 3;
          v92 = v91 + 1;
          if ((v91 + 1) >> 61)
          {
LABEL_178:
            std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
          }

          v93 = v81 - v89;
          if (v93 >> 2 > v92)
          {
            v92 = v93 >> 2;
          }

          if (v93 >= 0x7FFFFFFFFFFFFFF8)
          {
            v94 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v94 = v92;
          }

          if (v94)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1 + 64, v94);
          }

          v115 = (v82 - v89) >> 3;
          v116 = (8 * v91);
          v117 = (8 * v91 - 8 * v115);
          *v116 = 0;
          v80 = v116 + 1;
          memcpy(v117, v89, v90);
          v118 = *(a1 + 64);
          *(a1 + 64) = v117;
          *(a1 + 72) = v80;
          *(a1 + 80) = 0;
          if (v118)
          {
            operator delete(v118);
          }
        }

        else
        {
          *v82 = 0;
          v80 = v82 + 8;
        }

        *(a1 + 72) = v80;
        v120 = a2[1];
        v119 = a2[2];
        v121 = *a2;
        if (v120 <= 0xFFFFFFFFFFFFFFF5 && v120 + 10 <= v119)
        {
          v122 = 0;
          v123 = 0;
          v104 = 0;
          v124 = (v121 + v120);
          v125 = v120 + 1;
          while (1)
          {
            a2[1] = v125;
            v126 = *v124++;
            v104 |= (v126 & 0x7F) << v122;
            if ((v126 & 0x80) == 0)
            {
              goto LABEL_170;
            }

            v122 += 7;
            ++v125;
            v42 = v123++ > 8;
            if (v42)
            {
              goto LABEL_166;
            }
          }
        }

        v127 = 0;
        v128 = 0;
        v104 = 0;
        v110 = v119 >= v120;
        v129 = v119 - v120;
        if (!v110)
        {
          v129 = 0;
        }

        v130 = (v121 + v120);
        v131 = v120 + 1;
        while (v129)
        {
          v132 = *v130;
          a2[1] = v131;
          v104 |= (v132 & 0x7F) << v127;
          if ((v132 & 0x80) == 0)
          {
            goto LABEL_168;
          }

          v127 += 7;
          --v129;
          ++v130;
          ++v131;
          v42 = v128++ > 8;
          if (v42)
          {
            goto LABEL_166;
          }
        }

LABEL_167:
        v104 = 0;
        *(a2 + 24) = 1;
LABEL_170:
        *(v80 - 1) = v104;
        goto LABEL_171;
      }

      if (PB::Reader::placeMark())
      {
LABEL_177:
        v133 = 0;
        return v133 & 1;
      }

      if (a2[1] < a2[2] && (a2[3] & 1) == 0)
      {
        v25 = *(a1 + 72);
        do
        {
          v52 = *(a1 + 80);
          if (v25 >= v52)
          {
            v53 = *(a1 + 64);
            v54 = v25 - v53;
            v55 = (v25 - v53) >> 3;
            v56 = v55 + 1;
            if ((v55 + 1) >> 61)
            {
              goto LABEL_178;
            }

            v57 = v52 - v53;
            if (v57 >> 2 > v56)
            {
              v56 = v57 >> 2;
            }

            if (v57 >= 0x7FFFFFFFFFFFFFF8)
            {
              v58 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v58 = v56;
            }

            if (v58)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1 + 64, v58);
            }

            v59 = (v25 - v53) >> 3;
            v60 = (8 * v55);
            v61 = (8 * v55 - 8 * v59);
            *v60 = 0;
            v25 = (v60 + 1);
            memcpy(v61, v53, v54);
            v62 = *(a1 + 64);
            *(a1 + 64) = v61;
            *(a1 + 72) = v25;
            *(a1 + 80) = 0;
            if (v62)
            {
              operator delete(v62);
            }
          }

          else
          {
            *v25 = 0;
            v25 += 8;
          }

          *(a1 + 72) = v25;
          v64 = a2[1];
          v63 = a2[2];
          v65 = *a2;
          v66 = 0;
          v67 = 0;
          if (v64 > 0xFFFFFFFFFFFFFFF5 || v64 + 10 > v63)
          {
            v74 = 0;
            v69 = v63 - v64;
            if (v63 < v64)
            {
              v69 = 0;
            }

            v70 = (v65 + v64);
            v71 = v64 + 1;
            while (1)
            {
              if (!v69)
              {
                goto LABEL_116;
              }

              v72 = v71;
              v73 = *v70;
              a2[1] = v72;
              v74 |= (v73 & 0x7F) << v66;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              --v69;
              ++v70;
              v71 = v72 + 1;
              v42 = v67++ > 8;
              if (v42)
              {
LABEL_103:
                v74 = 0;
                goto LABEL_106;
              }
            }

            if (a2[3])
            {
              v74 = 0;
            }
          }

          else
          {
            v74 = 0;
            v75 = (v65 + v64);
            v76 = v64 + 1;
            while (1)
            {
              v72 = v76;
              a2[1] = v76;
              v77 = *v75++;
              v74 |= (v77 & 0x7F) << v66;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              ++v76;
              v42 = v67++ > 8;
              if (v42)
              {
                goto LABEL_103;
              }
            }
          }

LABEL_106:
          *(v25 - 1) = v74;
        }

        while (v72 < v63 && (a2[3] & 1) == 0);
      }

LABEL_171:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
      if (v3 >= v2 || (a2[3] & 1) != 0)
      {
        goto LABEL_175;
      }
    }

    if (v21 == 2)
    {
      if (PB::Reader::placeMark())
      {
        goto LABEL_177;
      }

      if (a2[1] < a2[2] && (a2[3] & 1) == 0)
      {
        v25 = *(a1 + 48);
        while (1)
        {
          v26 = *(a1 + 56);
          if (v25 >= v26)
          {
            v27 = *(a1 + 40);
            v28 = v25 - v27;
            v29 = (v25 - v27) >> 3;
            v30 = v29 + 1;
            if ((v29 + 1) >> 61)
            {
              goto LABEL_178;
            }

            v31 = v26 - v27;
            if (v31 >> 2 > v30)
            {
              v30 = v31 >> 2;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFF8)
            {
              v32 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1 + 40, v32);
            }

            v33 = (v25 - v27) >> 3;
            v34 = (8 * v29);
            v35 = (8 * v29 - 8 * v33);
            *v34 = 0;
            v25 = (v34 + 1);
            memcpy(v35, v27, v28);
            v36 = *(a1 + 40);
            *(a1 + 40) = v35;
            *(a1 + 48) = v25;
            *(a1 + 56) = 0;
            if (v36)
            {
              operator delete(v36);
            }
          }

          else
          {
            *v25 = 0;
            v25 += 8;
          }

          *(a1 + 48) = v25;
          v38 = a2[1];
          v37 = a2[2];
          v39 = *a2;
          v40 = 0;
          v41 = 0;
          v42 = v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v37;
          if (v42)
          {
            break;
          }

          v48 = 0;
          v49 = (v39 + v38);
          v50 = v38 + 1;
          while (1)
          {
            v46 = v50;
            a2[1] = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v40;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            ++v50;
            v42 = v41++ > 8;
            if (v42)
            {
              goto LABEL_64;
            }
          }

LABEL_67:
          *(v25 - 1) = v48;
          if (v46 >= v37 || (a2[3] & 1) != 0)
          {
            goto LABEL_171;
          }
        }

        v48 = 0;
        v43 = v37 - v38;
        if (v37 < v38)
        {
          v43 = 0;
        }

        v44 = (v39 + v38);
        v45 = v38 + 1;
        while (v43)
        {
          v46 = v45;
          v47 = *v44;
          a2[1] = v46;
          v48 |= (v47 & 0x7F) << v40;
          if ((v47 & 0x80) == 0)
          {
            if (a2[3])
            {
              v48 = 0;
            }

            goto LABEL_67;
          }

          v40 += 7;
          --v43;
          ++v44;
          v45 = v46 + 1;
          v42 = v41++ > 8;
          if (v42)
          {
LABEL_64:
            v48 = 0;
            goto LABEL_67;
          }
        }

LABEL_116:
        *(a2 + 24) = 1;
        *(v25 - 1) = 0;
      }

      goto LABEL_171;
    }

    v79 = *(a1 + 48);
    v78 = *(a1 + 56);
    if (v79 >= v78)
    {
      v83 = *(a1 + 40);
      v84 = v79 - v83;
      v85 = (v79 - v83) >> 3;
      v86 = v85 + 1;
      if ((v85 + 1) >> 61)
      {
        goto LABEL_178;
      }

      v87 = v78 - v83;
      if (v87 >> 2 > v86)
      {
        v86 = v87 >> 2;
      }

      if (v87 >= 0x7FFFFFFFFFFFFFF8)
      {
        v88 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v88 = v86;
      }

      if (v88)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1 + 40, v88);
      }

      v95 = (v79 - v83) >> 3;
      v96 = (8 * v85);
      v97 = (8 * v85 - 8 * v95);
      *v96 = 0;
      v80 = v96 + 1;
      memcpy(v97, v83, v84);
      v98 = *(a1 + 40);
      *(a1 + 40) = v97;
      *(a1 + 48) = v80;
      *(a1 + 56) = 0;
      if (v98)
      {
        operator delete(v98);
      }
    }

    else
    {
      *v79 = 0;
      v80 = v79 + 8;
    }

    *(a1 + 48) = v80;
    v100 = a2[1];
    v99 = a2[2];
    v101 = *a2;
    if (v100 <= 0xFFFFFFFFFFFFFFF5 && v100 + 10 <= v99)
    {
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v105 = (v101 + v100);
      v106 = v100 + 1;
      while (1)
      {
        a2[1] = v106;
        v107 = *v105++;
        v104 |= (v107 & 0x7F) << v102;
        if ((v107 & 0x80) == 0)
        {
          goto LABEL_170;
        }

        v102 += 7;
        ++v106;
        v42 = v103++ > 8;
        if (v42)
        {
          goto LABEL_166;
        }
      }
    }

    v108 = 0;
    v109 = 0;
    v104 = 0;
    v110 = v99 >= v100;
    v111 = v99 - v100;
    if (!v110)
    {
      v111 = 0;
    }

    v112 = (v101 + v100);
    v113 = v100 + 1;
    while (v111)
    {
      v114 = *v112;
      a2[1] = v113;
      v104 |= (v114 & 0x7F) << v108;
      if ((v114 & 0x80) == 0)
      {
LABEL_168:
        if (a2[3])
        {
          v104 = 0;
        }

        goto LABEL_170;
      }

      v108 += 7;
      --v111;
      ++v112;
      ++v113;
      v42 = v109++ > 8;
      if (v42)
      {
LABEL_166:
        v104 = 0;
        goto LABEL_170;
      }
    }

    goto LABEL_167;
  }

LABEL_175:
  v133 = v4 ^ 1;
  return v133 & 1;
}

uint64_t avas::server::Box::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 88);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 8))
  {
    v5 = *(v3 + 96);
    this = PB::Writer::write(a2);
  }

  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  while (v6 != v7)
  {
    v8 = *v6++;
    this = PB::Writer::writeVarInt(a2);
  }

  v9 = *(v3 + 64);
  v10 = *(v3 + 72);
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::writeVarInt(a2);
  }

  v13 = *(v3 + 16);
  v12 = *(v3 + 24);
  while (v13 != v12)
  {
    v14 = *v13++;
    this = PB::Writer::writeSubmessage(a2, v14);
  }

  return this;
}

uint64_t avas::server::Box::formatText(avas::server::Box *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 11);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "hardwareInfo");
  }

  if (*(this + 8))
  {
    v6 = *(this + 96);
    PB::TextFormatter::format(a2, "activated");
  }

  v7 = *(this + 5);
  v8 = *(this + 6);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(a2, "clocksIDs");
  }

  v10 = *(this + 8);
  v11 = *(this + 9);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(a2, "deviceIDs");
  }

  v13 = *(this + 2);
  v14 = *(this + 3);
  while (v13 != v14)
  {
    v15 = *v13++;
    (*(*v15 + 32))(v15, a2, "controls");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::Box::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v5 | v6)
    {
      return 0;
    }
  }

  else if (!avas::server::HardwareInfo::operator==(v5, v6))
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a2 + 40);
  if (v9 - v8 != *(a2 + 48) - v10)
  {
    return 0;
  }

  if (v9 != v8)
  {
    v11 = (v9 - v8) >> 3;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v13 = *v8;
      v8 += 8;
      v12 = v13;
      v14 = *v10++;
      if (v12 != v14)
      {
        return 0;
      }
    }

    while (--v11);
  }

  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a2 + 64);
  if (v16 - v15 != *(a2 + 72) - v17)
  {
    return 0;
  }

  if (v16 != v15)
  {
    v18 = (v16 - v15) >> 3;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    do
    {
      v20 = *v15;
      v15 += 8;
      v19 = v20;
      v21 = *v17++;
      if (v19 != v21)
      {
        return 0;
      }
    }

    while (--v18);
  }

  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v24 = v22 - v23;
  if (v22 - v23 != *(a2 + 24) - *(a2 + 16))
  {
    return 0;
  }

  if (v22 == v23)
  {
    return 1;
  }

  v25 = 0;
  v26 = v24 >> 3;
  if ((v24 >> 3) <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v24 >> 3;
  }

  do
  {
    v28 = *(*(a1 + 16) + 8 * v25);
    v29 = *(*(a2 + 16) + 8 * v25);
    if (v28)
    {
      v30 = v29 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      if (v28 | v29)
      {
        return 0;
      }
    }

    else if (!avas::server::ControlAndValue::operator==(v28, v29))
    {
      return 0;
    }

    ++v25;
  }

  while (v27 != v25);
  return v25 >= v26;
}

uint64_t avas::server::Box::clearHardwareInfo(avas::server::Box *this)
{
  result = *(this + 11);
  *(this + 11) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void avas::server::Box::addControls(avas::server::Box *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v3 >= v2)
  {
    v5 = this + 16;
    v6 = *(this + 2);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 16;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 2);
    *(this + 2) = v15;
    *(this + 3) = v4;
    v17 = *(this + 4);
    *(this + 4) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 3) = v4;
  operator new();
}

uint64_t avas::server::Driver::default_instance(avas::server::Driver *this)
{
  {
    operator new();
  }

  return avas::server::Driver::default_instance(void)::gInstance;
}

double avas::server::Driver::Driver(avas::server::Driver *this)
{
  *this = &unk_1F5999240;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_1F5999240;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  return result;
}

avas::server::Driver *avas::server::Driver::Driver(avas::server::Driver *this, const avas::server::Driver *a2)
{
  *this = &unk_1F5999240;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  avas::server::Driver::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999240;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  avas::server::Driver::copy_from(this, a2);
  return this;
}

void *avas::server::Driver::copy_from(avas::server::Driver *this, const avas::server::Driver *a2)
{
  caulk::xstring::assign((this + 88), (a2 + 88));
  v4 = *(a2 + 13);
  if (v4)
  {
    v5 = avas::server::Driver::mutableHardwareInfo(this);
    avas::server::HardwareInfo::copy_from(v5, v4);
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  if (*(a2 + 2) != *(a2 + 3))
  {
    operator new();
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  if (*(a2 + 5) != *(a2 + 6))
  {
    operator new();
  }

  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 8);
  if (*(a2 + 8) != *(a2 + 9))
  {
    operator new();
  }

  *(this + 2) = *(a2 + 2);
  *(this + 14) = *(a2 + 14);
  return result;
}

uint64_t avas::server::Driver::hardwareInfo(avas::server::Driver *this)
{
  result = *(this + 13);
  if (!result)
  {
    return avas::server::HardwareInfo::default_instance(0);
  }

  return result;
}

uint64_t avas::server::Driver::mutableHardwareInfo(avas::server::Driver *this)
{
  if (!*(this + 13))
  {
    operator new();
  }

  return *(this + 13);
}

uint64_t avas::server::Driver::Driver(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999240;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  avas::server::Driver::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999240;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  avas::server::Driver::move_from(a1, a2);
  return a1;
}

uint64_t avas::server::Driver::move_from(uint64_t a1, uint64_t a2)
{
  v15[0] = 0;
  v15[1] = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  result = caulk::xstring::clear(v15);
  v5 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  v7 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  v8 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  v9 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v9;
  v10 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v10;
  v11 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v11;
  v12 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v12;
  v13 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v13;
  v14 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v14;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 112) = *(a2 + 112);
  return result;
}

void *avas::server::Driver::clear(avas::server::Driver *this)
{
  caulk::xstring::clear((this + 88));
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 8);
  *(this + 2) = 0;
  *(this + 14) = 0;
  return result;
}

BOOL avas::server::Driver::isInitialized(avas::server::Driver *this)
{
  if (!*(this + 13))
  {
    return 0;
  }

  v2 = *(this + 2);
  v3 = *(this + 3);
  while (v2 != v3)
  {
    if (!avas::server::Device_Clock::isInitialized(*v2))
    {
      return 0;
    }

    ++v2;
  }

  v4 = *(this + 5);
  v5 = *(this + 6);
  while (v4 != v5)
  {
    if (!avas::server::Clock::isInitialized(*v4))
    {
      return 0;
    }

    ++v4;
  }

  v7 = *(this + 8);
  v8 = *(this + 9);
  while (v7 != v8)
  {
    if ((avas::server::Box::isInitialized(*v7) & 1) == 0)
    {
      return 0;
    }

    ++v7;
  }

  return (~*(this + 2) & 3) == 0;
}

uint64_t avas::server::Driver::readFrom(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 < v2 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v16 = 0;
        v17 = 0;
        v10 = 0;
        v18 = v2 - v3;
        if (v2 < v3)
        {
          v18 = 0;
        }

        v19 = (v7 + v3);
        v20 = v3 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v13 = v20;
          v21 = *v19;
          a2[1] = v13;
          v10 |= (v21 & 0x7F) << v16;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v18;
          ++v19;
          v20 = v13 + 1;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          v13 = v12;
          a2[1] = v12;
          v14 = *v11++;
          v10 |= (v14 & 0x7F) << v8;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v15 = v9++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            operator new();
          case 5:
            operator new();
          case 6:
            operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
            {
              v29 = 0;
              v30 = 0;
              v25 = 0;
              v31 = v2 >= v13;
              v32 = v2 - v13;
              if (!v31)
              {
                v32 = 0;
              }

              v33 = (v7 + v13);
              v34 = v13 + 1;
              while (v32)
              {
                v35 = *v33;
                a2[1] = v34;
                v25 |= (v35 & 0x7F) << v29;
                if ((v35 & 0x80) == 0)
                {
                  goto LABEL_50;
                }

                v29 += 7;
                --v32;
                ++v33;
                ++v34;
                v31 = v30++ >= 9;
                if (v31)
                {
LABEL_48:
                  v25 = 0;
                  goto LABEL_50;
                }
              }

              v25 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = (v7 + v13);
              v27 = v13 + 1;
              while (1)
              {
                a2[1] = v27;
                v28 = *v26++;
                v25 |= (v28 & 0x7F) << v23;
                if ((v28 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                ++v27;
                v15 = v24++ > 8;
                if (v15)
                {
                  goto LABEL_48;
                }
              }
            }

LABEL_50:
            *(a1 + 112) = v25;
            *(a1 + 8) |= 1u;
            break;
          case 2:
            PB::Reader::read();
            caulk::xstring::assign();
            *(a1 + 8) |= 2u;
            break;
          case 3:
            operator new();
        }
      }

      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
      if (v3 >= v2)
      {
        break;
      }
    }

    while ((a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

void avas::server::Driver::writeTo(avas::server::Driver *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 14);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
  }

  if ((v4 & 2) != 0)
  {
    caulk::xstring::as_std_string((this + 88), &__p);
    PB::Writer::write();
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

  v6 = *(this + 13);
  if (v6)
  {
    PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(this + 2);
  v8 = *(this + 3);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(this + 5);
  v11 = *(this + 6);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::Writer::writeSubmessage(a2, v12);
  }

  v14 = *(this + 8);
  v13 = *(this + 9);
  while (v14 != v13)
  {
    v15 = *v14++;
    PB::Writer::writeSubmessage(a2, v15);
  }
}

void sub_1DE8B9FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::Driver::formatText(avas::server::Driver *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 14);
    PB::TextFormatter::format(a2, "objectToken");
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    caulk::xstring::as_std_string((this + 88), &__p);
    PB::TextFormatter::format();
    if (v19 < 0)
    {
      operator delete(__p);
    }
  }

  v7 = *(this + 13);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "hardwareInfo");
  }

  v8 = *(this + 2);
  v9 = *(this + 3);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "devices");
  }

  v11 = *(this + 5);
  v12 = *(this + 6);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(*v13 + 32))(v13, a2, "clocks");
  }

  v14 = *(this + 8);
  v15 = *(this + 9);
  while (v14 != v15)
  {
    v16 = *v14++;
    (*(*v16 + 32))(v16, a2, "boxes");
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8BA194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::Driver::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 112) != *(a2 + 112) || caulk::xstring::compare((a1 + 88), (a2 + 88)))
  {
    return 0;
  }

  v5 = *(a1 + 104);
  v6 = *(a2 + 104);
  if (v5 && v6)
  {
    if (avas::server::HardwareInfo::operator==(v5, v6))
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 | v6)
  {
    return 0;
  }

LABEL_11:
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7 - v8 != *(a2 + 24) - *(a2 + 16))
  {
    return 0;
  }

  if (v7 != v8)
  {
    v9 = 0;
    if (((v7 - v8) >> 3) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = (v7 - v8) >> 3;
    }

    do
    {
      v11 = *(*(a1 + 16) + 8 * v9);
      v12 = *(*(a2 + 16) + 8 * v9);
      if (v11)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        if (v11 | v12)
        {
          return 0;
        }
      }

      else if (!avas::server::Device_Clock::operator==(v11, v12))
      {
        return 0;
      }

      ++v9;
    }

    while (v10 != v9);
  }

  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  if (v14 - v15 != *(a2 + 48) - *(a2 + 40))
  {
    return 0;
  }

  if (v14 != v15)
  {
    v16 = 0;
    if (((v14 - v15) >> 3) <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = (v14 - v15) >> 3;
    }

    do
    {
      v18 = *(*(a1 + 40) + 8 * v16);
      v19 = *(*(a2 + 40) + 8 * v16);
      if (v18)
      {
        v20 = v19 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        if (v18 | v19)
        {
          return 0;
        }
      }

      else if (!avas::server::Clock::operator==(v18, v19))
      {
        return 0;
      }

      ++v16;
    }

    while (v17 != v16);
  }

  v22 = *(a1 + 64);
  v21 = *(a1 + 72);
  v23 = v21 - v22;
  if (v21 - v22 != *(a2 + 72) - *(a2 + 64))
  {
    return 0;
  }

  if (v21 == v22)
  {
    return 1;
  }

  v24 = 0;
  v25 = v23 >> 3;
  if ((v23 >> 3) <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v23 >> 3;
  }

  do
  {
    v27 = *(*(a1 + 64) + 8 * v24);
    v28 = *(*(a2 + 64) + 8 * v24);
    if (v27)
    {
      v29 = v28 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      if (v27 | v28)
      {
        return 0;
      }
    }

    else if (!avas::server::Box::operator==(v27, v28))
    {
      return 0;
    }

    ++v24;
  }

  while (v26 != v24);
  return v24 >= v25;
}

uint64_t avas::server::Driver::clearHardwareInfo(avas::server::Driver *this)
{
  result = *(this + 13);
  *(this + 13) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void avas::server::Driver::addDevices(avas::server::Driver *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v3 >= v2)
  {
    v5 = this + 16;
    v6 = *(this + 2);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 16;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 2);
    *(this + 2) = v15;
    *(this + 3) = v4;
    v17 = *(this + 4);
    *(this + 4) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 3) = v4;
  operator new();
}

void avas::server::Driver::addClocks(avas::server::Driver *this)
{
  v3 = *(this + 6);
  v2 = *(this + 7);
  if (v3 >= v2)
  {
    v5 = this + 40;
    v6 = *(this + 5);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 40;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 5);
    *(this + 5) = v15;
    *(this + 6) = v4;
    v17 = *(this + 7);
    *(this + 7) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 6) = v4;
  operator new();
}

void avas::server::Driver::addBoxes(avas::server::Driver *this)
{
  v3 = *(this + 9);
  v2 = *(this + 10);
  if (v3 >= v2)
  {
    v5 = this + 64;
    v6 = *(this + 8);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 64;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 8);
    *(this + 8) = v15;
    *(this + 9) = v4;
    v17 = *(this + 10);
    *(this + 10) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 9) = v4;
  operator new();
}

uint64_t avas::server::HardwareSystemState::default_instance(avas::server::HardwareSystemState *this)
{
  {
    operator new();
  }

  return avas::server::HardwareSystemState::default_instance(void)::gInstance;
}

double avas::server::HardwareSystemState::HardwareSystemState(avas::server::HardwareSystemState *this)
{
  *this = &unk_1F5999278;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F5999278;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

avas::server::HardwareSystemState *avas::server::HardwareSystemState::HardwareSystemState(avas::server::HardwareSystemState *this, const avas::server::HardwareSystemState *a2)
{
  *this = &unk_1F5999278;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  avas::server::HardwareSystemState::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999278;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  avas::server::HardwareSystemState::copy_from(this, a2);
  return this;
}

void *avas::server::HardwareSystemState::copy_from(avas::server::HardwareSystemState *this, const avas::server::HardwareSystemState *a2)
{
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 1);
  if (*(a2 + 1) != *(a2 + 2))
  {
    operator new();
  }

  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 4);
  if (*(a2 + 4) != *(a2 + 5))
  {
    operator new();
  }

  return result;
}

uint64_t avas::server::HardwareSystemState::HardwareSystemState(uint64_t a1, void *a2)
{
  *a1 = &unk_1F5999278;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  avas::server::HardwareSystemState::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999278;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  avas::server::HardwareSystemState::move_from(a1, a2);
  return a1;
}

void *avas::server::HardwareSystemState::move_from(void *result, void *a2)
{
  v2 = result[1];
  result[1] = a2[1];
  a2[1] = v2;
  v3 = result[2];
  result[2] = a2[2];
  a2[2] = v3;
  v4 = result[3];
  result[3] = a2[3];
  a2[3] = v4;
  v5 = result[4];
  result[4] = a2[4];
  a2[4] = v5;
  v6 = result[5];
  result[5] = a2[5];
  a2[5] = v6;
  v7 = result[6];
  result[6] = a2[6];
  a2[6] = v7;
  return result;
}

void *avas::server::HardwareSystemState::clear(avas::server::HardwareSystemState *this)
{
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 1);

  return std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 4);
}

uint64_t avas::server::HardwareSystemState::isInitialized(avas::server::HardwareSystemState *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  while (v2 != v3)
  {
    if (!avas::server::Driver::isInitialized(*v2))
    {
      return 0;
    }

    ++v2;
  }

  v4 = *(this + 4);
  v5 = *(this + 5);
  if (v4 == v5)
  {
    return 1;
  }

  v6 = v4 + 8;
  do
  {
    result = avas::RouteIdentifier::isInitialized(*(v6 - 8));
    if (result)
    {
      v8 = v6 == v5;
    }

    else
    {
      v8 = 1;
    }

    v6 += 8;
  }

  while (!v8);
  return result;
}

uint64_t avas::server::HardwareSystemState::readFrom(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 24);
  if (v2 < v3 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v5 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v5 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v20 = *v18;
          a2[1] = v19;
          v15 |= (v20 & 0x7F) << v13;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          --v17;
          ++v18;
          ++v19;
          v12 = v14++ > 8;
          if (v12)
          {
LABEL_18:
            v8 = 0;
            goto LABEL_22;
          }
        }

        if (v4)
        {
          v8 = 0;
        }

        else
        {
          v8 = v15;
        }
      }

      else
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = (v5 + v2);
        v10 = v2 + 1;
        while (1)
        {
          a2[1] = v10;
          v11 = *v9++;
          v8 |= (v11 & 0x7F) << v6;
          if ((v11 & 0x80) == 0)
          {
            break;
          }

          v6 += 7;
          ++v10;
          v12 = v7++ > 8;
          if (v12)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v8 & 7) == 4))
      {
        break;
      }

      if ((v8 >> 3) == 2)
      {
        operator new();
      }

      if ((v8 >> 3) == 1)
      {
        operator new();
      }

      v2 = a2[1];
      v3 = a2[2];
      v4 = *(a2 + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

uint64_t avas::server::HardwareSystemState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v8 = *(v3 + 32);
  v7 = *(v3 + 40);
  while (v8 != v7)
  {
    v9 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  return this;
}

uint64_t avas::server::HardwareSystemState::formatText(avas::server::HardwareSystemState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "drivers");
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "defaultRoutes");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::HardwareSystemState::operator==(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 - v3 != a2[2] - a2[1])
  {
    return 0;
  }

  if (v2 != v3)
  {
    v6 = 0;
    if (((v2 - v3) >> 3) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = (v2 - v3) >> 3;
    }

    do
    {
      v8 = *(a1[1] + 8 * v6);
      v9 = *(a2[1] + 8 * v6);
      if (v8)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (v8 | v9)
        {
          return 0;
        }
      }

      else if (!avas::server::Driver::operator==(v8, v9))
      {
        return 0;
      }

      ++v6;
    }

    while (v7 != v6);
  }

  v12 = a1[4];
  v11 = a1[5];
  v13 = v11 - v12;
  if (v11 - v12 != a2[5] - a2[4])
  {
    return 0;
  }

  if (v11 == v12)
  {
    return 1;
  }

  v14 = 0;
  v15 = v13 >> 3;
  if ((v13 >> 3) <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13 >> 3;
  }

  do
  {
    v17 = *(a1[4] + 8 * v14);
    v18 = *(a2[4] + 8 * v14);
    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      if (v17 | v18)
      {
        return 0;
      }
    }

    else if (!avas::RouteIdentifier::operator==(v17, v18))
    {
      return 0;
    }

    ++v14;
  }

  while (v16 != v14);
  return v14 >= v15;
}

void avas::server::HardwareSystemState::addDrivers(avas::server::HardwareSystemState *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v3 >= v2)
  {
    v5 = this + 8;
    v6 = *(this + 1);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 8;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 1);
    *(this + 1) = v15;
    *(this + 2) = v4;
    v17 = *(this + 3);
    *(this + 3) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 2) = v4;
  operator new();
}

void avas::server::HardwareSystemState::addDefaultRoutes(avas::server::HardwareSystemState *this)
{
  v3 = *(this + 5);
  v2 = *(this + 6);
  if (v3 >= v2)
  {
    v5 = this + 32;
    v6 = *(this + 4);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 32;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 4);
    *(this + 4) = v15;
    *(this + 5) = v4;
    v17 = *(this + 6);
    *(this + 6) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 5) = v4;
  operator new();
}

uint64_t avas::server::SelectorControlItem::default_instance(avas::server::SelectorControlItem *this)
{
  {
    operator new();
  }

  return avas::server::SelectorControlItem::default_instance(void)::gInstance;
}

uint64_t avas::server::SelectorControlItem::SelectorControlItem(uint64_t this)
{
  *this = &unk_1F59992B0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F59992B0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  return this;
}

avas::server::SelectorControlItem *avas::server::SelectorControlItem::SelectorControlItem(avas::server::SelectorControlItem *this, const avas::server::SelectorControlItem *a2)
{
  *this = &unk_1F59992B0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  avas::server::SelectorControlItem::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F59992B0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  avas::server::SelectorControlItem::copy_from(this, a2);
  return this;
}

uint64_t avas::server::SelectorControlItem::copy_from(avas::server::SelectorControlItem *this, const avas::server::SelectorControlItem *a2)
{
  result = caulk::xstring::assign((this + 16), (a2 + 16));
  *(this + 2) = *(a2 + 2);
  *(this + 4) = *(a2 + 4);
  return result;
}

void *avas::server::SelectorControlItem::SelectorControlItem(void *a1, uint64_t a2)
{
  *a1 = &unk_1F59992B0;
  a1[2] = 0;
  a1[3] = 0;
  avas::server::SelectorControlItem::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F59992B0;
  a1[2] = 0;
  a1[3] = 0;
  avas::server::SelectorControlItem::move_from(a1, a2);
  return a1;
}

uint64_t avas::server::SelectorControlItem::move_from(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  result = caulk::xstring::clear(v5);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t avas::server::SelectorControlItem::clear(avas::server::SelectorControlItem *this)
{
  result = caulk::xstring::clear((this + 16));
  *(this + 2) = 0;
  *(this + 4) = 0;
  return result;
}

BOOL avas::server::SelectorControlItem::readFrom(_DWORD *a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 >= v2 || (a2[3] & 1) != 0)
  {
    return (v4 & 1) == 0;
  }

  v4 = 0;
  while (1)
  {
    v7 = *a2;
    if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v3);
    v12 = v3 + 1;
    while (1)
    {
      v3 = v12;
      a2[1] = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        v10 = 0;
        break;
      }
    }

LABEL_22:
    if (v4 & 1 | ((v10 & 7) == 4))
    {
      return (v4 & 1) == 0;
    }

    v20 = v10 >> 3;
    if ((v10 >> 3) == 3)
    {
      PB::Reader::read();
      caulk::xstring::assign();
      a1[2] |= 4u;
      v3 = a2[1];
      v2 = a2[2];
    }

    else
    {
      if (v20 == 2)
      {
        if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
        {
          v34 = 0;
          v35 = 0;
          v30 = 0;
          if (v2 <= v3)
          {
            v26 = v3;
          }

          else
          {
            v26 = v2;
          }

          while (v26 != v3)
          {
            v36 = v3++;
            v37 = *(v7 + v36);
            a2[1] = v3;
            v30 |= (v37 & 0x7F) << v34;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_49;
            }

            v34 += 7;
            v38 = v35++ >= 9;
            if (v38)
            {
              LODWORD(v30) = 0;
LABEL_49:
              v26 = v36 + 1;
              goto LABEL_60;
            }
          }

          LODWORD(v30) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v7 + v3);
          v32 = v3 + 1;
          while (1)
          {
            v26 = v32;
            a2[1] = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
            if (v14)
            {
              LODWORD(v30) = 0;
              break;
            }
          }
        }

LABEL_60:
        a1[9] = v30;
        v43 = a1[2] | 2;
      }

      else
      {
        if (v20 != 1)
        {
          goto LABEL_64;
        }

        if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v23 = 0;
          if (v2 <= v3)
          {
            v26 = v3;
          }

          else
          {
            v26 = v2;
          }

          while (v26 != v3)
          {
            v41 = v3++;
            v42 = *(v7 + v41);
            a2[1] = v3;
            v23 |= (v42 & 0x7F) << v39;
            if ((v42 & 0x80) == 0)
            {
              goto LABEL_58;
            }

            v39 += 7;
            v38 = v40++ >= 9;
            if (v38)
            {
              LODWORD(v23) = 0;
LABEL_58:
              v26 = v41 + 1;
              goto LABEL_62;
            }
          }

          LODWORD(v23) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = (v7 + v3);
          v25 = v3 + 1;
          while (1)
          {
            v26 = v25;
            a2[1] = v25;
            v27 = *v24++;
            v23 |= (v27 & 0x7F) << v21;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            ++v25;
            v14 = v22++ > 8;
            if (v14)
            {
              LODWORD(v23) = 0;
              break;
            }
          }
        }

LABEL_62:
        a1[8] = v23;
        v43 = a1[2] | 1;
      }

      a1[2] = v43;
      v3 = v26;
    }

LABEL_64:
    v4 = *(a2 + 24);
    if (v3 >= v2 || (a2[3] & 1) != 0)
    {
      return (v4 & 1) == 0;
    }
  }

  v15 = 0;
  v16 = 0;
  v10 = 0;
  if (v3 <= v2)
  {
    v17 = v2;
  }

  else
  {
    v17 = v3;
  }

  while (v17 != v3)
  {
    v18 = v3++;
    v19 = *(v7 + v18);
    a2[1] = v3;
    v10 |= (v19 & 0x7F) << v15;
    if ((v19 & 0x80) == 0)
    {
      if (v4)
      {
        v10 = 0;
      }

      goto LABEL_21;
    }

    v15 += 7;
    v14 = v16++ > 8;
    if (v14)
    {
      v10 = 0;
LABEL_21:
      v3 = v18 + 1;
      goto LABEL_22;
    }
  }

  v4 = 1;
  *(a2 + 24) = 1;
  return (v4 & 1) == 0;
}

void sub_1DE8BBED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::SelectorControlItem::writeTo(avas::server::SelectorControlItem *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 8);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 9);
  PB::Writer::writeVarInt(a2);
  if ((*(this + 2) & 4) == 0)
  {
    return;
  }

LABEL_7:
  caulk::xstring::as_std_string((this + 16), &__p);
  PB::Writer::write();
  if (v8 < 0)
  {
    operator delete(__p);
  }
}

void sub_1DE8BBF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::SelectorControlItem::formatText(avas::server::SelectorControlItem *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = *(this + 9);
    PB::TextFormatter::format(a2, "kind");
    if ((*(this + 2) & 4) == 0)
    {
      return PB::TextFormatter::endObject(a2);
    }

    goto LABEL_7;
  }

  v6 = *(this + 8);
  PB::TextFormatter::format(a2, "ID");
  v5 = *(this + 2);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return PB::TextFormatter::endObject(a2);
  }

LABEL_7:
  caulk::xstring::as_std_string((this + 16), &__p);
  PB::TextFormatter::format();
  if (v10 < 0)
  {
    operator delete(__p);
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8BC064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::ControlValue::default_instance(avas::server::ControlValue *this)
{
  {
    operator new();
  }

  return avas::server::ControlValue::default_instance(void)::gInstance;
}

double avas::server::ControlValue::ControlValue(avas::server::ControlValue *this)
{
  *this = &unk_1F59992E8;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 57) = 0u;
  return result;
}

{
  *this = &unk_1F59992E8;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 57) = 0u;
  return result;
}

avas::server::ControlValue *avas::server::ControlValue::ControlValue(avas::server::ControlValue *this, const avas::server::ControlValue *a2)
{
  *this = &unk_1F59992E8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  avas::server::ControlValue::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F59992E8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  avas::server::ControlValue::copy_from(this, a2);
  return this;
}

__n128 avas::server::ControlValue::copy_from(avas::server::ControlValue *this, const avas::server::ControlValue *a2)
{
  if (this != a2)
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 2, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 2);
  }

  *(this + 2) = *(a2 + 2);
  result = *(a2 + 40);
  v5 = *(a2 + 56);
  *(this + 72) = *(a2 + 72);
  *(this + 56) = v5;
  *(this + 40) = result;
  return result;
}

__n128 avas::server::ControlValue::ControlValue(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F59992E8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  v2 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  v3 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 40);
  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  *(a1 + 40) = result;
  return result;
}

{
  *a1 = &unk_1F59992E8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  v2 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  v3 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 40);
  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  *(a1 + 40) = result;
  return result;
}

__n128 avas::server::ControlValue::move_from(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 40);
  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  *(a1 + 40) = result;
  return result;
}

__n128 avas::server::ControlValue::operator=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 40);
  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  *(a1 + 40) = result;
  return result;
}

double avas::server::ControlValue::clear(avas::server::ControlValue *this)
{
  *(this + 3) = *(this + 2);
  *(this + 2) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0;
  return result;
}

uint64_t avas::server::ControlValue::readFrom(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 24);
  if (v2 < v3 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v10 = 0;
        if (v2 <= v3)
        {
          v16 = v3;
        }

        else
        {
          v16 = v2;
        }

        while (v16 != v2)
        {
          v17 = v2++;
          v18 = *(v7 + v17);
          a2[1] = v2;
          v10 |= (v18 & 0x7F) << v14;
          if ((v18 & 0x80) == 0)
          {
            if (v4)
            {
              v10 = 0;
            }

            goto LABEL_21;
          }

          v14 += 7;
          v41 = v15++ > 8;
          if (v41)
          {
            v10 = 0;
LABEL_21:
            v2 = v17 + 1;
            goto LABEL_22;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_183;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        v2 = v12;
        a2[1] = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v41 = v9++ > 8;
        if (v41)
        {
          v10 = 0;
          break;
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_183;
      }

      v19 = v10 >> 3;
      if ((v10 >> 3) <= 20)
      {
        break;
      }

      if (v19 > 39)
      {
        if (v19 != 40)
        {
          if (v19 != 50)
          {
            goto LABEL_157;
          }

          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > v3)
          {
            *(a2 + 24) = 1;
          }

          else
          {
            *(a1 + 48) = *(v7 + v2);
            v2 = a2[1] + 4;
            a2[1] = v2;
          }

          v74 = *(a1 + 8) | 0x40;
          goto LABEL_138;
        }

        if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
        {
          v75 = 0;
          v76 = 0;
          v65 = 0;
          if (v3 <= v2)
          {
            v3 = v2;
          }

          while (v3 != v2)
          {
            v77 = v2++;
            v78 = *(v7 + v77);
            a2[1] = v2;
            v65 |= (v78 & 0x7F) << v75;
            if ((v78 & 0x80) == 0)
            {
              goto LABEL_123;
            }

            v75 += 7;
            v73 = v76++ >= 9;
            if (v73)
            {
              LODWORD(v65) = 0;
LABEL_123:
              v3 = v77 + 1;
              goto LABEL_153;
            }
          }

          LODWORD(v65) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v66 = (v7 + v2);
          v67 = v2 + 1;
          while (1)
          {
            v3 = v67;
            a2[1] = v67;
            v68 = *v66++;
            v65 |= (v68 & 0x7F) << v63;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            ++v67;
            v41 = v64++ > 8;
            if (v41)
            {
              LODWORD(v65) = 0;
              break;
            }
          }
        }

LABEL_153:
        *(a1 + 64) = v65;
        v92 = *(a1 + 8) | 0x20;
LABEL_156:
        *(a1 + 8) = v92;
        v2 = v3;
        goto LABEL_157;
      }

      if (v19 == 21)
      {
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > v3)
        {
          *(a2 + 24) = 1;
        }

        else
        {
          *(a1 + 44) = *(v7 + v2);
          v2 = a2[1] + 4;
          a2[1] = v2;
        }

        v74 = *(a1 + 8) | 0x10;
LABEL_138:
        *(a1 + 8) = v74;
        goto LABEL_157;
      }

      if (v19 == 31)
      {
        if ((v10 & 7) == 2)
        {
          if (PB::Reader::placeMark())
          {
            v112 = 0;
            return v112 & 1;
          }

          v2 = a2[1];
          if (v2 < a2[2] && (a2[3] & 1) == 0)
          {
            v26 = *(a1 + 24);
            while (1)
            {
              v27 = *(a1 + 32);
              if (v26 >= v27)
              {
                v28 = *(a1 + 16);
                v29 = v26 - v28;
                v30 = (v26 - v28) >> 2;
                v31 = v30 + 1;
                if ((v30 + 1) >> 62)
                {
                  goto LABEL_186;
                }

                v32 = v27 - v28;
                if (v32 >> 1 > v31)
                {
                  v31 = v32 >> 1;
                }

                if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v33 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v33 = v31;
                }

                if (v33)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1 + 16, v33);
                }

                v34 = (v26 - v28) >> 2;
                v35 = (4 * v30);
                v36 = (4 * v30 - 4 * v34);
                *v35 = 0;
                v26 = (v35 + 1);
                memcpy(v36, v28, v29);
                v37 = *(a1 + 16);
                *(a1 + 16) = v36;
                *(a1 + 24) = v26;
                *(a1 + 32) = 0;
                if (v37)
                {
                  operator delete(v37);
                }
              }

              else
              {
                *v26 = 0;
                v26 += 4;
              }

              *(a1 + 24) = v26;
              v38 = a2[1];
              v39 = a2[2];
              v40 = *a2;
              v41 = v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v39;
              if (v41)
              {
                break;
              }

              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = (v40 + v38);
              v53 = v38 + 1;
              while (1)
              {
                v2 = v53;
                a2[1] = v53;
                v54 = *v52++;
                v51 |= (v54 & 0x7F) << v49;
                if ((v54 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                ++v53;
                v41 = v50++ > 8;
                if (v41)
                {
                  goto LABEL_71;
                }
              }

LABEL_74:
              *(v26 - 1) = v51;
              if (v2 >= v39 || (a2[3] & 1) != 0)
              {
                goto LABEL_157;
              }
            }

            v42 = 0;
            v43 = 0;
            v51 = 0;
            if (v39 <= v38)
            {
              v44 = a2[1];
            }

            else
            {
              v44 = a2[2];
            }

            v45 = v44 - v38;
            v46 = (v40 + v38);
            v47 = v38 + 1;
            while (v45)
            {
              v2 = v47;
              v48 = *v46;
              a2[1] = v2;
              v51 |= (v48 & 0x7F) << v42;
              if ((v48 & 0x80) == 0)
              {
                if (a2[3])
                {
                  LODWORD(v51) = 0;
                }

                goto LABEL_74;
              }

              v42 += 7;
              --v45;
              ++v46;
              v47 = v2 + 1;
              v41 = v43++ > 8;
              if (v41)
              {
LABEL_71:
                LODWORD(v51) = 0;
                goto LABEL_74;
              }
            }

            *(a2 + 24) = 1;
            *(v26 - 1) = 0;
            v2 = v44;
          }
        }

        else
        {
          v84 = *(a1 + 24);
          v83 = *(a1 + 32);
          if (v84 >= v83)
          {
            v86 = *(a1 + 16);
            v87 = v84 - v86;
            v88 = (v84 - v86) >> 2;
            v89 = v88 + 1;
            if ((v88 + 1) >> 62)
            {
LABEL_186:
              std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
            }

            v90 = v83 - v86;
            if (v90 >> 1 > v89)
            {
              v89 = v90 >> 1;
            }

            if (v90 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v91 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v91 = v89;
            }

            if (v91)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1 + 16, v91);
            }

            v93 = (v84 - v86) >> 2;
            v94 = (4 * v88);
            v95 = (4 * v88 - 4 * v93);
            *v94 = 0;
            v85 = v94 + 1;
            memcpy(v95, v86, v87);
            v96 = *(a1 + 16);
            *(a1 + 16) = v95;
            *(a1 + 24) = v85;
            *(a1 + 32) = 0;
            if (v96)
            {
              operator delete(v96);
            }
          }

          else
          {
            *v84 = 0;
            v85 = v84 + 4;
          }

          *(a1 + 24) = v85;
          v97 = a2[1];
          v2 = a2[2];
          v98 = *a2;
          if (v97 > 0xFFFFFFFFFFFFFFF5 || v97 + 10 > v2)
          {
            v105 = 0;
            v106 = 0;
            v101 = 0;
            if (v2 <= v97)
            {
              v2 = a2[1];
            }

            v107 = v2 - v97;
            v108 = (v98 + v97);
            v109 = v97 + 1;
            while (1)
            {
              if (!v107)
              {
                LODWORD(v101) = 0;
                *(a2 + 24) = 1;
                goto LABEL_181;
              }

              v110 = v109;
              v111 = *v108;
              a2[1] = v110;
              v101 |= (v111 & 0x7F) << v105;
              if ((v111 & 0x80) == 0)
              {
                break;
              }

              v105 += 7;
              --v107;
              ++v108;
              v109 = v110 + 1;
              v41 = v106++ > 8;
              if (v41)
              {
                LODWORD(v101) = 0;
                goto LABEL_180;
              }
            }

            if (a2[3])
            {
              LODWORD(v101) = 0;
            }

LABEL_180:
            v2 = v110;
          }

          else
          {
            v99 = 0;
            v100 = 0;
            v101 = 0;
            v102 = (v98 + v97);
            v103 = v97 + 1;
            while (1)
            {
              v2 = v103;
              a2[1] = v103;
              v104 = *v102++;
              v101 |= (v104 & 0x7F) << v99;
              if ((v104 & 0x80) == 0)
              {
                break;
              }

              v99 += 7;
              ++v103;
              v41 = v100++ > 8;
              if (v41)
              {
                LODWORD(v101) = 0;
                break;
              }
            }
          }

LABEL_181:
          *(v85 - 1) = v101;
        }
      }

LABEL_157:
      v3 = a2[2];
      v4 = *(a2 + 24);
      if (v2 >= v3 || (a2[3] & 1) != 0)
      {
        goto LABEL_183;
      }
    }

    if (v19 > 9)
    {
      if (v19 == 10)
      {
        if (v2 >= v3)
        {
          v62 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v61 = *(v7 + v2++);
          a2[1] = v2;
          v62 = v61 != 0;
        }

        *(a1 + 72) = v62;
        v74 = *(a1 + 8) | 4;
      }

      else
      {
        if (v19 != 20)
        {
          goto LABEL_157;
        }

        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > v3)
        {
          *(a2 + 24) = 1;
        }

        else
        {
          *(a1 + 40) = *(v7 + v2);
          v2 = a2[1] + 4;
          a2[1] = v2;
        }

        v74 = *(a1 + 8) | 8;
      }

      goto LABEL_138;
    }

    if (v19 == 1)
    {
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v69 = 0;
        v70 = 0;
        v57 = 0;
        if (v3 <= v2)
        {
          v3 = v2;
        }

        while (v3 != v2)
        {
          v71 = v2++;
          v72 = *(v7 + v71);
          a2[1] = v2;
          v57 |= (v72 & 0x7F) << v69;
          if ((v72 & 0x80) == 0)
          {
            goto LABEL_113;
          }

          v69 += 7;
          v73 = v70++ >= 9;
          if (v73)
          {
            v57 = 0;
LABEL_113:
            v3 = v71 + 1;
            goto LABEL_151;
          }
        }

        v57 = 0;
        *(a2 + 24) = 1;
      }

      else
      {
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = (v7 + v2);
        v59 = v2 + 1;
        while (1)
        {
          v3 = v59;
          a2[1] = v59;
          v60 = *v58++;
          v57 |= (v60 & 0x7F) << v55;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          ++v59;
          v41 = v56++ > 8;
          if (v41)
          {
            v57 = 0;
            break;
          }
        }
      }

LABEL_151:
      *(a1 + 56) = v57;
      v92 = *(a1 + 8) | 1;
    }

    else
    {
      if (v19 != 6)
      {
        goto LABEL_157;
      }

      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v79 = 0;
        v80 = 0;
        v22 = 0;
        if (v3 <= v2)
        {
          v3 = v2;
        }

        while (v3 != v2)
        {
          v81 = v2++;
          v82 = *(v7 + v81);
          a2[1] = v2;
          v22 |= (v82 & 0x7F) << v79;
          if ((v82 & 0x80) == 0)
          {
            goto LABEL_133;
          }

          v79 += 7;
          v73 = v80++ >= 9;
          if (v73)
          {
            LODWORD(v22) = 0;
LABEL_133:
            v3 = v81 + 1;
            goto LABEL_155;
          }
        }

        LODWORD(v22) = 0;
        *(a2 + 24) = 1;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = (v7 + v2);
        v24 = v2 + 1;
        while (1)
        {
          v3 = v24;
          a2[1] = v24;
          v25 = *v23++;
          v22 |= (v25 & 0x7F) << v20;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          ++v24;
          v41 = v21++ > 8;
          if (v41)
          {
            LODWORD(v22) = 0;
            break;
          }
        }
      }

LABEL_155:
      *(a1 + 68) = v22;
      v92 = *(a1 + 8) | 2;
    }

    goto LABEL_156;
  }

LABEL_183:
  v112 = v4 ^ 1;
  return v112 & 1;
}

uint64_t avas::server::ControlValue::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v10 = *(this + 56);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(v3 + 68);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 8);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_17:
    this = PB::Writer::write(a2, *(v3 + 40));
    if ((*(v3 + 8) & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_16:
  v12 = *(v3 + 72);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 8);
  if ((v4 & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v4 & 0x10) != 0)
  {
LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 44));
  }

LABEL_7:
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeVarInt(a2);
  }

  v8 = *(v3 + 8);
  if ((v8 & 0x20) != 0)
  {
    v9 = *(v3 + 64);
    this = PB::Writer::writeVarInt(a2);
    v8 = *(v3 + 8);
  }

  if ((v8 & 0x40) != 0)
  {
    v13 = *(v3 + 48);

    return PB::Writer::write(a2, v13);
  }

  return this;
}

uint64_t avas::server::ControlValue::formatText(avas::server::ControlValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v12 = *(this + 7);
    PB::TextFormatter::format(a2, "objectToken");
    v5 = *(this + 2);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v13 = *(this + 17);
  PB::TextFormatter::format(a2, "type");
  v5 = *(this + 2);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = *(this + 72);
  PB::TextFormatter::format(a2, "BOOLValue");
  v5 = *(this + 2);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "scalarValue", *(this + 10));
  if ((*(this + 2) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "decibelValue", *(this + 11));
  }

LABEL_7:
  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "activeSelectorValues");
  }

  v9 = *(this + 2);
  if ((v9 & 0x20) != 0)
  {
    v10 = *(this + 16);
    PB::TextFormatter::format(a2, "sliderValue");
    v9 = *(this + 2);
  }

  if ((v9 & 0x40) != 0)
  {
    PB::TextFormatter::format(a2, "panValue", *(this + 12));
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::ControlValue::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (!memcmp((a1 + 40), (a2 + 40), 0x21uLL))
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = v6 - v5;
    v8 = *(a2 + 16);
    if (v6 - v5 == *(a2 + 24) - v8)
    {
      if (v6 == v5)
      {
        return 1;
      }

      v9 = 0;
      v10 = v7 >> 2;
      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      while (*(v5 + 4 * v9) == *(v8 + 4 * v9))
      {
        if (v11 == ++v9)
        {
          return v9 >= v10;
        }
      }
    }
  }

  return 0;
}

uint64_t avas::server::Control::default_instance(avas::server::Control *this)
{
  {
    operator new();
  }

  return avas::server::Control::default_instance(void)::gInstance;
}

double avas::server::Control::Control(avas::server::Control *this)
{
  *this = &unk_1F5999320;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 48) = 0;
  return result;
}

{
  *this = &unk_1F5999320;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 48) = 0;
  return result;
}

avas::server::Control *avas::server::Control::Control(avas::server::Control *this, const avas::server::Control *a2)
{
  *this = &unk_1F5999320;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  avas::server::Control::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999320;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  avas::server::Control::copy_from(this, a2);
  return this;
}

__n128 avas::server::Control::copy_from(avas::server::Control *this, const avas::server::Control *a2)
{
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  if (*(a2 + 2) != *(a2 + 3))
  {
    operator new();
  }

  *(this + 2) = *(a2 + 2);
  result = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  *(this + 82) = *(a2 + 82);
  *(this + 72) = v6;
  *(this + 56) = v5;
  *(this + 40) = result;
  return result;
}

__n128 avas::server::Control::Control(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999320;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  v2 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  v3 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = result;
  return result;
}

{
  *a1 = &unk_1F5999320;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  v2 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  v3 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = result;
  return result;
}

__n128 avas::server::Control::move_from(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = result;
  return result;
}

__n128 avas::server::Control::operator=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = result;
  return result;
}

double avas::server::Control::clear(avas::server::Control *this)
{
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  *(this + 2) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 82) = 0u;
  return result;
}

BOOL avas::server::Control::isInitialized(avas::server::Control *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3);
  if (v1 == v2)
  {
    return (~*(this + 2) & 0x3F) == 0;
  }

  while ((~*(*v1 + 8) & 3) == 0)
  {
    v1 += 8;
    if (v1 == v2)
    {
      return (~*(this + 2) & 0x3F) == 0;
    }
  }

  return 0;
}

uint64_t avas::server::Control::readFrom(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 24);
  if (v2 >= v3 || (a2[3] & 1) != 0)
  {
    return (v4 ^ 1) & 1;
  }

  v4 = 0;
  while (1)
  {
    v5 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = (v5 + v2);
    v10 = v2 + 1;
    while (1)
    {
      v2 = v10;
      a2[1] = v10;
      v11 = *v9++;
      v8 |= (v11 & 0x7F) << v6;
      if ((v11 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      ++v10;
      v12 = v7++ > 8;
      if (v12)
      {
        v8 = 0;
        break;
      }
    }

LABEL_22:
    if (v4 & 1 | ((v8 & 7) == 4))
    {
      return (v4 ^ 1) & 1;
    }

    v18 = v8 >> 3;
    if ((v8 >> 3) > 22)
    {
      if (v18 <= 40)
      {
        switch(v18)
        {
          case 0x17:
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > v3)
            {
              *(a2 + 24) = 1;
            }

            else
            {
              *(a1 + 48) = *(v5 + v2);
              v2 = a2[1] + 8;
              a2[1] = v2;
            }

            v98 = *(a1 + 8) | 0x80;
            break;
          case 0x1E:
            if (v2 >= v3)
            {
              v76 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v75 = *(v5 + v2++);
              a2[1] = v2;
              v76 = v75 != 0;
            }

            *(a1 + 97) = v76;
            v98 = *(a1 + 8) | 0x100;
            break;
          case 0x20:
            operator new();
          default:
            goto LABEL_215;
        }

LABEL_195:
        *(a1 + 8) = v98;
        goto LABEL_215;
      }

      if (v18 > 50)
      {
        if (v18 == 51)
        {
          if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
          {
            v90 = 0;
            v91 = 0;
            v59 = 0;
            if (v3 <= v2)
            {
              v3 = v2;
            }

            while (v3 != v2)
            {
              v92 = v2++;
              v93 = *(v5 + v92);
              a2[1] = v2;
              v59 |= (v93 & 0x7F) << v90;
              if ((v93 & 0x80) == 0)
              {
                goto LABEL_146;
              }

              v90 += 7;
              v81 = v91++ >= 9;
              if (v81)
              {
                LODWORD(v59) = 0;
LABEL_146:
                v3 = v92 + 1;
                goto LABEL_203;
              }
            }

            LODWORD(v59) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = (v5 + v2);
            v61 = v2 + 1;
            while (1)
            {
              v3 = v61;
              a2[1] = v61;
              v62 = *v60++;
              v59 |= (v62 & 0x7F) << v57;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              ++v61;
              v12 = v58++ > 8;
              if (v12)
              {
                LODWORD(v59) = 0;
                break;
              }
            }
          }

LABEL_203:
          *(a1 + 84) = v59;
          v115 = *(a1 + 8) | 0x800;
        }

        else
        {
          if (v18 != 52)
          {
            goto LABEL_215;
          }

          if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
          {
            v107 = 0;
            v108 = 0;
            v35 = 0;
            if (v3 <= v2)
            {
              v3 = v2;
            }

            while (v3 != v2)
            {
              v109 = v2++;
              v110 = *(v5 + v109);
              a2[1] = v2;
              v35 |= (v110 & 0x7F) << v107;
              if ((v110 & 0x80) == 0)
              {
                goto LABEL_182;
              }

              v107 += 7;
              v81 = v108++ >= 9;
              if (v81)
              {
                LODWORD(v35) = 0;
LABEL_182:
                v3 = v109 + 1;
                goto LABEL_211;
              }
            }

            LODWORD(v35) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = (v5 + v2);
            v37 = v2 + 1;
            while (1)
            {
              v3 = v37;
              a2[1] = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              ++v37;
              v12 = v34++ > 8;
              if (v12)
              {
                LODWORD(v35) = 0;
                break;
              }
            }
          }

LABEL_211:
          *(a1 + 88) = v35;
          v115 = *(a1 + 8) | 0x1000;
        }
      }

      else if (v18 == 41)
      {
        if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
        {
          v82 = 0;
          v83 = 0;
          v47 = 0;
          if (v3 <= v2)
          {
            v3 = v2;
          }

          while (v3 != v2)
          {
            v84 = v2++;
            v85 = *(v5 + v84);
            a2[1] = v2;
            v47 |= (v85 & 0x7F) << v82;
            if ((v85 & 0x80) == 0)
            {
              goto LABEL_130;
            }

            v82 += 7;
            v81 = v83++ >= 9;
            if (v81)
            {
              LODWORD(v47) = 0;
LABEL_130:
              v3 = v84 + 1;
              goto LABEL_199;
            }
          }

          LODWORD(v47) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v48 = (v5 + v2);
          v49 = v2 + 1;
          while (1)
          {
            v3 = v49;
            a2[1] = v49;
            v50 = *v48++;
            v47 |= (v50 & 0x7F) << v45;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            ++v49;
            v12 = v46++ > 8;
            if (v12)
            {
              LODWORD(v47) = 0;
              break;
            }
          }
        }

LABEL_199:
        *(a1 + 76) = v47;
        v115 = *(a1 + 8) | 0x200;
      }

      else
      {
        if (v18 != 42)
        {
          goto LABEL_215;
        }

        if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
        {
          v103 = 0;
          v104 = 0;
          v27 = 0;
          if (v3 <= v2)
          {
            v3 = v2;
          }

          while (v3 != v2)
          {
            v105 = v2++;
            v106 = *(v5 + v105);
            a2[1] = v2;
            v27 |= (v106 & 0x7F) << v103;
            if ((v106 & 0x80) == 0)
            {
              goto LABEL_172;
            }

            v103 += 7;
            v81 = v104++ >= 9;
            if (v81)
            {
              LODWORD(v27) = 0;
LABEL_172:
              v3 = v105 + 1;
              goto LABEL_209;
            }
          }

          LODWORD(v27) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v5 + v2);
          v29 = v2 + 1;
          while (1)
          {
            v3 = v29;
            a2[1] = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v12 = v26++ > 8;
            if (v12)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_209:
        *(a1 + 80) = v27;
        v115 = *(a1 + 8) | 0x400;
      }
    }

    else if (v18 <= 3)
    {
      switch(v18)
      {
        case 1:
          if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
          {
            v94 = 0;
            v95 = 0;
            v65 = 0;
            if (v3 <= v2)
            {
              v3 = v2;
            }

            while (v3 != v2)
            {
              v96 = v2++;
              v97 = *(v5 + v96);
              a2[1] = v2;
              v65 |= (v97 & 0x7F) << v94;
              if ((v97 & 0x80) == 0)
              {
                goto LABEL_154;
              }

              v94 += 7;
              v81 = v95++ >= 9;
              if (v81)
              {
                v65 = 0;
LABEL_154:
                v3 = v96 + 1;
                goto LABEL_205;
              }
            }

            v65 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v66 = (v5 + v2);
            v67 = v2 + 1;
            while (1)
            {
              v3 = v67;
              a2[1] = v67;
              v68 = *v66++;
              v65 |= (v68 & 0x7F) << v63;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              ++v67;
              v12 = v64++ > 8;
              if (v12)
              {
                v65 = 0;
                break;
              }
            }
          }

LABEL_205:
          *(a1 + 56) = v65;
          v115 = *(a1 + 8) | 1;
          break;
        case 2:
          if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
          {
            v111 = 0;
            v112 = 0;
            v71 = 0;
            if (v3 <= v2)
            {
              v3 = v2;
            }

            while (v3 != v2)
            {
              v113 = v2++;
              v114 = *(v5 + v113);
              a2[1] = v2;
              v71 |= (v114 & 0x7F) << v111;
              if ((v114 & 0x80) == 0)
              {
                goto LABEL_190;
              }

              v111 += 7;
              v81 = v112++ >= 9;
              if (v81)
              {
                LODWORD(v71) = 0;
LABEL_190:
                v3 = v113 + 1;
                goto LABEL_213;
              }
            }

            LODWORD(v71) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = (v5 + v2);
            v73 = v2 + 1;
            while (1)
            {
              v3 = v73;
              a2[1] = v73;
              v74 = *v72++;
              v71 |= (v74 & 0x7F) << v69;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              ++v73;
              v12 = v70++ > 8;
              if (v12)
              {
                LODWORD(v71) = 0;
                break;
              }
            }
          }

LABEL_213:
          *(a1 + 64) = v71;
          v115 = *(a1 + 8) | 2;
          break;
        case 3:
          if (v2 >= v3)
          {
            v32 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v31 = *(v5 + v2++);
            a2[1] = v2;
            v32 = v31 != 0;
          }

          *(a1 + 96) = v32;
          v98 = *(a1 + 8) | 4;
          goto LABEL_195;
        default:
          goto LABEL_215;
      }
    }

    else if (v18 > 5)
    {
      if (v18 != 6)
      {
        if (v18 != 22)
        {
          goto LABEL_215;
        }

        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > v3)
        {
          *(a2 + 24) = 1;
        }

        else
        {
          *(a1 + 40) = *(v5 + v2);
          v2 = a2[1] + 8;
          a2[1] = v2;
        }

        v98 = *(a1 + 8) | 0x40;
        goto LABEL_195;
      }

      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v86 = 0;
        v87 = 0;
        v53 = 0;
        if (v3 <= v2)
        {
          v3 = v2;
        }

        while (v3 != v2)
        {
          v88 = v2++;
          v89 = *(v5 + v88);
          a2[1] = v2;
          v53 |= (v89 & 0x7F) << v86;
          if ((v89 & 0x80) == 0)
          {
            goto LABEL_138;
          }

          v86 += 7;
          v81 = v87++ >= 9;
          if (v81)
          {
            LODWORD(v53) = 0;
LABEL_138:
            v3 = v88 + 1;
            goto LABEL_201;
          }
        }

        LODWORD(v53) = 0;
        *(a2 + 24) = 1;
      }

      else
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = (v5 + v2);
        v55 = v2 + 1;
        while (1)
        {
          v3 = v55;
          a2[1] = v55;
          v56 = *v54++;
          v53 |= (v56 & 0x7F) << v51;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          ++v55;
          v12 = v52++ > 8;
          if (v12)
          {
            LODWORD(v53) = 0;
            break;
          }
        }
      }

LABEL_201:
      *(a1 + 92) = v53;
      v115 = *(a1 + 8) | 0x20;
    }

    else if (v18 == 4)
    {
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v77 = 0;
        v78 = 0;
        v41 = 0;
        if (v3 <= v2)
        {
          v3 = v2;
        }

        while (v3 != v2)
        {
          v79 = v2++;
          v80 = *(v5 + v79);
          a2[1] = v2;
          v41 |= (v80 & 0x7F) << v77;
          if ((v80 & 0x80) == 0)
          {
            goto LABEL_122;
          }

          v77 += 7;
          v81 = v78++ >= 9;
          if (v81)
          {
            LODWORD(v41) = 0;
LABEL_122:
            v3 = v79 + 1;
            goto LABEL_197;
          }
        }

        LODWORD(v41) = 0;
        *(a2 + 24) = 1;
      }

      else
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = (v5 + v2);
        v43 = v2 + 1;
        while (1)
        {
          v3 = v43;
          a2[1] = v43;
          v44 = *v42++;
          v41 |= (v44 & 0x7F) << v39;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          ++v43;
          v12 = v40++ > 8;
          if (v12)
          {
            LODWORD(v41) = 0;
            break;
          }
        }
      }

LABEL_197:
      *(a1 + 68) = v41;
      v115 = *(a1 + 8) | 8;
    }

    else
    {
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v99 = 0;
        v100 = 0;
        v21 = 0;
        if (v3 <= v2)
        {
          v3 = v2;
        }

        while (v3 != v2)
        {
          v101 = v2++;
          v102 = *(v5 + v101);
          a2[1] = v2;
          v21 |= (v102 & 0x7F) << v99;
          if ((v102 & 0x80) == 0)
          {
            goto LABEL_164;
          }

          v99 += 7;
          v81 = v100++ >= 9;
          if (v81)
          {
            LODWORD(v21) = 0;
LABEL_164:
            v3 = v101 + 1;
            goto LABEL_207;
          }
        }

        LODWORD(v21) = 0;
        *(a2 + 24) = 1;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = (v5 + v2);
        v23 = v2 + 1;
        while (1)
        {
          v3 = v23;
          a2[1] = v23;
          v24 = *v22++;
          v21 |= (v24 & 0x7F) << v19;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          ++v23;
          v12 = v20++ > 8;
          if (v12)
          {
            LODWORD(v21) = 0;
            break;
          }
        }
      }

LABEL_207:
      *(a1 + 72) = v21;
      v115 = *(a1 + 8) | 0x10;
    }

    *(a1 + 8) = v115;
    v2 = v3;
LABEL_215:
    v3 = a2[2];
    v4 = *(a2 + 24);
    if (v2 >= v3 || (a2[3] & 1) != 0)
    {
      return (v4 ^ 1) & 1;
    }
  }

  v13 = 0;
  v14 = 0;
  v8 = 0;
  if (v2 <= v3)
  {
    v15 = v3;
  }

  else
  {
    v15 = v2;
  }

  while (v15 != v2)
  {
    v16 = v2++;
    v17 = *(v5 + v16);
    a2[1] = v2;
    v8 |= (v17 & 0x7F) << v13;
    if ((v17 & 0x80) == 0)
    {
      if (v4)
      {
        v8 = 0;
      }

      goto LABEL_21;
    }

    v13 += 7;
    v12 = v14++ > 8;
    if (v12)
    {
      v8 = 0;
LABEL_21:
      v2 = v16 + 1;
      goto LABEL_22;
    }
  }

  v4 = 1;
  *(a2 + 24) = 1;
  return (v4 ^ 1) & 1;
}

uint64_t avas::server::Control::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v10 = *(this + 56);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = *(v3 + 64);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 8);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = *(v3 + 96);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 8);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = *(v3 + 68);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 8);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = *(v3 + 72);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 8);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = *(v3 + 92);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 8);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_26:
    this = PB::Writer::write(a2, *(v3 + 48));
    if ((*(v3 + 8) & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 8);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  if ((v4 & 0x100) != 0)
  {
LABEL_10:
    v5 = *(v3 + 97);
    this = PB::Writer::write(a2);
  }

LABEL_11:
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  while (v6 != v7)
  {
    v8 = *v6++;
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(v3 + 8);
  if ((v9 & 0x200) != 0)
  {
    v16 = *(v3 + 76);
    this = PB::Writer::writeVarInt(a2);
    v9 = *(v3 + 8);
    if ((v9 & 0x400) == 0)
    {
LABEL_16:
      if ((v9 & 0x800) == 0)
      {
        goto LABEL_17;
      }

LABEL_30:
      v18 = *(v3 + 84);
      this = PB::Writer::writeVarInt(a2);
      if ((*(v3 + 8) & 0x1000) == 0)
      {
        return this;
      }

      goto LABEL_31;
    }
  }

  else if ((v9 & 0x400) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(v3 + 80);
  this = PB::Writer::writeVarInt(a2);
  v9 = *(v3 + 8);
  if ((v9 & 0x800) != 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v9 & 0x1000) == 0)
  {
    return this;
  }

LABEL_31:
  v19 = *(v3 + 88);

  return PB::Writer::writeVarInt(a2);
}

uint64_t avas::server::Control::formatText(avas::server::Control *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v13 = *(this + 7);
    PB::TextFormatter::format(a2, "objectToken");
    v5 = *(this + 2);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(this + 16);
  PB::TextFormatter::format(a2, "classID");
  v5 = *(this + 2);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = *(this + 96);
  PB::TextFormatter::format(a2, "settable");
  v5 = *(this + 2);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = *(this + 17);
  PB::TextFormatter::format(a2, "scope");
  v5 = *(this + 2);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v17 = *(this + 18);
  PB::TextFormatter::format(a2, "element");
  v5 = *(this + 2);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v18 = *(this + 23);
  PB::TextFormatter::format(a2, "type");
  v5 = *(this + 2);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "decibelMinimum", *(this + 5));
  v5 = *(this + 2);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "decibelMaximum", *(this + 6));
  if ((*(this + 2) & 0x100) != 0)
  {
LABEL_10:
    v6 = *(this + 97);
    PB::TextFormatter::format(a2, "isMultiValue");
  }

LABEL_11:
  v7 = *(this + 2);
  v8 = *(this + 3);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "supportedSelectorValues");
  }

  v10 = *(this + 2);
  if ((v10 & 0x200) != 0)
  {
    v19 = *(this + 19);
    PB::TextFormatter::format(a2, "sliderMinimum");
    v10 = *(this + 2);
    if ((v10 & 0x400) == 0)
    {
LABEL_15:
      if ((v10 & 0x800) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v10 & 0x400) == 0)
  {
    goto LABEL_15;
  }

  v20 = *(this + 20);
  PB::TextFormatter::format(a2, "sliderMaximum");
  v10 = *(this + 2);
  if ((v10 & 0x800) == 0)
  {
LABEL_16:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_32:
  v21 = *(this + 21);
  PB::TextFormatter::format(a2, "panLeftChannel");
  if ((*(this + 2) & 0x1000) != 0)
  {
LABEL_17:
    v11 = *(this + 22);
    PB::TextFormatter::format(a2, "panRightChannel");
  }

LABEL_18:

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::Control::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (memcmp((a1 + 40), (a2 + 40), 0x3AuLL))
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = v5 - v6;
  if (v5 - v6 != *(a2 + 24) - *(a2 + 16))
  {
    return 0;
  }

  if (v5 == v6)
  {
    return 1;
  }

  v8 = 0;
  v9 = v7 >> 3;
  if ((v7 >> 3) <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 >> 3;
  }

  do
  {
    v11 = *(*(a1 + 16) + 8 * v8);
    v12 = *(*(a2 + 16) + 8 * v8);
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (v11 | v12)
      {
        return 0;
      }
    }

    else if (!avas::server::SelectorControlItem::operator==(v11, v12))
    {
      return 0;
    }

    ++v8;
  }

  while (v10 != v8);
  return v8 >= v9;
}

void avas::server::Control::addSupportedSelectorValues(avas::server::Control *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v3 >= v2)
  {
    v5 = this + 16;
    v6 = *(this + 2);
    v7 = v3 - v6;
    v8 = (v3 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v2 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    v18[4] = this + 16;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<avas::client::PortPrefs>>>(v5, v12);
    }

    v13 = (v3 - v6) >> 3;
    v14 = (8 * v8);
    v15 = (8 * v8 - 8 * v13);
    *v14 = 0;
    v4 = v14 + 1;
    memcpy(v15, v6, v7);
    v16 = *(this + 2);
    *(this + 2) = v15;
    *(this + 3) = v4;
    v17 = *(this + 4);
    *(this + 4) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::unique_ptr<avas::client::PortPrefs>>::~__split_buffer(v18);
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 8;
  }

  *(this + 3) = v4;
  operator new();
}

uint64_t avas::server::ControlAndValue::default_instance(avas::server::ControlAndValue *this)
{
  {
    operator new();
  }

  return avas::server::ControlAndValue::default_instance(void)::gInstance;
}

void *avas::server::ControlAndValue::ControlAndValue(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F5999358;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F5999358;
  return this;
}

double avas::server::ControlAndValue::copy_from(avas::server::ControlAndValue *this, const avas::server::ControlAndValue *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = avas::server::ControlAndValue::mutableControl(this);
    *&result = avas::server::Control::copy_from(v5, v4).n128_u64[0];
  }

  v7 = *(a2 + 2);
  if (v7)
  {
    v8 = avas::server::ControlAndValue::mutableValue(this);

    *&result = avas::server::ControlValue::copy_from(v8, v7).n128_u64[0];
  }

  return result;
}

uint64_t avas::server::ControlAndValue::control(avas::server::ControlAndValue *this)
{
  result = *(this + 1);
  if (!result)
  {
    return avas::server::Control::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ControlAndValue::mutableControl(avas::server::ControlAndValue *this)
{
  if (!*(this + 1))
  {
    operator new();
  }

  return *(this + 1);
}

uint64_t avas::server::ControlAndValue::value(avas::server::ControlAndValue *this)
{
  result = *(this + 2);
  if (!result)
  {
    return avas::server::ControlValue::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ControlAndValue::mutableValue(avas::server::ControlAndValue *this)
{
  if (!*(this + 2))
  {
    operator new();
  }

  return *(this + 2);
}

void *avas::server::ControlAndValue::ControlAndValue(void *result, uint64_t a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_1F5999358;
  result[1] = *(a2 + 8);
  *(a2 + 8) = 0;
  v2 = result[2];
  result[2] = *(a2 + 16);
  *(a2 + 16) = v2;
  return result;
}

{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_1F5999358;
  result[1] = *(a2 + 8);
  *(a2 + 8) = 0;
  v2 = result[2];
  result[2] = *(a2 + 16);
  *(a2 + 16) = v2;
  return result;
}

uint64_t avas::server::ControlAndValue::move_from(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

uint64_t avas::server::ControlAndValue::operator=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

uint64_t avas::server::ControlAndValue::clear(avas::server::ControlAndValue *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(this + 2);
  *(this + 2) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t avas::server::ControlAndValue::readFrom(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 24);
  if (v2 < v3 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v5 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v13 = 0;
        v14 = 0;
        v8 = 0;
        v15 = v3 >= v2;
        v16 = v3 - v2;
        if (!v15)
        {
          v16 = 0;
        }

        v17 = (v5 + v2);
        v18 = v2 + 1;
        while (1)
        {
          if (!v16)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v19 = *v17;
          a2[1] = v18;
          v8 |= (v19 & 0x7F) << v13;
          if ((v19 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          --v16;
          ++v17;
          ++v18;
          v12 = v14++ > 8;
          if (v12)
          {
LABEL_18:
            v8 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v8 = 0;
        }
      }

      else
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = (v5 + v2);
        v10 = v2 + 1;
        while (1)
        {
          a2[1] = v10;
          v11 = *v9++;
          v8 |= (v11 & 0x7F) << v6;
          if ((v11 & 0x80) == 0)
          {
            break;
          }

          v6 += 7;
          ++v10;
          v12 = v7++ > 8;
          if (v12)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v8 & 7) == 4))
      {
        break;
      }

      if ((v8 >> 3) == 2)
      {
        operator new();
      }

      if ((v8 >> 3) == 1)
      {
        operator new();
      }

      v2 = a2[1];
      v3 = a2[2];
      v4 = *(a2 + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

uint64_t avas::server::ControlAndValue::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 16);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t avas::server::ControlAndValue::formatText(avas::server::ControlAndValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "control");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "value");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::ControlAndValue::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (avas::server::Control::operator==(v4, v5))
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 | v5)
  {
    return 0;
  }

LABEL_10:
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    v10 = *(a1 + 16);

    return avas::server::ControlValue::operator==(v10, v9);
  }

  return result;
}

uint64_t avas::server::ControlAndValue::clearControl(avas::server::ControlAndValue *this)
{
  result = *(this + 1);
  *(this + 1) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::ControlAndValue::clearValue(avas::server::ControlAndValue *this)
{
  result = *(this + 2);
  *(this + 2) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::IOStreamState::default_instance(avas::server::IOStreamState *this)
{
  {
    operator new();
  }

  return avas::server::IOStreamState::default_instance(void)::gInstance;
}

double avas::server::IOStreamState::IOStreamState(avas::server::IOStreamState *this)
{
  *this = &unk_1F5999390;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

{
  *this = &unk_1F5999390;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

avas::server::IOStreamState *avas::server::IOStreamState::IOStreamState(avas::server::IOStreamState *this, caulk::xstring **a2)
{
  *this = &unk_1F5999390;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  avas::server::IOStreamState::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999390;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  avas::server::IOStreamState::copy_from(this, a2);
  return this;
}

void *avas::server::IOStreamState::copy_from(caulk::xstring **this, caulk::xstring **a2)
{
  v4 = a2[8];
  if (v4)
  {
    v5 = avas::server::IOStreamState::mutableStreamFormat(this);
    avas::StreamFormat::operator=(v5, v4);
  }

  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  if (a2[5] != a2[6])
  {
    operator new();
  }

  if (this != a2)
  {
    result = std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(this + 2, a2[2], a2[3], (a2[3] - a2[2]) >> 4);
  }

  *(this + 2) = *(a2 + 2);
  v7 = a2[9];
  *(this + 20) = *(a2 + 20);
  this[9] = v7;
  return result;
}

uint64_t avas::server::IOStreamState::streamFormat(avas::server::IOStreamState *this)
{
  result = *(this + 8);
  if (!result)
  {
    return avas::StreamFormat::default_instance(0);
  }

  return result;
}

uint64_t avas::server::IOStreamState::mutableStreamFormat(avas::server::IOStreamState *this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return *(this + 8);
}

uint64_t avas::server::IOStreamState::IOStreamState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999390;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  avas::server::IOStreamState::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999390;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  avas::server::IOStreamState::move_from(a1, a2);
  return a1;
}

uint64_t avas::server::IOStreamState::move_from(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v2;
  v3 = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v3;
  v4 = *(result + 48);
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = v4;
  v5 = *(result + 56);
  *(result + 56) = *(a2 + 56);
  *(a2 + 56) = v5;
  v6 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  v7 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v7;
  v8 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  *(result + 8) = *(a2 + 8);
  v9 = *(a2 + 72);
  *(result + 80) = *(a2 + 80);
  *(result + 72) = v9;
  return result;
}

uint64_t avas::server::IOStreamState::clear(avas::server::IOStreamState *this)
{
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  v4 = *(this + 2);
  v3 = this + 16;
  result = std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](v3, v4);
  *(v3 - 2) = 0;
  *(v3 + 7) = 0;
  *(v3 + 16) = 0;
  return result;
}

uint64_t avas::server::IOStreamState::isInitialized(avas::server::IOStreamState *this)
{
  result = *(this + 8);
  if (result)
  {
    result = avas::StreamFormat::isInitialized(result);
    if (result)
    {
      v3 = *(this + 5);
      v4 = *(this + 6);
      while (1)
      {
        if (v3 == v4)
        {
          return (~*(this + 2) & 5) == 0;
        }

        if ((avas::AvailableStreamFormat::isInitialized(*v3) & 1) == 0)
        {
          break;
        }

        ++v3;
      }

      return 0;
    }
  }

  return result;
}

uint64_t avas::server::IOStreamState::readFrom(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 < v2 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v16 = 0;
        v17 = 0;
        v10 = 0;
        v18 = v2 - v3;
        if (v2 < v3)
        {
          v18 = 0;
        }

        v19 = (v7 + v3);
        v20 = v3 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v13 = v20;
          v21 = *v19;
          a2[1] = v13;
          v10 |= (v21 & 0x7F) << v16;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v18;
          ++v19;
          v20 = v13 + 1;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          v13 = v12;
          a2[1] = v12;
          v14 = *v11++;
          v10 |= (v14 & 0x7F) << v8;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v15 = v9++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        return (v4 ^ 1) & 1;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        break;
      }

      switch(v22)
      {
        case 4:
          operator new();
        case 5:
          v41 = *(a1 + 24);
          if (v41 >= *(a1 + 32))
          {
            v42 = std::vector<caulk::xstring>::__emplace_back_slow_path<>(a1 + 16);
          }

          else
          {
            *v41 = 0;
            v41[1] = 0;
            v42 = (v41 + 2);
          }

          *(a1 + 24) = v42;
          PB::Reader::read();
          caulk::xstring::assign();
          break;
        case 6:
          if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
          {
            v50 = 0;
            v51 = 0;
            v25 = 0;
            v45 = v2 >= v13;
            v52 = v2 - v13;
            if (!v45)
            {
              v52 = 0;
            }

            v53 = (v7 + v13);
            v54 = v13 + 1;
            while (v52)
            {
              v55 = *v53;
              a2[1] = v54;
              v25 |= (v55 & 0x7F) << v50;
              if ((v55 & 0x80) == 0)
              {
                goto LABEL_83;
              }

              v50 += 7;
              --v52;
              ++v53;
              ++v54;
              v45 = v51++ >= 9;
              if (v45)
              {
LABEL_69:
                LODWORD(v25) = 0;
                goto LABEL_83;
              }
            }

            LODWORD(v25) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            v26 = (v7 + v13);
            v27 = v13 + 1;
            while (1)
            {
              a2[1] = v27;
              v28 = *v26++;
              v25 |= (v28 & 0x7F) << v23;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              ++v27;
              v15 = v24++ > 8;
              if (v15)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_83:
          *(a1 + 80) = v25;
          v62 = *(a1 + 8) | 4;
LABEL_86:
          *(a1 + 8) = v62;
          break;
      }

LABEL_87:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
      if (v3 >= v2 || (a2[3] & 1) != 0)
      {
        return (v4 ^ 1) & 1;
      }
    }

    switch(v22)
    {
      case 1:
        if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
        {
          v43 = 0;
          v44 = 0;
          v31 = 0;
          v45 = v2 >= v13;
          v46 = v2 - v13;
          if (!v45)
          {
            v46 = 0;
          }

          v47 = (v7 + v13);
          v48 = v13 + 1;
          while (v46)
          {
            v49 = *v47;
            a2[1] = v48;
            v31 |= (v49 & 0x7F) << v43;
            if ((v49 & 0x80) == 0)
            {
              goto LABEL_81;
            }

            v43 += 7;
            --v46;
            ++v47;
            ++v48;
            v45 = v44++ >= 9;
            if (v45)
            {
LABEL_61:
              LODWORD(v31) = 0;
              goto LABEL_81;
            }
          }

          LODWORD(v31) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = (v7 + v13);
          v33 = v13 + 1;
          while (1)
          {
            a2[1] = v33;
            v34 = *v32++;
            v31 |= (v34 & 0x7F) << v29;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            ++v33;
            v15 = v30++ > 8;
            if (v15)
            {
              goto LABEL_61;
            }
          }
        }

LABEL_81:
        *(a1 + 72) = v31;
        v62 = *(a1 + 8) | 1;
        break;
      case 2:
        if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
        {
          v56 = 0;
          v57 = 0;
          v37 = 0;
          v45 = v2 >= v13;
          v58 = v2 - v13;
          if (!v45)
          {
            v58 = 0;
          }

          v59 = (v7 + v13);
          v60 = v13 + 1;
          while (v58)
          {
            v61 = *v59;
            a2[1] = v60;
            v37 |= (v61 & 0x7F) << v56;
            if ((v61 & 0x80) == 0)
            {
              goto LABEL_85;
            }

            v56 += 7;
            --v58;
            ++v59;
            ++v60;
            v45 = v57++ >= 9;
            if (v45)
            {
LABEL_77:
              LODWORD(v37) = 0;
              goto LABEL_85;
            }
          }

          LODWORD(v37) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = (v7 + v13);
          v39 = v13 + 1;
          while (1)
          {
            a2[1] = v39;
            v40 = *v38++;
            v37 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v39;
            v15 = v36++ > 8;
            if (v15)
            {
              goto LABEL_77;
            }
          }
        }

LABEL_85:
        *(a1 + 76) = v37;
        v62 = *(a1 + 8) | 2;
        break;
      case 3:
        operator new();
      default:
        goto LABEL_87;
    }

    goto LABEL_86;
  }

  return (v4 ^ 1) & 1;
}