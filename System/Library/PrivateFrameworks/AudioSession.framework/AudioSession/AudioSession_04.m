uint64_t avas::server::SessionServerState::formatText(avas::server::SessionServerState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 8))
  {
    v5 = *(this + 16);
    PB::TextFormatter::format(a2, "generationCount");
  }

  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "controllers");
  }

  v9 = *(this + 5);
  v10 = *(this + 6);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "ports");
  }

  v12 = *(this + 2);
  if ((v12 & 2) != 0)
  {
    v13 = *(this + 72);
    PB::TextFormatter::format(a2, "simulated");
    v12 = *(this + 2);
  }

  if ((v12 & 4) != 0)
  {
    v14 = *(this + 17);
    PB::TextFormatter::format(a2, "sessionToken");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::SessionServerState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6 - v7 != *(a2 + 24) - *(a2 + 16))
  {
    return 0;
  }

  if (v6 != v7)
  {
    v8 = 0;
    if (((v6 - v7) >> 3) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v6 - v7) >> 3;
    }

    do
    {
      v10 = *(*(a1 + 16) + 8 * v8);
      v11 = *(*(a2 + 16) + 8 * v8);
      if (v10)
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        if (v10 | v11)
        {
          return 0;
        }
      }

      else if (!avas::server::IOControllerState::operator==(v10, v11))
      {
        return 0;
      }

      ++v8;
    }

    while (v9 != v8);
  }

  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  v15 = v13 - v14;
  if (v13 - v14 != *(a2 + 48) - *(a2 + 40))
  {
    return 0;
  }

  if (v13 == v14)
  {
    return 1;
  }

  v16 = 0;
  v17 = v15 >> 3;
  if ((v15 >> 3) <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v15 >> 3;
  }

  do
  {
    v19 = *(*(a1 + 40) + 8 * v16);
    v20 = *(*(a2 + 40) + 8 * v16);
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

    else if (!avas::server::VirtualPort::operator==(v19, v20))
    {
      return 0;
    }

    ++v16;
  }

  while (v18 != v16);
  return v16 >= v17;
}

void avas::server::SessionServerState::addControllers(avas::server::SessionServerState *this)
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

void avas::server::SessionServerState::addPorts(avas::server::SessionServerState *this)
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

uint64_t avas::server::SessionFullState::default_instance(avas::server::SessionFullState *this)
{
  {
    operator new();
  }

  return avas::server::SessionFullState::default_instance(void)::gInstance;
}

void *avas::server::SessionFullState::SessionFullState(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F5999668;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F5999668;
  return this;
}

avas::server::SessionFullState *avas::server::SessionFullState::SessionFullState(avas::server::SessionFullState *this, const avas::server::SessionFullState *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F5999668;
  avas::server::SessionFullState::copy_from(this, a2);
  return this;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F5999668;
  avas::server::SessionFullState::copy_from(this, a2);
  return this;
}

avas::client::SessionState *avas::server::SessionFullState::copy_from(avas::client::SessionState *this, const avas::server::SessionFullState *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = avas::server::SessionFullState::mutableServerState(this);
    this = avas::server::SessionServerState::copy_from(v5, v4);
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    v7 = avas::server::SessionFullState::mutableClientState(v3);

    return avas::client::SessionState::operator=(v7, v6);
  }

  return this;
}

uint64_t avas::server::SessionFullState::serverState(avas::server::SessionFullState *this)
{
  result = *(this + 1);
  if (!result)
  {
    return avas::server::SessionServerState::default_instance(0);
  }

  return result;
}

uint64_t avas::server::SessionFullState::mutableServerState(avas::server::SessionFullState *this)
{
  if (!*(this + 1))
  {
    operator new();
  }

  return *(this + 1);
}

uint64_t avas::server::SessionFullState::clientState(avas::server::SessionFullState *this)
{
  result = *(this + 2);
  if (!result)
  {
    return avas::client::SessionState::default_instance(0);
  }

  return result;
}

uint64_t avas::server::SessionFullState::mutableClientState(avas::server::SessionFullState *this)
{
  if (!*(this + 2))
  {
    operator new();
  }

  return *(this + 2);
}

void *avas::server::SessionFullState::SessionFullState(void *result, uint64_t a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_1F5999668;
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
  *result = &unk_1F5999668;
  result[1] = *(a2 + 8);
  *(a2 + 8) = 0;
  v2 = result[2];
  result[2] = *(a2 + 16);
  *(a2 + 16) = v2;
  return result;
}

uint64_t avas::server::SessionFullState::move_from(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

uint64_t avas::server::SessionFullState::operator=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

uint64_t avas::server::SessionFullState::clear(avas::server::SessionFullState *this)
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

avas::client::SessionState *avas::server::SessionFullState::isInitialized(avas::server::SessionFullState *this)
{
  result = *(this + 2);
  if (result)
  {
    return avas::client::SessionState::isInitialized(result);
  }

  return result;
}

uint64_t avas::server::SessionFullState::readFrom(uint64_t a1, uint64_t *a2)
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

uint64_t avas::server::SessionFullState::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t avas::server::SessionFullState::formatText(avas::server::SessionFullState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "serverState");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "clientState");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::SessionFullState::operator==(uint64_t a1, uint64_t a2)
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
    if (avas::server::SessionServerState::operator==(v4, v5))
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

    return avas::client::SessionState::operator==(v10, v9);
  }

  return result;
}

uint64_t avas::server::SessionFullState::clearServerState(avas::server::SessionFullState *this)
{
  result = *(this + 1);
  *(this + 1) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::SessionFullState::clearClientState(avas::server::SessionFullState *this)
{
  result = *(this + 2);
  *(this + 2) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::VirtualPortList::default_instance(avas::server::VirtualPortList *this)
{
  {
    operator new();
  }

  return avas::server::VirtualPortList::default_instance(void)::gInstance;
}

void *avas::server::VirtualPortList::VirtualPortList(void *this)
{
  *this = &unk_1F59996A0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F59996A0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

avas::server::VirtualPortList *avas::server::VirtualPortList::VirtualPortList(avas::server::VirtualPortList *this, const avas::server::VirtualPortList *a2)
{
  *this = &unk_1F59996A0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  avas::server::VirtualPortList::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F59996A0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  avas::server::VirtualPortList::copy_from(this, a2);
  return this;
}

void *avas::server::VirtualPortList::copy_from(avas::server::VirtualPortList *this, const avas::server::VirtualPortList *a2)
{
  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 1);
  if (*(a2 + 1) != *(a2 + 2))
  {
    operator new();
  }

  return result;
}

void *avas::server::VirtualPortList::VirtualPortList(void *result, void *a2)
{
  *result = &unk_1F59996A0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[1] = a2[1];
  a2[1] = 0;
  v2 = result[2];
  result[2] = a2[2];
  a2[2] = v2;
  v3 = result[3];
  result[3] = a2[3];
  a2[3] = v3;
  return result;
}

{
  *result = &unk_1F59996A0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[1] = a2[1];
  a2[1] = 0;
  v2 = result[2];
  result[2] = a2[2];
  a2[2] = v2;
  v3 = result[3];
  result[3] = a2[3];
  a2[3] = v3;
  return result;
}

void *avas::server::VirtualPortList::move_from(void *result, void *a2)
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
  return result;
}

void *avas::server::VirtualPortList::operator=(void *result, void *a2)
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
  return result;
}

uint64_t avas::server::VirtualPortList::isInitialized(avas::server::VirtualPortList *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*v1 + 32);
    if (!v3 || (~*(v3 + 8) & 0x7F) != 0 || (~*(*v1 + 8) & 3) != 0)
    {
      break;
    }

    v1 += 8;
    if (v1 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t avas::server::VirtualPortList::readFrom(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 < v2 && (a2[3] & 1) == 0)
  {
    while (1)
    {
      v5 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

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

LABEL_19:
      if ((v8 & 7) == 4)
      {
        v4 = 0;
        return (v4 ^ 1) & 1;
      }

      if ((v8 & 0x7FFFFFFF8) == 8)
      {
        operator new();
      }

      v4 = 0;
      if (v3 >= v2)
      {
        return (v4 ^ 1) & 1;
      }
    }

    v13 = 0;
    v14 = 0;
    v8 = 0;
    if (v3 <= v2)
    {
      v15 = v2;
    }

    else
    {
      v15 = v3;
    }

    while (v15 != v3)
    {
      v16 = v3++;
      v17 = *(v5 + v16);
      a2[1] = v3;
      v8 |= (v17 & 0x7F) << v13;
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v13 += 7;
      v12 = v14++ > 8;
      if (v12)
      {
        v8 = 0;
LABEL_18:
        v3 = v16 + 1;
        goto LABEL_19;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

  return (v4 ^ 1) & 1;
}

uint64_t avas::server::VirtualPortList::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t avas::server::VirtualPortList::formatText(avas::server::VirtualPortList *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "ports");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::VirtualPortList::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = v2 - v3;
  if (v2 - v3 != *(a2 + 16) - *(a2 + 8))
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v7 = 0;
  v8 = v4 >> 3;
  if ((v4 >> 3) <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v4 >> 3;
  }

  while (1)
  {
    v10 = *(*(a1 + 8) + 8 * v7);
    v11 = *(*(a2 + 8) + 8 * v7);
    if (v10 && v11 != 0)
    {
      break;
    }

    if (v10 | v11)
    {
      return 0;
    }

LABEL_14:
    if (v9 == ++v7)
    {
      return v7 >= v8;
    }
  }

  if (avas::server::VirtualPort::operator==(v10, v11))
  {
    goto LABEL_14;
  }

  return 0;
}

void avas::server::VirtualPortList::addPorts(avas::server::VirtualPortList *this)
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

uint64_t avas::server::EligiblePortList::default_instance(avas::server::EligiblePortList *this)
{
  {
    operator new();
  }

  return avas::server::EligiblePortList::default_instance(void)::gInstance;
}

void *avas::server::EligiblePortList::EligiblePortList(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F59996D8;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F59996D8;
  return this;
}

avas::server::EligiblePortList *avas::server::EligiblePortList::EligiblePortList(avas::server::EligiblePortList *this, const avas::server::EligiblePortList *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F59996D8;
  avas::server::EligiblePortList::copy_from(this, a2);
  return this;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F59996D8;
  avas::server::EligiblePortList::copy_from(this, a2);
  return this;
}

avas::server::EligiblePortList *avas::server::EligiblePortList::copy_from(avas::server::EligiblePortList *this, const avas::server::EligiblePortList *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = avas::server::EligiblePortList::mutableStandardPorts(this);
    this = avas::server::VirtualPortList::copy_from(v5, v4);
  }

  v6 = *(a2 + 2);
  if (v6)
  {
    v7 = avas::server::EligiblePortList::mutableDecoupledPorts(v3);

    return avas::server::VirtualPortList::copy_from(v7, v6);
  }

  return this;
}

uint64_t avas::server::EligiblePortList::standardPorts(avas::server::EligiblePortList *this)
{
  result = *(this + 1);
  if (!result)
  {
    return avas::server::VirtualPortList::default_instance(0);
  }

  return result;
}

uint64_t avas::server::EligiblePortList::mutableStandardPorts(avas::server::EligiblePortList *this)
{
  if (!*(this + 1))
  {
    operator new();
  }

  return *(this + 1);
}

uint64_t avas::server::EligiblePortList::decoupledPorts(avas::server::EligiblePortList *this)
{
  result = *(this + 2);
  if (!result)
  {
    return avas::server::VirtualPortList::default_instance(0);
  }

  return result;
}

uint64_t avas::server::EligiblePortList::mutableDecoupledPorts(avas::server::EligiblePortList *this)
{
  if (!*(this + 2))
  {
    operator new();
  }

  return *(this + 2);
}

void *avas::server::EligiblePortList::EligiblePortList(void *result, uint64_t a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_1F59996D8;
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
  *result = &unk_1F59996D8;
  result[1] = *(a2 + 8);
  *(a2 + 8) = 0;
  v2 = result[2];
  result[2] = *(a2 + 16);
  *(a2 + 16) = v2;
  return result;
}

uint64_t avas::server::EligiblePortList::move_from(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

uint64_t avas::server::EligiblePortList::operator=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

uint64_t avas::server::EligiblePortList::clear(avas::server::EligiblePortList *this)
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

uint64_t avas::server::EligiblePortList::readFrom(uint64_t a1, uint64_t *a2)
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

uint64_t avas::server::EligiblePortList::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t avas::server::EligiblePortList::formatText(avas::server::EligiblePortList *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "standardPorts");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "decoupledPorts");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::EligiblePortList::operator==(uint64_t a1, uint64_t a2)
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
    if (avas::server::VirtualPortList::operator==(v4, v5))
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

    return avas::server::VirtualPortList::operator==(v10, v9);
  }

  return result;
}

