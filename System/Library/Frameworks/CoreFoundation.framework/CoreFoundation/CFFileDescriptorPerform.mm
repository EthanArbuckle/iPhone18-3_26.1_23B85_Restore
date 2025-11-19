@interface CFFileDescriptorPerform
@end

@implementation CFFileDescriptorPerform

uint64_t ____CFFileDescriptorPerform_block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(result + 72) + 16) == 0;
  if (*(*(*(result + 32) + 8) + 24))
  {
    v1 = result;
    *(*(*(result + 40) + 8) + 24) = *(*(result + 72) + 50);
    if (*(*(*(result + 40) + 8) + 24))
    {
      v2 = *(result + 72);
      *(v2 + 50) = 0;
      result = cffd_is_readable(*(v2 + 24));
      *(*(v1[5] + 8) + 24) = result;
    }

    *(*(v1[6] + 8) + 24) = *(v1[9] + 51);
    if (*(*(v1[6] + 8) + 24))
    {
      v3 = v1[9];
      *(v3 + 51) = 0;
      result = cffd_is_writeable(*(v3 + 28));
      *(*(v1[6] + 8) + 24) = result;
    }

    v4 = v1[9];
    v5 = *(v4 + 88);
    if (v5 && (*(*(v1[5] + 8) + 24) || *(*(v1[6] + 8) + 24)))
    {
      result = v5(*(v4 + 80));
      *(*(v1[7] + 8) + 24) = result;
      v6 = (v1[9] + 96);
      v7 = 8;
    }

    else
    {
      v6 = (v4 + 80);
      v7 = 7;
    }

    *(*(v1[v7] + 8) + 24) = *v6;
  }

  return result;
}

@end