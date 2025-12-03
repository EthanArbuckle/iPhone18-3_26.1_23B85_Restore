@interface ADAudioRoute
- (ADAudioRoute)initWithAudioDeviceID:(unsigned int)d;
@end

@implementation ADAudioRoute

- (ADAudioRoute)initWithAudioDeviceID:(unsigned int)d
{
  v21.receiver = self;
  v21.super_class = ADAudioRoute;
  v4 = [(ADAudioRoute *)&v21 init];
  if (!v4)
  {
    return v4;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10008BB9C;
  v31 = sub_10008BBAC;
  v32 = 0;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10008CACC;
  v25 = &unk_10050FC98;
  v26 = &v27;
  sub_10008CB4C(d, 0x676C6F626C6D6F64, 0, &v22);
  v5 = *(v28 + 40);
  _Block_object_dispose(&v27, 8);

  deviceName = v4->_deviceName;
  v4->_deviceName = v5;

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10008BB9C;
  v31 = sub_10008BBAC;
  v32 = 0;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10008CC94;
  v25 = &unk_10050FC98;
  v26 = &v27;
  sub_10008CB4C(d, 0x676C6F6275696420, 0, &v22);
  v7 = *(v28 + 40);
  _Block_object_dispose(&v27, 8);

  v8 = [v7 mutableCopy];
  uid = v4->_uid;
  v4->_uid = v8;

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  LODWORD(v25) = 0;
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_10008CD14;
  v30 = &unk_10050FCC0;
  v31 = &v22;
  sub_10008CD24(d, 0x676C6F627472616ELL, 0, &v27);
  v10 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  v12 = v10 == 1651275109 || v10 == 1651271009;
  v4->_isBluetooth = v12;
  if (sub_10008CE5C(d))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    LODWORD(v25) = 0;
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_10008CF2C;
    v30 = &unk_10050FCC0;
    v31 = &v22;
    sub_10008CD24(d, 0x696E707473737263, 0, &v27);
    v13 = *(v23 + 24);
    _Block_object_dispose(&v22, 8);
    if (v10 <= 1651275108)
    {
      if (!v10)
      {
        v14 = 0;
        goto LABEL_25;
      }

      if (v10 == 1651274862)
      {
        v15 = @"MicrophoneWired";
        if (v13 != 1701669219)
        {
          v15 = 0;
        }

        if (v13 == 1768778083)
        {
          v14 = @"MicrophoneBuiltIn";
        }

        else
        {
          v14 = v15;
        }

        goto LABEL_25;
      }
    }

    else
    {
      switch(v10)
      {
        case 1651275109:
          v14 = @"BluetoothHFP";
          goto LABEL_25;
        case 1818848869:
          v14 = @"LineIn";
          goto LABEL_25;
        case 1970496032:
          v14 = @"USBAudio";
LABEL_25:
          objc_storeStrong(&v4->_source, v14);
          goto LABEL_26;
      }
    }

    v14 = @"ADAudioSessionPortOther";
    goto LABEL_25;
  }

LABEL_26:
  if (sub_10008BFF8(d))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    LODWORD(v25) = 0;
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_10008CF3C;
    v30 = &unk_10050FCC0;
    v31 = &v22;
    sub_10008CD24(d, 0x6F75747073737263, 0, &v27);
    v16 = *(v23 + 24);
    _Block_object_dispose(&v22, 8);
    if (v10 == 1651275109)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      LOBYTE(v25) = 0;
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_10008CF4C;
      v30 = &unk_10050FC48;
      v31 = &v22;
      sub_10008BDCC(d, 0x6F75747064636832, 0, &v27);
      v17 = *(v23 + 24);
      _Block_object_dispose(&v22, 8);
      if (v17)
      {
        v18 = @"BluetoothA2DPOutput";
      }

      else
      {
        v18 = @"BluetoothHFP";
      }

      goto LABEL_31;
    }

    if (v10 <= 1651274861)
    {
      if (v10)
      {
        if (v10 != 1651271009)
        {
LABEL_48:
          v18 = @"ADAudioSessionPortOther";
          goto LABEL_31;
        }

        v18 = @"BluetoothLE";
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      switch(v10)
      {
        case 1970496032:
          v18 = @"USBAudio";
          break;
        case 1751412073:
          v18 = @"HDMIOutput";
          break;
        case 1651274862:
          v20 = @"ADAudioSessionPortOther";
          if (v16 == 1751412846)
          {
            v20 = @"Headphones";
          }

          if (v16 == 1769173099)
          {
            v18 = @"Speaker";
          }

          else
          {
            v18 = v20;
          }

          break;
        default:
          goto LABEL_48;
      }
    }

LABEL_31:
    objc_storeStrong(&v4->_destination, v18);
  }

  return v4;
}

@end