uint64_t avas::server::EligiblePortList::clearStandardPorts(avas::server::EligiblePortList *this)
{
  result = *(this + 1);
  *(this + 1) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::EligiblePortList::clearDecoupledPorts(avas::server::EligiblePortList *this)
{
  result = *(this + 2);
  *(this + 2) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::server::SessionTokenList::default_instance(avas::server::SessionTokenList *this)
{
  {
    operator new();
  }

  return avas::server::SessionTokenList::default_instance(void)::gInstance;
}

void *avas::server::SessionTokenList::SessionTokenList(void *this)
{
  *this = &unk_1F5999710;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F5999710;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

avas::server::SessionTokenList *avas::server::SessionTokenList::SessionTokenList(avas::server::SessionTokenList *this, char **a2)
{
  *this = &unk_1F5999710;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  avas::server::SessionTokenList::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999710;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  avas::server::SessionTokenList::copy_from(this, a2);
  return this;
}

char **avas::server::SessionTokenList::copy_from(char **this, char **a2)
{
  if (this != a2)
  {
    return std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 1, a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  }

  return this;
}

void *avas::server::SessionTokenList::SessionTokenList(void *result, void *a2)
{
  *result = &unk_1F5999710;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[1] = a2[1];
  a2[1] = 0;
  v2 = result[2];
  result[2] = a2[2];
  a2[2] = v2;
  v3 = result[3];
  result[3] = a2[3];
  a2[3] = v3;
  return result;
}

{
  *result = &unk_1F5999710;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[1] = a2[1];
  a2[1] = 0;
  v2 = result[2];
  result[2] = a2[2];
  a2[2] = v2;
  v3 = result[3];
  result[3] = a2[3];
  a2[3] = v3;
  return result;
}

void *avas::server::SessionTokenList::move_from(void *result, void *a2)
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
  return result;
}

void *avas::server::SessionTokenList::operator=(void *result, void *a2)
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
  return result;
}

uint64_t avas::server::SessionTokenList::readFrom(void *a1, uint64_t *a2)
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
        v33 = v9++ > 8;
        if (v33)
        {
          v10 = 0;
          break;
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_102;
      }

      if ((v10 & 0x7FFFFFFF8) == 8)
      {
        if ((v10 & 7) == 2)
        {
          if (PB::Reader::placeMark())
          {
            v75 = 0;
            return v75 & 1;
          }

          v3 = a2[1];
          v2 = a2[2];
          v4 = *(a2 + 24);
          if (v3 < v2 && (a2[3] & 1) == 0)
          {
            v19 = a1[2];
            while (1)
            {
              v20 = a1[3];
              if (v19 >= v20)
              {
                v21 = a1[1];
                v22 = v19 - v21;
                v23 = (v19 - v21) >> 2;
                v24 = v23 + 1;
                if ((v23 + 1) >> 62)
                {
                  goto LABEL_105;
                }

                v25 = v20 - v21;
                if (v25 >> 1 > v24)
                {
                  v24 = v25 >> 1;
                }

                if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v26 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v26 = v24;
                }

                if (v26)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>((a1 + 1), v26);
                }

                v27 = (v19 - v21) >> 2;
                v28 = (4 * v23);
                v29 = (4 * v23 - 4 * v27);
                *v28 = 0;
                v19 = (v28 + 1);
                memcpy(v29, v21, v22);
                v30 = a1[1];
                a1[1] = v29;
                a1[2] = v19;
                a1[3] = 0;
                if (v30)
                {
                  operator delete(v30);
                }
              }

              else
              {
                *v19 = 0;
                v19 += 4;
              }

              a1[2] = v19;
              v31 = a2[1];
              v2 = a2[2];
              v32 = *a2;
              v33 = v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2;
              if (v33)
              {
                break;
              }

              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = (v32 + v31);
              v45 = v31 + 1;
              while (1)
              {
                v3 = v45;
                a2[1] = v45;
                v46 = *v44++;
                v43 |= (v46 & 0x7F) << v41;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                ++v45;
                v33 = v42++ > 8;
                if (v33)
                {
                  goto LABEL_58;
                }
              }

LABEL_61:
              *(v19 - 1) = v43;
              v4 = *(a2 + 24);
              if (v3 >= v2 || (a2[3] & 1) != 0)
              {
                goto LABEL_98;
              }
            }

            v34 = 0;
            v35 = 0;
            v43 = 0;
            if (v2 <= v31)
            {
              v36 = a2[1];
            }

            else
            {
              v36 = a2[2];
            }

            v37 = v36 - v31;
            v38 = (v32 + v31);
            v39 = v31 + 1;
            while (v37)
            {
              v3 = v39;
              v40 = *v38;
              a2[1] = v3;
              v43 |= (v40 & 0x7F) << v34;
              if ((v40 & 0x80) == 0)
              {
                if (a2[3])
                {
                  LODWORD(v43) = 0;
                }

                goto LABEL_61;
              }

              v34 += 7;
              --v37;
              ++v38;
              v39 = v3 + 1;
              v33 = v35++ > 8;
              if (v33)
              {
LABEL_58:
                LODWORD(v43) = 0;
                goto LABEL_61;
              }
            }

            v4 = 1;
            *(a2 + 24) = 1;
            *(v19 - 1) = 0;
            v3 = v36;
          }
        }

        else
        {
          v48 = a1[2];
          v47 = a1[3];
          if (v48 >= v47)
          {
            v50 = a1[1];
            v51 = v48 - v50;
            v52 = (v48 - v50) >> 2;
            v53 = v52 + 1;
            if ((v52 + 1) >> 62)
            {
LABEL_105:
              std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
            }

            v54 = v47 - v50;
            if (v54 >> 1 > v53)
            {
              v53 = v54 >> 1;
            }

            if (v54 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v55 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v55 = v53;
            }

            if (v55)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>((a1 + 1), v55);
            }

            v56 = (v48 - v50) >> 2;
            v57 = (4 * v52);
            v58 = (4 * v52 - 4 * v56);
            *v57 = 0;
            v49 = v57 + 1;
            memcpy(v58, v50, v51);
            v59 = a1[1];
            a1[1] = v58;
            a1[2] = v49;
            a1[3] = 0;
            if (v59)
            {
              operator delete(v59);
            }
          }

          else
          {
            *v48 = 0;
            v49 = v48 + 4;
          }

          a1[2] = v49;
          v60 = a2[1];
          v2 = a2[2];
          v61 = *a2;
          if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v2)
          {
            v68 = 0;
            v69 = 0;
            v64 = 0;
            if (v2 <= v60)
            {
              v3 = a2[1];
            }

            else
            {
              v3 = a2[2];
            }

            v70 = v3 - v60;
            v71 = (v61 + v60);
            v72 = v60 + 1;
            while (1)
            {
              if (!v70)
              {
                LODWORD(v64) = 0;
                *(a2 + 24) = 1;
                goto LABEL_97;
              }

              v73 = v72;
              v74 = *v71;
              a2[1] = v73;
              v64 |= (v74 & 0x7F) << v68;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              --v70;
              ++v71;
              v72 = v73 + 1;
              v33 = v69++ > 8;
              if (v33)
              {
                LODWORD(v64) = 0;
                goto LABEL_96;
              }
            }

            if (a2[3])
            {
              LODWORD(v64) = 0;
            }

LABEL_96:
            v3 = v73;
          }

          else
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = (v61 + v60);
            v66 = v60 + 1;
            while (1)
            {
              v3 = v66;
              a2[1] = v66;
              v67 = *v65++;
              v64 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              ++v66;
              v33 = v63++ > 8;
              if (v33)
              {
                LODWORD(v64) = 0;
                break;
              }
            }
          }

LABEL_97:
          *(v49 - 1) = v64;
          v4 = *(a2 + 24);
        }
      }

LABEL_98:
      if (v3 >= v2 || (v4 & 1) != 0)
      {
        goto LABEL_102;
      }
    }

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
      v33 = v15++ > 8;
      if (v33)
      {
        v10 = 0;
LABEL_21:
        v3 = v17 + 1;
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_102:
  v75 = v4 ^ 1;
  return v75 & 1;
}

uint64_t avas::server::SessionTokenList::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeVarInt(a2))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t avas::server::SessionTokenList::formatText(avas::server::SessionTokenList *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "tokens");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::server::SessionTokenList::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = v3 - v2;
  v5 = *(a2 + 8);
  if (v3 - v2 != *(a2 + 16) - v5)
  {
    return 0;
  }

  if (v3 != v2)
  {
    v6 = 0;
    v7 = v4 >> 2;
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    while (*(v2 + 4 * v6) == *(v5 + 4 * v6))
    {
      if (v8 == ++v6)
      {
        return v6 >= v7;
      }
    }

    return 0;
  }

  return 1;
}

void avas::server::HardwareInfo::~HardwareInfo(avas::server::HardwareInfo *this)
{
  avas::server::HardwareInfo::~HardwareInfo(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F59990F0;
  caulk::xstring::clear((this + 48));
  caulk::xstring::clear((this + 32));
  caulk::xstring::clear((this + 16));

  PB::Base::~Base(this);
}

void avas::server::Clock::~Clock(avas::server::Clock *this)
{
  avas::server::Clock::~Clock(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999128;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::xstring::clear((this + 80));
  caulk::xstring::clear((this + 64));
  v3 = (this + 40);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 16);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

void avas::server::HWStream::~HWStream(avas::server::HWStream *this)
{
  avas::server::HWStream::~HWStream(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999160;
  v2 = *(this + 13);
  *(this + 13) = 0;
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

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = (this + 64);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 40);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 16);
  std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](&v5);
  PB::Base::~Base(this);
}

void avas::server::Device::~Device(avas::server::Device *this)
{
  avas::server::Device::~Device(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999198;
  v2 = (this + 16);
  v3 = (this + 88);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 64);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 40);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

