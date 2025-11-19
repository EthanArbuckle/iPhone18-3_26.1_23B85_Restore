void avas::server::IOStreamState::writeTo(avas::server::IOStreamState *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 18);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(this + 19);
    PB::Writer::writeVarInt(a2);
  }

  v7 = *(this + 8);
  if (v7)
  {
    PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(this + 5);
  v9 = *(this + 6);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = *(this + 2);
  v12 = *(this + 3);
  while (v11 != v12)
  {
    caulk::xstring::as_std_string(v11, &__p);
    PB::Writer::write();
    if (v15 < 0)
    {
      operator delete(__p);
    }

    v11 = (v11 + 16);
  }

  if ((*(this + 8) & 4) != 0)
  {
    v13 = *(this + 20);
    PB::Writer::writeVarInt(a2);
  }
}

void sub_1DE8C00A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::IOStreamState::formatText(avas::server::IOStreamState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 18);
    PB::TextFormatter::format(a2, "streamToken");
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 19);
    PB::TextFormatter::format(a2, "DSPFlavor");
  }

  v8 = *(this + 8);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "streamFormat");
  }

  v9 = *(this + 5);
  v10 = *(this + 6);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "availableFormats");
  }

  v12 = *(this + 2);
  for (i = *(this + 3); v12 != i; v12 = (v12 + 16))
  {
    caulk::xstring::as_std_string(v12, &__p);
    PB::TextFormatter::format();
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

  if ((*(this + 8) & 4) != 0)
  {
    v14 = *(this + 20);
    PB::TextFormatter::format(a2, "latency");
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8C0234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::IOStreamState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  v6 = *(a1 + 64);
  v7 = *(a2 + 64);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!(v6 | v7))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!avas::StreamFormat::operator==(v6, v7))
  {
    return 0;
  }

LABEL_16:
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v9 - v10 != *(a2 + 48) - *(a2 + 40))
  {
    return 0;
  }

  if (v9 != v10)
  {
    v11 = 0;
    if (((v9 - v10) >> 3) <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = (v9 - v10) >> 3;
    }

    do
    {
      v13 = *(*(a1 + 40) + 8 * v11);
      v14 = *(*(a2 + 40) + 8 * v11);
      if (v13)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        if (v13 | v14)
        {
          return 0;
        }
      }

      else if (!avas::AvailableStreamFormat::operator==(v13, v14))
      {
        return 0;
      }

      ++v11;
    }

    while (v12 != v11);
  }

  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = v16 - v17;
  if (v16 - v17 != *(a2 + 24) - *(a2 + 16))
  {
    return 0;
  }

  if (v16 != v17)
  {
    v19 = 0;
    v20 = 0;
    v21 = v18 >> 4;
    if ((v18 >> 4) <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v18 >> 4;
    }

    while (!caulk::xstring::compare((*(a1 + 16) + v19), (*(a2 + 16) + v19)))
    {
      ++v20;
      v19 += 16;
      if (v22 == v20)
      {
        return v20 >= v21;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t avas::server::IOStreamState::clearStreamFormat(avas::server::IOStreamState *this)
{
  result = *(this + 8);
  *(this + 8) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void avas::server::IOStreamState::addAvailableFormats(avas::server::IOStreamState *this)
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

uint64_t avas::server::PortInvariants::default_instance(avas::server::PortInvariants *this)
{
  {
    operator new();
  }

  return avas::server::PortInvariants::default_instance(void)::gInstance;
}

double avas::server::PortInvariants::PortInvariants(avas::server::PortInvariants *this)
{
  *this = &unk_1F59993C8;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  return result;
}

{
  *this = &unk_1F59993C8;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  return result;
}

avas::server::PortInvariants *avas::server::PortInvariants::PortInvariants(avas::server::PortInvariants *this, __n128 *a2)
{
  *this = &unk_1F59993C8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  avas::server::PortInvariants::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F59993C8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  avas::server::PortInvariants::copy_from(this, a2);
  return this;
}

__n128 avas::server::PortInvariants::copy_from(__n128 *this, __n128 *a2)
{
  caulk::xstring::assign(&this[1], &a2[1]);
  caulk::xstring::assign(&this[2], &a2[2]);
  this->n128_u32[2] = a2->n128_u32[2];
  result = a2[3];
  this[4].n128_u64[0] = a2[4].n128_u64[0];
  this[3] = result;
  return result;
}

__n128 *avas::server::PortInvariants::operator=(__n128 *a1, __n128 *a2)
{
  avas::server::PortInvariants::copy_from(a1, a2);
  return a1;
}

{
  avas::server::PortInvariants::move_from(a1, a2);
  return a1;
}

uint64_t avas::server::PortInvariants::PortInvariants(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_1F59993C8;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  avas::server::PortInvariants::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F59993C8;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  avas::server::PortInvariants::move_from(a1, a2);
  return a1;
}

__n128 avas::server::PortInvariants::move_from(__n128 *a1, __n128 *a2)
{
  v5 = 0;
  v6 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v5);
  v5 = 0;
  v6 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v5);
  a1->n128_u32[2] = a2->n128_u32[2];
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

uint64_t avas::server::PortInvariants::clear(avas::server::PortInvariants *this)
{
  caulk::xstring::clear((this + 16));
  result = caulk::xstring::clear((this + 32));
  *(this + 2) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  return result;
}

BOOL avas::server::PortInvariants::readFrom(uint64_t a1, uint64_t *a2)
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
            return (v4 & 1) == 0;
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
        return (v4 & 1) == 0;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        break;
      }

      if (v22 <= 5)
      {
        if (v22 == 4)
        {
          if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
          {
            v61 = 0;
            v62 = 0;
            v44 = 0;
            v56 = v2 >= v13;
            v63 = v2 - v13;
            if (!v56)
            {
              v63 = 0;
            }

            v64 = (v7 + v13);
            v65 = v13 + 1;
            while (v63)
            {
              v66 = *v64;
              a2[1] = v65;
              v44 |= (v66 & 0x7F) << v61;
              if ((v66 & 0x80) == 0)
              {
                goto LABEL_112;
              }

              v61 += 7;
              --v63;
              ++v64;
              ++v65;
              v56 = v62++ >= 9;
              if (v56)
              {
LABEL_84:
                LODWORD(v44) = 0;
                goto LABEL_112;
              }
            }

            LODWORD(v44) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v7 + v13);
            v46 = v13 + 1;
            while (1)
            {
              a2[1] = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              ++v46;
              v15 = v43++ > 8;
              if (v15)
              {
                goto LABEL_84;
              }
            }
          }

LABEL_112:
          *(a1 + 64) = v44;
          v85 = *(a1 + 8) | 8;
        }

        else
        {
          if (v22 != 5)
          {
            goto LABEL_120;
          }

          if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
          {
            v67 = 0;
            v68 = 0;
            v25 = 0;
            v56 = v2 >= v13;
            v69 = v2 - v13;
            if (!v56)
            {
              v69 = 0;
            }

            v70 = (v7 + v13);
            v71 = v13 + 1;
            while (v69)
            {
              v72 = *v70;
              a2[1] = v71;
              v25 |= (v72 & 0x7F) << v67;
              if ((v72 & 0x80) == 0)
              {
                goto LABEL_114;
              }

              v67 += 7;
              --v69;
              ++v70;
              ++v71;
              v56 = v68++ >= 9;
              if (v56)
              {
LABEL_92:
                LODWORD(v25) = 0;
                goto LABEL_114;
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
                goto LABEL_92;
              }
            }
          }

LABEL_114:
          *(a1 + 68) = v25;
          v85 = *(a1 + 8) | 0x10;
        }

LABEL_119:
        *(a1 + 8) = v85;
        goto LABEL_120;
      }

      if (v22 == 6)
      {
        PB::Reader::read();
        caulk::xstring::assign();
        v35 = *(a1 + 8) | 0x20;
      }

      else
      {
        if (v22 != 7)
        {
          goto LABEL_120;
        }

        PB::Reader::read();
        caulk::xstring::assign();
        v35 = *(a1 + 8) | 0x40;
      }

      *(a1 + 8) = v35;
LABEL_120:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
      if (v3 >= v2 || (a2[3] & 1) != 0)
      {
        return (v4 & 1) == 0;
      }
    }

    switch(v22)
    {
      case 1:
        if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
        {
          v54 = 0;
          v55 = 0;
          v38 = 0;
          v56 = v2 >= v13;
          v57 = v2 - v13;
          if (!v56)
          {
            v57 = 0;
          }

          v58 = (v7 + v13);
          v59 = v13 + 1;
          while (v57)
          {
            v60 = *v58;
            a2[1] = v59;
            v38 |= (v60 & 0x7F) << v54;
            if ((v60 & 0x80) == 0)
            {
              goto LABEL_110;
            }

            v54 += 7;
            --v57;
            ++v58;
            ++v59;
            v56 = v55++ >= 9;
            if (v56)
            {
LABEL_76:
              v38 = 0;
              goto LABEL_110;
            }
          }

          v38 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v7 + v13);
          v40 = v13 + 1;
          while (1)
          {
            a2[1] = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            ++v40;
            v15 = v37++ > 8;
            if (v15)
            {
              goto LABEL_76;
            }
          }
        }

LABEL_110:
        *(a1 + 48) = v38;
        v85 = *(a1 + 8) | 1;
        break;
      case 2:
        if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
        {
          v79 = 0;
          v80 = 0;
          v50 = 0;
          v56 = v2 >= v13;
          v81 = v2 - v13;
          if (!v56)
          {
            v81 = 0;
          }

          v82 = (v7 + v13);
          v83 = v13 + 1;
          while (v81)
          {
            v84 = *v82;
            a2[1] = v83;
            v50 |= (v84 & 0x7F) << v79;
            if ((v84 & 0x80) == 0)
            {
              goto LABEL_118;
            }

            v79 += 7;
            --v81;
            ++v82;
            ++v83;
            v56 = v80++ >= 9;
            if (v56)
            {
LABEL_108:
              LODWORD(v50) = 0;
              goto LABEL_118;
            }
          }

          LODWORD(v50) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v7 + v13);
          v52 = v13 + 1;
          while (1)
          {
            a2[1] = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            ++v52;
            v15 = v49++ > 8;
            if (v15)
            {
              goto LABEL_108;
            }
          }
        }

LABEL_118:
        *(a1 + 56) = v50;
        v85 = *(a1 + 8) | 2;
        break;
      case 3:
        if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
        {
          v73 = 0;
          v74 = 0;
          v31 = 0;
          v56 = v2 >= v13;
          v75 = v2 - v13;
          if (!v56)
          {
            v75 = 0;
          }

          v76 = (v7 + v13);
          v77 = v13 + 1;
          while (v75)
          {
            v78 = *v76;
            a2[1] = v77;
            v31 |= (v78 & 0x7F) << v73;
            if ((v78 & 0x80) == 0)
            {
              goto LABEL_116;
            }

            v73 += 7;
            --v75;
            ++v76;
            ++v77;
            v56 = v74++ >= 9;
            if (v56)
            {
LABEL_100:
              LODWORD(v31) = 0;
              goto LABEL_116;
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
              goto LABEL_100;
            }
          }
        }

LABEL_116:
        *(a1 + 60) = v31;
        v85 = *(a1 + 8) | 4;
        break;
      default:
        goto LABEL_120;
    }

    goto LABEL_119;
  }

  return (v4 & 1) == 0;
}

void sub_1DE8C0F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::PortInvariants::writeTo(avas::server::PortInvariants *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 6);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(this + 14);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v7 = *(this + 15);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(this + 16);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = *(this + 17);
  PB::Writer::writeVarInt(a2);
  v4 = *(this + 2);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_14:
  caulk::xstring::as_std_string((this + 16), __p);
  PB::Writer::write();
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(this + 2) & 0x40) != 0)
  {
LABEL_17:
    caulk::xstring::as_std_string((this + 32), __p);
    PB::Writer::write();
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DE8C10CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::PortInvariants::formatText(avas::server::PortInvariants *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "objectToken");
    v5 = *(this + 2);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(this + 14);
  PB::TextFormatter::format(a2, "portType");
  v5 = *(this + 2);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = *(this + 15);
  PB::TextFormatter::format(a2, "endpointType");
  v5 = *(this + 2);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = *(this + 16);
  PB::TextFormatter::format(a2, "connectionType");
  v5 = *(this + 2);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10 = *(this + 17);
  PB::TextFormatter::format(a2, "direction");
  v5 = *(this + 2);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      return PB::TextFormatter::endObject(a2);
    }

    goto LABEL_17;
  }

LABEL_14:
  caulk::xstring::as_std_string((this + 16), __p);
  PB::TextFormatter::format();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(this + 2) & 0x40) != 0)
  {
LABEL_17:
    caulk::xstring::as_std_string((this + 32), __p);
    PB::TextFormatter::format();
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8C1244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::PortInvariants::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v6 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
  return v6 && !caulk::xstring::compare((a1 + 16), (a2 + 16)) && caulk::xstring::compare((a1 + 32), (a2 + 32)) == 0;
}

uint64_t avas::server::Port::default_instance(avas::server::Port *this)
{
  {
    operator new();
  }

  return avas::server::Port::default_instance(void)::gInstance;
}

double avas::server::Port::Port(avas::server::Port *this)
{
  *this = &unk_1F5999400;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 121) = 0u;
  return result;
}

{
  *this = &unk_1F5999400;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 121) = 0u;
  return result;
}

uint64_t avas::server::Port::copy_from(caulk::xstring **this, caulk::xstring **a2)
{
  v4 = a2[15];
  if (v4)
  {
    v5 = avas::server::Port::mutableInvariants(this);
    avas::server::PortInvariants::copy_from(v5, v4);
  }

  caulk::xstring::assign((this + 11), (a2 + 11));
  if (this != a2)
  {
    std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(this + 2, a2[2], a2[3], (a2[3] - a2[2]) >> 4);
    std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(this + 5, a2[5], a2[6], (a2[6] - a2[5]) >> 4);
    std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(this + 8, a2[8], a2[9], (a2[9] - a2[8]) >> 4);
  }

  v6 = a2[16];
  if (v6)
  {
    v7 = avas::server::Port::mutableHardwareInfo(this);
    avas::server::HardwareInfo::copy_from(v7, v6);
  }

  result = caulk::xstring::assign((this + 13), (a2 + 13));
  *(this + 2) = *(a2 + 2);
  *(this + 136) = *(a2 + 136);
  return result;
}

uint64_t avas::server::Port::invariants(avas::server::Port *this)
{
  result = *(this + 15);
  if (!result)
  {
    return avas::server::PortInvariants::default_instance(0);
  }

  return result;
}

uint64_t avas::server::Port::mutableInvariants(avas::server::Port *this)
{
  if (!*(this + 15))
  {
    operator new();
  }

  return *(this + 15);
}

