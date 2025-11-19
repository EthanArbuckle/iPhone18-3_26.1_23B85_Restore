id sub_1690(uint64_t a1)
{
  [*(a1 + 32) setCurrentMultitaskingMode:1];
  v2 = *(a1 + 40);

  return [v2 _updateState];
}

id sub_16D0(uint64_t a1)
{
  [*(a1 + 32) setCurrentMultitaskingMode:2];
  v2 = *(a1 + 40);

  return [v2 _updateState];
}