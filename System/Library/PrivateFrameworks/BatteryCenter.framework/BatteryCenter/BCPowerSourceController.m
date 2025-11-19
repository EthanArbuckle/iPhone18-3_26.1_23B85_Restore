@interface BCPowerSourceController
@end

@implementation BCPowerSourceController

void __59___BCPowerSourceController_addBatteryDeviceObserver_queue___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) connectedDevices];
    [v4 connectedDevicesDidChange:v3];
  }
}

void __72___BCPowerSourceController__shouldCoalesceDevices_minimumPercentCharge___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v24 = v7;
  if (a3)
  {
    v8 = [*(a1 + 32) objectAtIndex:a3 - 1];
    v9 = [v8 vendor];
    if (v9 == [v24 vendor])
    {
      v10 = [v8 productIdentifier];
      if (v10 == [v24 productIdentifier])
      {
        v11 = [v8 matchIdentifier];
        v12 = [v24 matchIdentifier];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          v14 = *(*(*(a1 + 40) + 8) + 24);
          v15 = [v8 percentCharge];
          v16 = [v24 percentCharge];
          if (v14 >= v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = v14;
          }

          if (v17 >= v16)
          {
            v17 = v16;
          }

          *(*(*(a1 + 40) + 8) + 24) = v17;
          v18 = *(*(*(a1 + 40) + 8) + 24);
          v19 = [v8 percentCharge];
          v20 = [v24 percentCharge];
          if (v18 <= v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = v18;
          }

          if (v21 <= v20)
          {
            v21 = v20;
          }

          if (v21 - *(*(*(a1 + 40) + 8) + 24) > 9)
          {
            v23 = 0;
          }

          else
          {
            v22 = [v8 isCharging];
            v23 = v22 ^ [v24 isCharging] ^ 1;
          }

          *(*(*(a1 + 48) + 8) + 24) = v23;
        }
      }
    }

    *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 percentCharge];
  }
}

uint64_t __81___BCPowerSourceController__orderedDevicesFromPowerSourcesBlob_powerSourcesList___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((BCCombinedLeftRightBatteryStatus() & 1) != 0 || ![*(a1 + 32) _isDevicePartOfPair:v3])
  {
    v6 = 0;
  }

  else
  {
    v4 = [v3 matchIdentifier];
    v5 = [*(a1 + 40) objectForKey:v4];
    if (!v5)
    {
      v5 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 40) setObject:v5 forKey:v4];
    }

    [v5 addObject:v3];

    v6 = 1;
  }

  return v6;
}

uint64_t __81___BCPowerSourceController__orderedDevicesFromPowerSourcesBlob_powerSourcesList___block_invoke_200(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 isInternal];
  if (v8 == [v7 isInternal])
  {
    v10 = [v6 vendor];
    if ((v10 == 1) != ([v7 vendor] != 1))
    {
      v11 = [v6 accessoryCategory];
      v12 = [v7 accessoryCategory];
      v13 = 0;
      v14 = -1;
      v15 = -1;
      do
      {
        v16 = orderedDeviceAccessoryCategories[v13];
        if (v16 == v11)
        {
          v14 = v13;
        }

        if (v16 == v12)
        {
          v15 = v13;
        }

        ++v13;
      }

      while (v13 != 8);
      if (v14 < v15)
      {
        v9 = -1;
      }

      else
      {
        v9 = v14 > v15;
      }

      if (!v9)
      {
        v17 = [v6 transportType];
        if (v17 == [v7 transportType] && (v18 = objc_msgSend(v6, "productIdentifier"), v18 == objc_msgSend(v7, "productIdentifier")) && (v19 = objc_msgSend(v6, "parts"), v19 != objc_msgSend(v7, "parts")))
        {
          v23 = [v6 parts];
          if (v23 < [v7 parts])
          {
            v9 = -1;
          }

          else
          {
            v9 = 1;
          }
        }

        else
        {
          v20 = [v6 name];
          v21 = [v7 name];
          v9 = [v20 compare:v21];
        }
      }
    }

    else if (v10 == 1)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }
  }

  else if (v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __73___BCPowerSourceController__registerForNotification_token_queue_handler___block_invoke(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = BCLogPowerSourceController;
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[6];
    v9 = 138543618;
    v10 = v5;
    v11 = 2082;
    v12 = v6;
    _os_log_impl(&dword_241AC0000, v4, OS_LOG_TYPE_DEFAULT, "(%{public}@) Received %{public}s notification", &v9, 0x16u);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __52___BCPowerSourceController__endPowerSourceObserving__block_invoke(uint64_t a1, int *a2)
{
  result = notify_is_valid_token(*a2);
  if (result)
  {
    result = notify_cancel(*a2);
  }

  *a2 = 0;
  return result;
}

void __50___BCPowerSourceController__queryConnectedDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 connectedDevicesDidChange:*(a1 + 32)];
  }
}

uint64_t __56___BCPowerSourceController__notifyObserver_block_queue___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = BCLogPowerSourceController;
  if (os_log_type_enabled(BCLogPowerSourceController, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v5 = a1[5];
    v7 = v2;
    v8 = objc_opt_class();
    v9 = a1[5];
    v13 = 138543874;
    v14 = v6;
    v15 = 2114;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    v10 = v8;
    _os_log_impl(&dword_241AC0000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Notifying observer: <%{public}@: %p>", &v13, 0x20u);
  }

  result = (*(a1[6] + 16))(a1[6], a1[5], v3, v4);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

@end