uint64_t avas::server::Port::hardwareInfo(avas::server::Port *this)
{
  result = *(this + 16);
  if (!result)
  {
    return avas::server::HardwareInfo::default_instance(0);
  }

  return result;
}

uint64_t avas::server::Port::mutableHardwareInfo(avas::server::Port *this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return *(this + 16);
}

uint64_t avas::server::Port::Port(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999400;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  avas::server::Port::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999400;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  avas::server::Port::move_from(a1, a2);
  return a1;
}

uint64_t avas::server::Port::move_from(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = v4;
  v16 = 0;
  v17 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v16);
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v6;
  v7 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v7;
  v8 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v8;
  v9 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v9;
  v10 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v10;
  v11 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v11;
  v12 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v12;
  v13 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v13;
  v14 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 128) = v14;
  v16 = 0;
  v17 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  result = caulk::xstring::clear(&v16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 136) = *(a2 + 136);
  return result;
}

uint64_t avas::server::Port::clear(avas::server::Port *this)
{
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::xstring::clear((this + 88));
  std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](this + 16, *(this + 2));
  std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](this + 40, *(this + 5));
  std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](this + 64, *(this + 8));
  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  result = caulk::xstring::clear((this + 104));
  *(this + 2) = 0;
  *(this + 136) = 0;
  return result;
}

uint64_t avas::server::Port::readFrom(uint64_t a1, uint64_t *a2)
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
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            v26 = *(a1 + 72);
            if (v26 >= *(a1 + 80))
            {
              v27 = std::vector<caulk::xstring>::__emplace_back_slow_path<>(a1 + 64);
            }

            else
            {
              *v26 = 0;
              v26[1] = 0;
              v27 = (v26 + 2);
            }

            *(a1 + 72) = v27;
            PB::Reader::read();
            caulk::xstring::assign();
          }

          else if (v22 == 7)
          {
            operator new();
          }

          goto LABEL_54;
        }

        if (v22 == 8)
        {
          if (v13 >= v2)
          {
            v31 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v30 = *(v7 + v13);
            a2[1] = v13 + 1;
            v31 = v30 != 0;
          }

          *(a1 + 136) = v31;
          *(a1 + 8) |= 2u;
          goto LABEL_54;
        }

        if (v22 == 9)
        {
          PB::Reader::read();
          caulk::xstring::assign();
          v23 = *(a1 + 8) | 4;
          goto LABEL_38;
        }
      }

      else
      {
        if (v22 > 3)
        {
          if (v22 == 4)
          {
            v28 = *(a1 + 24);
            if (v28 >= *(a1 + 32))
            {
              v29 = std::vector<caulk::xstring>::__emplace_back_slow_path<>(a1 + 16);
            }

            else
            {
              *v28 = 0;
              v28[1] = 0;
              v29 = (v28 + 2);
            }

            *(a1 + 24) = v29;
            PB::Reader::read();
            caulk::xstring::assign();
          }

          else if (v22 == 5)
          {
            v24 = *(a1 + 48);
            if (v24 >= *(a1 + 56))
            {
              v25 = std::vector<caulk::xstring>::__emplace_back_slow_path<>(a1 + 40);
            }

            else
            {
              *v24 = 0;
              v24[1] = 0;
              v25 = (v24 + 2);
            }

            *(a1 + 48) = v25;
            PB::Reader::read();
            caulk::xstring::assign();
          }

          goto LABEL_54;
        }

        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          PB::Reader::read();
          caulk::xstring::assign();
          v23 = *(a1 + 8) | 1;
LABEL_38:
          *(a1 + 8) = v23;
        }
      }

LABEL_54:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

void sub_1DE8C1E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::Port::writeTo(avas::server::Port *this, PB::Writer *a2)
{
  v4 = *(this + 15);
  if (v4)
  {
    PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(this + 8))
  {
    caulk::xstring::as_std_string((this + 88), __p);
    PB::Writer::write();
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = *(this + 2);
  v6 = *(this + 3);
  while (v5 != v6)
  {
    caulk::xstring::as_std_string(v5, __p);
    PB::Writer::write();
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = (v5 + 16);
  }

  v7 = *(this + 5);
  v8 = *(this + 6);
  while (v7 != v8)
  {
    caulk::xstring::as_std_string(v7, __p);
    PB::Writer::write();
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = (v7 + 16);
  }

  v9 = *(this + 8);
  v10 = *(this + 9);
  while (v9 != v10)
  {
    caulk::xstring::as_std_string(v9, __p);
    PB::Writer::write();
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = (v9 + 16);
  }

  v11 = *(this + 16);
  if (v11)
  {
    PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = *(this + 2);
  if ((v12 & 2) != 0)
  {
    v13 = *(this + 136);
    PB::Writer::write(a2);
    v12 = *(this + 2);
  }

  if ((v12 & 4) != 0)
  {
    caulk::xstring::as_std_string((this + 104), __p);
    PB::Writer::write();
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DE8C2064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::Port::formatText(avas::server::Port *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 15);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "invariants");
  }

  if (*(this + 8))
  {
    caulk::xstring::as_std_string((this + 88), __p);
    PB::TextFormatter::format();
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(this + 2);
  for (i = *(this + 3); v6 != i; v6 = (v6 + 16))
  {
    caulk::xstring::as_std_string(v6, __p);
    PB::TextFormatter::format();
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(this + 5);
  for (j = *(this + 6); v8 != j; v8 = (v8 + 16))
  {
    caulk::xstring::as_std_string(v8, __p);
    PB::TextFormatter::format();
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = *(this + 8);
  for (k = *(this + 9); v10 != k; v10 = (v10 + 16))
  {
    caulk::xstring::as_std_string(v10, __p);
    PB::TextFormatter::format();
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *(this + 16);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "hardwareInfo");
  }

  v13 = *(this + 2);
  if ((v13 & 2) != 0)
  {
    v14 = *(this + 136);
    PB::TextFormatter::format(a2, "turnByTurnUseAllowed");
    v13 = *(this + 2);
  }

  if ((v13 & 4) != 0)
  {
    caulk::xstring::as_std_string((this + 104), __p);
    PB::TextFormatter::format();
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8C22C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::Port::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 136) != *(a2 + 136))
  {
    return 0;
  }

  v5 = *(a1 + 120);
  v6 = *(a2 + 120);
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

  else if (!avas::server::PortInvariants::operator==(v5, v6))
  {
    return 0;
  }

  if (caulk::xstring::compare((a1 + 88), (a2 + 88)))
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8 - v9 != *(a2 + 24) - *(a2 + 16))
  {
    return 0;
  }

  if (v8 != v9)
  {
    v10 = 0;
    if (((v8 - v9) >> 4) <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = (v8 - v9) >> 4;
    }

    while (!caulk::xstring::compare((*(a1 + 16) + v10), (*(a2 + 16) + v10)))
    {
      v10 += 16;
      if (!--v11)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v12 - v13 != *(a2 + 48) - *(a2 + 40))
  {
    return 0;
  }

  if (v12 != v13)
  {
    v14 = 0;
    if (((v12 - v13) >> 4) <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = (v12 - v13) >> 4;
    }

    while (!caulk::xstring::compare((*(a1 + 40) + v14), (*(a2 + 40) + v14)))
    {
      v14 += 16;
      if (!--v15)
      {
        goto LABEL_27;
      }
    }

    return 0;
  }

LABEL_27:
  v17 = *(a1 + 64);
  v16 = *(a1 + 72);
  if (v16 - v17 != *(a2 + 72) - *(a2 + 64))
  {
    return 0;
  }

  if (v16 != v17)
  {
    v18 = 0;
    if (((v16 - v17) >> 4) <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = (v16 - v17) >> 4;
    }

    while (!caulk::xstring::compare((*(a1 + 64) + v18), (*(a2 + 64) + v18)))
    {
      v18 += 16;
      if (!--v19)
      {
        goto LABEL_34;
      }
    }

    return 0;
  }

LABEL_34:
  v20 = *(a1 + 128);
  v21 = *(a2 + 128);
  if (v20 && v21)
  {
    if (!avas::server::HardwareInfo::operator==(v20, v21))
    {
      return 0;
    }
  }

  else if (v20 | v21)
  {
    return 0;
  }

  return caulk::xstring::compare((a1 + 104), (a2 + 104)) == 0;
}

uint64_t avas::server::Port::clearInvariants(avas::server::Port *this)
{
  result = *(this + 15);
  *(this + 15) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::Port::clearHardwareInfo(avas::server::Port *this)
{
  result = *(this + 16);
  *(this + 16) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::SessionUpdateSummary::default_instance(avas::server::SessionUpdateSummary *this)
{
  {
    operator new();
  }

  return avas::server::SessionUpdateSummary::default_instance(void)::gInstance;
}

uint64_t avas::server::SessionUpdateSummary::SessionUpdateSummary(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F5999438;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F5999438;
  *(this + 24) = 0;
  return this;
}

__n128 avas::server::SessionUpdateSummary::SessionUpdateSummary(avas::server::SessionUpdateSummary *this, const avas::server::SessionUpdateSummary *a2)
{
  *this = &unk_1F5999438;
  *(this + 2) = *(a2 + 2);
  result = *(a2 + 12);
  *(this + 12) = result;
  return result;
}

{
  *this = &unk_1F5999438;
  *(this + 2) = *(a2 + 2);
  result = *(a2 + 12);
  *(this + 12) = result;
  return result;
}

__n128 avas::server::SessionUpdateSummary::copy_from(avas::server::SessionUpdateSummary *this, const avas::server::SessionUpdateSummary *a2)
{
  *(this + 2) = *(a2 + 2);
  result = *(a2 + 12);
  *(this + 12) = result;
  return result;
}

__n128 avas::server::SessionUpdateSummary::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

{
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

__n128 avas::server::SessionUpdateSummary::SessionUpdateSummary(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999438;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

{
  *a1 = &unk_1F5999438;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

__n128 avas::server::SessionUpdateSummary::move_from(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

uint64_t avas::server::SessionUpdateSummary::clear(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

BOOL avas::server::SessionUpdateSummary::readFrom(_DWORD *a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 >= v2 || (a2[3] & 1) != 0)
  {
    return (v4 & 1) == 0;
  }

  v4 = 0;
  v5 = *a2;
  while (v3 <= 0xFFFFFFFFFFFFFFF5 && v3 + 10 <= v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = (v5 + v3);
    v10 = v3 + 1;
    while (1)
    {
      v3 = v10;
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
      return (v4 & 1) == 0;
    }

    v19 = v8 >> 3;
    if ((v8 >> 3) > 2)
    {
      if (v19 == 3)
      {
        if (v3 <= 0xFFFFFFFFFFFFFFF5 && v3 + 10 <= v2)
        {
          v36 = 0;
          v37 = 0;
          v22 = 0;
          v38 = (v5 + v3);
          v39 = v3 + 1;
          while (1)
          {
            v3 = v39;
            a2[1] = v39;
            v40 = *v38++;
            v22 |= (v40 & 0x7F) << v36;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            ++v39;
            v12 = v37++ > 8;
            if (v12)
            {
              LODWORD(v22) = 0;
              break;
            }
          }

LABEL_95:
          v47 = 4;
          v48 = a1 + 5;
          goto LABEL_101;
        }

        v59 = 0;
        v60 = 0;
        v22 = 0;
        v61 = *a2;
        if (v3 <= v2)
        {
          v44 = v2;
        }

        else
        {
          v44 = v3;
        }

        while (v44 != v3)
        {
          v62 = v3++;
          v63 = *(v61 + v62);
          a2[1] = v3;
          v22 |= (v63 & 0x7F) << v59;
          if ((v63 & 0x80) == 0)
          {
            goto LABEL_94;
          }

          v59 += 7;
          v12 = v60++ > 8;
          if (v12)
          {
            LODWORD(v22) = 0;
LABEL_94:
            v3 = v62 + 1;
            goto LABEL_95;
          }
        }

        v47 = 4;
        v48 = a1 + 5;
      }

      else
      {
        if (v19 != 4)
        {
          goto LABEL_102;
        }

        if (v3 <= 0xFFFFFFFFFFFFFFF5 && v3 + 10 <= v2)
        {
          v26 = 0;
          v27 = 0;
          v22 = 0;
          v28 = (v5 + v3);
          v29 = v3 + 1;
          while (1)
          {
            v3 = v29;
            a2[1] = v29;
            v30 = *v28++;
            v22 |= (v30 & 0x7F) << v26;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v29;
            v12 = v27++ > 8;
            if (v12)
            {
              LODWORD(v22) = 0;
              break;
            }
          }

LABEL_75:
          v47 = 8;
          v48 = a1 + 6;
          goto LABEL_101;
        }

        v49 = 0;
        v50 = 0;
        v22 = 0;
        v51 = *a2;
        if (v3 <= v2)
        {
          v44 = v2;
        }

        else
        {
          v44 = v3;
        }

        while (v44 != v3)
        {
          v52 = v3++;
          v53 = *(v51 + v52);
          a2[1] = v3;
          v22 |= (v53 & 0x7F) << v49;
          if ((v53 & 0x80) == 0)
          {
            goto LABEL_74;
          }

          v49 += 7;
          v12 = v50++ > 8;
          if (v12)
          {
            LODWORD(v22) = 0;
LABEL_74:
            v3 = v52 + 1;
            goto LABEL_75;
          }
        }

        v47 = 8;
        v48 = a1 + 6;
      }
    }

    else if (v19 == 1)
    {
      if (v3 <= 0xFFFFFFFFFFFFFFF5 && v3 + 10 <= v2)
      {
        v31 = 0;
        v32 = 0;
        v22 = 0;
        v33 = (v5 + v3);
        v34 = v3 + 1;
        while (1)
        {
          v3 = v34;
          a2[1] = v34;
          v35 = *v33++;
          v22 |= (v35 & 0x7F) << v31;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          ++v34;
          v12 = v32++ > 8;
          if (v12)
          {
            LODWORD(v22) = 0;
            break;
          }
        }

LABEL_85:
        v47 = 1;
        v48 = a1 + 3;
        goto LABEL_101;
      }

      v54 = 0;
      v55 = 0;
      v22 = 0;
      v56 = *a2;
      if (v3 <= v2)
      {
        v44 = v2;
      }

      else
      {
        v44 = v3;
      }

      while (v44 != v3)
      {
        v57 = v3++;
        v58 = *(v56 + v57);
        a2[1] = v3;
        v22 |= (v58 & 0x7F) << v54;
        if ((v58 & 0x80) == 0)
        {
          goto LABEL_84;
        }

        v54 += 7;
        v12 = v55++ > 8;
        if (v12)
        {
          LODWORD(v22) = 0;
LABEL_84:
          v3 = v57 + 1;
          goto LABEL_85;
        }
      }

      v47 = 1;
      v48 = a1 + 3;
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_102;
      }

      if (v3 <= 0xFFFFFFFFFFFFFFF5 && v3 + 10 <= v2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = (v5 + v3);
        v24 = v3 + 1;
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
          v12 = v21++ > 8;
          if (v12)
          {
            LODWORD(v22) = 0;
            break;
          }
        }

LABEL_65:
        v47 = 2;
        v48 = a1 + 4;
        goto LABEL_101;
      }

      v41 = 0;
      v42 = 0;
      v22 = 0;
      v43 = *a2;
      if (v3 <= v2)
      {
        v44 = v2;
      }

      else
      {
        v44 = v3;
      }

      while (v44 != v3)
      {
        v45 = v3++;
        v46 = *(v43 + v45);
        a2[1] = v3;
        v22 |= (v46 & 0x7F) << v41;
        if ((v46 & 0x80) == 0)
        {
          goto LABEL_64;
        }

        v41 += 7;
        v12 = v42++ > 8;
        if (v12)
        {
          LODWORD(v22) = 0;
LABEL_64:
          v3 = v45 + 1;
          goto LABEL_65;
        }
      }

      v47 = 2;
      v48 = a1 + 4;
    }

    LODWORD(v22) = 0;
    *(a2 + 24) = 1;
    v3 = v44;
LABEL_101:
    *v48 = v22;
    a1[2] |= v47;
LABEL_102:
    v4 = *(a2 + 24);
    if (v3 >= v2 || (a2[3] & 1) != 0)
    {
      return (v4 & 1) == 0;
    }
  }

  v13 = 0;
  v14 = 0;
  v8 = 0;
  v15 = *a2;
  if (v3 <= v2)
  {
    v16 = v2;
  }

  else
  {
    v16 = v3;
  }

  while (v16 != v3)
  {
    v17 = v3++;
    v18 = *(v15 + v17);
    a2[1] = v3;
    v8 |= (v18 & 0x7F) << v13;
    if ((v18 & 0x80) == 0)
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
      v3 = v17 + 1;
      goto LABEL_22;
    }
  }

  v4 = 1;
  *(a2 + 24) = 1;
  return (v4 & 1) == 0;
}

_DWORD *avas::server::SessionUpdateSummary::writeTo(_DWORD *this, PB::Writer *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4)
  {
    v5 = this[3];
    this = PB::Writer::writeVarInt(a2);
    v4 = v3[2];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = v3[5];
      this = PB::Writer::writeVarInt(a2);
      if ((v3[2] & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = v3[4];
  this = PB::Writer::writeVarInt(a2);
  v4 = v3[2];
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = v3[6];

  return PB::Writer::writeVarInt(a2);
}

uint64_t avas::server::SessionUpdateSummary::formatText(avas::server::SessionUpdateSummary *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v8 = *(this + 3);
    PB::TextFormatter::format(a2, "sessionToken");
    v5 = *(this + 2);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 4);
  PB::TextFormatter::format(a2, "changeFlags");
  v5 = *(this + 2);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v10 = *(this + 5);
  PB::TextFormatter::format(a2, "generationCount");
  if ((*(this + 2) & 8) != 0)
  {
LABEL_5:
    v6 = *(this + 6);
    PB::TextFormatter::format(a2, "changeReason");
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::SessionUpdateSummary::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 12) == *(a2 + 12) && *(a1 + 20) == *(a2 + 20);
}

uint64_t avas::server::ConfigChangeSummary::default_instance(avas::server::ConfigChangeSummary *this)
{
  {
    operator new();
  }

  return avas::server::ConfigChangeSummary::default_instance(void)::gInstance;
}

double avas::server::ConfigChangeSummary::ConfigChangeSummary(avas::server::ConfigChangeSummary *this)
{
  *this = &unk_1F5999470;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F5999470;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

avas::server::ConfigChangeSummary *avas::server::ConfigChangeSummary::ConfigChangeSummary(avas::server::ConfigChangeSummary *this, const avas::server::ConfigChangeSummary *a2)
{
  *this = &unk_1F5999470;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  avas::server::ConfigChangeSummary::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999470;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  avas::server::ConfigChangeSummary::copy_from(this, a2);
  return this;
}

void *avas::server::ConfigChangeSummary::copy_from(avas::server::ConfigChangeSummary *this, const avas::server::ConfigChangeSummary *a2)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = avas::server::ConfigChangeSummary::mutableHardwareSystemChange(this);
    avas::server::ChangedObject::copy_from(v5, v4);
  }

  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 1);
  if (*(a2 + 1) != *(a2 + 2))
  {
    operator new();
  }

  return result;
}

uint64_t avas::server::ConfigChangeSummary::hardwareSystemChange(avas::server::ConfigChangeSummary *this)
{
  result = *(this + 4);
  if (!result)
  {
    return avas::server::ChangedObject::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ConfigChangeSummary::mutableHardwareSystemChange(avas::server::ConfigChangeSummary *this)
{
  if (!*(this + 4))
  {
    operator new();
  }

  return *(this + 4);
}

double avas::server::ConfigChangeSummary::ConfigChangeSummary(uint64_t a1, void *a2)
{
  *a1 = &unk_1F5999470;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 32) = a2[4];
  a2[4] = 0;
  v3 = *(a1 + 8);
  *(a1 + 8) = a2[1];
  a2[1] = v3;
  v4 = *(a1 + 16);
  *(a1 + 16) = a2[2];
  a2[2] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = a2[3];
  a2[3] = v5;
  return result;
}

{
  *a1 = &unk_1F5999470;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 32) = a2[4];
  a2[4] = 0;
  v3 = *(a1 + 8);
  *(a1 + 8) = a2[1];
  a2[1] = v3;
  v4 = *(a1 + 16);
  *(a1 + 16) = a2[2];
  a2[2] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = a2[3];
  a2[3] = v5;
  return result;
}

void *avas::server::ConfigChangeSummary::move_from(void *result, void *a2)
{
  v2 = result[4];
  result[4] = a2[4];
  a2[4] = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  v5 = result[3];
  result[3] = a2[3];
  a2[3] = v5;
  return result;
}

void *avas::server::ConfigChangeSummary::operator=(void *result, void *a2)
{
  v2 = result[4];
  result[4] = a2[4];
  a2[4] = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  v5 = result[3];
  result[3] = a2[3];
  a2[3] = v5;
  return result;
}

void *avas::server::ConfigChangeSummary::clear(avas::server::ConfigChangeSummary *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 1);
}

BOOL avas::server::ConfigChangeSummary::isInitialized(avas::server::ConfigChangeSummary *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v2 == v1)
  {
    return 1;
  }

  v3 = v2 + 8;
  do
  {
    result = (*(*(v3 - 8) + 8) & 0xF) == 15;
    v5 = (*(*(v3 - 8) + 8) & 0xF) != 0xF || v3 == v1;
    v3 += 8;
  }

  while (!v5);
  return result;
}

uint64_t avas::server::ConfigChangeSummary::readFrom(uint64_t a1, uint64_t *a2)
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

      if ((v8 >> 3) == 3)
      {
        operator new();
      }

      if ((v8 >> 3) == 2)
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

uint64_t avas::server::ConfigChangeSummary::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v6 != v5)
  {
    v7 = *v6++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

uint64_t avas::server::ConfigChangeSummary::formatText(avas::server::ConfigChangeSummary *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "hardwareSystemChange");
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "sessionChanges");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::ConfigChangeSummary::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v4 | v5)
    {
      return 0;
    }
  }

  else
  {
    v7 = avas::server::ChangedObject::operator==(v4, v5);
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = a1 + 8;
  v9 = *(a1 + 8);
  v8 = *(v10 + 8);
  v11 = v8 - v9;
  v13 = a2 + 8;
  v12 = *(a2 + 8);
  if (v8 - v9 != *(v13 + 8) - v12)
  {
    return 0;
  }

  if (v8 == v9)
  {
    return 1;
  }

  v14 = 0;
  v15 = v11 >> 3;
  if ((v11 >> 3) <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v11 >> 3;
  }

  do
  {
    v17 = *(v9 + 8 * v14);
    v18 = *(v12 + 8 * v14);
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

    else if (!avas::server::SessionUpdateSummary::operator==(v17, v18))
    {
      return 0;
    }

    ++v14;
  }

  while (v16 != v14);
  return v14 >= v15;
}