void avas::server::Device_Clock::~Device_Clock(avas::server::Device_Clock *this)
{
  avas::server::Device_Clock::~Device_Clock(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F59991D0;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void avas::server::Box::~Box(avas::server::Box *this)
{
  avas::server::Box::~Box(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999208;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = (this + 16);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v5);
  PB::Base::~Base(this);
}

void avas::server::Driver::~Driver(avas::server::Driver *this)
{
  avas::server::Driver::~Driver(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999240;
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::xstring::clear((this + 88));
  v3 = (this + 64);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 40);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 16);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

void avas::server::HardwareSystemState::~HardwareSystemState(avas::server::HardwareSystemState *this)
{
  avas::server::HardwareSystemState::~HardwareSystemState(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999278;
  v2 = (this + 8);
  v3 = (this + 32);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

void avas::server::SelectorControlItem::~SelectorControlItem(avas::server::SelectorControlItem *this)
{
  avas::server::SelectorControlItem::~SelectorControlItem(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F59992B0;
  caulk::xstring::clear((this + 16));

  PB::Base::~Base(this);
}

void avas::server::ControlValue::~ControlValue(avas::server::ControlValue *this)
{
  avas::server::ControlValue::~ControlValue(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F59992E8;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void avas::server::Control::~Control(avas::server::Control *this)
{
  *this = &unk_1F5999320;
  v2 = (this + 16);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
}

{
  *this = &unk_1F5999320;
  v2 = (this + 16);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
  MEMORY[0x1E12C2EB0]();
}

void avas::server::ControlAndValue::~ControlAndValue(avas::server::ControlAndValue *this)
{
  avas::server::ControlAndValue::~ControlAndValue(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999358;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void avas::server::IOStreamState::~IOStreamState(avas::server::IOStreamState *this)
{
  avas::server::IOStreamState::~IOStreamState(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999390;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 40);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 16);
  std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

void avas::server::PortInvariants::~PortInvariants(avas::server::PortInvariants *this)
{
  avas::server::PortInvariants::~PortInvariants(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F59993C8;
  caulk::xstring::clear((this + 32));
  caulk::xstring::clear((this + 16));

  PB::Base::~Base(this);
}

void avas::server::Port::~Port(avas::server::Port *this)
{
  avas::server::Port::~Port(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999400;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  caulk::xstring::clear((this + 104));
  caulk::xstring::clear((this + 88));
  v4 = (this + 64);
  std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 40);
  std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 16);
  std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](&v4);
  PB::Base::~Base(this);
}

void avas::server::SessionUpdateSummary::~SessionUpdateSummary(avas::server::SessionUpdateSummary *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1E12C2EB0);
}

void avas::server::ConfigChangeSummary::~ConfigChangeSummary(avas::server::ConfigChangeSummary *this)
{
  avas::server::ConfigChangeSummary::~ConfigChangeSummary(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999470;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 8);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

void avas::server::CustomPropertyAddress::~CustomPropertyAddress(avas::server::CustomPropertyAddress *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1E12C2EB0);
}

void avas::server::ObjectDescription::~ObjectDescription(avas::server::ObjectDescription *this)
{
  avas::server::ObjectDescription::~ObjectDescription(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F59994E0;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 5);
  *(this + 5) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 3);
  *(this + 3) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 2);
  *(this + 2) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  PB::Base::~Base(this);
}

void avas::server::ChangedObject::~ChangedObject(avas::server::ChangedObject *this)
{
  avas::server::ChangedObject::~ChangedObject(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999518;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 104);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 80);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 56);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 32);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 8);
  std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

void avas::server::VirtualPort::~VirtualPort(avas::server::VirtualPort *this)
{
  avas::server::VirtualPort::~VirtualPort(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999550;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  caulk::xstring::clear((this + 16));

  PB::Base::~Base(this);
}

void avas::server::MicrophoneConfiguration::~MicrophoneConfiguration(avas::server::MicrophoneConfiguration *this)
{
  avas::server::MicrophoneConfiguration::~MicrophoneConfiguration(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999588;
  caulk::xstring::clear((this + 40));
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void avas::server::IOControllerState::~IOControllerState(avas::server::IOControllerState *this)
{
  avas::server::IOControllerState::~IOControllerState(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F59995C0;
  caulk::xstring::clear((this + 88));
  v2 = (this + 64);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 40);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 16);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
}

void avas::server::PlatformSupport::~PlatformSupport(avas::server::PlatformSupport *this)
{
  avas::server::PlatformSupport::~PlatformSupport(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F59995F8;
  v2 = (this + 8);
  v3 = (this + 32);
  std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

void avas::server::SessionServerState::~SessionServerState(avas::server::SessionServerState *this)
{
  avas::server::SessionServerState::~SessionServerState(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999630;
  v2 = (this + 16);
  v3 = (this + 40);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

void avas::server::SessionFullState::~SessionFullState(avas::server::SessionFullState *this)
{
  avas::server::SessionFullState::~SessionFullState(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999668;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void avas::server::VirtualPortList::~VirtualPortList(avas::server::VirtualPortList *this)
{
  *this = &unk_1F59996A0;
  v2 = (this + 8);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
}

{
  *this = &unk_1F59996A0;
  v2 = (this + 8);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
  MEMORY[0x1E12C2EB0]();
}

void avas::server::EligiblePortList::~EligiblePortList(avas::server::EligiblePortList *this)
{
  avas::server::EligiblePortList::~EligiblePortList(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F59996D8;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void avas::server::SessionTokenList::~SessionTokenList(avas::server::SessionTokenList *this)
{
  avas::server::SessionTokenList::~SessionTokenList(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999710;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void *std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, a2);
  }

  std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<std::pair<objc_object  {objcproto39AVAudioNotificationCenterServerDelegate}* {__strong},NSArray * {__strong}>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t avas::smipc_Server_types_utility::updateDefaultRoute(avas::smipc_Server_types_utility *this, const avas::RouteIdentifier *a2, avas::server::HardwareSystemState *a3)
{
  result = avas::RouteIdentifier::isInitialized(this);
  if ((result & 1) == 0)
  {
    avas::smipc_Server_types_utility::updateDefaultRoute();
  }

  v7 = *(a2 + 4);
  v6 = *(a2 + 5);
  if (v7 != v6)
  {
    while (*(*v7 + 24) != *(this + 6))
    {
      if (++v7 == v6)
      {
        v7 = *(a2 + 5);
        break;
      }
    }
  }

  v8 = *(this + 2);
  if (v6 == v7)
  {
    if (v8)
    {
      avas::server::HardwareSystemState::addDefaultRoutes(a2);
    }
  }

  else if (v8)
  {
    v9 = *v7;

    return avas::RouteIdentifier::operator=(v9, this);
  }

  else
  {
    result = std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<avas::RouteIdentifier> *,std::unique_ptr<avas::RouteIdentifier> *,std::unique_ptr<avas::RouteIdentifier> *,0>(v7 + 1, v6, v7);
    v11 = v10;
    v12 = *(a2 + 5);
    if (v12 != v10)
    {
      do
      {
        v13 = *--v12;
        result = v13;
        *v12 = 0;
        if (v13)
        {
          result = (*(*result + 8))(result);
        }
      }

      while (v12 != v11);
    }

    *(a2 + 5) = v11;
  }

  return result;
}

uint64_t *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<avas::RouteIdentifier> *,std::unique_ptr<avas::RouteIdentifier> *,std::unique_ptr<avas::RouteIdentifier> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

uint64_t avas::ChannelDescription::default_instance(avas::ChannelDescription *this)
{
  {
    operator new();
  }

  return avas::ChannelDescription::default_instance(void)::gInstance;
}

void *avas::ChannelDescription::ChannelDescription(void *this)
{
  *this = &unk_1F5999748;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F5999748;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

__n128 avas::ChannelDescription::ChannelDescription(avas::ChannelDescription *this, const avas::ChannelDescription *a2)
{
  *this = &unk_1F5999748;
  *(this + 2) = *(a2 + 2);
  result = *(a2 + 12);
  *(this + 7) = *(a2 + 7);
  *(this + 12) = result;
  return result;
}

{
  *this = &unk_1F5999748;
  *(this + 2) = *(a2 + 2);
  result = *(a2 + 12);
  *(this + 7) = *(a2 + 7);
  *(this + 12) = result;
  return result;
}

__n128 avas::ChannelDescription::copy_from(avas::ChannelDescription *this, const avas::ChannelDescription *a2)
{
  *(this + 2) = *(a2 + 2);
  result = *(a2 + 12);
  *(this + 7) = *(a2 + 7);
  *(this + 12) = result;
  return result;
}

__n128 avas::ChannelDescription::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 12) = result;
  return result;
}

{
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 12) = result;
  return result;
}

__n128 avas::ChannelDescription::ChannelDescription(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999748;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 12) = result;
  return result;
}

{
  *a1 = &unk_1F5999748;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 12) = result;
  return result;
}

__n128 avas::ChannelDescription::move_from(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 12) = result;
  return result;
}

void *avas::ChannelDescription::clear(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

BOOL avas::ChannelDescription::readFrom(_DWORD *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 24);
  if (v2 >= v3 || (a2[3] & 1) != 0)
  {
    return (v4 & 1) == 0;
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
      return (v4 & 1) == 0;
    }

    v18 = v8 >> 3;
    if ((v8 >> 3) <= 2)
    {
      if (v18 == 1)
      {
        if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
        {
          v32 = 0;
          v33 = 0;
          v27 = 0;
          if (v3 <= v2)
          {
            v3 = v2;
          }

          while (v3 != v2)
          {
            v34 = v2++;
            v35 = *(v5 + v34);
            a2[1] = v2;
            v27 |= (v35 & 0x7F) << v32;
            if ((v35 & 0x80) == 0)
            {
              goto LABEL_63;
            }

            v32 += 7;
            v36 = v33++ >= 9;
            if (v36)
            {
              LODWORD(v27) = 0;
LABEL_63:
              v3 = v34 + 1;
              goto LABEL_75;
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

LABEL_75:
        a1[6] = v27;
        v31 = 1;
      }

      else
      {
        if (v18 != 2)
        {
          goto LABEL_80;
        }

        if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
        {
          v37 = 0;
          v38 = 0;
          v21 = 0;
          if (v3 <= v2)
          {
            v3 = v2;
          }

          while (v3 != v2)
          {
            v39 = v2++;
            v40 = *(v5 + v39);
            a2[1] = v2;
            v21 |= (v40 & 0x7F) << v37;
            if ((v40 & 0x80) == 0)
            {
              goto LABEL_73;
            }

            v37 += 7;
            v36 = v38++ >= 9;
            if (v36)
            {
              LODWORD(v21) = 0;
LABEL_73:
              v3 = v39 + 1;
              goto LABEL_77;
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

LABEL_77:
        a1[7] = v21;
        v31 = 2;
      }

      v2 = v3;
    }

    else
    {
      switch(v18)
      {
        case 3:
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > v3)
          {
            *(a2 + 24) = 1;
          }

          else
          {
            a1[3] = *(v5 + v2);
            v2 = a2[1] + 4;
            a2[1] = v2;
          }

          v31 = 4;
          break;
        case 4:
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > v3)
          {
            *(a2 + 24) = 1;
          }

          else
          {
            a1[4] = *(v5 + v2);
            v2 = a2[1] + 4;
            a2[1] = v2;
          }

          v31 = 8;
          break;
        case 5:
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > v3)
          {
            *(a2 + 24) = 1;
          }

          else
          {
            a1[5] = *(v5 + v2);
            v2 = a2[1] + 4;
            a2[1] = v2;
          }

          v31 = 16;
          break;
        default:
          goto LABEL_80;
      }
    }

    a1[2] |= v31;
LABEL_80:
    v3 = a2[2];
    v4 = *(a2 + 24);
    if (v2 >= v3 || (a2[3] & 1) != 0)
    {
      return (v4 & 1) == 0;
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
  return (v4 & 1) == 0;
}

uint64_t avas::ChannelDescription::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 24);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 28);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 8);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 8) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 12));
  v4 = *(v3 + 8);
  if ((v4 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v3 + 20);

  return PB::Writer::write(a2, v7);
}

uint64_t avas::ChannelDescription::formatText(avas::ChannelDescription *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v7 = *(this + 6);
    PB::TextFormatter::format(a2, "flags");
    v5 = *(this + 2);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 7);
  PB::TextFormatter::format(a2, "label");
  v5 = *(this + 2);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "coord0", *(this + 3));
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

LABEL_13:
  PB::TextFormatter::format(a2, "coord1", *(this + 4));
  if ((*(this + 2) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "coord2", *(this + 5));
  }

LABEL_7:

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::ChannelDescription::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 12) == *(a2 + 12) && *(a1 + 20) == *(a2 + 20) && *(a1 + 28) == *(a2 + 28);
}

uint64_t avas::ChannelLayout::default_instance(avas::ChannelLayout *this)
{
  {
    operator new();
  }

  return avas::ChannelLayout::default_instance(void)::gInstance;
}

double avas::ChannelLayout::ChannelLayout(avas::ChannelLayout *this)
{
  *this = &unk_1F5999780;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  return result;
}

{
  *this = &unk_1F5999780;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  return result;
}

avas::ChannelLayout *avas::ChannelLayout::ChannelLayout(avas::ChannelLayout *this, const avas::ChannelLayout *a2)
{
  *this = &unk_1F5999780;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  avas::ChannelLayout::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999780;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  avas::ChannelLayout::copy_from(this, a2);
  return this;
}

void *avas::ChannelLayout::copy_from(avas::ChannelLayout *this, const avas::ChannelLayout *a2)
{
  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  if (*(a2 + 2) != *(a2 + 3))
  {
    operator new();
  }

  *(this + 2) = *(a2 + 2);
  *(this + 5) = *(a2 + 5);
  return result;
}

uint64_t avas::ChannelLayout::ChannelLayout(uint64_t result, uint64_t a2)
{
  *result = &unk_1F5999780;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  v2 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  v3 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  *(result + 8) = *(a2 + 8);
  *(result + 40) = *(a2 + 40);
  return result;
}

{
  *result = &unk_1F5999780;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  v2 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v2;
  v3 = *(result + 32);
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = v3;
  *(result + 8) = *(a2 + 8);
  *(result + 40) = *(a2 + 40);
  return result;
}

uint64_t avas::ChannelLayout::move_from(uint64_t result, uint64_t a2)
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
  *(result + 8) = *(a2 + 8);
  *(result + 40) = *(a2 + 40);
  return result;
}

uint64_t avas::ChannelLayout::operator=(uint64_t result, uint64_t a2)
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
  *(result + 8) = *(a2 + 8);
  *(result + 40) = *(a2 + 40);
  return result;
}

