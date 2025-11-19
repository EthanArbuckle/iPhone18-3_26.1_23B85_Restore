uint64_t ARFileDescriptorIsTTY(FILE *a1)
{
  if (ARFileDescriptorIsTTY_onceToken != -1)
  {
    ARFileDescriptorIsTTY_cold_1();
  }

  v2 = fileno(a1);
  return (isatty(v2) != 0) & ARFileDescriptorIsTTY_isSSHTTY;
}

void __ARFileDescriptorIsTTY_block_invoke()
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v2 environment];
  v1 = [v0 objectForKey:@"SSH_TTY"];
  ARFileDescriptorIsTTY_isSSHTTY = v1 != 0;
}

void _printFormat(FILE *a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = [[v5 alloc] initWithFormat:v6 arguments:a3];

  fprintf(a1, "%s\n", [v7 UTF8String]);
  v8 = _ARLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&dword_233983000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

id _ARLogGeneral()
{
  if (_ARLogGeneral_onceToken != -1)
  {
    _ARLogGeneral_cold_1();
  }

  v1 = _ARLogGeneral_logObj;

  return v1;
}

void _printMessageWithColor(FILE *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (ARFileDescriptorIsTTY(a1))
  {
    fputs([v5 UTF8String], a1);
    fputs([v6 UTF8String], a1);
    v7 = [@"\x1B[0m" UTF8String];
  }

  else
  {
    v7 = &unk_2339847D9;
    fputs(&unk_2339847D9, a1);
    fputs([v6 UTF8String], a1);
  }

  fprintf(a1, "%s\n", v7);
  v8 = _ARLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_233983000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void _printError(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];

  v8 = [v5 initWithFormat:v6 arguments:a2];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"❌  ERROR: %@\n", v8];
  _printMessageWithColor(*MEMORY[0x277D85DF8], @"\x1B[1;35m", v7);
}

void _printInfo(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];

  v8 = [v5 initWithFormat:v6 arguments:a2];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ℹ️  INFO: %@\n", v8];
  _printMessageWithColor(*MEMORY[0x277D85E08], @"\x1B[1;35m", v7);
}

void _printWarning(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];

  v8 = [v5 initWithFormat:v6 arguments:a2];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"⚠️  WARNING: %@\n", v8];
  _printMessageWithColor(*MEMORY[0x277D85E08], @"\x1B[1;35m", v7);
}

void _printColoredMessage(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v7 = a1;
  v8 = [v5 alloc];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v6];

  v10 = [v8 initWithFormat:v9 arguments:a3];
  _printMessageWithColor(*MEMORY[0x277D85E08], v7, v10);
}

void ARPrintUsageStrings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  printColoredMessage(@"\x1B[1m", @"Usage:", a3, a4, a5, a6, a7, a8, vars0);

  printMessage(@" arkitctl <COMMAND> [help]\n", v9, v10, v11, v12, v13, v14, v15, a9);
}

uint64_t ARPrintToiTerm(void *a1)
{
  v1 = a1;
  printf("\x1B]1337;File=[size=%lld;inline=1;preserveAspectRatio=1]:", [v1 length]);
  v2 = [v1 base64EncodedStringWithOptions:0];

  puts([v2 UTF8String]);

  return puts("\a");
}

uint64_t ARPrintEscapeEnableAlternativeBuffer()
{
  printf("%s", "\x1B[?1049h");
  v0 = *MEMORY[0x277D85E08];

  return fflush(v0);
}

uint64_t ARPrintEscapeDisableAlternativeBuffer()
{
  printf("%s", "\x1B[?1049l");
  v0 = *MEMORY[0x277D85E08];

  return fflush(v0);
}

uint64_t ARPrintEscapeEraseScreen()
{
  printf("%s", "\x1B[2J");
  v0 = *MEMORY[0x277D85E08];

  return fflush(v0);
}

uint64_t ARPrintEscapeMoveToLocation(int a1, int a2)
{
  printf("\x1B[%d;%dH", a1, a2);
  v2 = *MEMORY[0x277D85E08];

  return fflush(v2);
}

id ARKitBuildVersionString()
{
  v0 = [MEMORY[0x277CCA8D8] _bundleWithIdentifier:@"com.apple.ARKit" andLibraryName:@"ARKit"];
  v1 = [v0 infoDictionary];
  v2 = [v1 objectForKeyedSubscript:@"CFBundleVersion"];

  return v2;
}