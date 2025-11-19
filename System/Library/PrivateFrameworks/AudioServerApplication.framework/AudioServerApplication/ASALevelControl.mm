@interface ASALevelControl
- (AudioValueRange)decibelRange;
- (float)decibelFromScalar:(float)a3;
- (float)decibelValue;
- (float)scalarFromDecibel:(float)a3;
- (float)scalarValue;
- (id)coreAudioClassName;
- (void)setDecibelValue:(float)a3;
- (void)setScalarValue:(float)a3;
@end

@implementation ASALevelControl

- (void)setScalarValue:(float)a3
{
  v4 = a3;
  if (![(ASAObject *)self setMainGlobalProperty:1818456950 withData:&v4 ofSize:4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set scalar value property\n", v3, 2u);
  }
}

- (float)scalarValue
{
  v5 = 4;
  v4 = 0.0;
  if (![(ASAObject *)self getMainGlobalProperty:1818456950 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read current item property\n", v3, 2u);
  }

  return v4;
}

- (void)setDecibelValue:(float)a3
{
  v4 = a3;
  if (![(ASAObject *)self setMainGlobalProperty:1818453110 withData:&v4 ofSize:4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set decibel value property\n", v3, 2u);
  }
}

- (float)decibelValue
{
  v5 = 4;
  v4 = 0.0;
  if (![(ASAObject *)self getMainGlobalProperty:1818453110 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read current item property\n", v3, 2u);
  }

  return v4;
}

- (AudioValueRange)decibelRange
{
  v5 = 16;
  v6 = 0.0;
  v7 = 0.0;
  if (![(ASAObject *)self getMainGlobalProperty:1818453106 withData:&v6 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read decibel range property\n", v4, 2u);
  }

  v2 = v6;
  v3 = v7;
  result.mMaximum = v3;
  result.mMinimum = v2;
  return result;
}

- (float)scalarFromDecibel:(float)a3
{
  v7 = a3;
  v5 = 0.0;
  v6 = 4;
  if (![(ASAObject *)self getMainGlobalProperty:1818453107 withData:&v5 ofSize:&v6 withQualifier:&v7 ofSize:4]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read decibel to scalar property\n", v4, 2u);
  }

  return v5;
}

- (float)decibelFromScalar:(float)a3
{
  v7 = a3;
  v5 = 0.0;
  v6 = 4;
  if (![(ASAObject *)self getMainGlobalProperty:1818456932 withData:&v5 ofSize:&v6 withQualifier:&v7 ofSize:4]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read scalar to decibel property\n", v4, 2u);
  }

  return v5;
}

- (id)coreAudioClassName
{
  v2 = [(ASAObject *)self objectClass];
  v3 = @"AudioLevelControl";
  if (v2 == 1986817381)
  {
    v3 = @"AudioVolumeControl";
  }

  if (v2 == 1937072758)
  {
    return @"AudioLFEVolumeControl";
  }

  else
  {
    return v3;
  }
}

@end