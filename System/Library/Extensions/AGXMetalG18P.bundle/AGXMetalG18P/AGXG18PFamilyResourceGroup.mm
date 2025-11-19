@interface AGXG18PFamilyResourceGroup
- (AGXG18PFamilyResourceGroup)initWithDevice:(void *)a3 resources:(const void *)a4 count:(unint64_t)a5;
- (BOOL)containsResource:(id)a3;
- (void)dealloc;
@end

@implementation AGXG18PFamilyResourceGroup

- (void)dealloc
{
  if (resource_group_queue(void)::onceToken != -1)
  {
    dispatch_once(&resource_group_queue(void)::onceToken, &__block_literal_global_1861);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __37__AGXG18PFamilyResourceGroup_dealloc__block_invoke;
  block[3] = &unk_29F3438F8;
  block[4] = self;
  dispatch_sync(resource_group_queue(void)::_resourceGroupQueue, block);
  self->_device = 0;
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyResourceGroup;
  [(AGXG18PFamilyResourceGroup *)&v3 dealloc];
}

void __37__AGXG18PFamilyResourceGroup_dealloc__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  if (*(v1 + 32) == 1)
  {
    *(*(v1 + 24) + ((*(v1 + 8) >> 3) & 0x1FF8) + 6248) &= ~(1 << *(v1 + 8));
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = *(*(a1 + 32) + 16);
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      v7 = MEMORY[0x29EDC5638];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) backingResource];
          v10 = *(*(a1 + 32) + 8);
          *(*(v9 + *v7) + ((v10 >> 3) & 0x1FF8)) &= ~(1 << v10);
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }
}

- (BOOL)containsResource:(id)a3
{
  v3 = *(a3 + *MEMORY[0x29EDC5638]);
  if (v3)
  {
    return (*(v3 + ((self->_resourceGroup >> 3) & 0x1FF8)) >> self->_resourceGroup) & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (AGXG18PFamilyResourceGroup)initWithDevice:(void *)a3 resources:(const void *)a4 count:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = AGXG18PFamilyResourceGroup;
  result = [(AGXG18PFamilyResourceGroup *)&v12 init];
  if (result)
  {
    result->_initedResourceGroup = 0;
    if (!a5)
    {
      goto LABEL_6;
    }

    if (resource_group_queue(void)::onceToken != -1)
    {
      v10 = result;
      dispatch_once(&resource_group_queue(void)::onceToken, &__block_literal_global_1861);
      result = v10;
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __61__AGXG18PFamilyResourceGroup_initWithDevice_resources_count___block_invoke;
    block[3] = &unk_29F341118;
    block[4] = result;
    block[5] = a3;
    block[6] = a4;
    block[7] = a5;
    v9 = result;
    dispatch_sync(resource_group_queue(void)::_resourceGroupQueue, block);
    result = v9;
    if (!v9->_initedResourceGroup)
    {
LABEL_6:

      return 0;
    }
  }

  return result;
}

void *__61__AGXG18PFamilyResourceGroup_initWithDevice_resources_count___block_invoke(void *result)
{
  v1 = result;
  v23 = *MEMORY[0x29EDCA608];
  v2 = result[5];
  *(result[4] + 24) = v2;
  v3 = result[4];
  v4 = v2[781];
  if (v4 == -1)
  {
    v4 = v2[782];
    if (v4 == -1)
    {
      v4 = v2[783];
      if (v4 == -1)
      {
        v4 = v2[784];
        if (v4 == -1)
        {
          v8 = 0;
          goto LABEL_10;
        }

        v5 = 192;
      }

      else
      {
        v5 = 128;
      }
    }

    else
    {
      v5 = 64;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v2 + 781;
  v7 = v5 + __clz(__rbit64(~v4));
  v8 = 1;
  *(v6 + ((v7 >> 3) & 0x38)) |= 1 << v7;
  *(v3 + 8) = v7;
  v3 = result[4];
LABEL_10:
  *(v3 + 32) = v8;
  if (*(result[4] + 32) == 1)
  {
    result = [objc_alloc(MEMORY[0x29EDB8D80]) initWithObjects:result[6] count:result[7]];
    *(v1[4] + 16) = result;
    if (v1[7])
    {
      v9 = 0;
      v10 = MEMORY[0x29EDC5638];
      v11 = 1;
      do
      {
        result = [*(v1[6] + 8 * v9) backingResource];
        v12 = (result + *v10);
        if ((v12[5] & 0xFFFFFFFFFFFFFFuLL) >= 0x81)
        {
          v13 = *(v1[4] + 8);
          v14 = *v12;
          if (!*v12)
          {
            result = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
            *v12 = result;
            if (!result)
            {
              fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: !!! %s: calloc failed!\n", "agxa_resource_group_template.hpp", 26, "void AGX::ResourceGroupMembershipList::set(AGXMDSID)", "void AGX::ResourceGroupMembershipList::set(AGXMDSID)");
              if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v16 = "agxa_resource_group_template.hpp";
                v17 = 1024;
                v18 = 26;
                v19 = 2080;
                v20 = "void AGX::ResourceGroupMembershipList::set(AGXMDSID)";
                v21 = 2080;
                v22 = "void AGX::ResourceGroupMembershipList::set(AGXMDSID)";
                _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: !!! %s: calloc failed!\n", buf, 0x26u);
              }

              if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
              {
                *buf = 136315906;
                v16 = "agxa_resource_group_template.hpp";
                v17 = 1024;
                v18 = 26;
                v19 = 2080;
                v20 = "void AGX::ResourceGroupMembershipList::set(AGXMDSID)";
                v21 = 2080;
                v22 = "void AGX::ResourceGroupMembershipList::set(AGXMDSID)";
                _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: !!! %s: calloc failed!\n", buf, 0x26u);
              }

              abort();
            }

            *result = 0u;
            *(result + 1) = 0u;
            v14 = *v12;
          }

          *(v14 + ((v13 >> 3) & 0x1FF8)) |= 1 << v13;
        }

        v9 = v11++;
      }

      while (v1[7] > v9);
    }
  }

  return result;
}

@end