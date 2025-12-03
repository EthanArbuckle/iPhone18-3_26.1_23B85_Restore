@interface ASAStereoPanControl
- (float)value;
- (unsigned)getPanChannel:(BOOL)channel;
- (void)setValue:(float)value;
@end

@implementation ASAStereoPanControl

- (void)setValue:(float)value
{
  valueCopy = value;
  if (![(ASAObject *)self setMainGlobalProperty:1936745334 withData:&valueCopy ofSize:4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set value property\n", v3, 2u);
  }
}

- (float)value
{
  v5 = 4;
  v4 = 0.0;
  if (![(ASAObject *)self getMainGlobalProperty:1936745334 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read value property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)getPanChannel:(BOOL)channel
{
  channelCopy = channel;
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v7 = 8;
  if (![(ASAObject *)self getMainGlobalProperty:1936745315 withData:v8 ofSize:&v7 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read panning channels property\n", v6, 2u);
  }

  result = *(v8 | (4 * !channelCopy));
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

@end