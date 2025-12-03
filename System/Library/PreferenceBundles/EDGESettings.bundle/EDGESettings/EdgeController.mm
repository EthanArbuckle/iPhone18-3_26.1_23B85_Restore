@interface EdgeController
- (id)specifiersWithSpecifier:(id)specifier;
- (void)dealloc;
- (void)setBasebandValue:(id)value forTraceName:(id)name property:(id)property;
@end

@implementation EdgeController

- (id)specifiersWithSpecifier:(id)specifier
{
  v4 = *MEMORY[0x277D40128];
  -[EdgeController setContext:](self, "setContext:", [specifier propertyForKey:*MEMORY[0x277D40128]]);
  NSLog(&cfstr_Edgecontroller.isa, [(CTXPCServiceSubscriptionContext *)[(EdgeController *)self context] description]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  array = [MEMORY[0x277CBEB18] array];
  v7 = objc_alloc(MEMORY[0x277CC37B0]);
  -[EdgeController setCoreTelephonyClient:](self, "setCoreTelephonyClient:", [v7 initWithQueue:MEMORY[0x277D85CD0]]);
  if (![(EdgeController *)self coreTelephonyClient])
  {
    goto LABEL_4;
  }

  v17 = 0;
  v8 = [(CoreTelephonyClient *)self->_coreTelephonyClient context:[(EdgeController *)self context] getCarrierBundleValue:&unk_284EE9BC0 error:&v17];
  if (v17)
  {
    NSLog(&cfstr_Getcarrierbund.isa, v17);
LABEL_4:
    NSLog(&cfstr_AlloweditingD.isa, 0);
    return array;
  }

  v10 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  bOOLValue = [v10 BOOLValue];
  v12 = bOOLValue;
  NSLog(&cfstr_AlloweditingD.isa, bOOLValue);
  if (v12)
  {
    v13 = MEMORY[0x277D3FAD8];
    if (MGGetBoolAnswer())
    {
      v14 = @"APN_SETTINGS";
    }

    else
    {
      v14 = @"EDGE";
    }

    v15 = [v13 preferenceSpecifierNamed:objc_msgSend(v5 target:"localizedStringForKey:value:table:" set:v14 get:&stru_284EE8C10 detail:@"Edge" cell:self edit:{0, 0, objc_opt_class(), 1, 0}];
    [v15 setIdentifier:@"APN_SETTINGS"];
    [v15 setProperty:-[EdgeController context](self forKey:{"context"), v4}];
    coreTelephonyClient = [(EdgeController *)self coreTelephonyClient];
    [v15 setProperty:coreTelephonyClient forKey:kEdgeSettingsClientConnection];
    [array addObject:v15];
  }

  return array;
}

- (void)setBasebandValue:(id)value forTraceName:(id)name property:(id)property
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = _CTServerConnectionCreate();
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [value BOOLValue];
    }

    _CTServerConnectionSetTraceProperty();
    CFRelease(v8);
  }
}

- (void)dealloc
{
  [(EdgeController *)self setCoreTelephonyClient:0];
  [(EdgeController *)self setContext:0];
  v3.receiver = self;
  v3.super_class = EdgeController;
  [(EdgeController *)&v3 dealloc];
}

@end