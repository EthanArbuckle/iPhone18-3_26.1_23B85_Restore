@interface BLSHEnvironmentDateSpecifier
+ (BLSHEnvironmentDateSpecifier)specifierWithPresentationDate:(id)a3 fidelity:(int64_t)a4 environment:(id)a5;
+ (BLSHEnvironmentDateSpecifier)specifierWithPresentationDate:(id)a3 fidelity:(int64_t)a4 environment:(id)a5 userObject:(id)a6;
- (BLSHEnvironmentDateSpecifier)initWithPresentationDate:(id)a3 fidelity:(int64_t)a4 environment:(id)a5 userObject:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)bls_shortLoggingString;
- (unint64_t)hash;
@end

@implementation BLSHEnvironmentDateSpecifier

- (id)bls_shortLoggingString
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __54__BLSHEnvironmentDateSpecifier_bls_shortLoggingString__block_invoke;
  v10 = &unk_27841E538;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

void __54__BLSHEnvironmentDateSpecifier_bls_shortLoggingString__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) date];
  v3 = *(a1 + 40);
  v9 = v2;
  if (v2)
  {
    v4 = [v2 bls_shortLoggingString];
    [v3 appendString:v4 withName:0];
  }

  else
  {
    [v3 appendString:@"<NULL>" withName:0];
  }

  v5 = *(a1 + 40);
  [*(*(a1 + 32) + 8) fidelity];
  v6 = NSStringFromBLSUpdateFidelity();
  [v5 appendString:v6 withName:0];

  v7 = *(a1 + 40);
  v8 = [*(*(a1 + 32) + 16) identifier];
  [v7 appendString:v8 withName:0];
}

+ (BLSHEnvironmentDateSpecifier)specifierWithPresentationDate:(id)a3 fidelity:(int64_t)a4 environment:(id)a5 userObject:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[a1 alloc] initWithPresentationDate:v12 fidelity:a4 environment:v11 userObject:v10];

  return v13;
}

+ (BLSHEnvironmentDateSpecifier)specifierWithPresentationDate:(id)a3 fidelity:(int64_t)a4 environment:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithPresentationDate:v9 fidelity:a4 environment:v8 userObject:0];

  return v10;
}

- (BLSHEnvironmentDateSpecifier)initWithPresentationDate:(id)a3 fidelity:(int64_t)a4 environment:(id)a5 userObject:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = BLSHEnvironmentDateSpecifier;
  v13 = [(BLSHEnvironmentDateSpecifier *)&v17 init];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CF0848]) initWithDate:v10 fidelity:a4 userObject:v12];
    dateSpecifier = v13->_dateSpecifier;
    v13->_dateSpecifier = v14;

    objc_storeStrong(&v13->_environment, a5);
  }

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BLSAlwaysOnDateSpecifier *)self->_dateSpecifier date];
  v5 = [v4 bls_shortLoggingString];
  [v3 appendString:v5 withName:@"presentationDate"];

  [(BLSAlwaysOnDateSpecifier *)self->_dateSpecifier fidelity];
  v6 = NSStringFromBLSUpdateFidelity();
  [v3 appendString:v6 withName:@"fidelity"];

  v7 = MEMORY[0x277CCACA8];
  environment = self->_environment;
  v9 = [(BLSHBacklightSceneHostEnvironment *)environment identifier];
  v10 = [v7 stringWithFormat:@"<%p:%@>", environment, v9];
  [v3 appendString:v10 withName:@"environment"];

  v11 = [(BLSHEnvironmentDateSpecifier *)self userObject];

  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(BLSHEnvironmentDateSpecifier *)self userObject];
    v14 = [(BLSHEnvironmentDateSpecifier *)self userObject];
    v15 = [v12 stringWithFormat:@"<%p:%@>", v13, objc_opt_class()];
    [v3 appendString:v15 withName:@"userObject"];
  }

  v16 = [v3 build];

  return v16;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_dateSpecifier];
  v5 = [v3 appendPointer:self->_environment];
  v6 = [v3 hash];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  dateSpecifier = self->_dateSpecifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__BLSHEnvironmentDateSpecifier_isEqual___block_invoke;
  v18[3] = &unk_27841EB40;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendObject:dateSpecifier counterpart:v18];
  environment = self->_environment;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __40__BLSHEnvironmentDateSpecifier_isEqual___block_invoke_2;
  v16 = &unk_27841E868;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendPointer:environment counterpart:&v13];
  LOBYTE(environment) = [v5 isEqual];

  return environment;
}

@end