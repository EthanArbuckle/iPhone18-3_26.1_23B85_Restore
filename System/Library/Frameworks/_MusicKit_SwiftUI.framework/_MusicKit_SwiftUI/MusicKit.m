@interface MusicKit
@end

@implementation MusicKit

void __88__MusicKit_SPI_SKCloudServiceSetupViewController__musicKit_underlyingOptionsForOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v10 isEqualToString:@"musicKit_action"])
  {
    v6 = *MEMORY[0x277CDD410];
    if ([v5 isNSString])
    {
      v7 = [*(a1 + 32) _musicKit_underlyingActionForAction:v5];
      goto LABEL_4;
    }

LABEL_13:
    v8 = 0;
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if ([v10 isEqualToString:@"musicKit_iTunesItemIdentifier"])
  {
    v9 = MEMORY[0x277CDD428];
LABEL_12:
    v6 = *v9;
    goto LABEL_13;
  }

  if ([v10 isEqualToString:@"musicKit_affiliateToken"])
  {
    v9 = MEMORY[0x277CDD418];
    goto LABEL_12;
  }

  if ([v10 isEqualToString:@"musicKit_campaignToken"])
  {
    v9 = MEMORY[0x277CDD420];
    goto LABEL_12;
  }

  if (![v10 isEqualToString:@"musicKit_messageIdentifier"])
  {
    if ([v10 isEqualToString:@"musicKit__audioAccessorySerialNumber"])
    {
      v9 = MEMORY[0x277CDD460];
    }

    else
    {
      if (![v10 isEqualToString:@"musicKit__audioAccessoryUniqueDeviceIdentifier"])
      {
        v8 = 0;
        goto LABEL_26;
      }

      v9 = MEMORY[0x277CDD468];
    }

    goto LABEL_12;
  }

  v6 = *MEMORY[0x277CDD430];
  if (![v5 isNSString])
  {
    goto LABEL_13;
  }

  v7 = [*(a1 + 32) _musicKit_underlyingMessageIdentifierForMessageIdentifier:v5];
LABEL_4:
  v8 = v7;
  if (!v6)
  {
LABEL_26:
    v6 = v10;
    if (v8)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_14:
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_27:
  v8 = v5;
LABEL_15:
  [*(a1 + 40) setObject:v8 forKey:v6];
}

@end