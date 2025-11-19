@interface SetProperty
@end

@implementation SetProperty

void __httpconnection_SetProperty_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(v3, @"TransportDevice"))
  {
    if (*(DerivedStorage + 224))
    {
      __httpconnection_SetProperty_block_invoke_cold_1(&v20);
    }

    else if (v4 && (v6 = CFGetTypeID(v4), v6 == APTransportDeviceGetTypeID()))
    {
      *(DerivedStorage + 248) = CFRetain(v4);
    }

    else
    {
      __httpconnection_SetProperty_block_invoke_cold_2();
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"RemoteNetworkIPAddress"))
  {
    if (v4 && (v7 = CFGetTypeID(v4), v7 == APSNetworkAddressGetTypeID()))
    {
      APSNetworkAddressGetSocketAddr();
      *(DerivedStorage + 164) = *v19;
      *(DerivedStorage + 176) = *&v19[12];
    }

    else
    {
      __httpconnection_SetProperty_block_invoke_cold_3();
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"RemoteNetworkPort"))
  {
    *(DerivedStorage + 192) = CFGetInt64();
    if (v20)
    {
      __httpconnection_SetProperty_block_invoke_cold_4();
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"BoundInterfaceIndex"))
  {
    *(DerivedStorage + 196) = CFGetInt64();
    if (v20)
    {
      __httpconnection_SetProperty_block_invoke_cold_5();
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"ConnectedSocket"))
  {
    if (*(DerivedStorage + 224))
    {
      if (v4 && (v8 = CFGetTypeID(v4), v8 == APTransportSocketGetTypeID()))
      {
        *(DerivedStorage + 248) = APTransportSocketGetSocket(v4);
      }

      else
      {
        __httpconnection_SetProperty_block_invoke_cold_6();
      }
    }

    else
    {
      __httpconnection_SetProperty_block_invoke_cold_7(&v20);
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"DACPID"))
  {
    *(DerivedStorage + 328) = CFGetInt64();
    if (v20)
    {
      __httpconnection_SetProperty_block_invoke_cold_8();
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"DACPRemoteID"))
  {
    *(DerivedStorage + 336) = CFGetInt64();
    if (v20)
    {
      __httpconnection_SetProperty_block_invoke_cold_9();
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"DoNotWakeDevice"))
  {
    *(DerivedStorage + 340) = CFGetInt64() != 0;
    if (v20)
    {
      __httpconnection_SetProperty_block_invoke_cold_10();
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"PackageSendTimeout"))
  {
    *(DerivedStorage + 344) = CFGetInt64Ranged();
    if (v20)
    {
      __httpconnection_SetProperty_block_invoke_cold_11();
    }

    else
    {
      v9 = *(DerivedStorage + 264);
      if (*(DerivedStorage + 256))
      {
        if (v9)
        {
          HTTPConnectionSetTimeout();
        }
      }

      else if (v9)
      {
        HTTPClientSetTimeout();
      }

      if (gLogCategory_APTransportConnectionHTTP <= 40 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
      {
        v18 = *(DerivedStorage + 344);
        LogPrintF();
      }
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"SessionUUID"))
  {
    if (v4 && (v10 = CFGetTypeID(v4), v10 == CFUUIDGetTypeID()))
    {
      *(DerivedStorage + 128) = CFRetain(v4);
    }

    else
    {
      __httpconnection_SetProperty_block_invoke_cold_12();
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"UserName"))
  {
    if (v4)
    {
      v11 = CFGetTypeID(v4);
      if (v11 != CFStringGetTypeID())
      {
        __httpconnection_SetProperty_block_invoke_cold_13();
        goto LABEL_67;
      }

      v12 = *(DerivedStorage + 352);
      *(DerivedStorage + 352) = v4;
      goto LABEL_57;
    }

    v12 = *(DerivedStorage + 352);
    *(DerivedStorage + 352) = 0;
    goto LABEL_65;
  }

  if (CFEqual(v3, @"Password"))
  {
    if (v4)
    {
      v13 = CFGetTypeID(v4);
      if (v13 != CFStringGetTypeID())
      {
        __httpconnection_SetProperty_block_invoke_cold_14();
        goto LABEL_67;
      }

      v12 = *(DerivedStorage + 360);
      *(DerivedStorage + 360) = v4;
LABEL_57:
      CFRetain(v4);
      goto LABEL_65;
    }

    v12 = *(DerivedStorage + 360);
    *(DerivedStorage + 360) = 0;
LABEL_65:
    if (v12)
    {
      CFRelease(v12);
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"UseRFC2617DigestAuth"))
  {
    *(DerivedStorage + 368) = CFGetInt64() != 0;
    if (v20)
    {
      __httpconnection_SetProperty_block_invoke_cold_15();
    }
  }

  else if (CFEqual(v3, @"UserAgent"))
  {
    if (v4 && (v14 = CFGetTypeID(v4), v14 != CFStringGetTypeID()))
    {
      __httpconnection_SetProperty_block_invoke_cold_16();
    }

    else
    {
      v17 = *(DerivedStorage + 32);
      v16 = (DerivedStorage + 32);
      v15 = v17;
      if (v17)
      {
        free(v15);
        *v16 = 0;
      }

      if (v4)
      {
        ASPrintF();
      }
    }
  }

  else
  {
    v20 = -12784;
  }

LABEL_67:
  *(*(a1[4] + 8) + 24) = v20;
}

