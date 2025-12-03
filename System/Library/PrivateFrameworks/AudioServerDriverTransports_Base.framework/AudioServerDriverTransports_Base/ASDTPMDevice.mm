@interface ASDTPMDevice
+ (id)pmDeviceWithConfig:(id)config forSequencer:(id)sequencer;
- (ASDTPMDevice)initWithConfig:(id)config forSequencer:(id)sequencer;
- (ASDTPMSequencer)parentSequencer;
@end

@implementation ASDTPMDevice

+ (id)pmDeviceWithConfig:(id)config forSequencer:(id)sequencer
{
  configCopy = config;
  sequencerCopy = sequencer;
  asdtSubclass = [configCopy asdtSubclass];
  if (([(objc_class *)asdtSubclass isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v8 = [[asdtSubclass alloc] initWithConfig:configCopy forSequencer:sequencerCopy];
  }

  else
  {
    v9 = ASDTBaseLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMDevice pmDeviceWithConfig:configCopy forSequencer:?];
    }

    v8 = 0;
  }

  return v8;
}

- (ASDTPMDevice)initWithConfig:(id)config forSequencer:(id)sequencer
{
  configCopy = config;
  sequencerCopy = sequencer;
  v17.receiver = self;
  v17.super_class = ASDTPMDevice;
  v8 = [(ASDTPMDevice *)&v17 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  [(ASDTPMDevice *)v8 setParentSequencer:sequencerCopy];
  [(ASDTPMDevice *)v9 setPowerState:0];
  -[ASDTPMDevice setPmNoStateChangeOnFailure:](v9, "setPmNoStateChangeOnFailure:", [configCopy asdtPMNoStateChangeOnFailure]);
  asdtName = [configCopy asdtName];
  [(ASDTPMDevice *)v9 setName:asdtName];

  name = [(ASDTPMDevice *)v9 name];

  if (!name)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [(ASDTPMDevice *)v9 setName:v13];
  }

  if (([configCopy asdtPMOrder:&v9->_pmOrderPowerUp forPowerUp:1] & 1) == 0)
  {
    v15 = ASDTBaseLogType();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMDevice initWithConfig:v9 forSequencer:?];
    }

    goto LABEL_11;
  }

  if (([configCopy asdtPMOrder:&v9->_pmOrderPowerDown forPowerUp:0] & 1) == 0)
  {
    v15 = ASDTBaseLogType();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMDevice initWithConfig:v9 forSequencer:?];
    }

LABEL_11:

    v14 = 0;
    goto LABEL_12;
  }

LABEL_6:
  v14 = v9;
LABEL_12:

  return v14;
}

- (ASDTPMSequencer)parentSequencer
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSequencer);

  return WeakRetained;
}

+ (void)pmDeviceWithConfig:(void *)a1 forSequencer:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"Subclass"];
  OUTLINED_FUNCTION_0_5(&dword_241659000, v2, v3, "Invalid subclass name: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_5(&dword_241659000, v2, v3, "%@: Invalid or missing PMOrder (power up) property.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_5(&dword_241659000, v2, v3, "%@: Invalid or missing PMOrder (power down) property.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end