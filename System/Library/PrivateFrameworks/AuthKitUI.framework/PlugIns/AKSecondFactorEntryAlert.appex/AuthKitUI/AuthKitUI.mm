uint64_t sub_100001370(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

_BYTE *sub_100005E60(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}