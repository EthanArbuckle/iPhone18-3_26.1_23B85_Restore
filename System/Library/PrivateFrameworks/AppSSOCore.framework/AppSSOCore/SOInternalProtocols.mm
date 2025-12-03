@interface SOInternalProtocols
+ (id)interfaceWithInternalProtocol:(id)protocol;
@end

@implementation SOInternalProtocols

+ (id)interfaceWithInternalProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (interfaceWithInternalProtocol__onceToken != -1)
  {
    +[SOInternalProtocols interfaceWithInternalProtocol:];
  }

  v4 = [interfaceWithInternalProtocol__protocolCache objectForKey:protocolCopy];
  if (!v4)
  {
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:protocolCopy];
    if (&unk_1F49ECAE0 == protocolCopy)
    {
      v5 = MEMORY[0x1E695DFD8];
      v6 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [v5 setWithObjects:{v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
      [v4 setClasses:v12 forSelector:sel_profilesWithExtensionBundleIdentifier_completion_ argumentIndex:0 ofReply:1];
    }

    [interfaceWithInternalProtocol__protocolCache setObject:v4 forKey:protocolCopy];
  }

  v13 = v4;

  return v13;
}

uint64_t __53__SOInternalProtocols_interfaceWithInternalProtocol___block_invoke()
{
  interfaceWithInternalProtocol__protocolCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end