uint64_t __tcpconnection_SetProperty_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    __tcpconnection_SetProperty_block_invoke_cold_1(&v13);
  }

  else
  {
    v6 = DerivedStorage;
    if (CFEqual(v3, @"PackageType"))
    {
      if (FigCFEqual())
      {
        *(v6 + 26) = APTransportPackageTCPGetPayloadSize;
        *(v6 + 27) = APTransportPackageTCPCreateWithBBuf;
        *(v6 + 28) = APTransportPackageTCPCreate;
        *(v6 + 29) = APTransportPackageTCPCreateWithMessageSize;
        APTransportPackageTCPGetHeaderSize(v6 + 50);
        goto LABEL_16;
      }

      if (FigCFEqual())
      {
        *(v6 + 26) = APTPackageMusicDataGetPayloadSize;
        *(v6 + 27) = APTPackageMusicDataCreateWithBBuf;
        *(v6 + 28) = APTPackageMusicDataCreate;
        *(v6 + 29) = APTPackageMusicDataCreateWithMessageSize;
        APTPackageMusicDataGetHeaderSize(v6 + 50);
        goto LABEL_16;
      }

      if (FigCFEqual())
      {
        *(v6 + 26) = 0;
        *(v6 + 27) = 0;
        *(v6 + 28) = APTransportPackageRTPCreate;
        *(v6 + 29) = APTransportPackageRTPCreateWithMessageSize;
        goto LABEL_16;
      }

      if (gLogCategory_APTransportConnectionTCP <= 90 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v11 = -12780;
      goto LABEL_31;
    }

    if (CFEqual(v3, @"RemoteNetworkIPAddress"))
    {
      if (*(v6 + 19))
      {
        __tcpconnection_SetProperty_block_invoke_cold_2();
      }

      else
      {
        if (v4)
        {
          v7 = CFGetTypeID(v4);
          if (v7 == APSNetworkAddressGetTypeID())
          {
            APSNetworkAddressGetSocketAddr();
            *(v6 + 92) = *v12;
            *(v6 + 104) = *&v12[12];
            v8 = *(v6 + 30);
LABEL_15:
            SockAddrSetPort();
            goto LABEL_16;
          }
        }

        __tcpconnection_SetProperty_block_invoke_cold_3();
      }
    }

    else if (CFEqual(v3, @"RemoteNetworkPort"))
    {
      if (*(v6 + 19))
      {
        __tcpconnection_SetProperty_block_invoke_cold_4();
      }

      else
      {
        *(v6 + 30) = CFGetInt64();
        if (!v13)
        {
          goto LABEL_15;
        }

        __tcpconnection_SetProperty_block_invoke_cold_5();
      }
    }

    else
    {
      if (!CFEqual(v3, @"BoundInterfaceIndex"))
      {
        v11 = -12784;
LABEL_31:
        v13 = v11;
        goto LABEL_16;
      }

      if (*(v6 + 19))
      {
        __tcpconnection_SetProperty_block_invoke_cold_6();
      }

      else
      {
        *(v6 + 31) = CFGetInt64();
        if (v13)
        {
          __tcpconnection_SetProperty_block_invoke_cold_7();
        }
      }
    }
  }

LABEL_16:
  *(*(a1[4] + 8) + 24) = v13;
  v9 = a1[6];
  result = FigCFEqual();
  if (!result)
  {
    *(*(a1[4] + 8) + 24) = 0;
  }

  return result;
}

uint64_t __stream_SetProperty_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    result = __stream_SetProperty_block_invoke_cold_1();
    v11 = -16617;
    goto LABEL_8;
  }

  CMBaseObject = APTransportConnectionGetCMBaseObject(*(DerivedStorage + 40));
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 8) + 56);
  if (!v8)
  {
    v11 = -12782;
LABEL_7:
    result = APSLogErrorAt();
    goto LABEL_8;
  }

  v9 = *(VTable + 8) + 56;
  result = v8(CMBaseObject, v3, v4);
  v11 = result;
  if (result)
  {
    goto LABEL_7;
  }

LABEL_8:
  *(*(a1[4] + 8) + 24) = v11;
  return result;
}

void __unbufnw_SetProperty_block_invoke(uint64_t a1)
{
  unbufnwGuts_connectionReceivePackages(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t __httpconnection_SetProperty_block_invoke_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72321;
  return result;
}

uint64_t __httpconnection_SetProperty_block_invoke_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72321;
  return result;
}

uint64_t __tcpconnection_SetProperty_block_invoke_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  *a1 = -12785;

  return APSSignalErrorAt();
}

uint64_t __tcpconnection_SetProperty_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t __tcpconnection_SetProperty_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t __tcpconnection_SetProperty_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t __tcpconnection_SetProperty_block_invoke_cold_6()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

@end