uint64_t avas::server::ChangedObject::default_instance(avas::server::ChangedObject *this)
{
  {
    operator new();
  }

  return avas::server::ChangedObject::default_instance(void)::gInstance;
}

double avas::server::ChangedObject::ChangedObject(avas::server::ChangedObject *this)
{
  *this = &unk_1F5999518;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

{
  *this = &unk_1F5999518;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

uint64_t avas::server::ConfigChangeSummary::clearHardwareSystemChange(avas::server::ConfigChangeSummary *this)
{
  result = *(this + 4);
  *(this + 4) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void avas::server::ConfigChangeSummary::addSessionChanges(avas::server::ConfigChangeSummary *this)
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

uint64_t avas::server::CustomPropertyAddress::default_instance(avas::server::CustomPropertyAddress *this)
{
  {
    operator new();
  }

  return avas::server::CustomPropertyAddress::default_instance(void)::gInstance;
}

void *avas::server::CustomPropertyAddress::CustomPropertyAddress(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F59994A8;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F59994A8;
  return this;
}

uint64_t avas::server::CustomPropertyAddress::CustomPropertyAddress(uint64_t this, const avas::server::CustomPropertyAddress *a2)
{
  *this = &unk_1F59994A8;
  *(this + 8) = *(a2 + 2);
  v2 = *(a2 + 12);
  *(this + 20) = *(a2 + 5);
  *(this + 12) = v2;
  return this;
}

{
  *this = &unk_1F59994A8;
  *(this + 8) = *(a2 + 2);
  v2 = *(a2 + 12);
  *(this + 20) = *(a2 + 5);
  *(this + 12) = v2;
  return this;
}

uint64_t avas::server::CustomPropertyAddress::copy_from(uint64_t this, const avas::server::CustomPropertyAddress *a2)
{
  *(this + 8) = *(a2 + 2);
  v2 = *(a2 + 12);
  *(this + 20) = *(a2 + 5);
  *(this + 12) = v2;
  return this;
}

uint64_t avas::server::CustomPropertyAddress::operator=(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 20) = *(a2 + 20);
  *(result + 12) = v2;
  return result;
}

{
  *(result + 8) = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 20) = *(a2 + 20);
  *(result + 12) = v2;
  return result;
}

uint64_t avas::server::CustomPropertyAddress::CustomPropertyAddress(uint64_t result, uint64_t a2)
{
  *result = &unk_1F59994A8;
  *(result + 8) = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 20) = *(a2 + 20);
  *(result + 12) = v2;
  return result;
}

{
  *result = &unk_1F59994A8;
  *(result + 8) = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 20) = *(a2 + 20);
  *(result + 12) = v2;
  return result;
}

uint64_t avas::server::CustomPropertyAddress::move_from(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 20) = *(a2 + 20);
  *(result + 12) = v2;
  return result;
}

uint64_t avas::server::CustomPropertyAddress::clear(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

BOOL avas::server::CustomPropertyAddress::readFrom(_DWORD *a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 >= v2 || (a2[3] & 1) != 0)
  {
    return (v4 & 1) == 0;
  }

  v4 = 0;
  v5 = *a2;
  while (v3 <= 0xFFFFFFFFFFFFFFF5 && v3 + 10 <= v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = (v5 + v3);
    v10 = v3 + 1;
    while (1)
    {
      v3 = v10;
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
      return (v4 & 1) == 0;
    }

    v19 = v8 >> 3;
    if ((v8 >> 3) == 3)
    {
      if (v3 <= 0xFFFFFFFFFFFFFFF5 && v3 + 10 <= v2)
      {
        v31 = 0;
        v32 = 0;
        v22 = 0;
        v33 = (v5 + v3);
        v34 = v3 + 1;
        while (1)
        {
          v3 = v34;
          a2[1] = v34;
          v35 = *v33++;
          v22 |= (v35 & 0x7F) << v31;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          ++v34;
          v12 = v32++ > 8;
          if (v12)
          {
            LODWORD(v22) = 0;
            break;
          }
        }

LABEL_66:
        v42 = 4;
        v43 = a1 + 5;
        goto LABEL_81;
      }

      v44 = 0;
      v45 = 0;
      v22 = 0;
      v46 = *a2;
      if (v3 <= v2)
      {
        v39 = v2;
      }

      else
      {
        v39 = v3;
      }

      while (v39 != v3)
      {
        v47 = v3++;
        v48 = *(v46 + v47);
        a2[1] = v3;
        v22 |= (v48 & 0x7F) << v44;
        if ((v48 & 0x80) == 0)
        {
          goto LABEL_65;
        }

        v44 += 7;
        v12 = v45++ > 8;
        if (v12)
        {
          LODWORD(v22) = 0;
LABEL_65:
          v3 = v47 + 1;
          goto LABEL_66;
        }
      }

      v42 = 4;
      v43 = a1 + 5;
    }

    else if (v19 == 2)
    {
      if (v3 <= 0xFFFFFFFFFFFFFFF5 && v3 + 10 <= v2)
      {
        v26 = 0;
        v27 = 0;
        v22 = 0;
        v28 = (v5 + v3);
        v29 = v3 + 1;
        while (1)
        {
          v3 = v29;
          a2[1] = v29;
          v30 = *v28++;
          v22 |= (v30 & 0x7F) << v26;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          ++v29;
          v12 = v27++ > 8;
          if (v12)
          {
            LODWORD(v22) = 0;
            break;
          }
        }

LABEL_56:
        v42 = 2;
        v43 = a1 + 4;
        goto LABEL_81;
      }

      v36 = 0;
      v37 = 0;
      v22 = 0;
      v38 = *a2;
      if (v3 <= v2)
      {
        v39 = v2;
      }

      else
      {
        v39 = v3;
      }

      while (v39 != v3)
      {
        v40 = v3++;
        v41 = *(v38 + v40);
        a2[1] = v3;
        v22 |= (v41 & 0x7F) << v36;
        if ((v41 & 0x80) == 0)
        {
          goto LABEL_55;
        }

        v36 += 7;
        v12 = v37++ > 8;
        if (v12)
        {
          LODWORD(v22) = 0;
LABEL_55:
          v3 = v40 + 1;
          goto LABEL_56;
        }
      }

      v42 = 2;
      v43 = a1 + 4;
    }

    else
    {
      if (v19 != 1)
      {
        goto LABEL_82;
      }

      if (v3 <= 0xFFFFFFFFFFFFFFF5 && v3 + 10 <= v2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = (v5 + v3);
        v24 = v3 + 1;
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
          v12 = v21++ > 8;
          if (v12)
          {
            LODWORD(v22) = 0;
            break;
          }
        }

LABEL_76:
        v42 = 1;
        v43 = a1 + 3;
        goto LABEL_81;
      }

      v49 = 0;
      v50 = 0;
      v22 = 0;
      v51 = *a2;
      if (v3 <= v2)
      {
        v39 = v2;
      }

      else
      {
        v39 = v3;
      }

      while (v39 != v3)
      {
        v52 = v3++;
        v53 = *(v51 + v52);
        a2[1] = v3;
        v22 |= (v53 & 0x7F) << v49;
        if ((v53 & 0x80) == 0)
        {
          goto LABEL_75;
        }

        v49 += 7;
        v12 = v50++ > 8;
        if (v12)
        {
          LODWORD(v22) = 0;
LABEL_75:
          v3 = v52 + 1;
          goto LABEL_76;
        }
      }

      v42 = 1;
      v43 = a1 + 3;
    }

    LODWORD(v22) = 0;
    *(a2 + 24) = 1;
    v3 = v39;
LABEL_81:
    *v43 = v22;
    a1[2] |= v42;
LABEL_82:
    v4 = *(a2 + 24);
    if (v3 >= v2 || (a2[3] & 1) != 0)
    {
      return (v4 & 1) == 0;
    }
  }

  v13 = 0;
  v14 = 0;
  v8 = 0;
  v15 = *a2;
  if (v3 <= v2)
  {
    v16 = v2;
  }

  else
  {
    v16 = v3;
  }

  while (v16 != v3)
  {
    v17 = v3++;
    v18 = *(v15 + v17);
    a2[1] = v3;
    v8 |= (v18 & 0x7F) << v13;
    if ((v18 & 0x80) == 0)
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
      v3 = v17 + 1;
      goto LABEL_22;
    }
  }

  v4 = 1;
  *(a2 + 24) = 1;
  return (v4 & 1) == 0;
}