void *avas::ChannelLayout::clear(avas::ChannelLayout *this)
{
  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 2);
  *(this + 2) = 0;
  *(this + 5) = 0;
  return result;
}

uint64_t avas::ChannelLayout::isInitialized(avas::ChannelLayout *this)
{
  for (i = *(this + 2); ; i += 8)
  {
    if (i == *(this + 3))
    {
      return *(this + 8) & 1;
    }

    if ((*(*i + 8) & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t avas::ChannelLayout::readFrom(_DWORD *a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 >= v2 || (a2[3] & 1) != 0)
  {
    return (v4 ^ 1) & 1;
  }

  v4 = 0;
  while (1)
  {
    v5 = *a2;
    if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
    {
      break;
    }

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
      return (v4 ^ 1) & 1;
    }

    v18 = v8 >> 3;
    if ((v8 >> 3) == 3)
    {
      operator new();
    }

    if (v18 == 2)
    {
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v32 = 0;
        v33 = 0;
        v28 = 0;
        if (v2 <= v3)
        {
          v24 = v3;
        }

        else
        {
          v24 = v2;
        }

        while (v24 != v3)
        {
          v34 = v3++;
          v35 = *(v5 + v34);
          a2[1] = v3;
          v28 |= (v35 & 0x7F) << v32;
          if ((v35 & 0x80) == 0)
          {
            goto LABEL_49;
          }

          v32 += 7;
          v36 = v33++ >= 9;
          if (v36)
          {
            LODWORD(v28) = 0;
LABEL_49:
            v24 = v34 + 1;
            goto LABEL_60;
          }
        }

        LODWORD(v28) = 0;
        *(a2 + 24) = 1;
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = (v5 + v3);
        v30 = v3 + 1;
        while (1)
        {
          v24 = v30;
          a2[1] = v30;
          v31 = *v29++;
          v28 |= (v31 & 0x7F) << v26;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          ++v30;
          v12 = v27++ > 8;
          if (v12)
          {
            LODWORD(v28) = 0;
            break;
          }
        }
      }

LABEL_60:
      a1[11] = v28;
      v41 = a1[2] | 2;
    }

    else
    {
      if (v18 != 1)
      {
        goto LABEL_64;
      }

      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v37 = 0;
        v38 = 0;
        v21 = 0;
        if (v2 <= v3)
        {
          v24 = v3;
        }

        else
        {
          v24 = v2;
        }

        while (v24 != v3)
        {
          v39 = v3++;
          v40 = *(v5 + v39);
          a2[1] = v3;
          v21 |= (v40 & 0x7F) << v37;
          if ((v40 & 0x80) == 0)
          {
            goto LABEL_58;
          }

          v37 += 7;
          v36 = v38++ >= 9;
          if (v36)
          {
            LODWORD(v21) = 0;
LABEL_58:
            v24 = v39 + 1;
            goto LABEL_62;
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
        v22 = (v5 + v3);
        v23 = v3 + 1;
        while (1)
        {
          v24 = v23;
          a2[1] = v23;
          v25 = *v22++;
          v21 |= (v25 & 0x7F) << v19;
          if ((v25 & 0x80) == 0)
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

LABEL_62:
      a1[10] = v21;
      v41 = a1[2] | 1;
    }

    a1[2] = v41;
    v3 = v24;
LABEL_64:
    v4 = *(a2 + 24);
    if (v3 >= v2 || (a2[3] & 1) != 0)
    {
      return (v4 ^ 1) & 1;
    }
  }

  v13 = 0;
  v14 = 0;
  v8 = 0;
  if (v3 <= v2)
  {
    v15 = v2;
  }

  else
  {
    v15 = v3;
  }

  while (v15 != v3)
  {
    v16 = v3++;
    v17 = *(v5 + v16);
    a2[1] = v3;
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
      v3 = v16 + 1;
      goto LABEL_22;
    }
  }

  v4 = 1;
  *(a2 + 24) = 1;
  return (v4 ^ 1) & 1;
}

uint64_t avas::ChannelLayout::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 40);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 44);
    this = PB::Writer::writeVarInt(a2);
  }

  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  while (v8 != v7)
  {
    v9 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  return this;
}

uint64_t avas::ChannelLayout::formatText(avas::ChannelLayout *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 10);
    PB::TextFormatter::format(a2, "tag");
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 11);
    PB::TextFormatter::format(a2, "bitmap");
  }

  v8 = *(this + 2);
  v9 = *(this + 3);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "descriptions");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::ChannelLayout::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v3 - v4;
  v6 = *(a2 + 16);
  if (v3 - v4 != *(a2 + 24) - v6)
  {
    return 0;
  }

  if (v3 == v4)
  {
    return 1;
  }

  v7 = 0;
  v8 = v5 >> 3;
  if ((v5 >> 3) <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5 >> 3;
  }

  do
  {
    v10 = *(v4 + 8 * v7);
    v11 = *(v6 + 8 * v7);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (v10 | v11)
      {
        return 0;
      }
    }

    else if (!avas::ChannelDescription::operator==(v10, v11))
    {
      return 0;
    }

    ++v7;
  }

  while (v9 != v7);
  return v7 >= v8;
}

void avas::ChannelLayout::addDescriptions(avas::ChannelLayout *this)
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

uint64_t avas::StreamFormat::default_instance(avas::StreamFormat *this)
{
  {
    operator new();
  }

  return avas::StreamFormat::default_instance(void)::gInstance;
}

double avas::StreamFormat::StreamFormat(avas::StreamFormat *this)
{
  *this = &unk_1F59997B8;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 44) = 0u;
  return result;
}

{
  *this = &unk_1F59997B8;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 44) = 0u;
  return result;
}

avas::StreamFormat *avas::StreamFormat::StreamFormat(avas::StreamFormat *this, const avas::StreamFormat *a2)
{
  *this = &unk_1F59997B8;
  *(this + 2) = 0;
  avas::StreamFormat::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F59997B8;
  *(this + 2) = 0;
  avas::StreamFormat::copy_from(this, a2);
  return this;
}

__n128 avas::StreamFormat::copy_from(avas::StreamFormat *this, const avas::StreamFormat *a2)
{
  v4 = *(a2 + 2);
  if (v4)
  {
    v5 = avas::StreamFormat::mutableLayout(this);
    avas::ChannelLayout::copy_from(v5, v4);
  }

  *(this + 2) = *(a2 + 2);
  result = *(a2 + 24);
  v7 = *(a2 + 40);
  *(this + 14) = *(a2 + 14);
  *(this + 40) = v7;
  *(this + 24) = result;
  return result;
}

uint64_t avas::StreamFormat::layout(avas::StreamFormat *this)
{
  result = *(this + 2);
  if (!result)
  {
    return avas::ChannelLayout::default_instance(0);
  }

  return result;
}

uint64_t avas::StreamFormat::mutableLayout(avas::StreamFormat *this)
{
  if (!*(this + 2))
  {
    operator new();
  }

  return *(this + 2);
}

__n128 avas::StreamFormat::StreamFormat(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F59997B8;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v3;
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = &unk_1F59997B8;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v3;
  *(a1 + 24) = result;
  return result;
}

__n128 avas::StreamFormat::move_from(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 24) = result;
  return result;
}

__n128 avas::StreamFormat::operator=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  *(a1 + 24) = result;
  return result;
}

double avas::StreamFormat::clear(avas::StreamFormat *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 2) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

BOOL avas::StreamFormat::isInitialized(avas::StreamFormat *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  for (i = *(v1 + 16); i != *(v1 + 24); i += 8)
  {
    if ((*(*i + 8) & 1) == 0)
    {
      return 0;
    }
  }

  return (*(v1 + 8) & 1) != 0 && *(this + 8) == 0xFF;
}

