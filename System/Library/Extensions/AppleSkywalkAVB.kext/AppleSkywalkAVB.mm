OSMetaClass *AppleSkywalkAVBLegacyEthernet::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleSkywalkAVBLegacyEthernet", &IOSkywalkLegacyEthernet::gMetaClass, 0x148u);
  result->__vftable = off_C940;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleSkywalkAVBLegacyEthernet", &IOSkywalkLegacyEthernet::gMetaClass, 0x148u);
  result->__vftable = off_C940;
  return result;
}

void AppleSkywalkAVBLegacyEthernet::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleSkywalkAVBLegacyEthernet::AppleSkywalkAVBLegacyEthernet(AppleSkywalkAVBLegacyEthernet *this, const OSMetaClass *a2)
{
  IOSkywalkLegacyEthernet::IOSkywalkLegacyEthernet(this, a2);
  *v2 = off_C140;
}

{
  IOSkywalkLegacyEthernet::IOSkywalkLegacyEthernet(this, a2);
  *v2 = off_C140;
}

void AppleSkywalkAVBLegacyEthernet::~AppleSkywalkAVBLegacyEthernet(AppleSkywalkAVBLegacyEthernet *this)
{
  IOSkywalkLegacyEthernet::~IOSkywalkLegacyEthernet(this);
}

{
  IOSkywalkLegacyEthernet::~IOSkywalkLegacyEthernet(this);
}

{
  IOSkywalkLegacyEthernet::~IOSkywalkLegacyEthernet(this);

  _OSObject_typed_operator_delete(&AppleSkywalkAVBLegacyEthernet_ktv, this, 328);
}

IOSkywalkLegacyEthernet *AppleSkywalkAVBLegacyEthernet::MetaClass::alloc(AppleSkywalkAVBLegacyEthernet::MetaClass *this)
{
  v1 = OSObject_typed_operator_new();
  IOSkywalkLegacyEthernet::IOSkywalkLegacyEthernet(v1, &AppleSkywalkAVBLegacyEthernet::gMetaClass);
  *v2 = off_C140;
  OSMetaClass::instanceConstructed(&AppleSkywalkAVBLegacyEthernet::gMetaClass);
  return v1;
}

void AppleSkywalkAVBLegacyEthernet::AppleSkywalkAVBLegacyEthernet(AppleSkywalkAVBLegacyEthernet *this)
{
  IOSkywalkLegacyEthernet::IOSkywalkLegacyEthernet(this, &AppleSkywalkAVBLegacyEthernet::gMetaClass);
  *v1 = off_C140;
  OSMetaClass::instanceConstructed(&AppleSkywalkAVBLegacyEthernet::gMetaClass);
}

{
  IOSkywalkLegacyEthernet::IOSkywalkLegacyEthernet(this, &AppleSkywalkAVBLegacyEthernet::gMetaClass);
  *v1 = off_C140;
  OSMetaClass::instanceConstructed(&AppleSkywalkAVBLegacyEthernet::gMetaClass);
}

uint64_t AppleSkywalkAVBLegacyEthernet::stop(AppleSkywalkAVBEthernetInterface **this, IOService *a2)
{
  AppleSkywalkAVBEthernetInterface::unregisterAVBController(this[38], this);
  v4 = this[38];
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  this[38] = 0;
  v5 = this[40];
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  this[40] = 0;

  return v6(this, a2);
}

uint64_t AppleSkywalkAVBLegacyEthernet::reportPTPOffsets(AppleSkywalkAVBLegacyEthernet *this, uint64_t a2, uint64_t a3)
{
  (*(*this + 224))(this, "PTPIngress", a2, 64);
  v5 = *(*this + 224);

  return v5(this, "PTPEgress", a3, 64);
}

OSMetaClass *_GLOBAL__sub_I_AppleSkywalkAVBLegacyEthernet_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleSkywalkAVBLegacyEthernet::gMetaClass, "AppleSkywalkAVBLegacyEthernet", &IOSkywalkLegacyEthernet::gMetaClass, 0x148u);
  result->__vftable = off_C940;
  return result;
}

