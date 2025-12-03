@interface BLSHEnvironmentDateSpecifier
+ (BLSHEnvironmentDateSpecifier)specifierWithPresentationDate:(id)date fidelity:(int64_t)fidelity environment:(id)environment;
+ (BLSHEnvironmentDateSpecifier)specifierWithPresentationDate:(id)date fidelity:(int64_t)fidelity environment:(id)environment userObject:(id)object;
- (BLSHEnvironmentDateSpecifier)initWithPresentationDate:(id)date fidelity:(int64_t)fidelity environment:(id)environment userObject:(id)object;
- (BOOL)isEqual:(id)equal;
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
  selfCopy = self;
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

+ (BLSHEnvironmentDateSpecifier)specifierWithPresentationDate:(id)date fidelity:(int64_t)fidelity environment:(id)environment userObject:(id)object
{
  objectCopy = object;
  environmentCopy = environment;
  dateCopy = date;
  v13 = [[self alloc] initWithPresentationDate:dateCopy fidelity:fidelity environment:environmentCopy userObject:objectCopy];

  return v13;
}

+ (BLSHEnvironmentDateSpecifier)specifierWithPresentationDate:(id)date fidelity:(int64_t)fidelity environment:(id)environment
{
  environmentCopy = environment;
  dateCopy = date;
  v10 = [[self alloc] initWithPresentationDate:dateCopy fidelity:fidelity environment:environmentCopy userObject:0];

  return v10;
}

- (BLSHEnvironmentDateSpecifier)initWithPresentationDate:(id)date fidelity:(int64_t)fidelity environment:(id)environment userObject:(id)object
{
  dateCopy = date;
  environmentCopy = environment;
  objectCopy = object;
  v17.receiver = self;
  v17.super_class = BLSHEnvironmentDateSpecifier;
  v13 = [(BLSHEnvironmentDateSpecifier *)&v17 init];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CF0848]) initWithDate:dateCopy fidelity:fidelity userObject:objectCopy];
    dateSpecifier = v13->_dateSpecifier;
    v13->_dateSpecifier = v14;

    objc_storeStrong(&v13->_environment, environment);
  }

  return v13;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  date = [(BLSAlwaysOnDateSpecifier *)self->_dateSpecifier date];
  bls_shortLoggingString = [date bls_shortLoggingString];
  [v3 appendString:bls_shortLoggingString withName:@"presentationDate"];

  [(BLSAlwaysOnDateSpecifier *)self->_dateSpecifier fidelity];
  v6 = NSStringFromBLSUpdateFidelity();
  [v3 appendString:v6 withName:@"fidelity"];

  v7 = MEMORY[0x277CCACA8];
  environment = self->_environment;
  identifier = [(BLSHBacklightSceneHostEnvironment *)environment identifier];
  v10 = [v7 stringWithFormat:@"<%p:%@>", environment, identifier];
  [v3 appendString:v10 withName:@"environment"];

  userObject = [(BLSHEnvironmentDateSpecifier *)self userObject];

  if (userObject)
  {
    v12 = MEMORY[0x277CCACA8];
    userObject2 = [(BLSHEnvironmentDateSpecifier *)self userObject];
    userObject3 = [(BLSHEnvironmentDateSpecifier *)self userObject];
    v15 = [v12 stringWithFormat:@"<%p:%@>", userObject2, objc_opt_class()];
    [v3 appendString:v15 withName:@"userObject"];
  }

  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_dateSpecifier];
  v5 = [builder appendPointer:self->_environment];
  v6 = [builder hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  dateSpecifier = self->_dateSpecifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__BLSHEnvironmentDateSpecifier_isEqual___block_invoke;
  v18[3] = &unk_27841EB40;
  v7 = equalCopy;
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