_DWORD *avas::server::CustomPropertyAddress::writeTo(_DWORD *this, PB::Writer *a2)
{
  v3 = this;
  v4 = this[2];
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = v3[4];
    this = PB::Writer::writeVarInt(a2);
    if ((v3[2] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v5 = this[3];
  this = PB::Writer::writeVarInt(a2);
  v4 = v3[2];
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v3[5];

  return PB::Writer::writeVarInt(a2);
}

uint64_t avas::server::CustomPropertyAddress::formatText(avas::server::CustomPropertyAddress *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v8 = *(this + 3);
    PB::TextFormatter::format(a2, "selector");
    v5 = *(this + 2);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 4);
  PB::TextFormatter::format(a2, "scope");
  if ((*(this + 2) & 4) != 0)
  {
LABEL_4:
    v6 = *(this + 5);
    PB::TextFormatter::format(a2, "element");
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::CustomPropertyAddress::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 12) == *(a2 + 12) && *(a1 + 20) == *(a2 + 20);
}

uint64_t avas::server::ObjectDescription::default_instance(avas::server::ObjectDescription *this)
{
  {
    operator new();
  }

  return avas::server::ObjectDescription::default_instance(void)::gInstance;
}

double avas::server::ObjectDescription::ObjectDescription(avas::server::ObjectDescription *this)
{
  *this = &unk_1F59994E0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 92) = 0u;
  return result;
}

{
  *this = &unk_1F59994E0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 92) = 0u;
  return result;
}

avas::server::ObjectDescription *avas::server::ObjectDescription::ObjectDescription(avas::server::ObjectDescription *this, const avas::server::ObjectDescription *a2)
{
  *this = &unk_1F59994E0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  avas::server::ObjectDescription::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F59994E0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  avas::server::ObjectDescription::copy_from(this, a2);
  return this;
}

void avas::server::ObjectDescription::copy_from(avas::server::ObjectDescription *this, const avas::server::ObjectDescription *a2)
{
  v4 = *(a2 + 2);
  if (v4)
  {
    v5 = avas::server::ObjectDescription::mutableDriver(this);
    avas::server::Driver::copy_from(v5, v4);
  }

  v6 = *(a2 + 3);
  if (v6)
  {
    v7 = avas::server::ObjectDescription::mutableBox(this);
    avas::server::Box::copy_from(v7, v6);
  }

  v8 = *(a2 + 4);
  if (v8)
  {
    v9 = avas::server::ObjectDescription::mutableClock(this);
    avas::server::Clock::copy_from(v9, v8);
  }

  v10 = *(a2 + 5);
  if (v10)
  {
    v11 = avas::server::ObjectDescription::mutableDevice(this);
    avas::server::Device_Clock::copy_from(v11, v10);
  }

  v12 = *(a2 + 6);
  if (v12)
  {
    v13 = avas::server::ObjectDescription::mutableHwPort(this);
    avas::server::Port::copy_from(v13, v12);
  }

  v14 = *(a2 + 7);
  if (v14)
  {
    v15 = avas::server::ObjectDescription::mutableHwStream(this);
    avas::server::HWStream::copy_from(v15, v14);
  }

  v16 = *(a2 + 8);
  if (v16)
  {
    v17 = avas::server::ObjectDescription::mutableControlAndValue(this);
    avas::server::ControlAndValue::copy_from(v17, v16);
  }

  v18 = *(a2 + 9);
  if (v18)
  {
    v19 = avas::server::ObjectDescription::mutableController(this);
    avas::server::IOControllerState::copy_from(v19, v18);
  }

  v20 = *(a2 + 10);
  if (v20)
  {
    v21 = avas::server::ObjectDescription::mutableIoStream(this);
    avas::server::IOStreamState::copy_from(v21, v20);
  }

  v22 = *(a2 + 11);
  if (v22)
  {
    v23 = avas::server::ObjectDescription::mutableVirtualPort(this);
    avas::server::VirtualPort::copy_from(v23, v22);
  }

  *(this + 2) = *(a2 + 2);
  v24 = *(a2 + 12);
  *(this + 26) = *(a2 + 26);
  *(this + 12) = v24;
}

uint64_t avas::server::ObjectDescription::driver(avas::server::ObjectDescription *this)
{
  result = *(this + 2);
  if (!result)
  {
    return avas::server::Driver::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ObjectDescription::mutableDriver(avas::server::ObjectDescription *this)
{
  if (!*(this + 2))
  {
    operator new();
  }

  return *(this + 2);
}

uint64_t avas::server::ObjectDescription::box(avas::server::ObjectDescription *this)
{
  result = *(this + 3);
  if (!result)
  {
    return avas::server::Box::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ObjectDescription::mutableBox(avas::server::ObjectDescription *this)
{
  if (!*(this + 3))
  {
    operator new();
  }

  return *(this + 3);
}

uint64_t avas::server::ObjectDescription::clock(avas::server::ObjectDescription *this)
{
  result = *(this + 4);
  if (!result)
  {
    return avas::server::Clock::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ObjectDescription::mutableClock(avas::server::ObjectDescription *this)
{
  if (!*(this + 4))
  {
    operator new();
  }

  return *(this + 4);
}

uint64_t avas::server::ObjectDescription::device(avas::server::ObjectDescription *this)
{
  result = *(this + 5);
  if (!result)
  {
    return avas::server::Device_Clock::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ObjectDescription::mutableDevice(avas::server::ObjectDescription *this)
{
  if (!*(this + 5))
  {
    operator new();
  }

  return *(this + 5);
}

uint64_t avas::server::ObjectDescription::hwPort(avas::server::ObjectDescription *this)
{
  result = *(this + 6);
  if (!result)
  {
    return avas::server::Port::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ObjectDescription::mutableHwPort(avas::server::ObjectDescription *this)
{
  if (!*(this + 6))
  {
    operator new();
  }

  return *(this + 6);
}

uint64_t avas::server::ObjectDescription::hwStream(avas::server::ObjectDescription *this)
{
  result = *(this + 7);
  if (!result)
  {
    return avas::server::HWStream::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ObjectDescription::mutableHwStream(avas::server::ObjectDescription *this)
{
  if (!*(this + 7))
  {
    operator new();
  }

  return *(this + 7);
}

uint64_t avas::server::ObjectDescription::controlAndValue(avas::server::ObjectDescription *this)
{
  result = *(this + 8);
  if (!result)
  {
    return avas::server::ControlAndValue::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ObjectDescription::mutableControlAndValue(avas::server::ObjectDescription *this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return *(this + 8);
}

uint64_t avas::server::ObjectDescription::controller(avas::server::ObjectDescription *this)
{
  result = *(this + 9);
  if (!result)
  {
    return avas::server::IOControllerState::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ObjectDescription::mutableController(avas::server::ObjectDescription *this)
{
  if (!*(this + 9))
  {
    operator new();
  }

  return *(this + 9);
}

uint64_t avas::server::ObjectDescription::ioStream(avas::server::ObjectDescription *this)
{
  result = *(this + 10);
  if (!result)
  {
    return avas::server::IOStreamState::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ObjectDescription::mutableIoStream(avas::server::ObjectDescription *this)
{
  if (!*(this + 10))
  {
    operator new();
  }

  return *(this + 10);
}

uint64_t avas::server::ObjectDescription::virtualPort(avas::server::ObjectDescription *this)
{
  result = *(this + 11);
  if (!result)
  {
    return avas::server::VirtualPort::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ObjectDescription::mutableVirtualPort(avas::server::ObjectDescription *this)
{
  if (!*(this + 11))
  {
    operator new();
  }

  return *(this + 11);
}

uint64_t avas::server::ObjectDescription::ObjectDescription(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F59994E0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  avas::server::ObjectDescription::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F59994E0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  avas::server::ObjectDescription::move_from(a1, a2);
  return a1;
}

uint64_t avas::server::ObjectDescription::move_from(uint64_t result, uint64_t a2)
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
  *(result + 8) = *(a2 + 8);
  v12 = *(a2 + 96);
  *(result + 104) = *(a2 + 104);
  *(result + 96) = v12;
  return result;
}

uint64_t avas::server::ObjectDescription::clear(avas::server::ObjectDescription *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 5);
  *(this + 5) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 9);
  *(this + 9) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 10);
  *(this + 10) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  result = *(this + 11);
  *(this + 11) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 2) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  return result;
}

uint64_t avas::server::ObjectDescription::readFrom(uint64_t a1, uint64_t *a2)
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
      if ((v8 >> 3) > 6)
      {
        if (v20 > 39)
        {
          switch(v20)
          {
            case '(':
              operator new();
            case ')':
              operator new();
            case '*':
              operator new();
          }
        }

        else
        {
          switch(v20)
          {
            case 7:
              operator new();
            case 8:
              operator new();
            case 9:
              operator new();
          }
        }

        goto LABEL_61;
      }

      if (v20 > 3)
      {
        switch(v20)
        {
          case 4:
            operator new();
          case 5:
            operator new();
          case 6:
            operator new();
        }

        goto LABEL_61;
      }

      switch(v20)
      {
        case 1:
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
                goto LABEL_81;
              }

              v33 += 7;
              --v36;
              ++v37;
              ++v38;
              v35 = v34++ >= 9;
              if (v35)
              {
LABEL_71:
                v23 = 0;
                goto LABEL_81;
              }
            }

            v23 = 0;
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
                goto LABEL_71;
              }
            }
          }

LABEL_81:
          *(a1 + 96) = v23;
          v46 = *(a1 + 8) | 1;
          break;
        case 2:
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
                goto LABEL_83;
              }

              v40 += 7;
              --v42;
              ++v43;
              ++v44;
              v35 = v41++ >= 9;
              if (v35)
              {
LABEL_79:
                LODWORD(v29) = 0;
                goto LABEL_83;
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
                goto LABEL_79;
              }
            }
          }

LABEL_83:
          *(a1 + 104) = v29;
          v46 = *(a1 + 8) | 2;
          break;
        case 3:
          operator new();
        default:
          goto LABEL_61;
      }

      *(a1 + 8) = v46;
LABEL_61:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

uint64_t avas::server::ObjectDescription::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 96);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 104);
    this = PB::Writer::writeVarInt(a2);
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 24);
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(v3 + 32);
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(v3 + 40);
  if (v10)
  {
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = *(v3 + 48);
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = *(v3 + 56);
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  v13 = *(v3 + 64);
  if (v13)
  {
    this = PB::Writer::writeSubmessage(a2, v13);
  }

  v14 = *(v3 + 72);
  if (v14)
  {
    this = PB::Writer::writeSubmessage(a2, v14);
  }

  v15 = *(v3 + 80);
  if (v15)
  {
    this = PB::Writer::writeSubmessage(a2, v15);
  }

  v16 = *(v3 + 88);
  if (v16)
  {

    return PB::Writer::writeSubmessage(a2, v16);
  }

  return this;
}

uint64_t avas::server::ObjectDescription::formatText(avas::server::ObjectDescription *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 12);
    PB::TextFormatter::format(a2, "objectToken");
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 26);
    PB::TextFormatter::format(a2, "classTypeID");
  }

  v8 = *(this + 2);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "driver");
  }

  v9 = *(this + 3);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "box");
  }

  v10 = *(this + 4);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "clock");
  }

  v11 = *(this + 5);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "device");
  }

  v12 = *(this + 6);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "hwPort");
  }

  v13 = *(this + 7);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "hwStream");
  }

  v14 = *(this + 8);
  if (v14)
  {
    (*(*v14 + 32))(v14, a2, "controlAndValue");
  }

  v15 = *(this + 9);
  if (v15)
  {
    (*(*v15 + 32))(v15, a2, "controller");
  }

  v16 = *(this + 10);
  if (v16)
  {
    (*(*v16 + 32))(v16, a2, "ioStream");
  }

  v17 = *(this + 11);
  if (v17)
  {
    (*(*v17 + 32))(v17, a2, "virtualPort");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::ObjectDescription::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v6 | v7)
    {
      return 0;
    }
  }

  else if (!avas::server::Driver::operator==(v6, v7))
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9 && v10)
  {
    if (!avas::server::Box::operator==(v9, v10))
    {
      return 0;
    }
  }

  else if (v9 | v10)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  if (v11 && v12)
  {
    if (!avas::server::Clock::operator==(v11, v12))
    {
      return 0;
    }
  }

  else if (v11 | v12)
  {
    return 0;
  }

  v13 = *(a1 + 40);
  v14 = *(a2 + 40);
  if (v13 && v14)
  {
    if (!avas::server::Device_Clock::operator==(v13, v14))
    {
      return 0;
    }
  }

  else if (v13 | v14)
  {
    return 0;
  }

  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  if (v15 && v16)
  {
    if (!avas::server::Port::operator==(v15, v16))
    {
      return 0;
    }
  }

  else if (v15 | v16)
  {
    return 0;
  }

  v17 = *(a1 + 56);
  v18 = *(a2 + 56);
  if (v17 && v18)
  {
    if (!avas::server::HWStream::operator==(v17, v18))
    {
      return 0;
    }
  }

  else if (v17 | v18)
  {
    return 0;
  }

  v19 = *(a1 + 64);
  v20 = *(a2 + 64);
  if (v19 && v20)
  {
    if (!avas::server::ControlAndValue::operator==(v19, v20))
    {
      return 0;
    }
  }

  else if (v19 | v20)
  {
    return 0;
  }

  v21 = *(a1 + 72);
  v22 = *(a2 + 72);
  if (v21 && v22)
  {
    if (!avas::server::IOControllerState::operator==(v21, v22))
    {
      return 0;
    }
  }

  else if (v21 | v22)
  {
    return 0;
  }

  v23 = *(a1 + 80);
  v24 = *(a2 + 80);
  if (v23 && v24)
  {
    if (avas::server::IOStreamState::operator==(v23, v24))
    {
      goto LABEL_56;
    }

    return 0;
  }

  if (v23 | v24)
  {
    return 0;
  }

