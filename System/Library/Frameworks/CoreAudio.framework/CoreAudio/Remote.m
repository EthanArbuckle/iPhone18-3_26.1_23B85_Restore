@interface Remote
@end

@implementation Remote

uint64_t __55__Remote_Driver_Host_Delegate_delete_storage_settings___block_invoke(void *a1)
{
  v2 = *(a1[5] + 752);
  if (v2)
  {
    result = (*(v2 + 24))(v2, a1[7]);
  }

  else
  {
    result = 560947818;
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t __53__Remote_Driver_Host_Delegate_copy_storage_settings___block_invoke(void *a1)
{
  v2 = *(a1[6] + 752);
  if (v2)
  {
    result = (*(v2 + 8))(v2, a1[8], *(a1[5] + 8) + 24);
  }

  else
  {
    result = 560947818;
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void __67__Remote_Driver_Host_Delegate_write_storage_settings_storage_data___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 752);
  if (v2)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      CFRetain(*(a1 + 56));
      mcp_applesauce::CF::PropertyListRef::PropertyListRef(&cf, v3);
      v4 = *(a1 + 56);
    }

    else
    {
      v4 = 0;
      cf = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = (*(v2 + 16))(v2, *(a1 + 64), v4);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 560947818;
  }
}

@end