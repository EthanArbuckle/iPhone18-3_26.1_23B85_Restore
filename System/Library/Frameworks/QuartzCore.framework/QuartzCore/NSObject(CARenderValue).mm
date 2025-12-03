@interface NSObject(CARenderValue)
- (CA::Render::Texture)CA_copyRenderValue;
- (uint64_t)CA_copyNumericValue:()CARenderValue;
- (void)CA_prepareRenderValue;
@end

@implementation NSObject(CARenderValue)

- (void)CA_prepareRenderValue
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v2 && (v3 = *(v2 + 40)) != 0)
  {
    v4 = *(v3 + 112);
    if (!cf)
    {
      return;
    }
  }

  else
  {
    v4 = CAGetColorSpace(36);
    if (!cf)
    {
      return;
    }
  }

  v5 = CFGetTypeID(cf);
  if (CA::Render::initialize_types(void)::once[0] != -1)
  {
    dispatch_once(CA::Render::initialize_types(void)::once, &__block_literal_global_9_6242);
  }

  if (v5 == CA::Render::image_type)
  {

    CA::Render::prepare_image(cf, v4, 0, v6);
  }

  else if (v5 == CA::Render::backing_type && (*(cf + 246) & 0x100) == 0 && !*(cf + 53))
  {
    pthread_mutex_lock((cf + 16));
    CABackingStoreGetFrontTexture(cf, v4, v7);

    pthread_mutex_unlock((cf + 16));
  }
}

- (CA::Render::Texture)CA_copyRenderValue
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v4 && (v5 = *(v4 + 40)) != 0)
  {
    v6 = *(v5 + 112);
  }

  else
  {
    v6 = CAGetColorSpace(36);
  }

  return CA::Render::copy_render_value(self, v6, a3);
}

- (uint64_t)CA_copyNumericValue:()CARenderValue
{
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
  if (v6 && (v7 = *(v6 + 40)) != 0)
  {
    v8 = *(v7 + 112);
  }

  else
  {
    v8 = CAGetColorSpace(36);
  }

  return CA::Render::copy_numeric_value(this, v8, a3, a4);
}

@end