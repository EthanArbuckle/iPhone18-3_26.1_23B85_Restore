@interface NSError(CoreBluetooth)
+ (id)errorWithInfo:()CoreBluetooth;
@end

@implementation NSError(CoreBluetooth)

+ (id)errorWithInfo:()CoreBluetooth
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"kCBMsgArgResult"];
  v5 = @"CBErrorDomain";
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  integerValue = [v4 integerValue];
  if (integerValue > 901)
  {
    if (integerValue > 1699)
    {
      if (integerValue <= 1899)
      {
        if (integerValue > 1801)
        {
          if (integerValue <= 1804)
          {
            if (integerValue == 1802)
            {
              v60 = @"CBInternalErrorDomain";

              v8 = @"No resources available for L2CAP";
              v9 = 23;
              v5 = v60;
            }

            else
            {
              if (integerValue == 1803)
              {
                v15 = @"CBInternalErrorDomain";

                v8 = @"L2CAP PSM already connected";
                v9 = 24;
              }

              else
              {
                v15 = @"CBInternalErrorDomain";

                v8 = @"No such L2CAP connection";
                v9 = 25;
              }

              v5 = v15;
            }

            goto LABEL_165;
          }

          switch(integerValue)
          {
            case 1805:
              v62 = @"CBInternalErrorDomain";

              v8 = @"L2CAP - failed to register socket pipe";
              v9 = 26;
              v5 = v62;
              goto LABEL_165;
            case 1807:
              v66 = @"CBInternalErrorDomain";

              v8 = @"L2CAP - Invalid packet size";
              v9 = 59;
              v5 = v66;
              goto LABEL_165;
            case 1849:
              v19 = @"CBInternalErrorDomain";

              v8 = @"L2CAP - Error";
              v9 = 60;
              v5 = v19;
              goto LABEL_165;
          }
        }

        else
        {
          if (integerValue <= 1702)
          {
            if (integerValue == 1700)
            {
              v59 = @"CBInternalErrorDomain";

              v8 = @"No remoteId/stableId";
              v9 = 33;
              v5 = v59;
            }

            else
            {
              if (integerValue == 1701)
              {
                v13 = @"CBInternalErrorDomain";

                v8 = @"WHB Device not found";
                v9 = 48;
              }

              else
              {
                v13 = @"CBInternalErrorDomain";

                v8 = @"WHB Device is not enabled";
                v9 = 49;
              }

              v5 = v13;
            }

            goto LABEL_165;
          }

          switch(integerValue)
          {
            case 1703:
              v61 = @"CBInternalErrorDomain";

              v8 = @"WHB Connection is interuppted";
              v9 = 51;
              v5 = v61;
              goto LABEL_165;
            case 1800:
              v65 = @"CBInternalErrorDomain";

              v8 = @"Invalid PSM";
              v9 = 21;
              v5 = v65;
              goto LABEL_165;
            case 1801:
              v18 = @"CBInternalErrorDomain";

              v8 = @"PSM already registered";
              v9 = 22;
              v5 = v18;
              goto LABEL_165;
          }
        }
      }

      else if (integerValue <= 2499)
      {
        if (integerValue <= 1902)
        {
          if (integerValue == 1900)
          {
            v57 = @"CBInternalErrorDomain";

            v8 = @"RFCOMM invalid channel ID";
            v9 = 27;
            v5 = v57;
          }

          else
          {
            if (integerValue == 1901)
            {
              v14 = @"CBInternalErrorDomain";

              v8 = @"No such RFCOMM connection";
              v9 = 28;
            }

            else
            {
              v14 = @"CBInternalErrorDomain";

              v8 = @"RFCOMM channel already connected";
              v9 = 29;
            }

            v5 = v14;
          }

          goto LABEL_165;
        }

        switch(integerValue)
        {
          case 1903:
            v58 = @"CBInternalErrorDomain";

            v8 = @"RFCOMM - failed to register socket pipe";
            v9 = 30;
            v5 = v58;
            goto LABEL_165;
          case 2000:
            v56 = @"CBInternalErrorDomain";

            v8 = @"Peer LEA connection stalled";
LABEL_146:
            v9 = 15;
            v5 = v56;
            goto LABEL_165;
          case 2200:
            v17 = @"CBInternalErrorDomain";

            v8 = @"Failed to resolve address with provided IRK";
            v9 = 41;
            v5 = v17;
            goto LABEL_165;
        }
      }

      else
      {
        if (integerValue <= 2502)
        {
          if (integerValue == 2500)
          {
            v64 = @"CBInternalErrorDomain";

            v8 = @"Peer removed pairing information for the pipe";
            v9 = 52;
            v5 = v64;
          }

          else
          {
            if (integerValue == 2501)
            {
              v20 = @"CBInternalErrorDomain";

              v8 = @"The Pipe connection has timed out unexpectedly";
              v9 = 53;
            }

            else
            {
              v20 = @"CBInternalErrorDomain";

              v8 = @"The specified device has disconnected the pipe";
              v9 = 54;
            }

            v5 = v20;
          }

          goto LABEL_165;
        }

        if (integerValue <= 2504)
        {
          if (integerValue == 2503)
          {
            v12 = @"CBInternalErrorDomain";

            v8 = @"Pipe MIC failure";
            v9 = 55;
          }

          else
          {
            v12 = @"CBInternalErrorDomain";

            v8 = @"The Pipe connection has failed unexpectedly";
            v9 = 56;
          }

          v5 = v12;
          goto LABEL_165;
        }

        if (integerValue == 2505)
        {
          v63 = @"CBInternalErrorDomain";

          v8 = @"Peer removed service using the pipe";
          v9 = 57;
          v5 = v63;
          goto LABEL_165;
        }

        if (integerValue == 2506)
        {
          v21 = @"CBInternalErrorDomain";

          v8 = @"Local device unregistered service using the pipe";
          v9 = 58;
          v5 = v21;
          goto LABEL_165;
        }
      }
    }

    else
    {
      if (integerValue <= 1499)
      {
        switch(integerValue)
        {
          case 902:
          case 905:
            v8 = @"The specified UUID is not allowed for this operation.";
            v9 = 8;
            goto LABEL_165;
          case 914:
            v55 = @"CBInternalErrorDomain";

            v8 = @"LE Connection update failed - same params";
            v9 = 45;
            v5 = v55;
            goto LABEL_165;
          case 915:
            v54 = @"CBInternalErrorDomain";

            v8 = @"Combined connection latency for device not as requested";
            v9 = 46;
            v5 = v54;
            goto LABEL_165;
          case 1001:
            v27 = @"CBATTErrorDomain";

            v8 = @"The handle is invalid.";
            goto LABEL_133;
          case 1002:
            v45 = @"CBATTErrorDomain";

            v8 = @"Reading is not permitted.";
            goto LABEL_116;
          case 1003:
            v35 = @"CBATTErrorDomain";

            v8 = @"Writing is not permitted.";
            goto LABEL_118;
          case 1004:
            v36 = @"CBATTErrorDomain";

            v8 = @"The command is invalid.";
            goto LABEL_128;
          case 1005:
            v41 = @"CBATTErrorDomain";

            v8 = @"Authentication is insufficient.";
            goto LABEL_120;
          case 1006:
            v43 = @"CBATTErrorDomain";

            v8 = @"The request is not supported.";
            goto LABEL_126;
          case 1007:
            v42 = @"CBATTErrorDomain";

            v8 = @"The offset is invalid.";
            goto LABEL_108;
          case 1008:
            v26 = @"CBATTErrorDomain";

            v8 = @"Authorization is insufficient.";
            goto LABEL_110;
          case 1009:
            v34 = @"CBATTErrorDomain";

            v8 = @"The prepare queue is full.";
            goto LABEL_137;
          case 1010:
            v11 = @"CBATTErrorDomain";

            v8 = @"The attribute could not be found.";
            goto LABEL_135;
          case 1011:
            v30 = @"CBATTErrorDomain";

            v8 = @"The attribute is not long.";
            goto LABEL_106;
          case 1012:
            v33 = @"CBATTErrorDomain";

            v8 = @"The encryption key size is insufficient.";
            goto LABEL_122;
          case 1013:
            v53 = @"CBATTErrorDomain";

            v8 = @"The value's length is invalid.";
            goto LABEL_114;
          case 1014:
            v49 = @"CBATTErrorDomain";

            v8 = @"Unlikely error.";
            goto LABEL_130;
          case 1015:
            v56 = @"CBATTErrorDomain";

            v8 = @"Encryption is insufficient.";
            goto LABEL_146;
          case 1016:
            v24 = @"CBATTErrorDomain";

            v8 = @"The group type is unsupported.";
            goto LABEL_104;
          case 1017:
            v38 = @"CBATTErrorDomain";

            v8 = @"Resources are insufficient.";
            goto LABEL_112;
          case 1019:
            v53 = @"CBInternalErrorDomain";

            v8 = @"Peer failed to respond to ATT value indication";
LABEL_114:
            v9 = 13;
            v5 = v53;
            break;
          default:
            goto LABEL_157;
        }

        goto LABEL_165;
      }

      switch(integerValue)
      {
        case 1500:
          v68 = @"CBInternalErrorDomain";

          v8 = @"RSSI Detection already configured for this device";
          v9 = 18;
          v5 = v68;
          goto LABEL_165;
        case 1501:
          v67 = @"CBInternalErrorDomain";

          v8 = @"Cannot remove RSSI detection configuration. Not configured for this device.";
          v9 = 19;
          v5 = v67;
          goto LABEL_165;
        case 1502:
          v16 = @"CBInternalErrorDomain";

          v8 = @"Current client did not configure RSSI detection for this device. Client cannot change existing configuration from a different client";
          v9 = 20;
          v5 = v16;
          goto LABEL_165;
      }
    }

LABEL_157:
    if ([v4 integerValue] < 1001 || objc_msgSend(v4, "integerValue") > 1255)
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      v70 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        [(NSError(CoreBluetooth) *)v70 errorWithInfo:v4];
      }

