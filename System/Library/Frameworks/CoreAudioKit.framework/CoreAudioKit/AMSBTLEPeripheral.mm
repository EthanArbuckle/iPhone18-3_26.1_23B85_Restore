@interface AMSBTLEPeripheral
- (AMSBTLEPeripheral)initWithID:(id)d name:(id)name manager:(id)manager;
- (BOOL)connect;
- (BOOL)disconnect;
- (BOOL)updateAvailableStateChanged;
- (CBPeripheral)peripheral;
- (NSString)name;
- (void)dealloc;
- (void)setName:(id)name;
@end

@implementation AMSBTLEPeripheral

- (AMSBTLEPeripheral)initWithID:(id)d name:(id)name manager:(id)manager
{
  v10.receiver = self;
  v10.super_class = AMSBTLEPeripheral;
  v8 = [(AMSBTLEPeripheral *)&v10 init];
  if (v8)
  {
    v8->uuid = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:d];
    v8->centralManager = manager;
    v8->name = name;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AMSBTLEPeripheral;
  [(AMSBTLEPeripheral *)&v3 dealloc];
}

- (void)setName:(id)name
{
  nameCopy = name;

  self->name = name;
}

- (NSString)name
{
  if (self->name)
  {
    return self->name;
  }

  else
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->uuid];
  }
}

- (CBPeripheral)peripheral
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:self->uuid];
  centralManager = self->centralManager;
  v7[0] = v3;
  v5 = -[CBCentralManager retrievePeripheralsWithIdentifiers:](centralManager, "retrievePeripheralsWithIdentifiers:", [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1]);
  result = [(NSArray *)v5 count];
  if (result)
  {

    result = [(NSArray *)v5 objectAtIndexedSubscript:0];
  }

  self->peripheral = result;
  return result;
}

- (BOOL)connect
{
  if (self->online)
  {
    return 1;
  }

  peripheral = [(AMSBTLEPeripheral *)self peripheral];
  if (peripheral)
  {
    v5 = peripheral;
    NSLog(&cfstr_ConnectingToPe.isa, self->uuid);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:&unk_284A437A0 forKey:*MEMORY[0x277CBDE98]];
    [(CBCentralManager *)self->centralManager connectPeripheral:v5 options:dictionary];
    return 1;
  }

  else
  {
    NSLog(&cfstr_ErrorNoBluetoo.isa, self->uuid);
    return 0;
  }
}

- (BOOL)disconnect
{
  if (!self->online)
  {
    return 1;
  }

  nullDevice = [MEMORY[0x277CBFD00] nullDevice];
  if (nullDevice)
  {
    v4 = nullDevice;
    NSLog(&cfstr_InstructingThe_0.isa, self->uuid);
    return MIDIObjectSetStringProperty(v4, @"disconnect device", [(AMSBTLEPeripheral *)self uuid]) == 0;
  }

  else
  {
    NSLog(&cfstr_CouldNotCommun_0.isa);
    return 0;
  }
}

- (BOOL)updateAvailableStateChanged
{
  available = self->available;
  [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
  v5 = v4 - self->lastSeen <= 7.0 || self->online;
  self->available = v5;
  return available != v5;
}

@end