LABEL_56:
  v25 = *(a1 + 88);
  v26 = *(a2 + 88);
  result = (v25 | v26) == 0;
  if (v25 && v26)
  {
    v27 = *(a1 + 88);

    return avas::server::VirtualPort::operator==(v27, v26);
  }

  return result;
}

uint64_t avas::server::ObjectDescription::clearDriver(avas::server::ObjectDescription *this)
{
  result = *(this + 2);
  *(this + 2) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::ObjectDescription::clearBox(avas::server::ObjectDescription *this)
{
  result = *(this + 3);
  *(this + 3) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::ObjectDescription::clearClock(avas::server::ObjectDescription *this)
{
  result = *(this + 4);
  *(this + 4) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::ObjectDescription::clearDevice(avas::server::ObjectDescription *this)
{
  result = *(this + 5);
  *(this + 5) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::ObjectDescription::clearHwPort(avas::server::ObjectDescription *this)
{
  result = *(this + 6);
  *(this + 6) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::ObjectDescription::clearHwStream(avas::server::ObjectDescription *this)
{
  result = *(this + 7);
  *(this + 7) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::ObjectDescription::clearControlAndValue(avas::server::ObjectDescription *this)
{
  result = *(this + 8);
  *(this + 8) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::IOControllerState::default_instance(avas::server::IOControllerState *this)
{
  {
    operator new();
  }

  return avas::server::IOControllerState::default_instance(void)::gInstance;
}

double avas::server::IOControllerState::IOControllerState(avas::server::IOControllerState *this)
{
  *this = &unk_1F59995C0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  return result;
}

{
  *this = &unk_1F59995C0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  return result;
}

uint64_t avas::server::ObjectDescription::clearController(avas::server::ObjectDescription *this)
{
  result = *(this + 9);
  *(this + 9) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::ObjectDescription::clearIoStream(avas::server::ObjectDescription *this)
{
  result = *(this + 10);
  *(this + 10) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::VirtualPort::default_instance(avas::server::VirtualPort *this)
{
  {
    operator new();
  }

  return avas::server::VirtualPort::default_instance(void)::gInstance;
}

double avas::server::VirtualPort::VirtualPort(avas::server::VirtualPort *this)
{
  *this = &unk_1F5999550;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 24) = 0;
  return result;
}

{
  *this = &unk_1F5999550;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 24) = 0;
  return result;
}

uint64_t avas::server::ObjectDescription::clearVirtualPort(avas::server::ObjectDescription *this)
{
  result = *(this + 11);
  *(this + 11) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

avas::server::ChangedObject *avas::server::ChangedObject::ChangedObject(avas::server::ChangedObject *this, caulk::xstring **a2)
{
  *this = &unk_1F5999518;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  avas::server::ChangedObject::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999518;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  avas::server::ChangedObject::copy_from(this, a2);
  return this;
}

void *avas::server::ChangedObject::copy_from(caulk::xstring **this, caulk::xstring **a2)
{
  v4 = a2[16];
  if (v4)
  {
    v5 = avas::server::ChangedObject::mutableObjectDescription(this);
    avas::server::ObjectDescription::copy_from(v5, v4);
  }

  if (this != a2)
  {
    std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(this + 1, a2[1], a2[2], (a2[2] - a2[1]) >> 4);
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 4);
  if (a2[4] != a2[5])
  {
    operator new();
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 7);
  if (a2[7] != a2[8])
  {
    operator new();
  }

  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 10);
  if (a2[10] != a2[11])
  {
    operator new();
  }

  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 13);
  if (a2[13] != a2[14])
  {
    operator new();
  }

  return result;
}

uint64_t avas::server::ChangedObject::objectDescription(avas::server::ChangedObject *this)
{
  result = *(this + 16);
  if (!result)
  {
    return avas::server::ObjectDescription::default_instance(0);
  }

  return result;
}

uint64_t avas::server::ChangedObject::mutableObjectDescription(avas::server::ChangedObject *this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return *(this + 16);
}

uint64_t avas::server::ChangedObject::ChangedObject(uint64_t a1, void *a2)
{
  *a1 = &unk_1F5999518;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  avas::server::ChangedObject::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999518;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  avas::server::ChangedObject::move_from(a1, a2);
  return a1;
}

void *avas::server::ChangedObject::move_from(void *result, void *a2)
{
  v2 = result[16];
  result[16] = a2[16];
  a2[16] = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  v5 = result[3];
  result[3] = a2[3];
  a2[3] = v5;
  v6 = result[4];
  result[4] = a2[4];
  a2[4] = v6;
  v7 = result[5];
  result[5] = a2[5];
  a2[5] = v7;
  v8 = result[6];
  result[6] = a2[6];
  a2[6] = v8;
  v9 = result[7];
  result[7] = a2[7];
  a2[7] = v9;
  v10 = result[8];
  result[8] = a2[8];
  a2[8] = v10;
  v11 = result[9];
  result[9] = a2[9];
  a2[9] = v11;
  v12 = result[10];
  result[10] = a2[10];
  a2[10] = v12;
  v13 = result[11];
  result[11] = a2[11];
  a2[11] = v13;
  v14 = result[12];
  result[12] = a2[12];
  a2[12] = v14;
  v15 = result[13];
  result[13] = a2[13];
  a2[13] = v15;
  v16 = result[14];
  result[14] = a2[14];
  a2[14] = v16;
  v17 = result[15];
  result[15] = a2[15];
  a2[15] = v17;
  return result;
}

void *avas::server::ChangedObject::clear(avas::server::ChangedObject *this)
{
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = *(this + 1);
  v3 = (this + 8);
  std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100](v3, v4);
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](v3 + 3);
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](v3 + 6);
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](v3 + 9);

  return std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](v3 + 12);
}

uint64_t avas::server::ChangedObject::isInitialized(avas::server::ChangedObject *this)
{
  v1 = *(this + 16);
  if (!v1)
  {
    return 0;
  }

  if ((~*(v1 + 8) & 3) != 0)
  {
    return 0;
  }

  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v2 != v3)
  {
    while ((~*(*v2 + 8) & 7) == 0)
    {
      v2 += 8;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v4 = *(this + 7);
  v5 = *(this + 8);
  if (v4 != v5)
  {
    while ((~*(*v4 + 8) & 3) == 0)
    {
      v4 += 8;
      if (v4 == v5)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v6 = *(this + 10);
  v7 = *(this + 11);
  if (v6 != v7)
  {
    while ((~*(*v6 + 8) & 3) == 0)
    {
      v6 += 8;
      if (v6 == v7)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

LABEL_12:
  v8 = *(this + 13);
  v9 = *(this + 14);
  if (v8 == v9)
  {
    return 1;
  }

  v10 = v8 + 8;
  do
  {
    result = avas::server::ChangedObject::isInitialized(*(v10 - 8));
    if (result)
    {
      v12 = v10 == v9;
    }

    else
    {
      v12 = 1;
    }

    v10 += 8;
  }

  while (!v12);
  return result;
}

uint64_t avas::server::ChangedObject::readFrom(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 24);
  if (v2 < v3 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 ^ 1) & 1;
          }

          v22 = *v20;
          a2[1] = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v17;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
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
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        switch(v23)
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
        switch(v23)
        {
          case 1:
            operator new();
          case 2:
            v24 = *(a1 + 16);
            if (v24 >= *(a1 + 24))
            {
              v25 = std::vector<caulk::xstring>::__emplace_back_slow_path<>(a1 + 8);
            }

            else
            {
              *v24 = 0;
              v24[1] = 0;
              v25 = (v24 + 2);
            }

            *(a1 + 16) = v25;
            PB::Reader::read();
            caulk::xstring::assign();
            break;
          case 3:
            operator new();
        }
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

void avas::server::ChangedObject::writeTo(avas::server::ChangedObject *this, PB::Writer *a2)
{
  v4 = *(this + 16);
  if (v4)
  {
    PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    caulk::xstring::as_std_string(v5, &__p);
    PB::Writer::write();
    if (v20 < 0)
    {
      operator delete(__p);
    }

    v5 = (v5 + 16);
  }

  v7 = *(this + 4);
  v8 = *(this + 5);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(this + 7);
  v11 = *(this + 8);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::Writer::writeSubmessage(a2, v12);
  }

  v13 = *(this + 10);
  v14 = *(this + 11);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::Writer::writeSubmessage(a2, v15);
  }

  v17 = *(this + 13);
  v16 = *(this + 14);
  while (v17 != v16)
  {
    v18 = *v17++;
    PB::Writer::writeSubmessage(a2, v18);
  }
}

void sub_1DE8C7984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::ChangedObject::formatText(avas::server::ChangedObject *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "objectDescription");
  }

  v6 = *(this + 1);
  for (i = *(this + 2); v6 != i; v6 = (v6 + 16))
  {
    caulk::xstring::as_std_string(v6, &__p);
    PB::TextFormatter::format();
    if (v22 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "changedCustomProperties");
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(*v13 + 32))(v13, a2, "createdChildren");
  }

  v14 = *(this + 10);
  v15 = *(this + 11);
  while (v14 != v15)
  {
    v16 = *v14++;
    (*(*v16 + 32))(v16, a2, "destroyedChildren");
  }

  v17 = *(this + 13);
  v18 = *(this + 14);
  while (v17 != v18)
  {
    v19 = *v17++;
    (*(*v19 + 32))(v19, a2, "changedChildren");
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8C7BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::ChangedObject::operator==(void *a1, void *a2)
{
  v4 = a1[16];
  v5 = a2[16];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v4 | v5)
    {
      return 0;
    }
  }

  else if (!avas::server::ObjectDescription::operator==(v4, v5))
  {
    return 0;
  }

  v8 = a1[1];
  v7 = a1[2];
  if (v7 - v8 != a2[2] - a2[1])
  {
    return 0;
  }

  if (v7 != v8)
  {
    v9 = 0;
    if (((v7 - v8) >> 4) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = (v7 - v8) >> 4;
    }

    while (!caulk::xstring::compare((a1[1] + v9), (a2[1] + v9)))
    {
      v9 += 16;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

LABEL_16:
  v12 = a1[4];
  v11 = a1[5];
  v13 = a2[4];
  if (v11 - v12 != a2[5] - v13)
  {
    return 0;
  }

  if (v11 != v12)
  {
    if ((v11 - v12) <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11 - v12;
    }

    do
    {
      v15 = *v12;
      v16 = *v13;
      if (*v12)
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        if (v15 | v16)
        {
          return 0;
        }
      }

      else if (!avas::server::CustomPropertyAddress::operator==(v15, v16))
      {
        return 0;
      }

      ++v12;
      ++v13;
      --v14;
    }

    while (v14);
  }

  v19 = a1[7];
  v18 = a1[8];
  if (v18 - v19 != a2[8] - a2[7])
  {
    return 0;
  }

  if (v18 != v19)
  {
    v20 = 0;
    if (((v18 - v19) >> 3) <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = (v18 - v19) >> 3;
    }

    do
    {
      v22 = *(a1[7] + 8 * v20);
      v23 = *(a2[7] + 8 * v20);
      if (v22)
      {
        v24 = v23 == 0;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        if (v22 | v23)
        {
          return 0;
        }
      }

      else if (!avas::server::ObjectDescription::operator==(v22, v23))
      {
        return 0;
      }

      ++v20;
    }

    while (v21 != v20);
  }

  v26 = a1[10];
  v25 = a1[11];
  if (v25 - v26 != a2[11] - a2[10])
  {
    return 0;
  }

  if (v25 != v26)
  {
    v27 = 0;
    if (((v25 - v26) >> 3) <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v25 - v26) >> 3;
    }

    do
    {
      v29 = *(a1[10] + 8 * v27);
      v30 = *(a2[10] + 8 * v27);
      if (v29)
      {
        v31 = v30 == 0;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        if (v29 | v30)
        {
          return 0;
        }
      }

      else if (!avas::server::ObjectDescription::operator==(v29, v30))
      {
        return 0;
      }

      ++v27;
    }

    while (v28 != v27);
  }

  v33 = a1[13];
  v32 = a1[14];
  v34 = v32 - v33;
  if (v32 - v33 != a2[14] - a2[13])
  {
    return 0;
  }

  if (v32 == v33)
  {
    return 1;
  }

  v35 = 0;
  v36 = v34 >> 3;
  if ((v34 >> 3) <= 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = v34 >> 3;
  }

  do
  {
    v38 = *(a2[13] + 8 * v35);
    if (*(a1[13] + 8 * v35))
    {
      if (!v38)
      {
        return 0;
      }

      result = avas::server::ChangedObject::operator==();
      if (!result)
      {
        return result;
      }
    }

    else if (v38)
    {
      return 0;
    }

    ++v35;
  }

  while (v37 != v35);
  return v35 >= v36;
}

