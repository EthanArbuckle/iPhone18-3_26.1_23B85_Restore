double MailTableCellTextLeftForLevel(uint64_t a1)
{
  if (a1 < 1)
  {
    return 59.0;
  }

  if (a1 == 1)
  {
    return 90.0;
  }

  return ((a1 - 1) * 30.0) + 90.0;
}

double MailTableCellImageCenterForLevel(uint64_t a1)
{
  if (a1 < 1)
  {
    v1 = 49.5;
  }

  else if (a1 == 1)
  {
    v1 = 80.5;
  }

  else
  {
    v1 = ((a1 - 1) * 30.0) + 90.0 + -9.5;
  }

  v2 = -32.0;
  if (a1)
  {
    v2 = -23.0;
  }

  return v1 + v2 * 0.5;
}

uint64_t __ScheduleSettingsDataclassIsFetchy_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = *MEMORY[0x277CB9108];
  result = [v0 initWithObjects:{*MEMORY[0x277CB9150], *MEMORY[0x277CB9108], *MEMORY[0x277CB90F0], *MEMORY[0x277CB9190], *MEMORY[0x277CB90D0], *MEMORY[0x277CB9178], 0}];
  ScheduleSettingsDataclassIsFetchy_fetchyDataclassSet = result;
  return result;
}