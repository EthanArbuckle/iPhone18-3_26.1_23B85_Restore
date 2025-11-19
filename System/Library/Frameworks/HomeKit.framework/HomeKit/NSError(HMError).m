@interface NSError(HMError)
+ (__CFString)hmStringFromErrorCode:()HMError;
+ (id)_hmUserInfoForDescription:()HMError reason:suggestion:underlyingError:;
+ (id)hmErrorWithCode:()HMError description:reason:suggestion:underlyingError:;
+ (id)hmInternalErrorWithCode:()HMError description:reason:suggestion:underlyingError:;
+ (id)hmInternalErrorWithCode:()HMError underlyingError:;
+ (id)hmPrivateErrorWithCode:()HMError description:underlyingError:;
- (id)hmPublicError;
- (uint64_t)isHMError;
@end

@implementation NSError(HMError)

- (uint64_t)isHMError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:@"HMErrorDomain"];

  return v2;
}

- (id)hmPublicError
{
  if ([a1 isHMError])
  {
    switch([a1 code])
    {
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1010:
        v2 = MEMORY[0x1E696ABC0];
        v3 = -1;
        break;
      case 1011:
        v2 = MEMORY[0x1E696ABC0];
        v3 = 12;
        break;
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1020:
      case 1021:
      case 1022:
      case 1023:
      case 1024:
      case 1025:
      case 1026:
      case 1027:
      case 1028:
      case 1029:
      case 1030:
      case 1031:
      case 1032:
      case 1035:
      case 1036:
      case 1041:
      case 1045:
      case 1046:
      case 1047:
        v2 = MEMORY[0x1E696ABC0];
        v3 = 54;
        break;
      case 1018:
      case 1019:
        v2 = MEMORY[0x1E696ABC0];
        v3 = 14;
        break;
      case 1033:
      case 1034:
        v2 = MEMORY[0x1E696ABC0];
        v3 = 4;
        break;
      case 1037:
      case 1038:
      case 1040:
      case 1042:
      case 1043:
      case 1044:
        v2 = MEMORY[0x1E696ABC0];
        v3 = 50;
        break;
      case 1039:
        v2 = MEMORY[0x1E696ABC0];
        v3 = 3;
        break;
      case 1048:
      case 1049:
        v2 = MEMORY[0x1E696ABC0];
        v3 = 23;
        break;
      default:
        goto LABEL_4;
    }

    v4 = [v2 hmErrorWithCode:v3];
  }

  else
  {
LABEL_4:
    v4 = a1;
  }

  return v4;
}

+ (id)hmPrivateErrorWithCode:()HMError description:underlyingError:
{
  v7 = a4;
  v8 = a5;
  if (v7 | v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    if (v7)
    {
      v10 = [MEMORY[0x1E696AAE8] mainBundle];
      v11 = [v10 localizedStringForKey:v7 value:&stru_1F0E92498 table:0];
      [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:a3 userInfo:v9];

  return v12;
}

+ (id)hmInternalErrorWithCode:()HMError underlyingError:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:a3 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)hmInternalErrorWithCode:()HMError description:reason:suggestion:underlyingError:
{
  v8 = [MEMORY[0x1E696ABC0] _hmUserInfoForDescription:a4 reason:a5 suggestion:a6 underlyingError:a7];
  v9 = [MEMORY[0x1E696ABC0] hmInternalErrorWithCode:a3 userInfo:v8];

  return v9;
}

+ (id)hmErrorWithCode:()HMError description:reason:suggestion:underlyingError:
{
  v8 = [MEMORY[0x1E696ABC0] _hmUserInfoForDescription:a4 reason:a5 suggestion:a6 underlyingError:a7];
  v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:a3 userInfo:v8];

  return v9;
}

