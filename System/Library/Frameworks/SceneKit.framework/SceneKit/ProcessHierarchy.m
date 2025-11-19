@interface ProcessHierarchy
@end

@implementation ProcessHierarchy

uint64_t ____ProcessHierarchy_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 4);
  if ((v5 & 0x20) != 0)
  {
    if (C3DNodeIsHidden(a2))
    {
      return 1;
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 4);
  }

  if ((~v5 & 0x30) == 0)
  {
    if (C3DNodeGetOpacity(a2) == 0.0)
    {
      return 1;
    }

    v4 = *(a1 + 32);
  }

  v7 = *v4;
  if ((C3DNodeGetCategoryBitMask(a2) & v7) != 0 && ((*(*(a1 + 32) + 10) >> C3DNodeGetLayerIndex(a2)) & 1) != 0 && (*(a2 + 220) & 8) != 0 && __ProcessNode(a2) && (*(*(a1 + 32) + 8) & 0x80) != 0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

@end