uint64_t avas::StreamFormat::readFrom(uint64_t a1, uint64_t *a2)
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
    if ((v8 >> 3) > 4)
    {
      if (v18 <= 6)
      {
        if (v18 == 5)
        {
          if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
          {
            v82 = 0;
            v83 = 0;
            v51 = 0;
            if (v3 <= v2)
            {
              v3 = v2;
            }

            while (v3 != v2)
            {
              v84 = v2++;
              v85 = *(v5 + v84);
              a2[1] = v2;
              v51 |= (v85 & 0x7F) << v82;
              if ((v85 & 0x80) == 0)
              {
                goto LABEL_137;
              }

              v82 += 7;
              v65 = v83++ >= 9;
              if (v65)
              {
                LODWORD(v51) = 0;
LABEL_137:
                v3 = v84 + 1;
                goto LABEL_157;
              }
            }

            LODWORD(v51) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v5 + v2);
            v53 = v2 + 1;
            while (1)
            {
              v3 = v53;
              a2[1] = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              ++v53;
              v12 = v50++ > 8;
              if (v12)
              {
                LODWORD(v51) = 0;
                break;
              }
            }
          }

LABEL_157:
          *(a1 + 44) = v51;
          v90 = *(a1 + 8) | 0x10;
        }

        else
        {
          if (v18 != 6)
          {
            goto LABEL_161;
          }

          if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
          {
            v70 = 0;
            v71 = 0;
            v33 = 0;
            if (v3 <= v2)
            {
              v3 = v2;
            }

            while (v3 != v2)
            {
              v72 = v2++;
              v73 = *(v5 + v72);
              a2[1] = v2;
              v33 |= (v73 & 0x7F) << v70;
              if ((v73 & 0x80) == 0)
              {
                goto LABEL_111;
              }

              v70 += 7;
              v65 = v71++ >= 9;
              if (v65)
              {
                LODWORD(v33) = 0;
LABEL_111:
                v3 = v72 + 1;
                goto LABEL_151;
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
            v34 = (v5 + v2);
            v35 = v2 + 1;
            while (1)
            {
              v3 = v35;
              a2[1] = v35;
              v36 = *v34++;
              v33 |= (v36 & 0x7F) << v31;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              ++v35;
              v12 = v32++ > 8;
              if (v12)
              {
                LODWORD(v33) = 0;
                break;
              }
            }
          }

LABEL_151:
          *(a1 + 48) = v33;
          v90 = *(a1 + 8) | 0x20;
        }
      }

      else
      {
        switch(v18)
        {
          case 7:
            if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
            {
              v78 = 0;
              v79 = 0;
              v45 = 0;
              if (v3 <= v2)
              {
                v3 = v2;
              }

              while (v3 != v2)
              {
                v80 = v2++;
                v81 = *(v5 + v80);
                a2[1] = v2;
                v45 |= (v81 & 0x7F) << v78;
                if ((v81 & 0x80) == 0)
                {
                  goto LABEL_129;
                }

                v78 += 7;
                v65 = v79++ >= 9;
                if (v65)
                {
                  LODWORD(v45) = 0;
LABEL_129:
                  v3 = v80 + 1;
                  goto LABEL_155;
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
              v46 = (v5 + v2);
              v47 = v2 + 1;
              while (1)
              {
                v3 = v47;
                a2[1] = v47;
                v48 = *v46++;
                v45 |= (v48 & 0x7F) << v43;
                if ((v48 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                ++v47;
                v12 = v44++ > 8;
                if (v12)
                {
                  LODWORD(v45) = 0;
                  break;
                }
              }
            }

LABEL_155:
            *(a1 + 52) = v45;
            v90 = *(a1 + 8) | 0x40;
            break;
          case 8:
            if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
            {
              v86 = 0;
              v87 = 0;
              v57 = 0;
              if (v3 <= v2)
              {
                v3 = v2;
              }

              while (v3 != v2)
              {
                v88 = v2++;
                v89 = *(v5 + v88);
                a2[1] = v2;
                v57 |= (v89 & 0x7F) << v86;
                if ((v89 & 0x80) == 0)
                {
                  goto LABEL_145;
                }

                v86 += 7;
                v65 = v87++ >= 9;
                if (v65)
                {
                  LODWORD(v57) = 0;
LABEL_145:
                  v3 = v88 + 1;
                  goto LABEL_159;
                }
              }

              LODWORD(v57) = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = (v5 + v2);
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
                v12 = v56++ > 8;
                if (v12)
                {
                  LODWORD(v57) = 0;
                  break;
                }
              }
            }

LABEL_159:
            *(a1 + 56) = v57;
            v90 = *(a1 + 8) | 0x80;
            break;
          case 9:
            operator new();
          default:
            goto LABEL_161;
        }
      }

      goto LABEL_160;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
        {
          v74 = 0;
          v75 = 0;
          v39 = 0;
          if (v3 <= v2)
          {
            v3 = v2;
          }

          while (v3 != v2)
          {
            v76 = v2++;
            v77 = *(v5 + v76);
            a2[1] = v2;
            v39 |= (v77 & 0x7F) << v74;
            if ((v77 & 0x80) == 0)
            {
              goto LABEL_121;
            }

            v74 += 7;
            v65 = v75++ >= 9;
            if (v65)
            {
              LODWORD(v39) = 0;
LABEL_121:
              v3 = v76 + 1;
              goto LABEL_153;
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
          v40 = (v5 + v2);
          v41 = v2 + 1;
          while (1)
          {
            v3 = v41;
            a2[1] = v41;
            v42 = *v40++;
            v39 |= (v42 & 0x7F) << v37;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            ++v41;
            v12 = v38++ > 8;
            if (v12)
            {
              LODWORD(v39) = 0;
              break;
            }
          }
        }

LABEL_153:
        *(a1 + 36) = v39;
        v90 = *(a1 + 8) | 4;
      }

      else
      {
        if (v18 != 4)
        {
          goto LABEL_161;
        }

        if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
        {
          v66 = 0;
          v67 = 0;
          v27 = 0;
          if (v3 <= v2)
          {
            v3 = v2;
          }

          while (v3 != v2)
          {
            v68 = v2++;
            v69 = *(v5 + v68);
            a2[1] = v2;
            v27 |= (v69 & 0x7F) << v66;
            if ((v69 & 0x80) == 0)
            {
              goto LABEL_103;
            }

            v66 += 7;
            v65 = v67++ >= 9;
            if (v65)
            {
              LODWORD(v27) = 0;
LABEL_103:
              v3 = v68 + 1;
              goto LABEL_149;
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

LABEL_149:
        *(a1 + 40) = v27;
        v90 = *(a1 + 8) | 8;
      }

      goto LABEL_160;
    }

    if (v18 == 1)
    {
      if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > v3)
      {
        *(a2 + 24) = 1;
      }

      else
      {
        *(a1 + 24) = *(v5 + v2);
        v2 = a2[1] + 8;
        a2[1] = v2;
      }

      *(a1 + 8) |= 1u;
      goto LABEL_161;
    }

    if (v18 == 2)
    {
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v61 = 0;
        v62 = 0;
        v21 = 0;
        if (v3 <= v2)
        {
          v3 = v2;
        }

        while (v3 != v2)
        {
          v63 = v2++;
          v64 = *(v5 + v63);
          a2[1] = v2;
          v21 |= (v64 & 0x7F) << v61;
          if ((v64 & 0x80) == 0)
          {
            goto LABEL_95;
          }

          v61 += 7;
          v65 = v62++ >= 9;
          if (v65)
          {
            LODWORD(v21) = 0;
LABEL_95:
            v3 = v63 + 1;
            goto LABEL_147;
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

LABEL_147:
      *(a1 + 32) = v21;
      v90 = *(a1 + 8) | 2;
LABEL_160:
      *(a1 + 8) = v90;
      v2 = v3;
    }

LABEL_161:
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

uint64_t avas::StreamFormat::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 24));
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

  v7 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 8);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(v3 + 36);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 8);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(v3 + 40);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 8);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(v3 + 44);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 8);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 8);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_20:
  v12 = *(v3 + 52);
  this = PB::Writer::writeVarInt(a2);
  if ((*(v3 + 8) & 0x80) != 0)
  {
LABEL_9:
    v5 = *(v3 + 56);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_10:
  v6 = *(v3 + 16);
  if (v6)
  {

    return PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

uint64_t avas::StreamFormat::formatText(avas::StreamFormat *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    PB::TextFormatter::format(a2, "sampleRate", *(this + 3));
    v5 = *(this + 2);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(this + 8);
  PB::TextFormatter::format(a2, "formatID");
  v5 = *(this + 2);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = *(this + 9);
  PB::TextFormatter::format(a2, "formatFlags");
  v5 = *(this + 2);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = *(this + 10);
  PB::TextFormatter::format(a2, "bytesPerPacket");
  v5 = *(this + 2);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = *(this + 11);
  PB::TextFormatter::format(a2, "framesPerPacket");
  v5 = *(this + 2);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = *(this + 12);
  PB::TextFormatter::format(a2, "bytesPerFrame");
  v5 = *(this + 2);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  v14 = *(this + 13);
  PB::TextFormatter::format(a2, "channelsPerFrame");
  if ((*(this + 2) & 0x80) != 0)
  {
LABEL_9:
    v6 = *(this + 14);
    PB::TextFormatter::format(a2, "bitsPerChannel");
  }

LABEL_10:
  v7 = *(this + 2);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "layout");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::StreamFormat::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || memcmp((a1 + 24), (a2 + 24), 0x24uLL))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  result = (v5 | v6) == 0;
  if (v5 && v6)
  {
    v7 = *(a1 + 16);

    return avas::ChannelLayout::operator==(v7, v6);
  }

  return result;
}

uint64_t avas::StreamFormat::clearLayout(avas::StreamFormat *this)
{
  result = *(this + 2);
  *(this + 2) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t avas::AvailableStreamFormat::default_instance(avas::AvailableStreamFormat *this)
{
  {
    operator new();
  }

  return avas::AvailableStreamFormat::default_instance(void)::gInstance;
}

double avas::AvailableStreamFormat::AvailableStreamFormat(avas::AvailableStreamFormat *this)
{
  *this = &unk_1F59997F0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F59997F0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

avas::AvailableStreamFormat *avas::AvailableStreamFormat::AvailableStreamFormat(avas::AvailableStreamFormat *this, const avas::AvailableStreamFormat *a2)
{
  *this = &unk_1F59997F0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  avas::AvailableStreamFormat::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F59997F0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  avas::AvailableStreamFormat::copy_from(this, a2);
  return this;
}

void *avas::AvailableStreamFormat::copy_from(avas::AvailableStreamFormat *this, const avas::AvailableStreamFormat *a2)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = avas::AvailableStreamFormat::mutableFormat(this);
    avas::StreamFormat::copy_from(v5, v4);
  }

  result = std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 1);
  if (*(a2 + 1) != *(a2 + 2))
  {
    operator new();
  }

  return result;
}

uint64_t avas::AvailableStreamFormat::format(avas::AvailableStreamFormat *this)
{
  result = *(this + 4);
  if (!result)
  {
    return avas::StreamFormat::default_instance(0);
  }

  return result;
}

uint64_t avas::AvailableStreamFormat::mutableFormat(avas::AvailableStreamFormat *this)
{
  if (!*(this + 4))
  {
    operator new();
  }

  return *(this + 4);
}

__n128 avas::SampleRateRange::SampleRateRange(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &unk_1F5999828;
  a1->n128_u32[2] = a2->n128_u32[2];
  result = a2[1];
  a1[1] = result;
  return result;
}

{
  a1->n128_u64[0] = &unk_1F5999828;
  a1->n128_u32[2] = a2->n128_u32[2];
  result = a2[1];
  a1[1] = result;
  return result;
}

{
  a1->n128_u64[0] = &unk_1F5999828;
  a1->n128_u32[2] = a2->n128_u32[2];
  result = a2[1];
  a1[1] = result;
  return result;
}

double avas::AvailableStreamFormat::AvailableStreamFormat(uint64_t a1, void *a2)
{
  *a1 = &unk_1F59997F0;
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
  *a1 = &unk_1F59997F0;
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

void *avas::AvailableStreamFormat::move_from(void *result, void *a2)
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

void *avas::AvailableStreamFormat::operator=(void *result, void *a2)
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

void *avas::AvailableStreamFormat::clear(avas::AvailableStreamFormat *this)
{
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return std::vector<std::unique_ptr<avas::client::PortPrefs>>::clear[abi:ne200100](this + 1);
}

uint64_t avas::AvailableStreamFormat::isInitialized(avas::AvailableStreamFormat *this)
{
  result = *(this + 4);
  if (result)
  {
    result = avas::StreamFormat::isInitialized(result);
    if (result)
    {
      v4 = *(this + 1);
      v3 = *(this + 2);
      if (v4 == v3)
      {
        return 1;
      }

      else
      {
        v5 = v4 + 8;
        do
        {
          result = (*(*(v5 - 8) + 8) & 3) == 3;
          v6 = (*(*(v5 - 8) + 8) & 3) != 3 || v5 == v3;
          v5 += 8;
        }

        while (!v6);
      }
    }
  }

  return result;
}

uint64_t avas::AvailableStreamFormat::readFrom(uint64_t a1, uint64_t *a2)
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

uint64_t avas::AvailableStreamFormat::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t avas::AvailableStreamFormat::formatText(avas::AvailableStreamFormat *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "format");
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "sampleRateRange");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::AvailableStreamFormat::operator==(uint64_t a1, uint64_t a2)
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

  else if (!avas::StreamFormat::operator==(v4, v5))
  {
    return 0;
  }

  v9 = a1 + 8;
  v8 = *(a1 + 8);
  v7 = *(v9 + 8);
  v10 = v7 - v8;
  v12 = a2 + 8;
  v11 = *(a2 + 8);
  if (v7 - v8 != *(v12 + 8) - v11)
  {
    return 0;
  }

  if (v7 == v8)
  {
    return 1;
  }

  v13 = 0;
  v14 = v10 >> 3;
  if ((v10 >> 3) <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10 >> 3;
  }

  do
  {
    v16 = *(v8 + 8 * v13);
    v17 = *(v11 + 8 * v13);
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

    else if (!avas::SampleRateRange::operator==(v16, v17))
    {
      return 0;
    }

    ++v13;
  }

  while (v15 != v13);
  return v13 >= v14;
}