+ (id)_hmUserInfoForDescription:()HMError reason:suggestion:underlyingError:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v9 || v10 || v11 || v12)
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
    if (v9)
    {
      v15 = [MEMORY[0x1E696AAE8] mainBundle];
      v16 = [v15 localizedStringForKey:v9 value:&stru_1F0E92498 table:0];
      [v14 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    if (v10)
    {
      v17 = [MEMORY[0x1E696AAE8] mainBundle];
      v18 = [v17 localizedStringForKey:v10 value:&stru_1F0E92498 table:0];
      [v14 setObject:v18 forKeyedSubscript:*MEMORY[0x1E696A588]];
    }

    if (v11)
    {
      v19 = [MEMORY[0x1E696AAE8] mainBundle];
      v20 = [v19 localizedStringForKey:v11 value:&stru_1F0E92498 table:0];
      [v14 setObject:v20 forKeyedSubscript:*MEMORY[0x1E696A598]];
    }

    if (v13)
    {
      [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (__CFString)hmStringFromErrorCode:()HMError
{
  if (a3 <= 1000)
  {
    v4 = @"Unexpected error";
    switch(a3)
    {
      case -1:
        goto LABEL_438;
      case 1:
        v4 = @"Object already exists";

        break;
      case 2:
        v4 = @"Object not found";

        break;
      case 3:
        v4 = @"Invalid parameter";

        break;
      case 4:
        v4 = @"Accessory not reachable";

        break;
      case 5:
        v4 = @"Read only characteristic";

        break;
      case 6:
        v4 = @"Write only characteristic";

        break;
      case 7:
        v4 = @"Notification not supported";

        break;
      case 8:
        v4 = @"Operation timed out";

        break;
      case 9:
        v4 = @"Accessory powered off";

        break;
      case 10:
        v4 = @"Access denied";

        break;
      case 11:
        v4 = @"Object associated with another home";

        break;
      case 12:
        v4 = @"Object not associated with a home";

        break;
      case 13:
        v4 = @"Object already associated to home";

        break;
      case 14:
        v4 = @"Accessory busy";

        break;
      case 15:
        v4 = @"Operation in progress";

        break;
      case 16:
        v4 = @"Accessory out of resources";

        break;
      case 17:
        v4 = @"Insufficient privileges";

        break;
      case 18:
        v4 = @"Accessory pairing failed";

        break;
      case 19:
        v4 = @"Invalid data format";

        break;
      case 20:
        v4 = @"Nil parameter";

        break;
      case 21:
        v4 = @"Unconfigured parameter";

        break;
      case 22:
        v4 = @"Parameter of invalid class";

        break;
      case 23:
        v4 = @"Operation cancelled";

        break;
      case 24:
        v4 = @"Room for home cannot be added to a zone";

        break;
      case 25:
        v4 = @"No actions in Action set";

        break;
      case 26:
        v4 = @"No registered Action sets for trigger";

        break;
      case 27:
        v4 = @"Missing parameter";

        break;
      case 28:
        v4 = @"FireDate in past";

        break;
      case 29:
        v4 = @"Room For home cannot be updated";

        break;
      case 30:
        v4 = @"Action already associated with another Action set";

        break;
      case 31:
        v4 = @"Object with similar name exists in home";

        break;
      case 32:
        v4 = @"Home with similar name exists";

        break;
      case 33:
        v4 = @"Cannot rename to similar name";

        break;
      case 34:
        v4 = @"Cannot remove non-bridge accessory";

        break;
      case 35:
        v4 = @"Name contains prohibited characters";

        break;
      case 36:
        v4 = @"Name does not start with valid characters";

        break;
      case 37:
        v4 = @"UserID is not an email address";

        break;
      case 38:
        v4 = @"Confirmation to add user was declined";

        break;
      case 39:
        v4 = @"Confirmation to remove user was declined";

        break;
      case 40:
        v4 = @"User declined invite to access home";

        break;
      case 41:
        v4 = @"User management failed";

        break;
      case 42:
        v4 = @"Recurrence too small";

        break;
      case 43:
        v4 = @"Invalid value type";

        break;
      case 44:
        v4 = @"Value lower than minimum";

        break;
      case 45:
        v4 = @"Value higher than maximum";

        break;
      case 46:
        v4 = @"String longer than maximum length";

        break;
      case 47:
        v4 = @"Access to home data is not authorized";

        break;
      case 48:
        v4 = @"Operation is not supported";

        break;
      case 49:
        v4 = @"Maximum number of objects of requested type already exist";

        break;
      case 50:
        v4 = @"Accessory sent an invalid response";

        break;
      case 51:
        v4 = @"String shorter than the minimum length";

        break;
      case 52:
        v4 = @"An unknown error occurred";

        break;
      case 53:
        v4 = @"Security check failed or action not allowed";

        break;
      case 54:
        v4 = @"Network or other communication failure occurred";

        break;
      case 55:
        v4 = @"Authentication failed";

        break;
      case 56:
        v4 = @"Invalid message size";

        break;
      case 57:
        v4 = @"Accessory discovery failed";

        break;
      case 58:
        v4 = @"Client request error when communicating with accessory";

        break;
      case 59:
        v4 = @"Accessory response error when communicating with accessory";

        break;
      case 60:
        v4 = @"Name does not end with valid characters";

        break;
      case 61:
        v4 = @"Accessory is blocked";

        break;
      case 62:
        v4 = @"Invalid associated service type";

        break;
      case 63:
        v4 = @"Action set execution failed";

        break;
      case 64:
        v4 = @"Action set execution partially succeeded";

        break;
      case 65:
        v4 = @"Action set being executed";

        break;
      case 66:
        v4 = @"Accessory out of compliance";

        break;
      case 67:
        v4 = @"Data reset failed";

        break;
      case 68:
        v4 = @"Characteristic notification already enabled";

        break;
      case 69:
        v4 = @"Timer trigger recurrence must be on specified boundaries";

        break;
      case 70:
        v4 = @"Timer trigger fire date must be on specified boundaries";

        break;
      case 71:
        v4 = @"Cannot activate a timer trigger that is too far in the future";

        break;
      case 72:
        v4 = @"Recurrence too large";

        break;
      case 73:
        v4 = @"Read/Write operation partially succeeded";

        break;
      case 74:
        v4 = @"Read/Write operation failed";

        break;
      case 75:
        v4 = @"User is not signed into iCloud";

        break;
      case 76:
        v4 = @"User does not have iCloud Keychain sync enabled";

        break;
      case 77:
        v4 = @"Cloud data sync is in progress";

        break;
      case 78:
        v4 = @"Network Unavailable";

        break;
      case 79:
        v4 = @"Add accessory failed";

        break;
      case 80:
        v4 = @"Missing entitlement for API/SPI";

        break;
      case 81:
        v4 = @"Cannot unblock bridged accessories: only bridges may be unblocked";

        break;
      case 82:
        v4 = @"Device locked";

        break;
      case 83:
        v4 = @"Cannot remove builtin action set";

        break;
      case 84:
        v4 = @"Location Services for Home is disabled";

        break;
      case 85:
        v4 = @"Not Authorized for Location Services";

        break;
      case 86:
        v4 = @"Refer to User Manual";

        break;
      case 87:
        v4 = @"Missing or invalid authorization data";

        break;
      case 88:
        v4 = @"Bridged Accessory not reachable";

        break;
      case 89:
        v4 = @"Not Authorized for Microphone Access";

        break;
      case 90:
        v4 = @"Incompatible network.";

        break;
      case 91:
        v4 = @"No HomeHub";

        break;
      case 92:
        v4 = @"No Compatible HomeHub.";

        break;
      case 93:
        v4 = @"Incompatible Accessory";

        break;
      case 95:
        v4 = @"Object with similar name exists";

        break;
      case 96:
        v4 = @"Ownership code did not match.";

        break;
      case 97:
        v4 = @"Maximum accessories of the type in home";

        break;
      case 98:
        v4 = @"WiFi credential generation failed";

        break;
      case 103:
        v4 = @"Accessory is suspended";

        break;
      default:
        goto LABEL_437;
    }

    return v4;
  }

  if (a3 <= 2199)
  {
    if (a3 > 1008)
    {
      if (a3 > 2003)
      {
        if (a3 > 2006)
        {
          if (a3 == 2007)
          {
            v4 = @"Cloud photo library not enabled";
          }

          else
          {
            if (a3 != 2100)
            {
              goto LABEL_437;
            }

            v4 = @"No Target Accessory";
          }
        }

        else if (a3 == 2004)
        {
          v4 = @"Unsupported setup payload.";
        }

        else
        {
          if (a3 != 2005)
          {
            goto LABEL_437;
          }

          v4 = @"Media remote error";
        }
      }

      else if (a3 > 2001)
      {
        if (a3 == 2002)
        {
          v4 = @"Incorrect setup code.";
        }

        else
        {
          v4 = @"Secure access Denied.";
        }
      }

      else if (a3 == 1009)
      {
        v4 = @"Request was not handled";
      }

      else
      {
        if (a3 != 2001)
        {
          goto LABEL_437;
        }

        v4 = @"Operation canceled by user.";
      }
    }

    else if (a3 > 1004)
    {
      if (a3 > 1006)
      {
        if (a3 == 1007)
        {
          v4 = @"Invitation has already been accepted";
        }

        else
        {
          v4 = @"Invitation has already been declined";
        }
      }

      else if (a3 == 1005)
      {
        v4 = @"Failed to create remote view service";
      }

      else
      {
        v4 = @"Invitation has expired";
      }
    }

    else if (a3 > 1002)
    {
      if (a3 == 1003)
      {
        v4 = @"Metadata version older than client version";
      }

      else
      {
        v4 = @"Metadata schema version incompatible";
      }
    }

    else if (a3 == 1001)
    {
      v4 = @"Error parsing HAP metadata";
    }

    else
    {
      v4 = @"Error serializing HAP metadata";
    }
  }

  else if (a3 <= 2502)
  {
    if (a3 > 2404)
    {
      if (a3 > 2500)
      {
        if (a3 == 2501)
        {
          v4 = @"HomeUIService terminated";
        }

        else
        {
          v4 = @"HomeUIService backgrounded";
        }
      }

      else if (a3 == 2405)
      {
        v4 = @"Accessory is calibrating";
      }

      else
      {
        if (a3 != 2500)
        {
          goto LABEL_437;
        }

        v4 = @"kResetConfigRequestKey";
      }
    }

    else if (a3 > 2299)
    {
      if (a3 == 2300)
      {
        v4 = @"Voice Shortcut with similar name exists";
      }

      else
      {
        if (a3 != 2404)
        {
          goto LABEL_437;
        }

        v4 = @"The requested operation has started";
      }
    }

    else if (a3 == 2200)
    {
      v4 = @"Invalid characters";
    }

    else
    {
      if (a3 != 2201)
      {
        goto LABEL_437;
      }

      v4 = @"Weak password";
    }
  }

  else if (a3 <= 3001)
  {
    if (a3 > 2999)
    {
      if (a3 == 3000)
      {
        v4 = @"User did not respond for trigger execution";
      }

      else
      {
        v4 = @"Did not execute trigger as user declined";
      }
    }

    else if (a3 == 2503)
    {
      v4 = @"No clients";
    }

    else
    {
      if (a3 != 2504)
      {
        goto LABEL_437;
      }

      v4 = @"Accessory Browser stopped";
    }
  }

  else if (a3 <= 3004)
  {
    if (a3 == 3002)
    {
      v4 = @"End event cancelled the restore";
    }

    else
    {
      if (a3 != 3003)
      {
        goto LABEL_437;
      }

      v4 = @"Event trigger execution session was deallocated";
    }
  }

  else
  {
    switch(a3)
    {
      case 3005:
        v4 = @"Trigger failed to execute due to recurrence mismatch";

        break;
      case 3006:
        v4 = @"Event trigger evaluation condition evalutated to false";

        break;
      case 3007:
        v4 = @"Did not find compatible resident to send the permission to confirm the trigger execution";

        return v4;
      default:
LABEL_437:
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown error code %ld", a3];
LABEL_438:

        return v4;
    }
  }

  return v4;
}

@end