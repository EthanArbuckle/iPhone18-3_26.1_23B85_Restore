BOOL MPSSupportsMTLDevice(id device)
{
  if (device)
  {
    MPSDevice::GetMPSDevice();
  }

  return device;
}

id MPSGetPreferredDevice(MPSDeviceOptions options)
{
  if (options > 3)
  {
    return 0;
  }

  block[7] = v1;
  block[8] = v2;
  v3 = &qword_27DF88890[options];
  v5 = v3[4];
  v4 = v3 + 4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239E36C90;
  block[3] = &unk_278B3EAF0;
  block[4] = options;
  if (v5 == -1)
  {
    return qword_27DF88890[options];
  }

  dispatch_once(v4, block);
  return qword_27DF88890[options];
}

id sub_239E36C90(uint64_t a1)
{
  result = MTLCreateSystemDefaultDevice();
  qword_27DF88890[*(a1 + 32)] = result;
  return result;
}

void MPSAutoCache::PrefetchHeapSize()
{
    ;
  }
}

void MPSAutoCache::SetHeapCacheDuration()
{
    ;
  }
}

void MPSDevice::GetMPSDevice()
{
    ;
  }
}