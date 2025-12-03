@interface ASABooleanControl
- (BOOL)value;
- (id)coreAudioClassName;
- (void)setValue:(BOOL)value;
@end

@implementation ASABooleanControl

- (void)setValue:(BOOL)value
{
  valueCopy = value;
  if (![(ASAObject *)self setMainGlobalProperty:1650685548 withData:&valueCopy ofSize:4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set value property", v3, 2u);
  }
}

- (BOOL)value
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1650685548 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read value property\n", v3, 2u);
  }

  return v4 != 0;
}

- (id)coreAudioClassName
{
  objectClass = [(ASAObject *)self objectClass];
  v3 = @"AudioBooleanControl";
  if (objectClass <= 1885888877)
  {
    v4 = 1819504225;
    v8 = @"AudioMuteControl";
    if (objectClass != 1836414053)
    {
      v8 = @"AudioBooleanControl";
    }

    if (objectClass == 1819504226)
    {
      v7 = @"AudioListenbackControl";
    }

    else
    {
      v7 = v8;
    }

    if (objectClass == 1784767339)
    {
      v3 = @"AudioJackControl";
    }

    if (objectClass == 1668049264)
    {
      v3 = @"AudioClipLightControl";
    }
  }

  else
  {
    v4 = 1936682094;
    v5 = @"AudioLFEMuteControl";
    v6 = @"AudioTalkbackControl";
    if (objectClass != 1952541794)
    {
      v6 = @"AudioBooleanControl";
    }

    if (objectClass != 1937072749)
    {
      v5 = v6;
    }

    if (objectClass == 1936682095)
    {
      v7 = @"AudioSoloControl";
    }

    else
    {
      v7 = v5;
    }

    if (objectClass == 1885893481)
    {
      v3 = @"AudioInvertControl";
    }

    if (objectClass == 1885888878)
    {
      v3 = @"AudioPhantomPowerControl";
    }
  }

  if (objectClass <= v4)
  {
    return v3;
  }

  else
  {
    return v7;
  }
}

@end