@interface ApplePhotonDetectorServicesGetLux
@end

@implementation ApplePhotonDetectorServicesGetLux

unsigned __int8 *__ApplePhotonDetectorServicesGetLux_block_invoke_8(unsigned __int8 *result)
{
  v1 = result;
  v2 = result[76];
  if (result[76])
  {
    v3 = *(result + 4);
    if (*v3)
    {
      memcpy(*v3, *(result + 5), 4 * v2);
      v3 = *(v1 + 4);
      LODWORD(v2) = v1[76];
    }

    v4 = *(v3 + 8);
    if (v4)
    {
      memcpy(v4, *(v1 + 6), 4 * v2);
      v3 = *(v1 + 4);
      LODWORD(v2) = v1[76];
    }

    v5 = *(v3 + 16);
    if (v5)
    {
      memcpy(v5, *(v1 + 7), 8 * v2);
      v3 = *(v1 + 4);
      LODWORD(v2) = v1[76];
    }

    result = *(v3 + 24);
    if (result)
    {
      result = memcpy(result, *(v1 + 8), v2);
      LOBYTE(v2) = v1[76];
    }
  }

  v6 = *(v1 + 4);
  *(v6 + 36) = v2;
  *(v6 + 32) = *(v1 + 18);
  return result;
}

@end