LABEL_164:
      v9 = 0;
      v8 = @"Unknown error.";
    }

    else
    {
      v69 = @"CBATTErrorDomain";

      v9 = [v4 integerValue] - 1000;
      v8 = @"Unknown ATT error.";
      v5 = v69;
    }

    goto LABEL_165;
  }

  v10 = 0;
  v8 = @"One or more parameters were invalid.";
  v9 = 1;
  switch(integerValue)
  {
    case 0:
      goto LABEL_166;
    case 1:
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      v40 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        [NSError(CoreBluetooth) errorWithInfo:v40];
      }

      goto LABEL_164;
    case 3:
      break;
    case 4:
      v8 = @"There is not enough space to complete the operation.";
      v9 = 4;
      break;
    case 6:
      v8 = @"The operation was cancelled.";
      v9 = 5;
      break;
    case 7:
      v8 = @"The specified handle was not valid.";
      v9 = 2;
      break;
    case 8:
      v8 = @"Device is invalid.";
      v9 = 12;
      break;
    case 11:
      v8 = @"Operation is not supported.";
      v9 = 13;
      break;
    case 12:
      v33 = @"CBInternalErrorDomain";

      v8 = @"Invalid state";
LABEL_122:
      v9 = 12;
      v5 = v33;
      break;
    case 17:
    case 162:
      v11 = @"CBInternalErrorDomain";

      v8 = @"Operation is not allowed";