uint64_t avas::server::ChangedObject::clearObjectDescription(avas::server::ChangedObject *this)
{
  result = *(this + 16);
  *(this + 16) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void avas::server::ChangedObject::addChangedCustomProperties(avas::server::ChangedObject *this)
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

void avas::server::ChangedObject::addCreatedChildren(avas::server::ChangedObject *this)
{
  v3 = *(this + 8);
  v2 = *(this + 9);
  if (v3 >= v2)
  {
    v5 = this + 56;
    v6 = *(this + 7);
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

    v18[4] = this + 56;
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
    v16 = *(this + 7);
    *(this + 7) = v15;
    *(this + 8) = v4;
    v17 = *(this + 9);
    *(this + 9) = 0;
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

  *(this + 8) = v4;
  operator new();
}

void avas::server::ChangedObject::addDestroyedChildren(avas::server::ChangedObject *this)
{
  v3 = *(this + 11);
  v2 = *(this + 12);
  if (v3 >= v2)
  {
    v5 = this + 80;
    v6 = *(this + 10);
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

    v18[4] = this + 80;
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
    v16 = *(this + 10);
    *(this + 10) = v15;
    *(this + 11) = v4;
    v17 = *(this + 12);
    *(this + 12) = 0;
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

  *(this + 11) = v4;
  operator new();
}

void avas::server::ChangedObject::addChangedChildren(avas::server::ChangedObject *this)
{
  v3 = *(this + 14);
  v2 = *(this + 15);
  if (v3 >= v2)
  {
    v5 = this + 104;
    v6 = *(this + 13);
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

    v18[4] = this + 104;
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
    v16 = *(this + 13);
    *(this + 13) = v15;
    *(this + 14) = v4;
    v17 = *(this + 15);
    *(this + 15) = 0;
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

  *(this + 14) = v4;
  operator new();
}

avas::server::VirtualPort *avas::server::VirtualPort::VirtualPort(avas::server::VirtualPort *this, const avas::server::VirtualPort *a2)
{
  *this = &unk_1F5999550;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  avas::server::VirtualPort::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999550;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  avas::server::VirtualPort::copy_from(this, a2);
  return this;
}

uint64_t avas::server::VirtualPort::copy_from(avas::server::VirtualPort *this, const avas::server::VirtualPort *a2)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = avas::server::VirtualPort::mutableHwPortInvariants(this);
    avas::server::PortInvariants::copy_from(v5, v4);
  }

  v6 = *(a2 + 5);
  if (v6)
  {
    active = avas::server::VirtualPort::mutableActiveMicrophoneConfiguration(this);
    avas::server::MicrophoneConfiguration::copy_from(active, v6);
  }

  result = caulk::xstring::assign((this + 16), (a2 + 16));
  *(this + 2) = *(a2 + 2);
  *(this + 24) = *(a2 + 24);
  return result;
}

uint64_t avas::server::VirtualPort::hwPortInvariants(avas::server::VirtualPort *this)
{
  result = *(this + 4);
  if (!result)
  {
    return avas::server::PortInvariants::default_instance(0);
  }

  return result;
}

uint64_t avas::server::VirtualPort::mutableHwPortInvariants(avas::server::VirtualPort *this)
{
  if (!*(this + 4))
  {
    operator new();
  }

  return *(this + 4);
}

uint64_t avas::server::VirtualPort::activeMicrophoneConfiguration(avas::server::VirtualPort *this)
{
  result = *(this + 5);
  if (!result)
  {
    return avas::server::MicrophoneConfiguration::default_instance(0);
  }

  return result;
}

uint64_t avas::server::VirtualPort::mutableActiveMicrophoneConfiguration(avas::server::VirtualPort *this)
{
  if (!*(this + 5))
  {
    operator new();
  }

  return *(this + 5);
}

uint64_t avas::server::VirtualPort::VirtualPort(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999550;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  avas::server::VirtualPort::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999550;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  avas::server::VirtualPort::move_from(a1, a2);
  return a1;
}

uint64_t avas::server::VirtualPort::move_from(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v7[0] = 0;
  v7[1] = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  result = caulk::xstring::clear(v7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 48) = *(a2 + 48);
  return result;
}

uint64_t avas::server::VirtualPort::clear(avas::server::VirtualPort *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  result = caulk::xstring::clear((this + 16));
  *(this + 2) = 0;
  *(this + 24) = 0;
  return result;
}

uint64_t avas::server::VirtualPort::readFrom(uint64_t a1, uint64_t *a2)
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
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 != 2)
        {
          goto LABEL_40;
        }

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

        *(a1 + 48) = v24;
        v27 = *(a1 + 8) | 1;
      }

      else
      {
        if (v22 != 3)
        {
          if (v22 == 4)
          {
            operator new();
          }

          if (v22 == 5)
          {
            PB::Reader::read();
            caulk::xstring::assign();
            *(a1 + 8) |= 4u;
          }

          goto LABEL_40;
        }

        if (v13 >= v2)
        {
          v26 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v25 = *(v7 + v13);
          a2[1] = v13 + 1;
          v26 = v25 != 0;
        }

        *(a1 + 49) = v26;
        v27 = *(a1 + 8) | 2;
      }

      *(a1 + 8) = v27;
LABEL_40:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

void sub_1DE8C8CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::VirtualPort::writeTo(avas::server::VirtualPort *this, PB::Writer *a2)
{
  v4 = *(this + 4);
  if (v4)
  {
    PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 48);
    PB::Writer::write(a2);
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 49);
    PB::Writer::write(a2);
  }

  v8 = *(this + 5);
  if (v8)
  {
    PB::Writer::writeSubmessage(a2, v8);
  }

  if ((*(this + 8) & 4) != 0)
  {
    caulk::xstring::as_std_string((this + 16), &__p);
    PB::Writer::write();
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1DE8C8D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::VirtualPort::formatText(avas::server::VirtualPort *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "hwPortInvariants");
  }

  v6 = *(this + 2);
  if (v6)
  {
    v7 = *(this + 48);
    PB::TextFormatter::format(a2, "routable");
    v6 = *(this + 2);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(this + 49);
    PB::TextFormatter::format(a2, "canSetRoutable");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "activeMicrophoneConfiguration");
  }

  if ((*(this + 8) & 4) != 0)
  {
    caulk::xstring::as_std_string((this + 16), &__p);
    PB::TextFormatter::format();
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8C8ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::VirtualPort::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
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

  else if (!avas::server::PortInvariants::operator==(v5, v6))
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8 && v9)
  {
    if (avas::server::MicrophoneConfiguration::operator==(v8, v9))
    {
      return caulk::xstring::compare((a1 + 16), (a2 + 16)) == 0;
    }

    return 0;
  }

  if (v8 | v9)
  {
    return 0;
  }

  return caulk::xstring::compare((a1 + 16), (a2 + 16)) == 0;
}

uint64_t avas::server::VirtualPort::clearHwPortInvariants(avas::server::VirtualPort *this)
{
  result = *(this + 4);
  *(this + 4) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::MicrophoneConfiguration::default_instance(avas::server::MicrophoneConfiguration *this)
{
  {
    operator new();
  }

  return avas::server::MicrophoneConfiguration::default_instance(void)::gInstance;
}

double avas::server::MicrophoneConfiguration::MicrophoneConfiguration(avas::server::MicrophoneConfiguration *this)
{
  *this = &unk_1F5999588;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 57) = 0u;
  return result;
}

{
  *this = &unk_1F5999588;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 57) = 0u;
  return result;
}

uint64_t avas::server::VirtualPort::clearActiveMicrophoneConfiguration(avas::server::VirtualPort *this)
{
  result = *(this + 5);
  *(this + 5) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

avas::server::MicrophoneConfiguration *avas::server::MicrophoneConfiguration::MicrophoneConfiguration(avas::server::MicrophoneConfiguration *this, const avas::server::MicrophoneConfiguration *a2)
{
  *this = &unk_1F5999588;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  avas::server::MicrophoneConfiguration::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999588;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  avas::server::MicrophoneConfiguration::copy_from(this, a2);
  return this;
}

__n128 avas::server::MicrophoneConfiguration::copy_from(avas::server::MicrophoneConfiguration *this, const avas::server::MicrophoneConfiguration *a2)
{
  caulk::xstring::assign((this + 40), (a2 + 40));
  if (this != a2)
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 2, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 2);
  }

  *(this + 2) = *(a2 + 2);
  result = *(a2 + 56);
  *(this + 72) = *(a2 + 72);
  *(this + 56) = result;
  return result;
}

uint64_t avas::server::MicrophoneConfiguration::MicrophoneConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999588;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  avas::server::MicrophoneConfiguration::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999588;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  avas::server::MicrophoneConfiguration::move_from(a1, a2);
  return a1;
}

__n128 avas::server::MicrophoneConfiguration::move_from(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(v8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = result;
  return result;
}

uint64_t avas::server::MicrophoneConfiguration::clear(avas::server::MicrophoneConfiguration *this)
{
  result = caulk::xstring::clear((this + 40));
  *(this + 3) = *(this + 2);
  *(this + 2) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0;
  return result;
}

uint64_t avas::server::MicrophoneConfiguration::readFrom(uint64_t a1, uint64_t *a2)
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
        v14 = 0;
        v15 = 0;
        v10 = 0;
        if (v3 <= v2)
        {
          v16 = v2;
        }

        else
        {
          v16 = v3;
        }

        while (v16 != v3)
        {
          v17 = v3++;
          v18 = *(v7 + v17);
          a2[1] = v3;
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
          v34 = v15++ > 8;
          if (v34)
          {
            v10 = 0;
LABEL_21:
            v3 = v17 + 1;
            goto LABEL_22;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_188;
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
        v34 = v9++ > 8;
        if (v34)
        {
          v10 = 0;
          break;
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_188;
      }

      v19 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        switch(v19)
        {
          case 1:
            if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
            {
              v75 = 0;
              v76 = 0;
              v59 = 0;
              if (v2 <= v3)
              {
                v53 = v3;
              }

              else
              {
                v53 = v2;
              }

              while (v53 != v3)
              {
                v77 = v3++;
                v78 = *(v7 + v77);
                a2[1] = v3;
                v59 |= (v78 & 0x7F) << v75;
                if ((v78 & 0x80) == 0)
                {
                  goto LABEL_111;
                }

                v75 += 7;
                v79 = v76++ >= 9;
                if (v79)
                {
                  LODWORD(v59) = 0;
LABEL_111:
                  v53 = v77 + 1;
                  goto LABEL_153;
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
              v60 = (v7 + v3);
              v61 = v3 + 1;
              while (1)
              {
                v53 = v61;
                a2[1] = v61;
                v62 = *v60++;
                v59 |= (v62 & 0x7F) << v57;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                ++v61;
                v34 = v58++ > 8;
                if (v34)
                {
                  LODWORD(v59) = 0;
                  break;
                }
              }
            }

LABEL_153:
            *(a1 + 56) = v59;
            v101 = *(a1 + 8) | 1;
            break;
          case 2:
            PB::Reader::read();
            caulk::xstring::assign();
            *(a1 + 8) |= 2u;
            v3 = a2[1];
            v2 = a2[2];
            goto LABEL_161;
          case 3:
            if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
            {
              v88 = 0;
              v89 = 0;
              v50 = 0;
              if (v2 <= v3)
              {
                v53 = v3;
              }

              else
              {
                v53 = v2;
              }

              while (v53 != v3)
              {
                v90 = v3++;
                v91 = *(v7 + v90);
                a2[1] = v3;
                v50 |= (v91 & 0x7F) << v88;
                if ((v91 & 0x80) == 0)
                {
                  goto LABEL_138;
                }

                v88 += 7;
                v79 = v89++ >= 9;
                if (v79)
                {
                  LODWORD(v50) = 0;
LABEL_138:
                  v53 = v90 + 1;
                  goto LABEL_159;
                }
              }

              LODWORD(v50) = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v48 = 0;
              v49 = 0;
              v50 = 0;
              v51 = (v7 + v3);
              v52 = v3 + 1;
              while (1)
              {
                v53 = v52;
                a2[1] = v52;
                v54 = *v51++;
                v50 |= (v54 & 0x7F) << v48;
                if ((v54 & 0x80) == 0)
                {
                  break;
                }

                v48 += 7;
                ++v52;
                v34 = v49++ > 8;
                if (v34)
                {
                  LODWORD(v50) = 0;
                  break;
                }
              }
            }

LABEL_159:
            *(a1 + 60) = v50;
            v101 = *(a1 + 8) | 4;
            break;
          default:
            goto LABEL_161;
        }

        goto LABEL_160;
      }

      if (v19 > 5)
      {
        break;
      }

      if (v19 == 4)
      {
        if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
        {
          v80 = 0;
          v81 = 0;
          v65 = 0;
          if (v2 <= v3)
          {
            v53 = v3;
          }

          else
          {
            v53 = v2;
          }

          while (v53 != v3)
          {
            v82 = v3++;
            v83 = *(v7 + v82);
            a2[1] = v3;
            v65 |= (v83 & 0x7F) << v80;
            if ((v83 & 0x80) == 0)
            {
              goto LABEL_120;
            }

            v80 += 7;
            v79 = v81++ >= 9;
            if (v79)
            {
              LODWORD(v65) = 0;
LABEL_120:
              v53 = v82 + 1;
              goto LABEL_155;
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
          v66 = (v7 + v3);
          v67 = v3 + 1;
          while (1)
          {
            v53 = v67;
            a2[1] = v67;
            v68 = *v66++;
            v65 |= (v68 & 0x7F) << v63;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v63 += 7;
            ++v67;
            v34 = v64++ > 8;
            if (v34)
            {
              LODWORD(v65) = 0;
              break;
            }
          }
        }

LABEL_155:
        *(a1 + 64) = v65;
        v101 = *(a1 + 8) | 8;
LABEL_160:
        *(a1 + 8) = v101;
        v3 = v53;
        goto LABEL_161;
      }

      if (v19 == 5)
      {
        if ((v10 & 7) == 2)
        {
          if (PB::Reader::placeMark())
          {
            v121 = 0;
            return v121 & 1;
          }

          v3 = a2[1];
          v2 = a2[2];
          if (v3 < v2 && (a2[3] & 1) == 0)
          {
            v20 = *(a1 + 24);
            while (1)
            {
              v21 = *(a1 + 32);
              if (v20 >= v21)
              {
                v22 = *(a1 + 16);
                v23 = v20 - v22;
                v24 = (v20 - v22) >> 2;
                v25 = v24 + 1;
                if ((v24 + 1) >> 62)
                {
                  goto LABEL_191;
                }

                v26 = v21 - v22;
                if (v26 >> 1 > v25)
                {
                  v25 = v26 >> 1;
                }

                if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v27 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v27 = v25;
                }

                if (v27)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1 + 16, v27);
                }

                v28 = (v20 - v22) >> 2;
                v29 = (4 * v24);
                v30 = (4 * v24 - 4 * v28);
                *v29 = 0;
                v20 = (v29 + 1);
                memcpy(v30, v22, v23);
                v31 = *(a1 + 16);
                *(a1 + 16) = v30;
                *(a1 + 24) = v20;
                *(a1 + 32) = 0;
                if (v31)
                {
                  operator delete(v31);
                }
              }

              else
              {
                *v20 = 0;
                v20 += 4;
              }

              *(a1 + 24) = v20;
              v32 = a2[1];
              v2 = a2[2];
              v33 = *a2;
              v34 = v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2;
              if (v34)
              {
                break;
              }

              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = (v33 + v32);
              v46 = v32 + 1;
              while (1)
              {
                v3 = v46;
                a2[1] = v46;
                v47 = *v45++;
                v44 |= (v47 & 0x7F) << v42;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                ++v46;
                v34 = v43++ > 8;
                if (v34)
                {
                  goto LABEL_61;
                }
              }

LABEL_64:
              *(v20 - 1) = v44;
              if (v3 >= v2 || (a2[3] & 1) != 0)
              {
                goto LABEL_161;
              }
            }

            v35 = 0;
            v36 = 0;
            v44 = 0;
            if (v2 <= v32)
            {
              v37 = a2[1];
            }

            else
            {
              v37 = a2[2];
            }

            v38 = v37 - v32;
            v39 = (v33 + v32);
            v40 = v32 + 1;
            while (v38)
            {
              v3 = v40;
              v41 = *v39;
              a2[1] = v3;
              v44 |= (v41 & 0x7F) << v35;
              if ((v41 & 0x80) == 0)
              {
                if (a2[3])
                {
                  LODWORD(v44) = 0;
                }

                goto LABEL_64;
              }

              v35 += 7;
              --v38;
              ++v39;
              v40 = v3 + 1;
              v34 = v36++ > 8;
              if (v34)
              {
LABEL_61:
                LODWORD(v44) = 0;
                goto LABEL_64;
              }
            }

            *(a2 + 24) = 1;
            *(v20 - 1) = 0;
            v3 = v37;
          }
        }

        else
        {
          v93 = *(a1 + 24);
          v92 = *(a1 + 32);
          if (v93 >= v92)
          {
            v95 = *(a1 + 16);
            v96 = v93 - v95;
            v97 = (v93 - v95) >> 2;
            v98 = v97 + 1;
            if ((v97 + 1) >> 62)
            {
LABEL_191:
              std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
            }

            v99 = v92 - v95;
            if (v99 >> 1 > v98)
            {
              v98 = v99 >> 1;
            }

            if (v99 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v100 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v100 = v98;
            }

            if (v100)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1 + 16, v100);
            }

            v102 = (v93 - v95) >> 2;
            v103 = (4 * v97);
            v104 = (4 * v97 - 4 * v102);
            *v103 = 0;
            v94 = v103 + 1;
            memcpy(v104, v95, v96);
            v105 = *(a1 + 16);
            *(a1 + 16) = v104;
            *(a1 + 24) = v94;
            *(a1 + 32) = 0;
            if (v105)
            {
              operator delete(v105);
            }
          }

          else
          {
            *v93 = 0;
            v94 = v93 + 4;
          }

          *(a1 + 24) = v94;
          v106 = a2[1];
          v2 = a2[2];
          v107 = *a2;
          if (v106 > 0xFFFFFFFFFFFFFFF5 || v106 + 10 > v2)
          {
            v114 = 0;
            v115 = 0;
            v110 = 0;
            if (v2 <= v106)
            {
              v3 = a2[1];
            }

            else
            {
              v3 = a2[2];
            }

            v116 = v3 - v106;
            v117 = (v107 + v106);
            v118 = v106 + 1;
            while (1)
            {
              if (!v116)
              {
                LODWORD(v110) = 0;
                *(a2 + 24) = 1;
                goto LABEL_186;
              }

              v119 = v118;
              v120 = *v117;
              a2[1] = v119;
              v110 |= (v120 & 0x7F) << v114;
              if ((v120 & 0x80) == 0)
              {
                break;
              }

              v114 += 7;
              --v116;
              ++v117;
              v118 = v119 + 1;
              v34 = v115++ > 8;
              if (v34)
              {
                LODWORD(v110) = 0;
                goto LABEL_185;
              }
            }

            if (a2[3])
            {
              LODWORD(v110) = 0;
            }

LABEL_185:
            v3 = v119;
          }

          else
          {
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = (v107 + v106);
            v112 = v106 + 1;
            while (1)
            {
              v3 = v112;
              a2[1] = v112;
              v113 = *v111++;
              v110 |= (v113 & 0x7F) << v108;
              if ((v113 & 0x80) == 0)
              {
                break;
              }

              v108 += 7;
              ++v112;
              v34 = v109++ > 8;
              if (v34)
              {
                LODWORD(v110) = 0;
                break;
              }
            }
          }

LABEL_186:
          *(v94 - 1) = v110;
        }
      }

LABEL_161:
      v4 = *(a2 + 24);
      if (v3 >= v2 || (a2[3] & 1) != 0)
      {
        goto LABEL_188;
      }
    }

    if (v19 != 6)
    {
      if (v19 == 7)
      {
        if (v3 >= v2)
        {
          v56 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v55 = *(v7 + v3++);
          a2[1] = v3;
          v56 = v55 != 0;
        }

        *(a1 + 72) = v56;
        *(a1 + 8) |= 0x20u;
      }

      goto LABEL_161;
    }

    if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
    {
      v84 = 0;
      v85 = 0;
      v71 = 0;
      if (v2 <= v3)
      {
        v53 = v3;
      }

      else
      {
        v53 = v2;
      }

      while (v53 != v3)
      {
        v86 = v3++;
        v87 = *(v7 + v86);
        a2[1] = v3;
        v71 |= (v87 & 0x7F) << v84;
        if ((v87 & 0x80) == 0)
        {
          goto LABEL_129;
        }

        v84 += 7;
        v79 = v85++ >= 9;
        if (v79)
        {
          LODWORD(v71) = 0;
LABEL_129:
          v53 = v86 + 1;
          goto LABEL_157;
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
      v72 = (v7 + v3);
      v73 = v3 + 1;
      while (1)
      {
        v53 = v73;
        a2[1] = v73;
        v74 = *v72++;
        v71 |= (v74 & 0x7F) << v69;
        if ((v74 & 0x80) == 0)
        {
          break;
        }

        v69 += 7;
        ++v73;
        v34 = v70++ > 8;
        if (v34)
        {
          LODWORD(v71) = 0;
          break;
        }
      }
    }

LABEL_157:
    *(a1 + 68) = v71;
    v101 = *(a1 + 8) | 0x10;
    goto LABEL_160;
  }

LABEL_188:
  v121 = v4 ^ 1;
  return v121 & 1;
}