uint64_t avas::AvailableStreamFormat::clearFormat(avas::AvailableStreamFormat *this)
{
  result = *(this + 4);
  *(this + 4) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void avas::AvailableStreamFormat::addSampleRateRange(avas::AvailableStreamFormat *this)
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

uint64_t avas::SampleRateRange::default_instance(avas::SampleRateRange *this)
{
  {
    operator new();
  }

  return avas::SampleRateRange::default_instance(void)::gInstance;
}

uint64_t avas::SampleRateRange::SampleRateRange(uint64_t this)
{
  *this = &unk_1F5999828;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F5999828;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

__n128 avas::SampleRateRange::SampleRateRange(__n128 *this, __n128 *a2)
{
  this->n128_u64[0] = &unk_1F5999828;
  this->n128_u32[2] = a2->n128_u32[2];
  result = a2[1];
  this[1] = result;
  return result;
}

__n128 avas::SampleRateRange::copy_from(__n128 *this, __n128 *a2)
{
  this->n128_u32[2] = a2->n128_u32[2];
  result = a2[1];
  this[1] = result;
  return result;
}

__n128 avas::SampleRateRange::operator=(__n128 *a1, __n128 *a2)
{
  a1->n128_u32[2] = a2->n128_u32[2];
  result = a2[1];
  a1[1] = result;
  return result;
}

{
  a1->n128_u32[2] = a2->n128_u32[2];
  result = a2[1];
  a1[1] = result;
  return result;
}

__n128 avas::SampleRateRange::move_from(__n128 *a1, __n128 *a2)
{
  a1->n128_u32[2] = a2->n128_u32[2];
  result = a2[1];
  a1[1] = result;
  return result;
}

uint64_t avas::SampleRateRange::clear(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

BOOL avas::SampleRateRange::readFrom(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = *(a2 + 24);
  if (v2 >= v3 || (a2[3] & 1) != 0)
  {
    return (v4 & 1) == 0;
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
      return (v4 & 1) == 0;
    }

    v18 = v8 >> 3;
    if ((v8 >> 3) == 2)
    {
      if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > v3)
      {
        goto LABEL_32;
      }

      *(a1 + 24) = *(v5 + v2);
    }

    else
    {
      if (v18 != 1)
      {
        goto LABEL_34;
      }

      if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > v3)
      {
LABEL_32:
        *(a2 + 24) = 1;
        goto LABEL_33;
      }

      *(a1 + 16) = *(v5 + v2);
    }

    v2 = a2[1] + 8;
    a2[1] = v2;
LABEL_33:
    *(a1 + 8) |= v18;
LABEL_34:
    v3 = a2[2];
    v4 = *(a2 + 24);
    if (v2 >= v3 || (a2[3] & 1) != 0)
    {
      return (v4 & 1) == 0;
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
  return (v4 & 1) == 0;
}

uint64_t avas::SampleRateRange::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 24);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

uint64_t avas::SampleRateRange::formatText(avas::SampleRateRange *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    PB::TextFormatter::format(a2, "minimum", *(this + 2));
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "maximum", *(this + 3));
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::SampleRateRange::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
}

uint64_t avas::ActivationContext::default_instance(avas::ActivationContext *this)
{
  {
    operator new();
  }

  return avas::ActivationContext::default_instance(void)::gInstance;
}

uint64_t avas::ActivationContext::ActivationContext(uint64_t this)
{
  *this = &unk_1F5999860;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_1F5999860;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0;
  return this;
}

avas::ActivationContext *avas::ActivationContext::ActivationContext(avas::ActivationContext *this, const avas::ActivationContext *a2)
{
  *this = &unk_1F5999860;
  *(this + 2) = 0;
  *(this + 3) = 0;
  avas::ActivationContext::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999860;
  *(this + 2) = 0;
  *(this + 3) = 0;
  avas::ActivationContext::copy_from(this, a2);
  return this;
}

uint64_t avas::ActivationContext::copy_from(avas::ActivationContext *this, const avas::ActivationContext *a2)
{
  result = caulk::xstring::assign((this + 16), (a2 + 16));
  *(this + 2) = *(a2 + 2);
  v5 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = v5;
  return result;
}

void *avas::ActivationContext::ActivationContext(void *a1, uint64_t a2)
{
  *a1 = &unk_1F5999860;
  a1[2] = 0;
  a1[3] = 0;
  avas::ActivationContext::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999860;
  a1[2] = 0;
  a1[3] = 0;
  avas::ActivationContext::move_from(a1, a2);
  return a1;
}

uint64_t avas::ActivationContext::move_from(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  result = caulk::xstring::clear(v6);
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  return result;
}

uint64_t avas::ActivationContext::clear(avas::ActivationContext *this)
{
  result = caulk::xstring::clear((this + 16));
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return result;
}

BOOL avas::ActivationContext::readFrom(_DWORD *a1, uint64_t *a2)
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
    if ((v10 >> 3) > 2)
    {
      if (v20 == 3)
      {
        if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
        {
          v49 = 0;
          v50 = 0;
          v36 = 0;
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
            v51 = v3++;
            v52 = *(v7 + v51);
            a2[1] = v3;
            v36 |= (v52 & 0x7F) << v49;
            if ((v52 & 0x80) == 0)
            {
              goto LABEL_76;
            }

            v49 += 7;
            v44 = v50++ >= 9;
            if (v44)
            {
              LODWORD(v36) = 0;
LABEL_76:
              v26 = v51 + 1;
              goto LABEL_82;
            }
          }

          LODWORD(v36) = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v7 + v3);
          v38 = v3 + 1;
          while (1)
          {
            v26 = v38;
            a2[1] = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
            if (v14)
            {
              LODWORD(v36) = 0;
              break;
            }
          }
        }

LABEL_82:
        a1[9] = v36;
        v53 = a1[2] | 8;
      }

      else
      {
        if (v20 != 4)
        {
          goto LABEL_84;
        }

        if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
        {
          v40 = 0;
          v41 = 0;
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
            v42 = v3++;
            v43 = *(v7 + v42);
            a2[1] = v3;
            v23 |= (v43 & 0x7F) << v40;
            if ((v43 & 0x80) == 0)
            {
              goto LABEL_58;
            }

            v40 += 7;
            v44 = v41++ >= 9;
            if (v44)
            {
              LODWORD(v23) = 0;
LABEL_58:
              v26 = v42 + 1;
              goto LABEL_78;
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

LABEL_78:
        a1[10] = v23;
        v53 = a1[2] | 4;
      }
    }

    else
    {
      if (v20 != 1)
      {
        if (v20 == 2)
        {
          PB::Reader::read();
          caulk::xstring::assign();
          a1[2] |= 2u;
          v3 = a2[1];
          v2 = a2[2];
        }

        goto LABEL_84;
      }

      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v45 = 0;
        v46 = 0;
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
          v47 = v3++;
          v48 = *(v7 + v47);
          a2[1] = v3;
          v30 |= (v48 & 0x7F) << v45;
          if ((v48 & 0x80) == 0)
          {
            goto LABEL_67;
          }

          v45 += 7;
          v44 = v46++ >= 9;
          if (v44)
          {
            LODWORD(v30) = 0;
LABEL_67:
            v26 = v47 + 1;
            goto LABEL_80;
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

LABEL_80:
      a1[8] = v30;
      v53 = a1[2] | 1;
    }

    a1[2] = v53;
    v3 = v26;
LABEL_84:
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

void sub_1DE8D5B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::ActivationContext::writeTo(avas::ActivationContext *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 8);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
  }

  if ((v4 & 2) != 0)
  {
    caulk::xstring::as_std_string((this + 16), &__p);
    PB::Writer::write();
    if (v9 < 0)
    {
      operator delete(__p);
    }

    v4 = *(this + 2);
  }

  if ((v4 & 4) != 0)
  {
    v6 = *(this + 10);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
  }

  if ((v4 & 8) != 0)
  {
    v7 = *(this + 9);
    PB::Writer::writeVarInt(a2);
  }
}

void sub_1DE8D5C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::ActivationContext::formatText(avas::ActivationContext *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 8);
    PB::TextFormatter::format(a2, "trigger");
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    caulk::xstring::as_std_string((this + 16), &__p);
    PB::TextFormatter::format();
    if (v11 < 0)
    {
      operator delete(__p);
    }

    v5 = *(this + 2);
  }

  if ((v5 & 4) != 0)
  {
    v7 = *(this + 10);
    PB::TextFormatter::format(a2, "accessibilityPreference");
    v5 = *(this + 2);
  }

  if ((v5 & 8) != 0)
  {
    v8 = *(this + 9);
    PB::TextFormatter::format(a2, "callDirection");
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8D5D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::ActivationContext::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && (*(a1 + 32) == *(a2 + 32) ? (v2 = *(a1 + 40) == *(a2 + 40)) : (v2 = 0), v2))
  {
    return caulk::xstring::compare((a1 + 16), (a2 + 16)) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t avas::AggregateDevice::default_instance(avas::AggregateDevice *this)
{
  {
    operator new();
  }

  return avas::AggregateDevice::default_instance(void)::gInstance;
}

double avas::AggregateDevice::AggregateDevice(avas::AggregateDevice *this)
{
  *this = &unk_1F5999898;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  return result;
}

{
  *this = &unk_1F5999898;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  return result;
}

avas::AggregateDevice *avas::AggregateDevice::AggregateDevice(avas::AggregateDevice *this, caulk::xstring **a2)
{
  *this = &unk_1F5999898;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  avas::AggregateDevice::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999898;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  avas::AggregateDevice::copy_from(this, a2);
  return this;
}

uint64_t avas::AggregateDevice::copy_from(caulk::xstring **this, caulk::xstring **a2)
{
  caulk::xstring::assign((this + 5), (a2 + 5));
  caulk::xstring::assign((this + 7), (a2 + 7));
  if (this != a2)
  {
    std::vector<caulk::xstring>::__assign_with_size[abi:ne200100]<caulk::xstring*,caulk::xstring*>(this + 2, a2[2], a2[3], (a2[3] - a2[2]) >> 4);
  }

  caulk::xstring::assign((this + 9), (a2 + 9));
  result = caulk::xstring::assign((this + 11), (a2 + 11));
  *(this + 2) = *(a2 + 2);
  return result;
}

uint64_t avas::AggregateDevice::AggregateDevice(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5999898;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  avas::AggregateDevice::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F5999898;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  avas::AggregateDevice::move_from(a1, a2);
  return a1;
}

uint64_t avas::AggregateDevice::move_from(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v8);
  v8 = 0;
  v9 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  v8 = 0;
  v9 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::clear(&v8);
  v8 = 0;
  v9 = 0;
  caulk::xstring::move();
  caulk::xstring::move();
  caulk::xstring::move();
  result = caulk::xstring::clear(&v8);
  *(a1 + 8) = *(a2 + 8);
  return result;
}

uint64_t avas::AggregateDevice::clear(caulk::xstring **this)
{
  caulk::xstring::clear((this + 5));
  caulk::xstring::clear((this + 7));
  std::vector<caulk::xstring>::__base_destruct_at_end[abi:ne200100]((this + 2), this[2]);
  caulk::xstring::clear((this + 9));
  result = caulk::xstring::clear((this + 11));
  *(this + 2) = 0;
  return result;
}

BOOL avas::AggregateDevice::readFrom(uint64_t a1, uint64_t *a2)
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
        return (v4 & 1) == 0;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          PB::Reader::read();
          caulk::xstring::assign();
          v23 = *(a1 + 8) | 1;
        }

        else
        {
          if (v22 != 2)
          {
            goto LABEL_35;
          }

          PB::Reader::read();
          caulk::xstring::assign();
          v23 = *(a1 + 8) | 2;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            v24 = *(a1 + 24);
            if (v24 >= *(a1 + 32))
            {
              v25 = std::vector<caulk::xstring>::__emplace_back_slow_path<>(a1 + 16);
            }

            else
            {
              *v24 = 0;
              v24[1] = 0;
              v25 = (v24 + 2);
            }

            *(a1 + 24) = v25;
            PB::Reader::read();
            caulk::xstring::assign();
            goto LABEL_35;
          case 4:
            PB::Reader::read();
            caulk::xstring::assign();
            v23 = *(a1 + 8) | 4;
            break;
          case 5:
            PB::Reader::read();
            caulk::xstring::assign();
            v23 = *(a1 + 8) | 8;
            break;
          default:
            goto LABEL_35;
        }
      }

      *(a1 + 8) = v23;
LABEL_35:
      v2 = a2[1];
      v3 = a2[2];
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (a2[3] & 1) == 0);
  }

  return (v4 & 1) == 0;
}

