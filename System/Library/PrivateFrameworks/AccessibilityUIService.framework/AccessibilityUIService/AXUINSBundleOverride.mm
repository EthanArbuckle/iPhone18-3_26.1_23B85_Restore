@interface AXUINSBundleOverride
- (id)infoDictionary;
@end

@implementation AXUINSBundleOverride

- (id)infoDictionary
{
  v8.receiver = self;
  v8.super_class = AXUINSBundleOverride;
  infoDictionary = [(AXUINSBundleOverride *)&v8 infoDictionary];
  if (mainBundleFakesSystemExtension == 1)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [(AXUINSBundleOverride *)self isEqual:mainBundle];

    if (v5)
    {
      v6 = [infoDictionary mutableCopy];
      [v6 setObject:&unk_284FF9A40 forKey:@"NSExtension"];

      infoDictionary = v6;
    }
  }

  return infoDictionary;
}

@end