LABEL_135:
      v9 = 10;
      v5 = v11;
      break;
    case 20:
      v46 = @"CBInternalErrorDomain";

      v8 = @"Client Initiated operation";
      v9 = 35;
      v5 = v46;
      break;
    case 21:
      v32 = @"CBInternalErrorDomain";

      v8 = @"Invalid IRK";
      v9 = 40;
      v5 = v32;
      break;
    case 116:
      v26 = @"CBInternalErrorDomain";

      v8 = @"Local address is being refreshed.";
LABEL_110:
      v9 = 8;
      v5 = v26;
      break;
    case 117:
      v34 = @"CBInternalErrorDomain";

      v8 = @"Peer device LE GATT Disabled.";
LABEL_137:
      v9 = 9;
      v5 = v34;
      break;
    case 122:
      v8 = @"Advertising has already started.";
      v9 = 9;
      break;
    case 123:
      v9 = 0;
      v8 = @"Advertising is not started.";
      break;
    case 156:
      v30 = @"CBInternalErrorDomain";

      v8 = @"Pairing failed as the Pincode was incorrect.";
      goto LABEL_106;
    case 158:
      v30 = @"CBInternalErrorDomain";

      v8 = @"Pairing failed as the Pincode or Link Key was incorrect.";
LABEL_106:
      v9 = 11;
      v5 = v30;
      break;
    case 161:
      v38 = @"CBInternalErrorDomain";

      v8 = @"Pairing was cancelled.";
LABEL_112:
      v9 = 17;
      v5 = v38;
      break;
    case 166:
      v24 = @"CBInternalErrorDomain";

      v8 = @"Pairing Failed due to too many attempts";
LABEL_104:
      v9 = 16;
      v5 = v24;
      break;
    case 167:
      v31 = @"CBInternalErrorDomain";

      v9 = 0;
      v8 = @"Pairing failed as the passcode was incorrect.";
      v5 = v31;
      break;
    case 168:
      v27 = @"CBInternalErrorDomain";

      v28 = [v3 objectForKeyedSubscript:@"kCBMsgArgDeviceOriginalUUID"];
      [dictionary setObject:v28 forKeyedSubscript:@"CBOriginalPeerIdentifierErrorKey"];

      v8 = @"Pairing failed as this device is already paired.";
LABEL_133:
      v9 = 1;
      v5 = v27;
      break;
    case 170:
      v45 = @"CBInternalErrorDomain";

      v8 = @"Pairing failed as confirm value failed.";
LABEL_116:
      v9 = 2;
      v5 = v45;
      break;
    case 171:
      v35 = @"CBInternalErrorDomain";

      v8 = @"Pairing failed as the security timeout elapsed";
