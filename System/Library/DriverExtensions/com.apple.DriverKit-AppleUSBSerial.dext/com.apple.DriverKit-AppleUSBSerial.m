uint64_t AppleGenericUSBSerial::Start_Impl(IOService *this, IOService *a2)
{
  result = IOService::Start(this, a2, &IOUserUSBSerial::_Dispatch);
  if (!result)
  {

    return IOService::RegisterService(this, 0);
  }

  return result;
}

uint64_t AppleGenericUSBSerialMetaClass::New(AppleGenericUSBSerialMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100004128;
  a2->OSObjectInterface::__vftable = off_100004188;
  *&a2[1].refcount = &off_1000041A8;
  a2[1].OSObjectInterface::__vftable = &off_1000041C0;
  return 0;
}

uint64_t AppleGenericUSBSerial::_Dispatch(OSMetaClassBase *this, IORPCMessageMach **a2, IORPC *a3)
{
  if (IORPCMessageFromMach(*a2, 0)->msgid == 0xAB6F76DDE6D693F2)
  {
    v7 = *a2;
    return IOService::Start_Invoke(&v7, this, AppleGenericUSBSerial::Start_Impl);
  }

  else
  {
    v7 = *a2;
    return IOUserUSBSerial::_Dispatch(this, &v7, v5);
  }
}

uint64_t AppleGenericUSBSerialMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}