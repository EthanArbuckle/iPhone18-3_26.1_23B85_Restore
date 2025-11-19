@interface AXUINSBundleOverride
- (id)infoDictionary;
@end

@implementation AXUINSBundleOverride

- (id)infoDictionary
{
  v8.receiver = self;
  v8.super_class = AXUINSBundleOverride;
  v3 = [(AXUINSBundleOverride *)&v8 infoDictionary];
  if (mainBundleFakesSystemExtension == 1)
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [(AXUINSBundleOverride *)self isEqual:v4];

    if (v5)
    {
      v6 = [v3 mutableCopy];
      [v6 setObject:&unk_284FF9A40 forKey:@"NSExtension"];

      v3 = v6;
    }
  }

  return v3;
}

@end