LABEL_118:
      v9 = 3;
      v5 = v35;
      break;
    case 172:
      v36 = @"CBInternalErrorDomain";

      v8 = @"Pairing failed as there was no response from user to pairing request";
LABEL_128:
      v9 = 4;
      v5 = v36;
      break;
    case 173:
      v41 = @"CBInternalErrorDomain";

      v8 = @"Pairing failed as DHKEY Check failed";
LABEL_120:
      v9 = 5;
      v5 = v41;
      break;
    case 174:
      v43 = @"CBInternalErrorDomain";

      v8 = @"Pairing failed as numeric comparison failed failed";
LABEL_126:
      v9 = 6;
      v5 = v43;
      break;
    case 176:
      v42 = @"CBInternalErrorDomain";

      v8 = @"Pairing failed as numeric comparison failed failed";
LABEL_108:
      v9 = 7;
      v5 = v42;
      break;
    case 179:
      v8 = @"Peer removed pairing information";
      v9 = 14;
      break;
    case 180:
      v8 = @"Too many LE devices are paired to this device";
      v9 = 16;
      break;
    case 182:
      v37 = @"CBInternalErrorDomain";

      v8 = @"MIC failure";
      v9 = 31;
      v5 = v37;
      break;
    case 202:
      v39 = @"CBInternalErrorDomain";

      v8 = @"Local device is powered off.";
      v9 = 32;
      v5 = v39;
      break;
    case 305:
      v8 = @"The connection has failed unexpectedly.";
      v9 = 10;
      break;
    case 307:
      v8 = @"The connection has timed out unexpectedly.";
      v9 = 6;
      break;
    case 309:
      v8 = @"The system has reached the maximum number of connections";
      v9 = 11;
      break;
    case 312:
      v8 = @"The specified device is not connected.";
      v9 = 3;
      break;
    case 313:
      v8 = @"The specified device has disconnected from us.";
      v9 = 7;
      break;
    case 315:
      v8 = @"Failed to encrypt the connection, the connection has timed out unexpectedly.";
      v9 = 15;
      break;
    case 329:
      v8 = @"Page timeout";
      v9 = 10;
      break;
    case 336:
      v49 = @"CBInternalErrorDomain";

      v50 = [v3 objectForKeyedSubscript:@"kCBMsgArgNumberOfConnectedDevicesForUseCase"];
      [dictionary setObject:v50 forKeyedSubscript:@"CBNumberOfConnectionsForUseCase"];

      v51 = [v3 objectForKeyedSubscript:@"kCBMsgArgUseCase"];
      [dictionary setObject:v51 forKeyedSubscript:@"CBConnectionUseCase"];

      v8 = @"The system has reached the maximum number of connections for this use case";
LABEL_130:
      v9 = 14;
      v5 = v49;
      break;
    case 341:
      v48 = @"CBInternalErrorDomain";

      v8 = @"Unknown or not an allowed internal client to use BLE";
      v9 = 34;
      v5 = v48;
      break;
    case 342:
      v47 = @"CBInternalErrorDomain";

      v8 = @"LE Scan timed out or total time achieved";
      v9 = 36;
      v5 = v47;
      break;
    case 343:
      v22 = @"CBInternalErrorDomain";

      v8 = @"LE Connection disallowed due to Deny or Allow List";
      v9 = 39;
      v5 = v22;
      break;
    case 344:
      v52 = @"CBInternalErrorDomain";

      v8 = @"LE Connection Scan timed out or total time achieved";
      v9 = 42;
      v5 = v52;
      break;
    case 345:
      v44 = @"CBInternalErrorDomain";

      v8 = @"The system has reached the maximum number of connections for this client";
      v9 = 47;
      v5 = v44;
      break;
    case 346:
      v23 = @"CBInternalErrorDomain";

      v8 = @"LE Connection Requested without Client BundleID when it is required";
      v9 = 43;
      v5 = v23;
      break;
    case 347:
      v25 = @"CBInternalErrorDomain";

      v8 = @"Reached maximum allowed for the number of both direct and indirect connections for a client bundleID";
      v9 = 44;
      v5 = v25;
      break;
    case 348:
      v29 = @"CBInternalErrorDomain";

      v8 = @"Use case is not provided when it is required";
      v9 = 50;
      v5 = v29;
      break;
    default:
      goto LABEL_157;
  }

LABEL_165:
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];
  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:v5 code:v9 userInfo:dictionary];
LABEL_166:

  return v10;
}

+ (void)errorWithInfo:()CoreBluetooth .cold.4(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = 134217984;
  v6 = [a2 integerValue];
  _os_log_error_impl(&dword_1C0AC1000, v3, OS_LOG_TYPE_ERROR, "WARNING: Unknown error: %ld", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end