void sub_1DE8D6564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::AggregateDevice::writeTo(avas::AggregateDevice *this, PB::Writer *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    caulk::xstring::as_std_string((this + 40), __p);
    PB::Writer::write();
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(this + 2);
  }

  if ((v3 & 2) != 0)
  {
    caulk::xstring::as_std_string((this + 56), __p);
    PB::Writer::write();
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v4 = *(this + 2);
  v5 = *(this + 3);
  while (v4 != v5)
  {
    caulk::xstring::as_std_string(v4, __p);
    PB::Writer::write();
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = (v4 + 16);
  }

  v6 = *(this + 2);
  if ((v6 & 4) != 0)
  {
    caulk::xstring::as_std_string((this + 72), __p);
    PB::Writer::write();
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *(this + 2);
  }

  if ((v6 & 8) != 0)
  {
    caulk::xstring::as_std_string((this + 88), __p);
    PB::Writer::write();
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DE8D66D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::AggregateDevice::formatText(avas::AggregateDevice *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    caulk::xstring::as_std_string((this + 40), __p);
    PB::TextFormatter::format();
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    caulk::xstring::as_std_string((this + 56), __p);
    PB::TextFormatter::format();
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(this + 2);
  for (i = *(this + 3); v6 != i; v6 = (v6 + 16))
  {
    caulk::xstring::as_std_string(v6, __p);
    PB::TextFormatter::format();
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(this + 2);
  if ((v8 & 4) != 0)
  {
    caulk::xstring::as_std_string((this + 72), __p);
    PB::TextFormatter::format();
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = *(this + 2);
  }

  if ((v8 & 8) != 0)
  {
    caulk::xstring::as_std_string((this + 88), __p);
    PB::TextFormatter::format();
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8D687C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL avas::AggregateDevice::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (caulk::xstring::compare((a1 + 40), (a2 + 40)))
  {
    return 0;
  }

  if (caulk::xstring::compare((a1 + 56), (a2 + 56)))
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
    if (((v5 - v6) >> 4) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = (v5 - v6) >> 4;
    }

    while (!caulk::xstring::compare((*(a1 + 16) + v7), (*(a2 + 16) + v7)))
    {
      v7 += 16;
      if (!--v8)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

LABEL_12:
  if (caulk::xstring::compare((a1 + 72), (a2 + 72)))
  {
    return 0;
  }

  return caulk::xstring::compare((a1 + 88), (a2 + 88)) == 0;
}

uint64_t avas::RouteIdentifierCore::default_instance(avas::RouteIdentifierCore *this)
{
  {
    operator new();
  }

  return avas::RouteIdentifierCore::default_instance(void)::gInstance;
}

uint64_t avas::RouteIdentifierCore::RouteIdentifierCore(uint64_t this)
{
  *this = &unk_1F59998D0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F59998D0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

avas::RouteIdentifierCore *avas::RouteIdentifierCore::RouteIdentifierCore(avas::RouteIdentifierCore *this, const avas::RouteIdentifierCore *a2)
{
  *this = &unk_1F59998D0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  avas::RouteIdentifierCore::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F59998D0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  avas::RouteIdentifierCore::copy_from(this, a2);
  return this;
}

uint64_t avas::RouteIdentifierCore::copy_from(avas::RouteIdentifierCore *this, const avas::RouteIdentifierCore *a2)
{
  result = caulk::xstring::assign((this + 16), (a2 + 16));
  *(this + 2) = *(a2 + 2);
  *(this + 8) = *(a2 + 8);
  return result;
}

void *avas::RouteIdentifierCore::RouteIdentifierCore(void *a1, uint64_t a2)
{
  *a1 = &unk_1F59998D0;
  a1[2] = 0;
  a1[3] = 0;
  avas::RouteIdentifierCore::move_from(a1, a2);
  return a1;
}

{
  *a1 = &unk_1F59998D0;
  a1[2] = 0;
  a1[3] = 0;
  avas::RouteIdentifierCore::move_from(a1, a2);
  return a1;
}

uint64_t avas::RouteIdentifierCore::move_from(uint64_t a1, uint64_t a2)
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

uint64_t avas::RouteIdentifierCore::clear(avas::RouteIdentifierCore *this)
{
  result = caulk::xstring::clear((this + 16));
  *(this + 2) = 0;
  *(this + 8) = 0;
  return result;
}

BOOL avas::RouteIdentifierCore::readFrom(uint64_t a1, uint64_t *a2)
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
      if (!(v4 & 1 | ((v10 & 7) == 4)))
      {
        if ((v10 >> 3) == 2)
        {
          PB::Reader::read();
          caulk::xstring::assign();
          *(a1 + 8) |= 2u;
          v3 = a2[1];
          v2 = a2[2];
        }

        else if ((v10 >> 3) == 1)
        {
          if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
          {
            v27 = 0;
            v28 = 0;
            v22 = 0;
            if (v2 <= v3)
            {
              v25 = v3;
            }

            else
            {
              v25 = v2;
            }

            while (v25 != v3)
            {
              v29 = v3++;
              v30 = *(v7 + v29);
              a2[1] = v3;
              v22 |= (v30 & 0x7F) << v27;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_41;
              }

              v27 += 7;
              if (v28++ >= 9)
              {
                LODWORD(v22) = 0;
LABEL_41:
                v25 = v29 + 1;
                goto LABEL_43;
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
            v23 = (v7 + v3);
            v24 = v3 + 1;
            while (1)
            {
              v25 = v24;
              a2[1] = v24;
              v26 = *v23++;
              v22 |= (v26 & 0x7F) << v20;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              ++v24;
              v14 = v21++ > 8;
              if (v14)
              {
                LODWORD(v22) = 0;
                break;
              }
            }
          }

LABEL_43:
          *(a1 + 32) = v22;
          *(a1 + 8) |= 1u;
          v3 = v25;
        }

        v4 = *(a2 + 24);
        if (v3 < v2 && (a2[3] & 1) == 0)
        {
          continue;
        }
      }

      return (v4 & 1) == 0;
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
  }

  return (v4 & 1) == 0;
}

void sub_1DE8D6F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::RouteIdentifierCore::writeTo(avas::RouteIdentifierCore *this, PB::Writer *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    v5 = *(this + 8);
    PB::Writer::writeVarInt(a2);
    v4 = *(this + 2);
  }

  if ((v4 & 2) != 0)
  {
    caulk::xstring::as_std_string((this + 16), &__p);
    PB::Writer::write();
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1DE8D702C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::RouteIdentifierCore::formatText(avas::RouteIdentifierCore *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 8);
    PB::TextFormatter::format(a2, "topologySource");
    v5 = *(this + 2);
  }

  if ((v5 & 2) != 0)
  {
    caulk::xstring::as_std_string((this + 16), &__p);
    PB::TextFormatter::format();
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }

  return PB::TextFormatter::endObject(a2);
}

void sub_1DE8D70DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::RouteIdentifier::default_instance(avas::RouteIdentifier *this)
{
  {
    operator new();
  }

  return avas::RouteIdentifier::default_instance(void)::gInstance;
}

uint64_t avas::RouteIdentifier::RouteIdentifier(uint64_t this)
{
  *this = &unk_1F5999908;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F5999908;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

avas::RouteIdentifier *avas::RouteIdentifier::RouteIdentifier(avas::RouteIdentifier *this, const avas::RouteIdentifier *a2)
{
  *this = &unk_1F5999908;
  *(this + 2) = 0;
  avas::RouteIdentifier::copy_from(this, a2);
  return this;
}

{
  *this = &unk_1F5999908;
  *(this + 2) = 0;
  avas::RouteIdentifier::copy_from(this, a2);
  return this;
}

avas::RouteIdentifier *avas::RouteIdentifier::copy_from(avas::RouteIdentifier *this, const avas::RouteIdentifier *a2)
{
  v3 = this;
  v4 = *(a2 + 2);
  if (v4)
  {
    v5 = avas::RouteIdentifier::mutableCoreIdentifier(this);
    this = avas::RouteIdentifierCore::copy_from(v5, v4);
  }

  *(v3 + 2) = *(a2 + 2);
  *(v3 + 6) = *(a2 + 6);
  return this;
}

uint64_t avas::RouteIdentifier::coreIdentifier(avas::RouteIdentifier *this)
{
  result = *(this + 2);
  if (!result)
  {
    return avas::RouteIdentifierCore::default_instance(0);
  }

  return result;
}

uint64_t avas::RouteIdentifier::mutableCoreIdentifier(avas::RouteIdentifier *this)
{
  if (!*(this + 2))
  {
    operator new();
  }

  return *(this + 2);
}

uint64_t avas::RouteIdentifier::RouteIdentifier(uint64_t result, uint64_t a2)
{
  *result = &unk_1F5999908;
  *(result + 16) = 0;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  return result;
}

{
  *result = &unk_1F5999908;
  *(result + 16) = 0;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t avas::RouteIdentifier::move_from(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t avas::RouteIdentifier::operator=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t avas::RouteIdentifier::clear(avas::RouteIdentifier *this)
{
  result = *(this + 2);
  *(this + 2) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 2) = 0;
  *(this + 6) = 0;
  return result;
}

uint64_t avas::RouteIdentifier::readFrom(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *(a2 + 24);
  if (v3 < v2 && (a2[3] & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v5 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

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
      if (!(v4 & 1 | ((v8 & 7) == 4)))
      {
        if ((v8 >> 3) == 2)
        {
          operator new();
        }

        if ((v8 >> 3) == 1)
        {
          if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
          {
            v25 = 0;
            v26 = 0;
            v20 = 0;
            if (v2 <= v3)
            {
              v23 = v3;
            }

            else
            {
              v23 = v2;
            }

            while (v23 != v3)
            {
              v27 = v3++;
              v28 = *(v5 + v27);
              a2[1] = v3;
              v20 |= (v28 & 0x7F) << v25;
              if ((v28 & 0x80) == 0)
              {
                goto LABEL_41;
              }

              v25 += 7;
              if (v26++ >= 9)
              {
                LODWORD(v20) = 0;
LABEL_41:
                v23 = v27 + 1;
                goto LABEL_43;
              }
            }

            LODWORD(v20) = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v21 = (v5 + v3);
            v22 = v3 + 1;
            while (1)
            {
              v23 = v22;
              a2[1] = v22;
              v24 = *v21++;
              v20 |= (v24 & 0x7F) << v18;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              ++v22;
              v12 = v19++ > 8;
              if (v12)
              {
                LODWORD(v20) = 0;
                break;
              }
            }
          }

LABEL_43:
          *(a1 + 24) = v20;
          *(a1 + 8) |= 1u;
          v3 = v23;
        }

        v4 = *(a2 + 24);
        if (v3 < v2 && (a2[3] & 1) == 0)
        {
          continue;
        }
      }

      return (v4 ^ 1) & 1;
    }

    v13 = 0;
    v14 = 0;
    v8 = 0;
    if (v3 <= v2)
    {
      v15 = v2;
    }

    else
    {
      v15 = v3;
    }

    while (v15 != v3)
    {
      v16 = v3++;
      v17 = *(v5 + v16);
      a2[1] = v3;
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
        v3 = v16 + 1;
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

  return (v4 ^ 1) & 1;
}

uint64_t avas::RouteIdentifier::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 8))
  {
    v4 = *(this + 24);
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 16);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t avas::RouteIdentifier::formatText(avas::RouteIdentifier *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 8))
  {
    v5 = *(this + 6);
    PB::TextFormatter::format(a2, "topologyClass");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "coreIdentifier");
  }

  return PB::TextFormatter::endObject(a2);
}

BOOL avas::RouteIdentifier::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  result = (v3 | v4) == 0;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return avas::RouteIdentifierCore::operator==(v3, v4);
  }

  return result;
}

uint64_t avas::RouteIdentifier::clearCoreIdentifier(avas::RouteIdentifier *this)
{
  result = *(this + 2);
  *(this + 2) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void avas::ChannelDescription::~ChannelDescription(avas::ChannelDescription *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1E12C2EB0);
}

void avas::ChannelLayout::~ChannelLayout(avas::ChannelLayout *this)
{
  *this = &unk_1F5999780;
  v2 = (this + 16);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
}

{
  *this = &unk_1F5999780;
  v2 = (this + 16);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
  MEMORY[0x1E12C2EB0]();
}

void avas::StreamFormat::~StreamFormat(avas::StreamFormat *this)
{
  avas::StreamFormat::~StreamFormat(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F59997B8;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void avas::AvailableStreamFormat::~AvailableStreamFormat(avas::AvailableStreamFormat *this)
{
  avas::AvailableStreamFormat::~AvailableStreamFormat(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F59997F0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 8);
  std::vector<std::unique_ptr<avas::client::IOControllerPrefs>>::__destroy_vector::operator()[abi:ne200100](&v3);
  PB::Base::~Base(this);
}

void avas::SampleRateRange::~SampleRateRange(avas::SampleRateRange *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1E12C2EB0);
}

void avas::ActivationContext::~ActivationContext(avas::ActivationContext *this)
{
  avas::ActivationContext::~ActivationContext(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999860;
  caulk::xstring::clear((this + 16));

  PB::Base::~Base(this);
}

void avas::AggregateDevice::~AggregateDevice(avas::AggregateDevice *this)
{
  avas::AggregateDevice::~AggregateDevice(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999898;
  caulk::xstring::clear((this + 88));
  caulk::xstring::clear((this + 72));
  caulk::xstring::clear((this + 56));
  caulk::xstring::clear((this + 40));
  v2 = (this + 16);
  std::vector<caulk::xstring>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);
}

void avas::RouteIdentifierCore::~RouteIdentifierCore(avas::RouteIdentifierCore *this)
{
  avas::RouteIdentifierCore::~RouteIdentifierCore(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F59998D0;
  caulk::xstring::clear((this + 16));

  PB::Base::~Base(this);
}

void avas::RouteIdentifier::~RouteIdentifier(avas::RouteIdentifier *this)
{
  avas::RouteIdentifier::~RouteIdentifier(this);

  JUMPOUT(0x1E12C2EB0);
}

{
  *this = &unk_1F5999908;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void avas::error_category::message(int __val@<W1>, uint64_t a2@<X8>)
{
  switch(__val)
  {
    case -1:
      v4 = "Unknown error";
      goto LABEL_27;
    case 0:
      v4 = "None";
      goto LABEL_27;
    case 1:
      v4 = "Exception caught";
      goto LABEL_27;
    case 2:
      v4 = "Unimplemented";
      goto LABEL_27;
    case 3:
      v4 = "XPC timeout";
      goto LABEL_27;
    case 4:
      v4 = "Invalid session token";
      goto LABEL_27;
    case 5:
      v4 = "Session access permission error";
      goto LABEL_27;
    case 6:
      v4 = "Message parse error";
      goto LABEL_27;
    case 7:
      v4 = "Invalid state change";
      goto LABEL_27;
    case 8:
      v4 = "Too many configuration requests";
      goto LABEL_27;
    case 9:
      v4 = "Invalid parameter";
      goto LABEL_27;
    case 10:
      v4 = "Block already started/stopped";
      goto LABEL_27;
    case 11:
      v4 = "Client session is no longer valid";
      goto LABEL_27;
    case 12:
      v4 = "Invalid IO controller type";
      goto LABEL_27;
    case 13:
      v4 = "Expired AURA object";
      goto LABEL_27;
    case 14:
      v4 = "Expired sub-session object";
      goto LABEL_27;
    case 16:
      v4 = "Restarting I/O after session reconfiguration failed";
      goto LABEL_27;
    case 17:
      v4 = "AURA simulation failed";
      goto LABEL_27;
    case 18:
      v4 = "Multiple I/O blocks with an unmixable output format";
      goto LABEL_27;
    case 19:
      v4 = "Cannot transfer I/O resources of an active session";
      goto LABEL_27;
    case 20:
      v4 = "Process does not own session's I/O resources";
      goto LABEL_27;
    case 21:
      v4 = "Starting I/O timed out";
      goto LABEL_27;
    case 22:
      v4 = "Unknown property";
      goto LABEL_27;
    case 23:
      v4 = "Exception when dispatching property";
      goto LABEL_27;
    case 24:
      v4 = "Bad hardware state (e.g. sample rate 0)";
LABEL_27:

      std::string::basic_string[abi:ne200100]<0>(a2, v4);
      break;
    default:
      std::to_string(&v7, __val);
      v5 = std::string::insert(&v7, 0, "Garbage error code: ", 0x14uLL);
      v6 = *&v5->__r_.__value_.__l.__data_;
      *(a2 + 16) = *(&v5->__r_.__value_.__l + 2);
      *a2 = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v7.__r_.__value_.__l.__data_);
      }

      break;
  }
}

void sub_1DE8D8158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::public_error_category::message(int __val@<W1>, uint64_t a2@<X8>)
{
  if (__val <= 561145186)
  {
    if (__val <= 560161139)
    {
      switch(__val)
      {
        case -50:
          v4 = "Bad parameter";
          goto LABEL_40;
        case 0:
          v4 = &unk_1DE8DB503;
          goto LABEL_40;
        case 560030580:
          v4 = "Action cannot be performed while I/O is running";
          goto LABEL_40;
      }
    }

    else if (__val > 561015904)
    {
      if (__val == 561015905)
      {
        v4 = "Missing background mode or category is not compatible with background audio usage";
        goto LABEL_40;
      }

      if (__val == 561017449)
      {
        v4 = "Insufficient priority to activate at this time";
        goto LABEL_40;
      }
    }

    else
    {
      if (__val == 560161140)
      {
        v4 = "Operation is incompatible with the current audio category";
        goto LABEL_40;
      }

      if (__val == 560557684)
      {
        v4 = "Activation cannot be performed when the application is backgrounded";
        goto LABEL_40;
      }
    }
  }

  else if (__val > 1768841570)
  {
    if (__val > 1936290408)
    {
      if (__val == 1936290409)
      {
        v4 = "Action cannot be performed because Siri is recording";
        goto LABEL_40;
      }

      if (__val == 2003329396)
      {
        v4 = "An unspecifed error occurred";
        goto LABEL_40;
      }
    }

    else
    {
      if (__val == 1768841571)
      {
        v4 = "Session not active";
        goto LABEL_40;
      }

      if (__val == 1836282486)
      {
        v4 = "Server error";
        goto LABEL_40;
      }
    }
  }

  else if (__val > 561210738)
  {
    if (__val == 561210739)
    {
      v4 = "The session has been destroyed";
      goto LABEL_40;
    }

    if (__val == 1701737535)
    {
      v4 = "Missing entitlement";
      goto LABEL_40;
    }
  }

  else
  {
    if (__val == 561145187)
    {
      v4 = "Cannot start recording at this time";
      goto LABEL_40;
    }

    if (__val == 561145203)
    {
      v4 = "Hardware resource not available";
LABEL_40:

      std::string::basic_string[abi:ne200100]<0>(a2, v4);
      return;
    }
  }

  std::to_string(&v7, __val);
  v5 = std::string::insert(&v7, 0, "Garbage error code: ", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v5->__r_.__value_.__l + 2);
  *a2 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1DE8D8404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void avas::error_category::~error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E12C2EB0);
}

void avas::public_error_category::~public_error_category(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E12C2EB0);
}

id avac::CreateInProcessIONodeSessionServer(avac *this)
{
  v2 = avas::sSharedIONodeSessionServerFactory;
  if (avas::sSharedIONodeSessionServerFactory)
  {
    v2 = (*(avas::sSharedIONodeSessionServerFactory + 16))();
    v1 = vars8;
  }

  return v2;
}

id avac::CreateUUIDForIONodeSessionID(avac *this)
{
  v1 = 0;
  v6[2] = *MEMORY[0x1E69E9840];
  v5 = this;
  v6[0] = 0;
  v6[1] = 0;
  do
  {
    *(v6 + v1) = *(&v5 | ~v1 & 3);
    ++v1;
  }

  while (v1 != 16);
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t avas::SetInProcessIONodeSessionServerFactory()
{
  avas::sSharedIONodeSessionServerFactory = MEMORY[0x1E12C3210]();

  return MEMORY[0x1EEE66BB8]();
}

void applesauce::dispatch::v1::queue::~queue(id *this)
{
  v2 = *this;
  *this = 0;
}

void avas::server::SessionCollection::SessionPresentingIterator::SessionPresentingIterator(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void FormatNSErrorForReturn(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_1DE897000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Not expected to see error code %d!", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  switch(__clz(**a1 ^ 0xFF))
  {
    case 0x18u:
      *a1 = v1 + 1;
      v2 = *v1;
      break;
    case 0x1Au:
      if (a1[1] - v1 < 2)
      {
        goto LABEL_31;
      }

      v9 = v1 + 1;
      if ((v1[1] & 0xC0) != 0x80)
      {
        goto LABEL_31;
      }

      *a1 = v9;
      v10 = *v1 & 0x1F;
      *a1 = v1 + 2;
      if (v10 < 2)
      {
        v2 = 2147549181;
      }

      else
      {
        v2 = *v9 & 0x3F | (v10 << 6);
      }

      break;
    case 0x1Bu:
      if (a1[1] - v1 < 3)
      {
        goto LABEL_31;
      }

      v3 = 1;
      do
      {
        v4 = v1[v3] & 0xC0;
      }

      while (v4 == 128 && v3++ != 2);
      if (v4 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v6 = *v1 & 0xF;
      *a1 = v1 + 2;
      v7 = (v6 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      if (v7 >= 0x800)
      {
        v8 = v7 | v1[2] & 0x3F;
        if ((v7 & 0xF800) == 0xD800)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v8;
        }
      }

      break;
    case 0x1Cu:
      if (a1[1] - v1 < 4)
      {
        goto LABEL_31;
      }

      v11 = 1;
      do
      {
        v12 = v1[v11] & 0xC0;
      }

      while (v12 == 128 && v11++ != 3);
      if (v12 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v14 = *v1 & 7;
      *a1 = v1 + 2;
      v15 = (v14 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      v16 = v1[2];
      *a1 = v1 + 4;
      if (v15 >= 0x400)
      {
        v17 = v1[3] & 0x3F | ((v15 | v16 & 0x3F) << 6);
        if (v15 >> 10 >= 0x11)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v17;
        }
      }

      break;
    default:
LABEL_31:
      v2 = 2147549181;
      *a1 = v1 + 1;
      break;
  }

  return v2;
}

uint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v17);
  std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:ne200100](&v18, v8 & 0x7FFFFFFF);
  if (a1 == a2)
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v10 = std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](v17);
    v12 = v11;
    v13 = std::__width_estimation_table::__estimated_width[abi:ne200100](v10);
    v14 = v9 + v13;
    if (!a4 && v14 > a3)
    {
      break;
    }

    v15 = v12 == a2 || v14 > a3;
    v9 += v13;
  }

  while (!v15);
  return v9;
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](unsigned __int8 **a1, unsigned int *a2, _BYTE *a3)
{
  v5 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](a1) & 0x7FFFFFFF;
  v6 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](v5);
  v7 = v6;
  result = std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](a2, v5, v6);
  *a2 = v5;
  *a3 = v7;
  return result;
}

void avas::smipc_Server_types_utility::updateDefaultRoute()
{
  v0 = _os_crash();
  __break(1u);
  CFRelease(v0);
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x1EEE30A58](this, a2);
}

{
  return MEMORY[0x1EEE30A70](this, a2);
}

{
  return MEMORY[0x1EEE30A78](this, a2);
}

{
  return MEMORY[0x1EEE30A88](this, a2);
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x1EEE30B08](this);
}

{
  return MEMORY[0x1EEE30B10](this);
}

{
  return MEMORY[0x1EEE30B20](this);
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x1EEE64438](this, a2, a3, a4);
}

{
  return MEMORY[0x1EEE64450](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x1EEE64440]();
}

{
  return MEMORY[0x1EEE64448]();
}

{
  return MEMORY[0x1EEE64458]();
}

{
  return MEMORY[0x1EEE64460]();
}

{
  return MEMORY[0x1EEE64470]();
}

{
  return MEMORY[0x1EEE64478]();
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