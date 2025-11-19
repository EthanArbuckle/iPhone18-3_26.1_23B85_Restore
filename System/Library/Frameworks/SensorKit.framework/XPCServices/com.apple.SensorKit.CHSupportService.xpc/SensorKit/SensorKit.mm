void start()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  [[[SRCHSupportService alloc] initWithQueue:dispatch_queue_create("com.apple.SRCHSupportService.main" resume];
  dispatch_main();
}

void sub_10000108C(id a1)
{
  v1 = qword_100008770;
  if (os_log_type_enabled(qword_100008770, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Client connection has invalidated.", v2, 2u);
  }
}

const __CFString *sub_100001434(uint64_t a1)
{
  if (a1 < 4096)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          return 0;
        }

        v3 = [NSBundle bundleForClass:objc_opt_class()];
        v4 = @"SRErrorNoAuthorization";
      }

      else
      {
        v3 = [NSBundle bundleForClass:objc_opt_class()];
        v4 = @"SRErrorInvalidEntitlement";
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          v3 = [NSBundle bundleForClass:objc_opt_class()];
          v4 = @"SRErrorDataInaccessible";
          break;
        case 3:
          v3 = [NSBundle bundleForClass:objc_opt_class()];
          v4 = @"SRErrorFetchRequestInvalid";
          break;
        case 4:
          v3 = [NSBundle bundleForClass:objc_opt_class()];
          v4 = @"SRErrorPromptDeclined";
          break;
        default:
          return 0;
      }
    }

    return [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_1000041B0 table:0];
  }

  else
  {
    if (!os_variant_has_internal_content())
    {
      return 0;
    }

    if (a1 > 12288)
    {
      if (a1 > 12295)
      {
        if ((a1 - 20480) >= 5)
        {
          if (a1 == 12296)
          {
            return @"Provided sample is from the future";
          }

          if (a1 == 0x4000)
          {
            return @"Sensor Configuration is invalid";
          }
        }

        return 0;
      }

      if (a1 <= 12291)
      {
        if (a1 == 12289)
        {
          return @"Writer Not Authorized";
        }

        else if (a1 == 12290)
        {
          return @"Writer Input was invalid";
        }

        else
        {
          return @"No available memory mapped to write sample";
        }
      }

      else if (a1 > 12293)
      {
        if (a1 == 12294)
        {
          return @"Framework datastore state is invalid";
        }

        else
        {
          return @"Writer does not have explicit authorization";
        }
      }

      else if (a1 == 12292)
      {
        return @"Provided sample is out of order from previous samples";
      }

      else
      {
        return @"Provided sample is too large";
      }
    }

    else
    {
      if (a1 <= 8195)
      {
        if (a1 >= 0x2000)
        {
          if (a1 > 8193)
          {
            if (a1 == 8194)
            {
              return @"Internal Error";
            }

            else
            {
              return @"Prompt Busy";
            }
          }

          else if (a1 == 0x2000)
          {
            return @"No space available to write samples";
          }

          else
          {
            return @"Connection Not Found";
          }
        }

        switch(a1)
        {
          case 4096:
            return @"Required app is not installed";
          case 4097:
            return @"Required onboarding not completed";
          case 4098:
            return @"Global setting not enabled";
        }

        return 0;
      }

      if (a1 <= 8198)
      {
        if (a1 == 8196)
        {
          return @"Prompt is cancelled";
        }

        if (a1 != 8197)
        {
          return @"No device identifier could be found";
        }

        return 0;
      }

      if (a1 > 8200)
      {
        if (a1 == 8201)
        {
          return @"No new authorization groups were requested";
        }

        if (a1 == 12288)
        {
          return @"Writer Not Monitoring";
        }

        return 0;
      }

      if (a1 == 8199)
      {
        return @"Time synchronization state is invalid";
      }

      else
      {
        return @"The requested bundle authorization is being requested for could not be found";
      }
    }
  }
}

NSString *sub_100001818(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = @"SRErrorNoAuthorizationRecovery";
  }

  else
  {
    if (a1 != 2)
    {
      return 0;
    }

    v1 = @"SRErrorDataInaccessibleRecovery";
  }

  v2 = [NSBundle bundleForClass:objc_opt_class()];

  return [(NSBundle *)v2 localizedStringForKey:v1 value:&stru_1000041B0 table:0];
}