uint64_t *OUTLINED_FUNCTION_1()
{
  result = *(v0 + 304);
  v2 = *result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_2()
{
  result = *(v0 + 304);
  v2 = *result;
  return result;
}

OSMetaClass *AppleSkywalkAVBEthernetInterface::MetaClass::MetaClass(OSMetaClass *this)
{
  result = OSMetaClass::OSMetaClass(this, "AppleSkywalkAVBEthernetInterface", &IOSkywalkEthernetInterface::gMetaClass, 0x128u);
  result->__vftable = off_D1C0;
  return result;
}

{
  result = OSMetaClass::OSMetaClass(this, "AppleSkywalkAVBEthernetInterface", &IOSkywalkEthernetInterface::gMetaClass, 0x128u);
  result->__vftable = off_D1C0;
  return result;
}

void AppleSkywalkAVBEthernetInterface::MetaClass::~MetaClass(OSMetaClass *this)
{
  OSMetaClass::~OSMetaClass(this);
}

{
  OSMetaClass::~OSMetaClass(this);
}

void AppleSkywalkAVBEthernetInterface::~AppleSkywalkAVBEthernetInterface(AppleSkywalkAVBEthernetInterface *this)
{
  IOSkywalkEthernetInterface::~IOSkywalkEthernetInterface(this);
}

{
  __break(1u);
}

{
  __break(1u);
}

uint64_t AppleSkywalkAVBEthernetInterface::deliverRxAVBPacket(AppleSkywalkAVBEthernetInterface *this, IOEthernetController::IOEthernetAVBPacket *a2, uint64_t (*a3)(void *, IOEthernetController::IOEthernetAVBPacket *), void *a4)
{
  if (a3)
  {
    return a3(a4, a2);
  }

  else
  {
    return (*(*this + 1984))(this, a2);
  }
}

OSMetaClass *_GLOBAL__sub_I_AppleSkywalkAVBEthernetInterface_cpp()
{
  result = OSMetaClass::OSMetaClass(&AppleSkywalkAVBEthernetInterface::gMetaClass, "AppleSkywalkAVBEthernetInterface", &IOSkywalkEthernetInterface::gMetaClass, 0x128u);
  result->__vftable = off_D1C0;
  return result;
}

uint64_t _start()
{
  if (_realmain)
  {
    return _realmain();
  }

  else
  {
    return 0;
  }
}

uint64_t _stop()
{
  if (_antimain)
  {
    return _antimain();
  }

  else
  {
    return 0;
  }
}

OSMetaClassBase *AppleSkywalkAVBLegacyEthernet::start(AppleSkywalkAVBLegacyEthernet *this, IOService *anObject)
{
  result = OSMetaClassBase::safeMetaCast(anObject, &AppleSkywalkAVBEthernetInterface::gMetaClass);
  *(this + 38) = result;
  if (result)
  {
    if (result)
    {
      v5 = OUTLINED_FUNCTION_2();
      (*(v6 + 32))(v5);
      (*(*this + 2000))(this);
      AppleSkywalkAVBLegacyEthernet::setupAVB(this);
      return (&dword_0 + 1);
    }
  }

  return result;
}

uint64_t AppleSkywalkAVBLegacyEthernet::setupAVB(AppleSkywalkAVBEthernetInterface **this)
{
  result = AppleSkywalkAVBEthernetInterface::registerAVBController(this[38], this);
  if (!result)
  {
    v3 = OUTLINED_FUNCTION_2();
    v5 = (*(v4 + 1784))(v3);
    IOEthernetController::setAVBPacketMapper(this, v5);
    v6 = OUTLINED_FUNCTION_1();
    v8 = (*(v7 + 1800))(v6);
    IOEthernetController::setNumberOfRealtimeReceiveQueues(this, v8);
    v9 = OUTLINED_FUNCTION_1();
    v11 = (*(v10 + 1792))(v9);
    IOEthernetController::setNumberOfRealtimeTransmitQueues(this, v11);
    if (v11)
    {
      v12 = 0;
      do
      {
        v13 = OUTLINED_FUNCTION_2();
        v15 = (*(v14 + 1808))(v13, v12);
        IOEthernetController::setTransmitQueuePrefetchDelay(this, v12, v15);
        v16 = OUTLINED_FUNCTION_1();
        v18 = (*(v17 + 1816))(v16, v12);
        IOEthernetController::setTransmitQueuePacketLatency(this, v12, v18);
        v12 = (v12 + 1);
      }

      while (v11 != v12);
    }

    IOEthernetController::setRealtimeMulticastIsAllowed(this, 1);
    IOEthernetController::setTimeSyncPacketSupport(this, kIOEthernetControllerAVBTimeSyncSupportHardware);
    v19 = OUTLINED_FUNCTION_1();
    v21 = (*(v20 + 1824))(v19);

    return IOEthernetController::createRealtimeAVBPacketPool(this, v21);
  }

  return result;
}

uint64_t AppleSkywalkAVBLegacyEthernet::setAVBControllerState(AppleSkywalkAVBLegacyEthernet *this, uint64_t a2)
{
  v3 = *(this + 38);
  if (!v3)
  {
    return 3758097088;
  }

  result = (*(*v3 + 1888))(v3);
  if (!result)
  {

    return v6(this, a2);
  }

  return result;
}

uint64_t AppleSkywalkAVBLegacyEthernet::setRealtimeReceiveQueuePacketHandler(AppleSkywalkAVBLegacyEthernet *this, uint64_t a2, void (*a3)(void *, IOEthernetController::IOEthernetAVBPacket *), void *a4)
{
  v4 = *(this + 38);
  if (v4)
  {
    return (*(*v4 + 1848))(v4, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_0();
  }
}

uint64_t AppleSkywalkAVBLegacyEthernet::setRealtimeReceiveQueueFilter(AppleSkywalkAVBLegacyEthernet *this, uint64_t a2, IOEthernetController::IOEthernetAVBIngressFilterElement *a3)
{
  v3 = *(this + 38);
  if (v3)
  {
    return (*(*v3 + 1832))(v3, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_0();
  }
}

uint64_t AppleSkywalkAVBLegacyEthernet::getRealtimeReceiveQueueFilter(AppleSkywalkAVBLegacyEthernet *this, uint64_t a2, IOEthernetController::IOEthernetAVBIngressFilterElement *a3, unsigned int *a4)
{
  v4 = *(this + 38);
  if (v4)
  {
    return (*(*v4 + 1840))(v4, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_0();
  }
}

uint64_t AppleSkywalkAVBLegacyEthernet::transmitTimeSyncPacket(AppleSkywalkAVBLegacyEthernet *this, IOEthernetController::IOEthernetAVBPacket *a2)
{
  v2 = *(this + 38);
  if (v2)
  {
    return (*(*v2 + 1856))(v2, a2);
  }

  else
  {
    return OUTLINED_FUNCTION_0();
  }
}

uint64_t AppleSkywalkAVBLegacyEthernet::transmitRealtimePackets(AppleSkywalkAVBLegacyEthernet *this, uint64_t a2, IOEthernetController::IOEthernetAVBPacket **a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = *(this + 38);
  if (v6)
  {
    return (*(*v6 + 1864))(v6, a2, a3, a4, a5, a6);
  }

  else
  {
    return OUTLINED_FUNCTION_0();
  }
}

uint64_t AppleSkywalkAVBLegacyEthernet::cleanupTransmitQueue(AppleSkywalkAVBLegacyEthernet *this)
{
  v1 = *(this + 38);
  if (v1)
  {
    return (*(*v1 + 1872))(v1);
  }

  else
  {
    return OUTLINED_FUNCTION_0();
  }
}

uint64_t AppleSkywalkAVBLegacyEthernet::newVendorString(AppleSkywalkAVBLegacyEthernet *this)
{
  result = *(this + 38);
  if (result)
  {
    return (*(*result + 1896))(result);
  }

  return result;
}

uint64_t AppleSkywalkAVBLegacyEthernet::newModelString(AppleSkywalkAVBLegacyEthernet *this)
{
  result = *(this + 38);
  if (result)
  {
    return (*(*result + 1904))(result);
  }

  return result;
}

uint64_t AppleSkywalkAVBLegacyEthernet::newRevisionString(AppleSkywalkAVBLegacyEthernet *this)
{
  result = *(this + 38);
  if (result)
  {
    return (*(*result + 1912))(result);
  }

  return result;
}

uint64_t AppleSkywalkAVBLegacyEthernet::publishCompatibilityProperties(uint64_t this)
{
  if (!*(this + 320))
  {
    v1 = this;
    this = (*(**(this + 304) + 1920))(*(this + 304));
    v1[40] = this;
    if (this)
    {
      v2 = *(*v1 + 1632);

      return v2(v1, this);
    }
  }

  return this;
}

IONetworkMedium *AppleSkywalkAVBLegacyEthernet::informSelectedMedia(const OSDictionary **this, IOMediumType a2)
{
  result = IONetworkMedium::getMediumWithType(this[40], a2, 0);
  if (result)
  {
    v4 = (*this)[41].__vftable;

    return (v4)(this, result);
  }

  return result;
}

IONetworkMedium *AppleSkywalkAVBLegacyEthernet::informActiveMedia(const OSDictionary **this, IOMediumType a2)
{
  result = IONetworkMedium::getMediumWithType(this[40], a2, 0);
  if (result)
  {
    if ((a2 & 0xF001F) == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }

    v6 = *&(*this)[41].retainCount;

    return v6(this, v5, result, 0, 0);
  }

  return result;
}

uint64_t AppleSkywalkAVBEthernetInterface::prepareBSDInterface(AppleSkywalkAVBEthernetInterface *this, __ifnet *a2)
{
  if (!v4)
  {
    v5 = *(this + 36);
    if (v5)
    {
      if (IOEthernetController::getAVBSupport(v5, 0))
      {
        ifnet_set_capabilities_supported(a2, 0x100u, 0x100u);
        if (IOEthernetController::getControllerAVBState(*(this + 36)))
        {
          ifnet_set_capabilities_enabled(a2, 0x100u, 0x100u);
        }
      }
    }
  }

  return v4;
}

uint64_t AppleSkywalkAVBEthernetInterface::registerAVBController(AppleSkywalkAVBEthernetInterface *this, AppleSkywalkAVBLegacyEthernet *a2)
{
  result = 3758097090;
  if (*(this + 36))
  {
    return 3758097109;
  }

  if (a2)
  {
    *(this + 36) = a2;
    (*(*a2 + 32))(a2);
    return 0;
  }

  return result;
}

uint64_t AppleSkywalkAVBEthernetInterface::unregisterAVBController(AppleSkywalkAVBEthernetInterface *this, AppleSkywalkAVBLegacyEthernet *a2)
{
  v3 = *(this + 36);
  if (v3 != a2)
  {
    return 3758097084;
  }

  if (a2)
  {
    (*(*v3 + 40))(v3);
  }

  result = 0;
  *(this + 36) = 0;
  return result;
}

uint64_t AppleSkywalkAVBEthernetInterface::informSelectedMedia(AppleSkywalkAVBEthernetInterface *this)
{
  result = *(this + 36);
  if (result)
  {
    return (*(*result + 2008))(result);
  }

  return result;
}

uint64_t AppleSkywalkAVBEthernetInterface::informActiveMedia(AppleSkywalkAVBEthernetInterface *this)
{
  result = *(this + 36);
  if (result)
  {
    return (*(*result + 2016))(result);
  }

  return result;
}

AppleSkywalkAVBLegacyEthernet *AppleSkywalkAVBEthernetInterface::reportPTPOffsets(AppleSkywalkAVBEthernetInterface *this, uint64_t a2, uint64_t a3)
{
  result = *(this + 36);
  if (result)
  {
    return AppleSkywalkAVBLegacyEthernet::reportPTPOffsets(result, a2, a3);
  }

  return result;
}