void sub_1DE8C9D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::MicrophoneConfiguration::writeTo(avas::server::MicrophoneConfiguration *this, PB::Writer *a2)
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
    caulk::xstring::as_std_string((this + 40), &__p);
    PB::Writer::write();
    if (v15 < 0)
    {
      operator delete(__p);
    }

    v4 = *(this + 2);
  }

  if ((v4 & 4) != 0)
  {
    v6 = *(this + 15);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
  }

  if ((v4 & 8) != 0)
  {
    v7 = *(this + 16);
    PB::Writer::writeVarInt(a2);
  }

  v8 = *(this + 2);
  v9 = *(this + 3);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::Writer::writeVarInt(a2);
  }

  v11 = *(this + 2);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(this + 17);
    PB::Writer::writeVarInt(a2);
    v11 = *(this + 2);
  }

  if ((v11 & 0x20) != 0)
  {
    v13 = *(this + 72);
    PB::Writer::write(a2);
  }
}

void sub_1DE8C9E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::MicrophoneConfiguration::formatText(avas::server::MicrophoneConfiguration *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 14);
    PB::TextFormatter::format(a2, "configurationID");
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    caulk::xstring::as_std_string((this + 40), &__p);
    PB::TextFormatter::format();
    if (v17 < 0)
    {
      operator delete(__p);
    }

    v5 = *(this + 2);
  }

  if ((v5 & 4) != 0)
  {
    v7 = *(this + 15);
    PB::TextFormatter::format(a2, "location");
    v5 = *(this + 2);
  }

  if ((v5 & 8) != 0)
  {
    v8 = *(this + 16);
    PB::TextFormatter::format(a2, "orientation");
  }

  v9 = *(this + 2);
  v10 = *(this + 3);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "availablePolarPatterns");
  }

  v12 = *(this + 2);
  if ((v12 & 0x10) != 0)
  {
    v13 = *(this + 17);
    PB::TextFormatter::format(a2, "activePolarPattern");
    v12 = *(this + 2);
  }

  if ((v12 & 0x20) != 0)
  {
    v14 = *(this + 72);
    PB::TextFormatter::format(a2, "SDKClientVisible");
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8C9F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::MicrophoneConfiguration::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && !caulk::xstring::compare((a1 + 40), (a2 + 40)))
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = v8 - v7;
    v10 = *(a2 + 16);
    if (v8 - v7 == *(a2 + 24) - v10)
    {
      if (v8 == v7)
      {
        return 1;
      }

      v11 = 0;
      v12 = v9 >> 2;
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      while (*(v7 + 4 * v11) == *(v10 + 4 * v11))
      {
        if (v13 == ++v11)
        {
          return v11 >= v12;
        }
      }
    }
  }

  return 0;
}

avas::server::IOControllerState *avas::server::IOControllerState::IOControllerState(avas::server::IOControllerState *this, const avas::server::IOControllerState *a2)
{
  *this = &unk_1F59995C0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  avas::server::IOControllerState::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F59995C0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  avas::server::IOControllerState::copy_from(this, a2);
  return this;
}

__n128 avas::server::IOControllerState::copy_from(avas::server::IOControllerState *this, const avas::server::IOControllerState *a2)
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

  caulk::xstring::assign((this + 88), (a2 + 88));
  *(this + 2) = *(a2 + 2);
  result = *(a2 + 104);
  *(this + 120) = *(a2 + 120);
  *(this + 104) = result;
  return result;
}

uint64_t avas::server::IOControllerState::IOControllerState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F59995C0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  avas::server::IOControllerState::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F59995C0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  avas::server::IOControllerState::move_from(a1, a2);
  return a1;
}

__n128 avas::server::IOControllerState::move_from(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  v7 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  v8 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v8;
  v9 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v9;
  v10 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v10;
  v11 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v11;
  v12 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = v12;
  v14[0] = 0;
  v14[1] = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(v14);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = result;
  return result;
}

double avas::server::IOControllerState::clear(avas::server::IOControllerState *this)
{
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 8);
  caulk::xstring::clear((this + 88));
  *(this + 2) = 0;
  result = 0.0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

BOOL avas::server::IOControllerState::isInitialized(avas::server::IOControllerState *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  while (v2 != v3)
  {
    if (!avas::SampleRateRange::isInitialized(*v2))
    {
      return 0;
    }

    ++v2;
  }

  v4 = *(this + 5);
  v5 = *(this + 6);
  while (v4 != v5)
  {
    if ((avas::server::IOStreamState::isInitialized(*v4) & 1) == 0)
    {
      return 0;
    }

    ++v4;
  }

  v6 = *(this + 8);
  v7 = *(this + 9);
  while (v6 != v7)
  {
    if ((avas::server::IOStreamState::isInitialized(*v6) & 1) == 0)
    {
      return 0;
    }

    ++v6;
  }

  return (~*(this + 2) & 0xF) == 0;
}

uint64_t avas::server::IOControllerState::readFrom(uint64_t a1, uint64_t *a2)
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
      if ((v10 >> 3) <= 12)
      {
        if (v22 > 10)
        {
          if (v22 == 11)
          {
            operator new();
          }

          if (v22 != 12)
          {
            goto LABEL_88;
          }

          if (v13 > 0xFFFFFFFFFFFFFFF7 || v13 + 8 > v2)
          {
            *(a2 + 24) = 1;
          }

          else
          {
            *(a1 + 112) = *(v7 + v13);
            a2[1] += 8;
          }

          v35 = *(a1 + 8) | 4;
        }

        else if (v22 == 2)
        {
          if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
          {
            v43 = 0;
            v44 = 0;
            v31 = 0;
            v38 = v2 >= v13;
            v45 = v2 - v13;
            if (!v38)
            {
              v45 = 0;
            }

            v46 = (v7 + v13);
            v47 = v13 + 1;
            while (v45)
            {
              v48 = *v46;
              a2[1] = v47;
              v31 |= (v48 & 0x7F) << v43;
              if ((v48 & 0x80) == 0)
              {
                goto LABEL_86;
              }

              v43 += 7;
              --v45;
              ++v46;
              ++v47;
              v38 = v44++ >= 9;
              if (v38)
              {
LABEL_80:
                LODWORD(v31) = 0;
                goto LABEL_86;
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
                goto LABEL_80;
              }
            }
          }

LABEL_86:
          *(a1 + 132) = v31;
          v35 = *(a1 + 8) | 1;
        }

        else
        {
          if (v22 != 10)
          {
            goto LABEL_88;
          }

          if (v13 > 0xFFFFFFFFFFFFFFF7 || v13 + 8 > v2)
          {
            *(a2 + 24) = 1;
          }

          else
          {
            *(a1 + 104) = *(v7 + v13);
            a2[1] += 8;
          }

          v35 = *(a1 + 8) | 2;
        }
      }

      else
      {
        if (v22 > 19)
        {
          switch(v22)
          {
            case 0x14:
              operator new();
            case 0x15:
              operator new();
            case 0x1E:
              PB::Reader::read();
              caulk::xstring::assign();
              *(a1 + 8) |= 0x20u;
              break;
          }

          goto LABEL_88;
        }

        if (v22 == 13)
        {
          if (v13 > 0xFFFFFFFFFFFFFFF7 || v13 + 8 > v2)
          {
            *(a2 + 24) = 1;
          }

          else
          {
            *(a1 + 120) = *(v7 + v13);
            a2[1] += 8;
          }

          v35 = *(a1 + 8) | 8;
        }

        else
        {
          if (v22 != 14)
          {
            goto LABEL_88;
          }

          if (v13 > 0xFFFFFFFFFFFFFFF5 || v13 + 10 > v2)
          {
            v36 = 0;
            v37 = 0;
            v25 = 0;
            v38 = v2 >= v13;
            v39 = v2 - v13;
            if (!v38)
            {
              v39 = 0;
            }

            v40 = (v7 + v13);
            v41 = v13 + 1;
            while (v39)
            {
              v42 = *v40;
              a2[1] = v41;
              v25 |= (v42 & 0x7F) << v36;
              if ((v42 & 0x80) == 0)
              {
                goto LABEL_84;
              }

              v36 += 7;
              --v39;
              ++v40;
              ++v41;
              v38 = v37++ >= 9;
              if (v38)
              {
LABEL_72:
                LODWORD(v25) = 0;
                goto LABEL_84;
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
                goto LABEL_72;
              }
            }
          }

LABEL_84:
          *(a1 + 128) = v25;
          v35 = *(a1 + 8) | 0x10;
        }
      }

      *(a1 + 8) = v35;
LABEL_88:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

