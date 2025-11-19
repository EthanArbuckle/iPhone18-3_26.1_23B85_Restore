@interface EdgeController
- (id)specifiersWithSpecifier:(id)a3;
- (void)dealloc;
- (void)setBasebandValue:(id)a3 forTraceName:(id)a4 property:(id)a5;
@end

@implementation EdgeController

- (id)specifiersWithSpecifier:(id)a3
{
  v4 = *MEMORY[0x277D40128];
  -[EdgeController setContext:](self, "setContext:", [a3 propertyForKey:*MEMORY[0x277D40128]]);
  NSLog(&cfstr_Edgecontroller.isa, [(CTXPCServiceSubscriptionContext *)[(EdgeController *)self context] description]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x277CBEB18] array];
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
    return v6;
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

  v11 = [v10 BOOLValue];
  v12 = v11;
  NSLog(&cfstr_AlloweditingD.isa, v11);
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
    v16 = [(EdgeController *)self coreTelephonyClient];
    [v15 setProperty:v16 forKey:kEdgeSettingsClientConnection];
    [v6 addObject:v15];
  }

  return v6;
}

- (void)setBasebandValue:(id)a3 forTraceName:(id)a4 property:(id)a5
{
  v6 = *MEMORY[0x277CBECE8];
  v7 = _CTServerConnectionCreate();
  if (v7)
  {
    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [a3 BOOLValue];
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