@interface ASAControl
- (unsigned)controlElement;
- (unsigned)controlScope;
@end

@implementation ASAControl

- (unsigned)controlElement
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainInputProperty:1667591277 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read control element property\n", v3, 2u);
  }

  return v4;
}

- (unsigned)controlScope
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainOutputProperty:1668506480 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read control scope property\n", v3, 2u);
  }

  return v4;
}

@end