void avas::server::IOControllerState::writeTo(avas::server::IOControllerState *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 33);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
  }

  if ((v4 & 2) != 0)
  {
    PB::Writer::write(a2, *(this + 13));
  }

  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(this + 2);
  if ((v9 & 4) == 0)
  {
    if ((v9 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    PB::Writer::write(a2, *(this + 15));
    if ((*(this + 2) & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  PB::Writer::write(a2, *(this + 14));
  v9 = *(this + 2);
  if ((v9 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if ((v9 & 0x10) != 0)
  {
LABEL_11:
    v10 = *(this + 32);
    PB::Writer::writeVarInt(a2);
  }

LABEL_12:
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

  if ((*(this + 8) & 0x20) != 0)
  {
    caulk::xstring::as_std_string((this + 88), &__p);
    PB::Writer::write();
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1DE8CB218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::IOControllerState::formatText(avas::server::IOControllerState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 33);
    PB::TextFormatter::format(a2, "type");
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "sampleRate", *(this + 13));
  }

  v7 = *(this + 2);
  v8 = *(this + 3);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "availableSampleRates");
  }

  v10 = *(this + 2);
  if ((v10 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "minimumSampleRate", *(this + 14));
    v10 = *(this + 2);
    if ((v10 & 8) == 0)
    {
LABEL_9:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_9;
  }

  PB::TextFormatter::format(a2, "maximumSampleRate", *(this + 15));
  if ((*(this + 2) & 0x10) != 0)
  {
LABEL_10:
    v11 = *(this + 32);
    PB::TextFormatter::format(a2, "bufferFrameSize");
  }

LABEL_11:
  v12 = *(this + 5);
  v13 = *(this + 6);
  while (v12 != v13)
  {
    v14 = *v12++;
    (*(*v14 + 32))(v14, a2, "inputIOStreams");
  }

  v15 = *(this + 8);
  v16 = *(this + 9);
  while (v15 != v16)
  {
    v17 = *v15++;
    (*(*v17 + 32))(v17, a2, "outputIOStreams");
  }

  if ((*(this + 8) & 0x20) != 0)
  {
    caulk::xstring::as_std_string((this + 88), &__p);
    PB::TextFormatter::format();
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8CB438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::IOControllerState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112) || *(a1 + 120) != *(a2 + 120) || *(a1 + 128) != *(a2 + 128))
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (v8 - v9 != *(a2 + 24) - *(a2 + 16))
  {
    return 0;
  }

  if (v8 != v9)
  {
    v10 = 0;
    if (((v8 - v9) >> 3) <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = (v8 - v9) >> 3;
    }

    do
    {
      v12 = *(*(a1 + 16) + 8 * v10);
      v13 = *(*(a2 + 16) + 8 * v10);
      if (v12)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        if (v12 | v13)
        {
          return 0;
        }
      }

      else if (!avas::SampleRateRange::operator==(v12, v13))
      {
        return 0;
      }

      ++v10;
    }

    while (v11 != v10);
  }

  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  if (v15 - v16 != *(a2 + 48) - *(a2 + 40))
  {
    return 0;
  }

  if (v15 != v16)
  {
    v17 = 0;
    if (((v15 - v16) >> 3) <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = (v15 - v16) >> 3;
    }

    do
    {
      v19 = *(*(a1 + 40) + 8 * v17);
      v20 = *(*(a2 + 40) + 8 * v17);
      if (v19)
      {
        v21 = v20 == 0;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        if (v19 | v20)
        {
          return 0;
        }
      }

      else if (!avas::server::IOStreamState::operator==(v19, v20))
      {
        return 0;
      }

      ++v17;
    }

    while (v18 != v17);
  }

  v23 = *(a1 + 64);
  v22 = *(a1 + 72);
  if (v22 - v23 != *(a2 + 72) - *(a2 + 64))
  {
    return 0;
  }

  if (v22 != v23)
  {
    v24 = 0;
    if (((v22 - v23) >> 3) <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = (v22 - v23) >> 3;
    }

    do
    {
      v26 = *(*(a1 + 64) + 8 * v24);
      v27 = *(*(a2 + 64) + 8 * v24);
      if (v26)
      {
        v28 = v27 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if (v26 | v27)
        {
          return 0;
        }
      }

      else if (!avas::server::IOStreamState::operator==(v26, v27))
      {
        return 0;
      }

      ++v24;
    }

    while (v25 != v24);
  }

  return caulk::xstring::compare((a1 + 88), (a2 + 88)) == 0;
}

void avas::server::IOControllerState::addAvailableSampleRates(avas::server::IOControllerState *this)
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

void avas::server::IOControllerState::addInputIOStreams(avas::server::IOControllerState *this)
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

void avas::server::IOControllerState::addOutputIOStreams(avas::server::IOControllerState *this)
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

uint64_t avas::server::PlatformSupport::default_instance(avas::server::PlatformSupport *this)
{
  {
    operator new();
  }

  return avas::server::PlatformSupport::default_instance(void)::gInstance;
}

double avas::server::PlatformSupport::PlatformSupport(avas::server::PlatformSupport *this)
{
  *this = &unk_1F59995F8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F59995F8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

avas::server::PlatformSupport *avas::server::PlatformSupport::PlatformSupport(avas::server::PlatformSupport *this, caulk::xstring **a2)
{
  *this = &unk_1F59995F8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  avas::server::PlatformSupport::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F59995F8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  avas::server::PlatformSupport::copy_from(this, a2);
  return this;
}

caulk::xstring **avas::server::PlatformSupport::copy_from(caulk::xstring **this, caulk::xstring **a2)
{
  if (this != a2)
  {
    v3 = this;
    std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(this + 1, a2[1], a2[2], (a2[2] - a2[1]) >> 4);
    return std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(v3 + 4, a2[4], a2[5], (a2[5] - a2[4]) >> 4);
  }

  return this;
}

uint64_t avas::server::PlatformSupport::PlatformSupport(uint64_t a1, void *a2)
{
  *a1 = &unk_1F59995F8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  avas::server::PlatformSupport::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F59995F8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  avas::server::PlatformSupport::move_from(a1, a2);
  return a1;
}

void *avas::server::PlatformSupport::move_from(void *result, void *a2)
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

uint64_t avas::server::PlatformSupport::clear(caulk::xstring **this)
{
  std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100]((this + 1), this[1]);
  v2 = this[4];

  return std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100]((this + 4), v2);
}

BOOL avas::server::PlatformSupport::readFrom(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 24);
  if (v2 < v3 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            return (v4 & 1) == 0;
          }

          v21 = *v19;
          a2[1] = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
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
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
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
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        v24 = a1[5];
        if (v24 >= a1[6])
        {
          v25 = std::vector<caulk::xstring>::__emplace_back_slow_path<>((a1 + 4));
        }

        else
        {
          *v24 = 0;
          v24[1] = 0;
          v25 = (v24 + 2);
        }

        a1[5] = v25;
        PB::Reader::read();
        caulk::xstring::assign();
      }

      else if ((v10 >> 3) == 1)
      {
        v22 = a1[2];
        if (v22 >= a1[3])
        {
          v23 = std::vector<caulk::xstring>::__emplace_back_slow_path<>((a1 + 1));
        }

        else
        {
          *v22 = 0;
          v22[1] = 0;
          v23 = (v22 + 2);
        }

        a1[2] = v23;
        PB::Reader::read();
        caulk::xstring::assign();
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

  return (v4 & 1) == 0;
}

void sub_1DE8CBFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::PlatformSupport::writeTo(avas::server::PlatformSupport *this, PB::Writer *a2)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  while (v3 != v4)
  {
    caulk::xstring::as_std_string(v3, __p);
    PB::Writer::write();
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = (v3 + 16);
  }

  v6 = *(this + 4);
  v5 = *(this + 5);
  while (v6 != v5)
  {
    caulk::xstring::as_std_string(v6, __p);
    PB::Writer::write();
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = (v6 + 16);
  }
}

void sub_1DE8CC0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::PlatformSupport::formatText(avas::server::PlatformSupport *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  for (i = *(this + 2); v5 != i; v5 = (v5 + 16))
  {
    caulk::xstring::as_std_string(v5, __p);
    PB::TextFormatter::format();
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = *(this + 4);
  for (j = *(this + 5); v7 != j; v7 = (v7 + 16))
  {
    caulk::xstring::as_std_string(v7, __p);
    PB::TextFormatter::format();
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8CC1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::server::PlatformSupport::operator==(void *a1, void *a2)
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
    if (((v2 - v3) >> 4) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = (v2 - v3) >> 4;
    }

    while (!caulk::xstring::compare((a1[1] + v6), (a2[1] + v6)))
    {
      v6 += 16;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v9 = a1[4];
  v8 = a1[5];
  v10 = v8 - v9;
  if (v8 - v9 != a2[5] - a2[4])
  {
    return 0;
  }

  if (v8 != v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = v10 >> 4;
    if ((v10 >> 4) <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10 >> 4;
    }

    while (!caulk::xstring::compare((a1[4] + v11), (a2[4] + v11)))
    {
      ++v12;
      v11 += 16;
      if (v14 == v12)
      {
        return v12 >= v13;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t avas::server::SessionServerState::default_instance(avas::server::SessionServerState *this)
{
  {
    operator new();
  }

  return avas::server::SessionServerState::default_instance(void)::gInstance;
}

double avas::server::SessionServerState::SessionServerState(avas::server::SessionServerState *this)
{
  *this = &unk_1F5999630;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 57) = 0u;
  return result;
}

{
  *this = &unk_1F5999630;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 57) = 0u;
  return result;
}

avas::server::SessionServerState *avas::server::SessionServerState::SessionServerState(avas::server::SessionServerState *this, const avas::server::SessionServerState *a2)
{
  *this = &unk_1F5999630;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  avas::server::SessionServerState::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999630;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  avas::server::SessionServerState::copy_from(this, a2);
  return this;
}

void *avas::server::SessionServerState::copy_from(avas::server::SessionServerState *this, const avas::server::SessionServerState *a2)
{
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  if (*(a2 + 2) != *(a2 + 3))
  {
    operator new();
  }

  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  if (*(a2 + 5) != *(a2 + 6))
  {
    operator new();
  }

  *(this + 2) = *(a2 + 2);
  v5 = *(a2 + 8);
  *(this + 72) = *(a2 + 72);
  *(this + 8) = v5;
  return result;
}

uint64_t avas::server::SessionServerState::SessionServerState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999630;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  avas::server::SessionServerState::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999630;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  avas::server::SessionServerState::move_from(a1, a2);
  return a1;
}

uint64_t avas::server::SessionServerState::move_from(uint64_t result, uint64_t a2)
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
  *(result + 8) = *(a2 + 8);
  v8 = *(a2 + 64);
  *(result + 72) = *(a2 + 72);
  *(result + 64) = v8;
  return result;
}

void *avas::server::SessionServerState::clear(avas::server::SessionServerState *this)
{
  std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 5);
  *(this + 2) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0;
  return result;
}

BOOL avas::server::SessionServerState::isInitialized(avas::server::SessionServerState *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  while (v2 != v3)
  {
    if (!avas::server::IOControllerState::isInitialized(*v2))
    {
      return 0;
    }

    ++v2;
  }

  v4 = *(this + 5);
  v5 = *(this + 6);
  if (v4 == v5)
  {
    return (~*(this + 2) & 7) == 0;
  }

  while (1)
  {
    v6 = *(*v4 + 32);
    if (!v6 || (~*(v6 + 8) & 0x7F) != 0 || (~*(*v4 + 8) & 3) != 0)
    {
      break;
    }

    v4 += 8;
    if (v4 == v5)
    {
      return (~*(this + 2) & 7) == 0;
    }
  }

  return 0;
}

uint64_t avas::server::SessionServerState::readFrom(uint64_t a1, uint64_t *a2)
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
      if ((v8 >> 3) <= 2)
      {
        if (v20 != 1)
        {
          if (v20 == 2)
          {
            operator new();
          }

          goto LABEL_69;
        }

        if (v11 > 0xFFFFFFFFFFFFFFF5 || v11 + 10 > v2)
        {
          v36 = 0;
          v37 = 0;
          v31 = 0;
          v38 = v2 >= v11;
          v39 = v2 - v11;
          if (!v38)
          {
            v39 = 0;
          }

          v40 = (v5 + v11);
          v41 = v11 + 1;
          while (v39)
          {
            v42 = *v40;
            a2[1] = v41;
            v31 |= (v42 & 0x7F) << v36;
            if ((v42 & 0x80) == 0)
            {
              goto LABEL_65;
            }

            v36 += 7;
            --v39;
            ++v40;
            ++v41;
            v38 = v37++ >= 9;
            if (v38)
            {
LABEL_55:
              LODWORD(v31) = 0;
              goto LABEL_65;
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
          v32 = (v5 + v11);
          v33 = v11 + 1;
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
            v13 = v30++ > 8;
            if (v13)
            {
              goto LABEL_55;
            }
          }
        }

LABEL_65:
        *(a1 + 64) = v31;
        v35 = *(a1 + 8) | 1;
      }

      else
      {
        switch(v20)
        {
          case 3:
            operator new();
          case 4:
            if (v11 >= v2)
            {
              v28 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v27 = *(v5 + v11);
              a2[1] = v11 + 1;
              v28 = v27 != 0;
            }

            *(a1 + 72) = v28;
            v35 = *(a1 + 8) | 2;
            break;
          case 5:
            if (v11 > 0xFFFFFFFFFFFFFFF5 || v11 + 10 > v2)
            {
              v43 = 0;
              v44 = 0;
              v23 = 0;
              v38 = v2 >= v11;
              v45 = v2 - v11;
              if (!v38)
              {
                v45 = 0;
              }

              v46 = (v5 + v11);
              v47 = v11 + 1;
              while (v45)
              {
                v48 = *v46;
                a2[1] = v47;
                v23 |= (v48 & 0x7F) << v43;
                if ((v48 & 0x80) == 0)
                {
                  goto LABEL_67;
                }

                v43 += 7;
                --v45;
                ++v46;
                ++v47;
                v38 = v44++ >= 9;
                if (v38)
                {
LABEL_63:
                  LODWORD(v23) = 0;
                  goto LABEL_67;
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
                  goto LABEL_63;
                }
              }
            }

LABEL_67:
            *(a1 + 68) = v23;
            v35 = *(a1 + 8) | 4;
            break;
          default:
            goto LABEL_69;
        }
      }

      *(a1 + 8) = v35;
LABEL_69:
      v3 = a2[1];
      v2 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (a2[3] & 1) == 0);
  }

  return (v4 ^ 1) & 1;
}

uint64_t avas::server::SessionServerState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 8))
  {
    v4 = *(this + 64);
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = *(v3 + 8);
  if ((v11 & 2) != 0)
  {
    v12 = *(v3 + 72);
    this = PB::Writer::write(a2);
    v11 = *(v3 + 8);
  }

  if ((v11 & 4) != 0)
  {
    v13 = *(v3 + 68);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}