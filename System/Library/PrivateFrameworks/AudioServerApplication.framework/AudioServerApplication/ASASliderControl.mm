@interface ASASliderControl
- (_ASASliderRange)range;
- (unsigned)value;
- (void)setValue:(unsigned int)value;
@end

@implementation ASASliderControl

- (void)setValue:(unsigned int)value
{
  valueCopy = value;
  if (![(ASAObject *)self setMainGlobalProperty:1935962742 withData:&valueCopy ofSize:4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set value property\n", v3, 2u);
  }
}

- (unsigned)value
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1935962742 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read value property\n", v3, 2u);
  }

  return v4;
}

- (_ASASliderRange)range
{
  v4 = 8;
  v5 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1935962738 withData:&v5 ofSize:&v4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read range property\n", v3, 2u);
  }

  return v5;
}

@end