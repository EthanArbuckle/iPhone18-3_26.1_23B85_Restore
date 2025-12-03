@interface CBDevice(HKCBDevice)
- (id)btAddress;
- (uint64_t)hardwareVersion;
@end

@implementation CBDevice(HKCBDevice)

- (id)btAddress
{
  btAddressData = [self btAddressData];
  v2 = CUPrintNSDataAddress();

  return v2;
}

- (uint64_t)hardwareVersion
{
  v1 = MEMORY[0x1E696AEC0];
  productID = [self productID];
  if (productID > 21759)
  {
    if (productID > 28943)
    {
      if (productID <= 29714)
      {
        if (productID == 28944)
        {
          v3 = "AudioAccessory1,2";
          goto LABEL_69;
        }

        if (productID == 29455)
        {
          v3 = "AppleTV11,1";
          goto LABEL_69;
        }
      }

      else
      {
        switch(productID)
        {
          case 29715:
            v3 = "AudioAccessory5,1";
            goto LABEL_69;
          case 65533:
            v3 = "HeGn";
            goto LABEL_69;
          case 65534:
            v3 = "ApGn";
            goto LABEL_69;
        }
      }
    }

    else if (productID <= 28419)
    {
      if (productID == 21760)
      {
        v3 = "Device1,21760";
        goto LABEL_69;
      }

      if (productID == 22034)
      {
        v3 = "Device1,22034";
        goto LABEL_69;
      }
    }

    else
    {
      switch(productID)
      {
        case 28420:
          v3 = "AppleTV5,3";
          goto LABEL_69;
        case 28936:
          v3 = "AppleTV6,2";
          goto LABEL_69;
        case 28943:
          v3 = "AudioAccessory1,1";
          goto LABEL_69;
      }
    }

LABEL_68:
    v3 = "?";
    goto LABEL_69;
  }

  if (productID <= 8193)
  {
    switch(productID)
    {
      case 0:
        v3 = "Invalid";
        goto LABEL_69;
      case 614:
        v3 = "ATVRemote1,1";
        goto LABEL_69;
      case 621:
        v3 = "ATVRemote1,2";
        goto LABEL_69;
    }

    goto LABEL_68;
  }

  switch(productID)
  {
    case 8194:
      v3 = "AirPods1,1";
      break;
    case 8195:
      v3 = "PowerBeats3,1";
      break;
    case 8197:
      v3 = "BeatsX1,1";
      break;
    case 8198:
      v3 = "BeatsSolo3,1";
      break;
    case 8201:
      v3 = "BeatsStudio3,2";
      break;
    case 8202:
      v3 = "Device1,8202";
      break;
    case 8203:
      v3 = "PowerbeatsPro1,1";
      break;
    case 8204:
      v3 = "BeatsSoloPro1,1";
      break;
    case 8205:
      v3 = "Powerbeats4,1";
      break;
    case 8206:
      v3 = "AirPodsPro1,1";
      break;
    case 8207:
      v3 = "AirPods1,3";
      break;
    case 8208:
      v3 = "Device1,8208";
      break;
    case 8209:
      v3 = "BeatsStudioBuds1,1";
      break;
    case 8210:
      v3 = "Device1,8210";
      break;
    case 8211:
      v3 = "Device1,8211";
      break;
    case 8212:
      v3 = "Device1,8212";
      break;
    case 8213:
      v3 = "Device1,8213";
      break;
    case 8214:
      v3 = "BeatsStudioBuds1,2";
      break;
    case 8215:
      v3 = "BeatsStudioPro1,1";
      break;
    case 8216:
      v3 = "Device1,8216";
      break;
    case 8217:
      v3 = "Device1,8217";
      break;
    case 8218:
      v3 = "Device1,8218";
      break;
    case 8219:
      v3 = "Device1,8219";
      break;
    case 8220:
      v3 = "Device1,8220";
      break;
    case 8221:
      v3 = "Powerb3,1";
      break;
    case 8222:
      v3 = "Device1,8222";
      break;
    case 8223:
      v3 = "Device1,8223";
      break;
    case 8224:
      v3 = "Device1,8224";
      break;
    case 8228:
      v3 = "Device1,8228";
      break;
    case 8229:
      v3 = "Device1,8229";
      break;
    case 8230:
      v3 = "Device1,8230";
      break;
    case 8231:
      v3 = "AirPods3,4";
      break;
    case 8232:
      v3 = "Device1,8232";
      break;
    case 8233:
      v3 = "Device1,8233";
      break;
    case 8239:
      v3 = "Device1,8239";
      break;
    default:
      goto LABEL_68;
  }

LABEL_69:

  return [v1 stringWithUTF8String:v3];
}

@end