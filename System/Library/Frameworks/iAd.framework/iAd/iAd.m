double ADClampedBannerSize()
{
  result = *MEMORY[0x277CBF3A8];
  v1 = *(MEMORY[0x277CBF3A8] + 8);
  return result;
}