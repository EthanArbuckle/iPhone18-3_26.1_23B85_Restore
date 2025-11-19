@interface AMSBTLEAdvertisementManager
- (AMSBTLEAdvertisementManager)init;
- (BOOL)isLECapableHardware;
- (void)advertiseMIDIService;
- (void)dealloc;
- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4;
- (void)stopAdvertisingMIDIService;
@end

@implementation AMSBTLEAdvertisementManager

- (AMSBTLEAdvertisementManager)init
{
  v4.receiver = self;
  v4.super_class = AMSBTLEAdvertisementManager;
  v2 = [(AMSBTLEAdvertisementManager *)&v4 init];
  if (v2)
  {
    v2->peripheralManager = [objc_alloc(MEMORY[0x277CBE068]) initWithDelegate:v2 queue:0];
  }

  return v2;
}

- (void)dealloc
{
  peripheralManager = self->peripheralManager;
  if (peripheralManager)
  {

    self->peripheralManager = 0;
  }

  v4.receiver = self;
  v4.super_class = AMSBTLEAdvertisementManager;
  [(AMSBTLEAdvertisementManager *)&v4 dealloc];
}

- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4
{
  if (a4)
  {
    NSLog(&stru_284A3B0D8.isa, a2, a3, a4);
  }

  else
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:kAdvertisementNotification object:0 userInfo:&unk_284A43720];
    NSLog(&cfstr_AdvertisingSta.isa, v5);
  }
}

- (BOOL)isLECapableHardware
{
  v2 = [(CBPeripheralManager *)self->peripheralManager state];
  v3 = 0;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v4 = @"Bluetooth is currently powered off.";
      goto LABEL_10;
    }

    if (v2 == 5)
    {
      v3 = 1;
      v4 = @"Bluetooth is powered on and LE capable.";
LABEL_11:
      NSLog(&cfstr_PeripheralMana.isa, v4);
    }
  }

  else
  {
    if (v2 == 2)
    {
      v4 = @"The platform/hardware doesn't support Bluetooth Low Energy.";
      goto LABEL_10;
    }

    if (v2 == 3)
    {
      v4 = @"The app is not authorized to use Bluetooth Low Energy.";
LABEL_10:
      v3 = 0;
      goto LABEL_11;
    }
  }

  return v3;
}

- (void)advertiseMIDIService
{
  v9[1] = *MEMORY[0x277D85DE8];
  if ([(CBPeripheralManager *)self->peripheralManager isAdvertising])
  {
    NSLog(&cfstr_AlreadyAdverti.isa);
  }

  else if ([(AMSBTLEAdvertisementManager *)self isLECapableHardware])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = [MEMORY[0x277CBFD00] nullDevice];
    str = 0;
    if (v4)
    {
      if (MIDIObjectGetStringProperty(v4, @"Bluetooth Advertising Name", &str))
      {
        v5 = *MEMORY[0x277CBDD08];
        v6 = @"Bluetooth MIDI Device";
      }

      else
      {
        v6 = str;
        v5 = *MEMORY[0x277CBDD08];
      }

      [v3 setValue:v6 forKey:v5];
      v9[0] = [MEMORY[0x277CBE0A0] UUIDWithString:@"03B80E5A-EDE8-4B33-A751-6CE34EC4C700"];
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      [v3 setValue:v7 forKey:*MEMORY[0x277CBDD30]];
      NSLog(&cfstr_StartingAdvert.isa);
      [(CBPeripheralManager *)self->peripheralManager startAdvertising:v3];
      if (str)
      {
        CFRelease(str);
      }
    }

    else
    {
      NSLog(&cfstr_CanTCommunicat.isa);
    }
  }

  else
  {
    NSLog(&cfstr_NotInABluetoot.isa);
  }
}

- (void)stopAdvertisingMIDIService
{
  NSLog(&cfstr_StoppedAdverti.isa, a2);
  [(CBPeripheralManager *)self->peripheralManager stopAdvertising];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = kAdvertisementNotification;

  [v3 postNotificationName:v4 object:0 userInfo:&unk_284A43748];
}

@end